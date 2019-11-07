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
	
	public void Play()
	{
		SceneManager.LoadScene("game");
	}
}
