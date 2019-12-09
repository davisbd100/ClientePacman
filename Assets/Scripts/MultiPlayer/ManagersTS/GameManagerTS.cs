using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class GameManagerTS : NetworkBehaviour
{
    public enum GameState { 
        Init,
        Game,
        Dead,
        Scores
    }
    public static GameState gameState;

    static public int score;

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
    public void RespawnPlayers()
    {
    }
}