using System;
using UnityEngine;
using System.Collections;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;

public class PlayerControllerTS : NetworkBehaviour
{
    public float speed = 0.1f;
    Vector2 _dest = Vector2.zero;
    Vector2 _dir = Vector2.zero;
    Vector2 _nextDir = Vector2.zero;
    public GameObject backCollider;
    public GameObject frontCollider;

    public AudioSource deathSound;

    [Serializable]
    public class PointSprites
    {
        public GameObject[] pointSprites;
    }

    public PointSprites points;

    public static int killstreak = 0;

    private GameManagerTS GM;
    private ScoreManager SM;
    private NetworkManager NM;

    private bool _deadPlaying = false;

    // Use this for initialization
    void Start()
    {
        GM = GameObject.Find("Game Manager").GetComponent<GameManagerTS>();
        SM = GameObject.Find("Game Manager").GetComponent<ScoreManager>();
        NM = GameObject.Find("NetworkManager").GetComponent<NetworkManager>();
        if (isLocalPlayer)
        {
            Camera.main.transform.LookAt(this.transform);
            Camera.main.transform.parent = this.transform;
        }
        _dest = transform.position;
    }

    //This method saves the camera from a certain dead
    private void OnDestroy()
    {
        if (isLocalPlayer)
        {
            ResetCamera();
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            NetworkServer.Spawn(gameObject);
        }
    }
    // Update is called once per frame
    void FixedUpdate()
    {
        GameManagerTS.gameState = GameManagerTS.GameState.Game;
        if (!isLocalPlayer)
        {
            return;
        }
        switch (GameManagerTS.gameState)
        {
            case GameManagerTS.GameState.Game:

                ReadInputAndMove();
                Animate();
                break;

            case GameManagerTS.GameState.Dead:
                if (!_deadPlaying)
                    StartCoroutine("PlayDeadAnimation");
                break;
        }


    }
    public void loadScene()
    {
        if (isLocalPlayer)
        {
            ResetCamera();
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            CmdRespawnSvr();
        }
    }

    IEnumerator PlayDeadAnimation()
    {
        _deadPlaying = true;
        GetComponent<Animator>().SetBool("Die", true);
        deathSound.Play();
        yield return new WaitForSeconds(2);
        GetComponent<Animator>().SetBool("Die", false);
        _deadPlaying = false;

        if (GameManagerTS.lives <= 0)
        {
            //Cuando muera
        }
        else
        {
            GM.ResetScene();
        }
    }

    void Animate()
    {
        Vector2 dir = _dest - (Vector2)transform.position;
        GetComponent<Animator>().SetFloat("DirX", dir.x);
        GetComponent<Animator>().SetFloat("DirY", dir.y);
    }

    bool Valid(Vector2 direction)
    {
        Vector2 pos = transform.position;
        direction += new Vector2(direction.x * 0.45f, direction.y * 0.45f);
        RaycastHit2D hit = Physics2D.Linecast(pos + direction, pos);
        return hit.collider.name == "pacdot" || (hit.collider == GetComponent<Collider2D>());
    }

    public void ResetDestination()
    {
        _dest = new Vector2(0.5f, -1.5f);
        GetComponent<Animator>().SetFloat("DirX", 1);
        GetComponent<Animator>().SetFloat("DirY", 0);
    }
    public void getKilled()
    {
        NetworkServer.UnSpawn(gameObject);
        loadScene();
    }
    public void ResetCamera()
    {
        transform.DetachChildren();
        GameObject.Find("Main Camera").GetComponent<Camera>().enabled = true;
        GameObject.Find("Main Camera").GetComponent<AudioListener>().enabled = true;
        GameObject.Find("Main Camera").GetComponent<CameraFollow>().enabled = true;
        Camera.main.transform.LookAt(GameObject.Find("PacmanSpawn").transform.position);
    }
    void ReadInputAndMove()
    {
        Vector2 p = Vector2.MoveTowards(transform.position, _dest, speed);
        GetComponent<Rigidbody2D>().MovePosition(p);
        if (Input.GetAxis("Horizontal") > 0)
        {
            _nextDir = Vector2.right;
            backCollider.transform.rotation = Quaternion.Euler(0, 0, 0);
            frontCollider.transform.rotation = Quaternion.Euler(0, 0, 0);
        }
        if (Input.GetAxis("Horizontal") < 0)
        {
            _nextDir = -Vector2.right;
            backCollider.transform.rotation = Quaternion.Euler(0, 0, 180);
            frontCollider.transform.rotation = Quaternion.Euler(0, 0, 180);
        }
        if (Input.GetAxis("Vertical") > 0)
        {
            _nextDir = Vector2.up;
            backCollider.transform.rotation = Quaternion.Euler(0, 0, 90);
            frontCollider.transform.rotation = Quaternion.Euler(0, 0, 90);
        }
        if (Input.GetAxis("Vertical") < 0)
        {
            _nextDir = -Vector2.up;
            backCollider.transform.rotation = Quaternion.Euler(0, 0, 270);
            frontCollider.transform.rotation = Quaternion.Euler(0, 0, 270);
        }

        if (Vector2.Distance(_dest, transform.position) < 0.00001f)
        {
            if (Valid(_nextDir))
            {
                _dest = (Vector2)transform.position + _nextDir;
                _dir = _nextDir;
            }
            else
            {
                if (Valid(_dir))
                    _dest = (Vector2)transform.position + _dir;
            }
        }
    }

    public Vector2 getDir()
    {
        return _dir;
    }

    public void UpdateScore()
    {
        killstreak++;
        if (killstreak > 4) killstreak = 4;
        Instantiate(points.pointSprites[killstreak - 1], transform.position, Quaternion.identity);
        GameManagerTS.score += (int)Mathf.Pow(2, killstreak) * 100;
    }
    [Command]
    void CmdRespawnSvr()
    {
        var spawn = NetworkManager.singleton.GetStartPosition();
        var newPlayer = (GameObject)Instantiate(NetworkManager.singleton.playerPrefab, spawn.position, spawn.rotation);
        NetworkServer.Destroy(this.gameObject);
        NetworkServer.ReplacePlayerForConnection(this.connectionToClient, newPlayer, this.playerControllerId);
    }
}