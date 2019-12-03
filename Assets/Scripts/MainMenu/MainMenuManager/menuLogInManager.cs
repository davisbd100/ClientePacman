using UnityEngine;
using UnityEngine.SceneManagement;

public class menuLogInManager : MonoBehaviour
{
    public void LogOut()
    {
        CurrentPlayer.Username = null;
        CurrentPlayer.Email = null;
        CurrentPlayer.Código = null;
        SceneManager.LoadScene("menu");
    }
}
