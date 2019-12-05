using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;

public class MainMenu : MonoBehaviour
{
    public InputField matchNameInput;
    public LobbyManager lobbyManager;
    public GameObject joinRoomObject;
    public GameObject lobbyHost;
    public GameObject lobbyJoin;
    JoinRoom joinRoom;

    public void OnClickHostButton()
    {
        lobbyManager.StartMatchMaker();
        lobbyManager.matchMaker.CreateMatch(matchNameInput.text, (uint)lobbyManager.maxPlayers, true, "", "", "", 0, 0, lobbyManager.OnMatchCreate);
        lobbyHost.SetActive(true);
    }

    public void OnClickJoinButton()
    {
        lobbyJoin.SetActive(true);
        lobbyManager.StartMatchMaker();
        joinRoomObject.SetActive(true);
        joinRoom = joinRoomObject.GetComponent<JoinRoom>();
        joinRoom.RefreshRoom();
    }
}
