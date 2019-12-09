using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class MenuNavigation : MonoBehaviour {

	public void MainMenu()
	{
        SceneManager.LoadScene("menu");
    }

	public void Quit()
	{
		Application.Quit();
	}
	
	public void PlayOnePlayer()
	{
		SceneManager.LoadScene("game_singleplayer");
	}
}
