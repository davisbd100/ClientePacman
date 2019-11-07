using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GUISFX : MonoBehaviour
{
    public AudioSource Confirm;
    public AudioSource GetOut;
    public AudioSource OnMouse;

    public void PlayConfirm()
    {
        Confirm.Play();
    }
    public void PlayGetOut()
    {
        GetOut.Play();
    }
    public void PlayOnMouse()
    {
        OnMouse.Play();
    }
}
