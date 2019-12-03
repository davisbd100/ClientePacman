using UnityEngine;
using UnityEngine.SceneManagement;

public class OnlineOptionsManager : MonoBehaviour
{
    public void GoToLogin()
    {
        Debug.Log(CurrentPlayer.Username);
        SceneManager.LoadScene("login");
    }
   
    public void GoToRegister()
    {
        SceneManager.LoadScene("Register");
    }
}
