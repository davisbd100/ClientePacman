using System.Collections.Generic;
using UnityEngine;

namespace Multiplayer
{
    public class GameManagerMP : MonoBehaviour
    {
        public static int lives = 1;

        public enum GameState { 
            Init,
            Game,
            Dead,
            Scores
        }
        public static GameState gameState;

        private GameObject pacman;
        private GameObject blinky;
        private GameObject pinky;
        private GameObject inky;
        private GameObject clyde;
        private GameGUINavigation gui;

        public static bool scared;
        static public int score;

        public float scareLength;
        private float _timeToCalm;

        private static GameManagerMP _instance;

        public static GameManagerMP instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = GameObject.FindObjectOfType<GameManagerMP>();
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

            AssignGhosts();
        }

        void Start()
        {
            gameState = GameState.Init;
        }

        void sceneLoaded()
        {
            AssignGhosts();
            ResetVariables();
        }

        private void ResetVariables()
        {
            _timeToCalm = 0.0f;
            scared = false;
            PlayerController.killstreak = 0;
        }

        void Update()
        {
            if (scared && _timeToCalm <= Time.time)
                CalmGhosts();

        }

        public void ResetScene()
        {
            CalmGhosts();

            pacman.transform.position = new Vector3(15f, 11f, 0f);
            blinky.transform.position = new Vector3(15f, 20f, 0f);
            pinky.transform.position = new Vector3(14.5f, 17f, 0f);
            inky.transform.position = new Vector3(16.5f, 17f, 0f);
            clyde.transform.position = new Vector3(12.5f, 17f, 0f);

            pacman.GetComponent<PlayerController>().ResetDestination();
            blinky.GetComponent<GhostMove>().InitializeGhost();
            pinky.GetComponent<GhostMove>().InitializeGhost();
            inky.GetComponent<GhostMove>().InitializeGhost();
            clyde.GetComponent<GhostMove>().InitializeGhost();

            gameState = GameState.Init;
            gui.H_ShowReadyScreen();

        }

        public void ToggleScare()
        {
            if (!scared) ScareGhosts();
            else CalmGhosts();
        }

        public void ScareGhosts()
        {
            scared = true;
            blinky.GetComponent<GhostMove>().Frighten();
            pinky.GetComponent<GhostMove>().Frighten();
            inky.GetComponent<GhostMove>().Frighten();
            clyde.GetComponent<GhostMove>().Frighten();
            _timeToCalm = Time.time + scareLength;

            Debug.Log("Ghosts Scared");
        }

        public void CalmGhosts()
        {
            scared = false;
            blinky.GetComponent<GhostMove>().Calm();
            pinky.GetComponent<GhostMove>().Calm();
            inky.GetComponent<GhostMove>().Calm();
            clyde.GetComponent<GhostMove>().Calm();
            PlayerController.killstreak = 0;
        }

        void AssignGhosts()
        {
            clyde = GameObject.Find("clyde");
            pinky = GameObject.Find("pinky");
            inky = GameObject.Find("inky");
            blinky = GameObject.Find("blinky");
            pacman = GameObject.Find("pacman");

            if (clyde == null || pinky == null || inky == null || blinky == null)
            {
                Debug.Log("One of ghosts are NULL");
            }
            if (pacman == null)
            {
                Debug.Log("Pacman is NULL");
            }

            gui = GameObject.FindObjectOfType<GameGUINavigation>();

            if (gui == null)
            {
                Debug.Log("GUI Handle Null!");
            }

        }

        public void LoseLife()
        {
            // El Codigo que tengo que se tiene que cambiar para cambiar el jugador

        }

        public static void DestroySelf()
        {
            score = 0;
            lives = 1;
            Destroy(GameObject.Find("Game Manager"));
        }
    }
}