using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;
using UnityEditor;
using System.Net.Sockets;

public class Register : MonoBehaviour
{
    // Start is called before the first frame update
    public TMP_InputField Name_InputField;
    public TMP_InputField User_InputField;
    public TMP_InputField Password_InputField;
    public TMP_InputField Email_InputField;
    public GameObject Empty_FieldsMessage;
    public GameObject InvalidEmail_Message;
    public GameObject InvalidPassword_Message;
    public GameObject ConectionError_Message;
    public GameObject ExistingUser_Message;

    public void RegisterPlayer()
    {
        if (CheckEmpty() == true && Validations() == true)
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
            try
            {
                if (CheckInDb(player))
                {
                    register.AddUser(player);
                    SendEmail(player);
                    Debug.Log("uwu");
                }               
            }
            catch(SocketException)
            {
                ShowMessage(ConectionError_Message);
            }
        }
    }

    private bool CheckInDb(IRegisterServiceJugador jugador)
    {
        bool result;
        RegisterServiceClient register;
        register = new RegisterServiceClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/RegisterServices"));
        IRegisterServiceJugador player = jugador;

        if(register.SerachUserInDB(player) == DBOperationResultAddResult.Success)
        {
            result = true;
        }
        else
        {
            result = false;
            ShowMessage(ExistingUser_Message);
        }
        return result;
    }

    private void SendEmail(IRegisterServiceJugador jugador)
    {
        ConfirmationServicesClient confirmation;
        confirmation = new ConfirmationServicesClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/ConfirmationServices"));
        IConfirmationServicesJugador player = new IConfirmationServicesJugador();
        player.Correo = jugador.Correo;
        player.Código = jugador.Código;
        confirmation.SendEmail(player);
        
    }

    private bool Validations()
    {
        bool result;
        ValidarCampos validarCampos = new ValidarCampos();

        if (validarCampos.ValidarCorreo(Email_InputField.text) == ValidarCampos.ResultadosValidacion.Correoinválido)
        {
            result = false;
            ShowMessage(InvalidEmail_Message);

        }
        else if (validarCampos.ValidarPassword(Password_InputField.text) == ValidarCampos.ResultadosValidacion.ContraseñaInválida)
        {
            result = false;
            ShowMessage(InvalidPassword_Message);
        }
        else
        {
            result = true;
        }

        return result;
    }

    private bool CheckEmpty()
    {
        bool result;
        if (User_InputField.text == string.Empty || Name_InputField.text == string.Empty ||
            Password_InputField.text == string.Empty || Email_InputField.text == string.Empty)
        {
            result = false;
            ShowMessage(Empty_FieldsMessage);
        }
        else
        {
            result = true;
        }

        return result;
    }

    public void ShowMessage(GameObject window)
    {
        window.SetActive(true);
    }

    public void CloseMessage(GameObject window)
    {
        window.SetActive(false);
    }


}


