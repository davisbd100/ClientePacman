using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;
using UnityEditor;


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
            register.AddUser(player);
        }
    }

    private bool Validations()
    {
        bool resultado = false;
        ValidarCampos validarCampos = new ValidarCampos();

        if (validarCampos.ValidarCorreo(Email_InputField.text) == ValidarCampos.ResultadosValidacion.Correoinválido)
        {
            ShowMessage(InvalidEmail_Message);

        }
        else if (validarCampos.ValidarPassword(Password_InputField.text) == ValidarCampos.ResultadosValidacion.ContraseñaInválida)
        {
            ShowMessage(InvalidPassword_Message);
        }
        else
        {
            resultado = true;
        }

        return resultado;
    }

    private bool CheckEmpty()
    {
        bool resultado = false;
        if (User_InputField.text == string.Empty || Name_InputField.text == string.Empty ||
            Password_InputField.text == string.Empty || Email_InputField.text == string.Empty)
        {
            ShowMessage(Empty_FieldsMessage);
        }
        else
        {
            resultado = true;
        }

        return resultado;
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


