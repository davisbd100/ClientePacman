using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;

public class Register : MonoBehaviour
{
    // Start is called before the first frame update
    public TMP_InputField Name_InputField;
    public TMP_InputField User_InputField;
    public TMP_InputField Password_InputField;
    public TMP_InputField Email_InputField;


    public void register()
    {
        System.Random generator = new System.Random();
        RegisterServiceClient register;
        register = new RegisterServiceClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/RegisterServices"));
        IRegisterServiceJugador player = new IRegisterServiceJugador();
        player.Correo = Email_InputField.text;
        player.Nombre = Name_InputField.text;
        player.Username = User_InputField.text;
        player.Password = Password_InputField.text;
        player.Código = generator.Next(0, 999999).ToString("D6");

        register.AddUser(player);


    }
}
