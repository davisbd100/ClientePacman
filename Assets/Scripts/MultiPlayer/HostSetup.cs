using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking.Match;
using UnityEngine.UI;
public class HostSetup : MonoBehaviour
{
    MatchInfoSnapshot match;
    public Text hostName;
    LobbyManager lobby;
    // Start is called before the first frame update
    void Start()
    {
        lobby = GameObject.FindGameObjectWithTag("LMManager").GetComponent<LobbyManager>();
    }

    public void Setup(MatchInfoSnapshot _match)
    {
        match = _match;
        hostName.text = "Partidad de: " + match.name;
    }
    public void Join()
    {
        if (lobby == null)
        {
            lobby = GameObject.FindGameObjectWithTag("LMManager").GetComponent<LobbyManager>();
        }
        lobby.matchMaker.JoinMatch(match.networkId, "", "", "", 0, 0, lobby.OnMatchJoined);
    }
}
