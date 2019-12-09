using System;
using System.Collections;
using System.Collections.Generic;
using System.ServiceModel;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;


public partial class Chat_Script : NetworkBehaviour
{
    // Start is called before the first frame update
    String mensaje;
    public GameObject chatPanel;
    public GameObject textObject;
    public int maxMessages = 25;
    public InputField inputFieldChat;
    [SerializeField]
    List<Message> messages = new List<Message>();
    void Start()
    {
        Connect();
    }
    public void OnDestroy()
    {
        Disconnect();
    }
    void Update()
    {
        if (mensaje != "")
        {
            sendMessageToChat(mensaje);
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
            client = new ChatServiceClient(new System.ServiceModel.InstanceContext(this), new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://" + CurrentPlayer.IPDirection + ":8091/ChatServices"));
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
    public void sendMessageToChat(string mensaje)
    {
        if (messages.Count >= maxMessages)
        {
            Destroy(messages[0].textObject.gameObject);
            messages.Remove(messages[0]);
        }
        Message newMessage = new Message();
        newMessage.text = mensaje;
        GameObject newText = Instantiate(textObject, chatPanel.transform);
        newMessage.textObject = newText.GetComponent<Text>();
        newMessage.textObject.text = newMessage.text;
        messages.Add(newMessage);
    }
    public class Message
    {
        public String text;
        public Text textObject;
    }
}