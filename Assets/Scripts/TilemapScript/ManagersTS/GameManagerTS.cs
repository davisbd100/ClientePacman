using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class GameManagerTS : NetworkBehaviour
{
    public static int Level = 0;
    public static int lives = 1;

    public enum GameState { 
        Init,
        Game,
        Dead,
        Scores
    }
    public static GameState gameState;

    private GameObject pacman;
    private GameObject ghost;
    //private GameGUINavigation gui;

    public static bool scared;
    static public int score;

    public float scareLength;
    private float _timeToCalm;

    public float speedPerLevel;

    private static GameManagerTS _instance;

    public static GameManagerTS instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = GameObject.FindObjectOfType<GameManagerTS>();
                DontDestroyOnLoad(_instance.gameObject);
            }
            return _instance;
        }
    }


    void Awake()
    {
        if (_instance == null)
        {
            _instance = this;
            DontDestroyOnLoad(this);
        }
        else
        {
            if (this != _instance)
                Destroy(this.gameObject);
        }
    }

    void Start()
    {
        gameState = GameState.Init;
    }

    void sceneLoaded()
    {
        if (Level == 0) lives = 3;

        Debug.Log("Level " + Level + " Loaded!");
        ResetVariables();

        pacman.GetComponent<PlayerControllerTS>().speed += Level * speedPerLevel / 2;
    }

    private void ResetVariables()
    {
        _timeToCalm = 0.0f;
        scared = false;
        PlayerControllerTS.killstreak = 0;
    }

    void Update()
    {
        if (scared && _timeToCalm <= Time.time)
        {
            CalmGhosts();
        }

    }

    public void ResetScene()
    {
        CalmGhosts();

        pacman.transform.position = new Vector3(0.5f, -1.5f, 0f);

        pacman.GetComponent<PlayerControllerTS>().ResetDestination();

        gameState = GameState.Init;

    }

    public void ToggleScare()
    {
        if (!scared)
        {
            ScareGhosts();
        }
        else
        {
            CalmGhosts();
        }
    }

    public void ScareGhosts()
    {
        scared = true;
        _timeToCalm = Time.time + scareLength;

        Debug.Log("Ghosts Scared");
    }

    public void CalmGhosts()
    {
        scared = false;
        PlayerControllerTS.killstreak = 0;
    }

    void AssignGhosts()
    {
        pacman = GameObject.Find("pacman");

        if (pacman == null)
        {
            Debug.Log("Pacman is NULL");
        }

    }

    public void LoseLife()
    {
        lives--;
        gameState = GameState.Dead;
    }

    public static void DestroySelf()
    {
        score = 0;
        Level = 0;
        lives = 1;
        Destroy(GameObject.Find("Game Manager"));
    }
}