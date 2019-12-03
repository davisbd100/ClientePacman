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
    public bool death = false;

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
            setCamera();
        }
        _dest = transform.position;
    }
    // Methods of Movement and predicment movement
    void FixedUpdate()
    {
        GameManagerTS.gameState = GameManagerTS.GameState.Game;
        if (!isLocalPlayer)
        {
            return;
        }
        if (death)
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

    bool Valid(Vector2 direction)
    {
        Vector2 pos = transform.position;
        direction += new Vector2(direction.x * 0.45f, direction.y * 0.45f);
        RaycastHit2D hit = Physics2D.Linecast(pos + direction, pos);
        return hit.collider.name == "pacdot" || hit.collider.name == "back" || (hit.collider == GetComponent<Collider2D>());
    }

    // Animation methods
    IEnumerator PlayDeadAnimation()
    {
        _deadPlaying = true;
        GetComponent<Animator>().SetBool("Die", true);
        deathSound.Play();
        yield return new WaitForSeconds(2);
        GetComponent<Animator>().SetBool("Die", false);
        _deadPlaying = false;

    }

    void Animate()
    {
        Vector2 dir = _dest - (Vector2)transform.position;
        GetComponent<Animator>().SetFloat("DirX", dir.x);
        GetComponent<Animator>().SetFloat("DirY", dir.y);
    }
    // Camera Methods
    public void setCamera()
    {
        Camera.main.transform.LookAt(transform);
        Camera.main.transform.parent = transform;
        Camera.main.transform.position = transform.position;
        transform.Find("Main Camera").transform.SetPositionAndRotation(new Vector3(transform.position.x, transform.position.y, -5), Quaternion.Euler(0, 0, 0));
    }
    private void OnDestroy()
    {
        if (isLocalPlayer)
        {
            ResetCamera();
        }
    }
    public void PositionDead()
    {
        if (isLocalPlayer)
        {
            _dest = new Vector2(-45.5f, 2.5f);
            transform.position = new Vector2(-45.5f, 2.5f);
            GetComponent<Animator>().SetFloat("DirX", 1);
            GetComponent<Animator>().SetFloat("DirY", 0);
            ResetCamera();
            GameObject camera = GameObject.Find("Main Camera");
            camera.transform.position = new Vector3(2f, -7.75f, -5);
            camera.GetComponent<Camera>().orthographicSize = 22.5f;
            death = true;
        }
        
    }
    public void ResetCamera()
    {
        transform.Find("Main Camera").transform.parent = null;
        GameObject camera = GameObject.Find("Main Camera");
        camera.GetComponent<Camera>().enabled = true;
        camera.GetComponent<AudioListener>().enabled = true;
        camera.GetComponent<CameraFollow>().enabled = true;
        camera.transform.position = new Vector3(0, 0, -5);
        camera.transform.rotation = Quaternion.Euler(0, 0, 0);

    }

    public void UpdateScore()
    {
        killstreak++;
        if (killstreak > 4) killstreak = 4;
        Instantiate(points.pointSprites[killstreak - 1], transform.position, Quaternion.identity);
        GameManagerTS.score += (int)Mathf.Pow(2, killstreak) * 100;
    }
}