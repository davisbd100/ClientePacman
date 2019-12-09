using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class IPDirection : MonoBehaviour
{
    public InputField input;
    public void SetDirectionIP()
    {
        CurrentPlayer.IPDirection = input.text;
        Debug.Log(CurrentPlayer.IPDirection);
        SceneManager.LoadScene("menu");
    }
}
