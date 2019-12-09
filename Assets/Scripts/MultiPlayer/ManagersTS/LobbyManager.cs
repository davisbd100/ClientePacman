using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class LobbyManager : NetworkLobbyManager
{
    public GameObject lobby;

    private void Start()
    {
        lobby.SetActive(false);
    }
    public override void OnStartHost()
    {
        base.OnStartHost();
        Debug.Log("Game created");
        lobby.SetActive(true);
    }
}
