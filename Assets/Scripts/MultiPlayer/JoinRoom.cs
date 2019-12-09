using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking.Match;

public class JoinRoom : MonoBehaviour
{
    LobbyManager lobby;
    public GameObject prefabHost;
    public GameObject parentForHost;
    // Start is called before the first frame update
    void Start()
    {
        lobby = GameObject.FindGameObjectWithTag("LMManager").GetComponent<LobbyManager>();
    }

    public void RefreshRoom()
    {
        if (lobby == null)
        {
            lobby = GameObject.FindGameObjectWithTag("LMManager").GetComponent<LobbyManager>();
        }
        if (lobby.matchMaker == null)
        {
            lobby.StartMatchMaker();
        }
        lobby.matchMaker.ListMatches(0, 20, "", true, 0, 0, onMatchList);
    }

    private void onMatchList(bool success, string extendedInfo, List<MatchInfoSnapshot> matchList)
    {
        if (!success)
        {
            Debug.Log("Please refresh");
            // Refresh List
        }
        else
        {
            foreach (MatchInfoSnapshot match in matchList)
            {
                GameObject ListGameObject = Instantiate(prefabHost);
                ListGameObject.transform.SetParent(parentForHost.transform);
                HostSetup hostSetup = ListGameObject.GetComponent<HostSetup>();
                hostSetup.Setup(match);
            }
        }
    }
}
