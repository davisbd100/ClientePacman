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
        PlayerPrefs.SetString("LoginScene", SceneManager.GetActiveScene().name);
    }
    public void Multiplayer()
    {
        SceneManager.LoadScene("PacmanMultiplayer");
    }
    public void MainMenuMultiplayer()
    {
        SceneManager.LoadScene("menuLogIn");
    }
}
