using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;


public class LobbyPlayer : NetworkLobbyPlayer
{
    GameObject parentPref;
    public Button buttonJoin;
    public Text text;
    public Text buttonJoinText;
    public override void OnClientEnterLobby()
    {
        base.OnClientEnterLobby();
        parentPref = GameObject.FindGameObjectWithTag("parentPref");
        parentPref.SetActive(true);
        gameObject.transform.SetParent(parentPref.transform);
    }

    public override void OnStartLocalPlayer()
    {
        base.OnStartLocalPlayer();
        if (isLocalPlayer)
        {
            Setup();
        }
        else
        {
            SetupOtherPlayer();
        }
    }
    private void Setup()
    {
        text.text = "Player 1";
        buttonJoin.enabled = true;
        buttonJoinText.text = "Play";
    }
    private void SetupOtherPlayer()
    {
        buttonJoin.enabled = false;
        Debug.Log("fnnfnfnf ");
    }
    public void OnClickJoinButton()
    {
        SendReadyToBeginMessage();
    }
}
