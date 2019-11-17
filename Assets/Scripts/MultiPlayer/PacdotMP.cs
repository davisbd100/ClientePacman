using UnityEngine;
using System.Collections;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;

public class PacdotMP : MonoBehaviour {

	void OnTriggerEnter2D(Collider2D other)
	{
		if(other.name == "pacman(Clone)")
		{
			GameManager.score += 10;
		    GameObject[] pacdots = GameObject.FindGameObjectsWithTag("pacdot");
            NetworkServer.Destroy(gameObject);
            if (pacdots.Length == 1)
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
		        // Necesario cambiar para reiniciar el nivel GameObject.FindObjectOfType<GameGUINavigation>().LoadLevel();
		    }
		}
	}
}
