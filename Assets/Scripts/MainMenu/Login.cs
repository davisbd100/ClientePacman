using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;
using UnityEditor;
using System.Net.Sockets;
using System.Threading.Tasks;
using UnityEngine.SceneManagement;


public class Login : MonoBehaviour
{
    public TMP_InputField User_InputField;
    public TMP_InputField Password_InputField;
    public GameObject Loading_Message;
    public GameObject Empty_FieldsMessage;
    public GameObject Wrong_Credentials;
    public GameObject ConectionError_Message;


    public void Log_in()
    {
        bool IsLoginTaskDone = false;
        if(CheckEmpty() && Validations())
        {
            if (LoginAsync().Wait(30))
            {
                ShowMessage(ConectionError_Message);   
            }
            IsLoginTaskDone = false;
        }
        if (IsLoginTaskDone == true)
        {
            Checkstatus();
            LoginStatus.Status = LoginStatus.EloginStatus.Clear;
        }

    }

    public async Task LoginAsync()
    {
        LoadingMessageStatus(true);
        try
        {
            await Task.Run(async () =>
            {
                Debug.Log("Task started");
                await DoLogin();
                Debug.Log("Task stopped");
            });
        }
        catch (SocketException)
        {
            ShowMessage(ConectionError_Message);
        }
        catch (TimeoutException)
        {
            ShowMessage(ConectionError_Message);
        }
        finally
        {
            LoadingMessageStatus(false);
        }
        LoadingMessageStatus(false);
        
    }

    public Task DoLogin()
    {
        Debug.Log("Pasé por aquí");
        UtilitiesHash utilitiesHash = new UtilitiesHash();
        LoginServiceClient login;
        login = new LoginServiceClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/LoginService"));
        ILoginServiceUsuario usuario = new ILoginServiceUsuario();
        usuario.Username = User_InputField.text;
        usuario.Password = utilitiesHash.PassHash(Password_InputField.text);
        Debug.Log(usuario.Password);
        try
        {
            switch (login.ValidateUser(usuario))
            {
                case DBOperationResultAddResult.WrongCredentials:
                    LoginStatus.Status = LoginStatus.EloginStatus.WrongCredentials;
                    break;
                case DBOperationResultAddResult.ConfirmationIsFalse:
                    LoginStatus.Status = LoginStatus.EloginStatus.NotConfirmed;
                    CurrentPlayer.Email = login.GetEmail(usuario);
                    CurrentPlayer.Username = usuario.Username;
                    Debug.Log(CurrentPlayer.Email);
                    break;
                case DBOperationResultAddResult.Success:
                    LoginStatus.Status = LoginStatus.EloginStatus.Succces;
                    CurrentPlayer.Username = usuario.Username;
                    break;
            }            
        }
        catch (SocketException)
        {
            throw new SocketException();
        }
        catch (TimeoutException)
        {
            throw new TimeoutException();
        }
        return Task.CompletedTask;
    }



    private bool Validations()
    {
        bool result;
        ValidarCampos validarCampos = new ValidarCampos();
        if (validarCampos.ValidarPassword(Password_InputField.text) == ValidarCampos.ResultadosValidacion.ContraseñaInválida)
        {
            result = false;
            ShowMessage(Wrong_Credentials);
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
        if (User_InputField.text == string.Empty || Password_InputField.text == string.Empty)
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

    private void Checkstatus()
    {
        if (LoginStatus.Status == LoginStatus.EloginStatus.WrongCredentials)
        {
           ShowMessage(Wrong_Credentials);
        }
        else if (LoginStatus.Status == LoginStatus.EloginStatus.NotConfirmed)
        {
            Debug.Log("Confirm code");
        }
        else if (LoginStatus.Status == LoginStatus.EloginStatus.Succces)
        {

            Debug.Log("Sesión iniciada");
            Debug.Log(CurrentPlayer.Username);
        }
    }

    public void ShowMessage(GameObject window)
    {

        window.SetActive(true);
    }

    public void CloseMessage(GameObject window)
    {

        window.SetActive(false);

    }

    private void LoadingMessageStatus(bool status)
    {
        Loading_Message.SetActive(status);

    }
}
