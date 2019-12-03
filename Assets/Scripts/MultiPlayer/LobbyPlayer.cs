using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;


public class LobbyPlayer : NetworkLobbyPlayer
{
    public GameObject parentPref;
    public override void OnClientEnterLobby()
    {
        base.OnClientEnterLobby();
        parentPref = GameObject.FindGameObjectWithTag("parentPref");
        gameObject.transform.SetParent(parentPref.transform);
    }
}
