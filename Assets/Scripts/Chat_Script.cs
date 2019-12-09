using System;
using System.Collections;
using System.Collections.Generic;
using System.ServiceModel;
using TMPro;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;


public partial class Chat_Script : NetworkBehaviour
{
    // Start is called before the first frame update
    String mensaje;
    public Text chatText;
    public InputField inputFieldChat;
    void Start()
    {
        Connect();
    }

    void Update()
    {
        if (mensaje != "")
        {
            chatText.text += "\n" + mensaje;
            mensaje = "";
        }
        if (inputFieldChat.isFocused && inputFieldChat.text != "" && Input.GetKey(KeyCode.Return))
        {
            client.SendMsg(inputFieldChat.text, ID);
            inputFieldChat.text = "";
        }
    }
}
public partial class Chat_Script : IChatServiceCallback
{
    bool isConnected = false;
    ChatServiceClient client;
    int ID;
    void Connect()
    {
        if (!isConnected)
        {
            client = new ChatServiceClient(new System.ServiceModel.InstanceContext(this), new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/ChatServices"));
            ID = client.Connect(CurrentPlayer.Username);
            isConnected = true;
            client.SendMsg("connected to chat!!", ID);
        }
    }
    void Disconnect()
    {
        if (isConnected)
        {
            client.Disconnect(ID);
            client = null;
            isConnected = false;
        }
    }
    public void SendMessage()
    {
        if (inputFieldChat.isFocused && inputFieldChat.text != "")
        {
            client.SendMsg("", ID);
            inputFieldChat.text = "";
        }
    }

    public void MsgCallback(string msg)
    {
        mensaje = msg;
    }
    public override void OnNetworkDestroy()
    {
        Debug.Log("Desconecta");
        Disconnect();
    }
}