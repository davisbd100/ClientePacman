using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

public class EnergizerMP : MonoBehaviour {

    private GameManager gm;

	// Use this for initialization
	void Start ()
	{
	    gm = GameObject.Find("Game Manager").GetComponent<GameManager>();
        if( gm == null )    Debug.Log("Energizer did not find Game Manager!");
	}

    void OnTriggerEnter2D(Collider2D col)
    {
        if(col.name == "pacman(Clone)")
        {
            // gm.ScareGhosts();
            NetworkServer.Destroy(gameObject);
        }
    }
}
