using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;
using UnityEditor;
using System.Net.Sockets;
using System.Threading.Tasks;
using UnityEngine.SceneManagement;

public class Confirmation : MonoBehaviour
{
    public TMP_InputField Code_InputField;
    public GameObject ConectionError_Message;
    public GameObject Empty_Message;
    public GameObject Loading_Message;
    public GameObject InvalidCode_Message;
    public GameObject Done_Message;
    public GameObject NewCode_Message;
    public GameObject WrongCode;

    public void SendConfirmation()
    {
        if(Validations() && CheckEmpty())
        {
            if (ConfirmAsync().Wait(15))
            {
                ShowMessage(ConectionError_Message);
            }
        }
    }

    public void GenerateNewCode()
    {
        if (NewCodeAsync().Wait(15))
        {
            ShowMessage(ConectionError_Message);
        }
    }

    public async Task ConfirmAsync()
    {
        bool status = true;
        LoadingMessageStatus(true);
        try
        {
            await Task.Run(async () =>
            {
                Debug.Log("Task started");
                await Confirm();
                Debug.Log("Task stopped");
            });
        }
        catch (SocketException)
        {
            status = false;
            ShowMessage(ConectionError_Message);
        }
        catch (TimeoutException)
        {
            status = false;
            ShowMessage(ConectionError_Message);
        }
        catch (WrongCodeException)
        {
            status = false;
            ShowMessage(WrongCode);
        }
        finally
        {
            LoadingMessageStatus(false);
        }
        LoadingMessageStatus(false);
        if (status)
        {
            ShowMessage(Done_Message);
        }

    }

    public async Task NewCodeAsync()
    {
        bool status = true;
        LoadingMessageStatus(true);
        try
        {
            await Task.Run(async () =>
            {
                Debug.Log("Task started");
                await NewCode();
                Debug.Log("Task stopped");
            });
        }
        catch (SocketException)
        {
            status = false;
            ShowMessage(ConectionError_Message);
        }
        catch (TimeoutException)
        {
            status = false;
            ShowMessage(ConectionError_Message);
        }
        finally
        {
            LoadingMessageStatus(false);
        }
        LoadingMessageStatus(false);

        if (status)
        {
            ShowMessage(NewCode_Message);
        }

    }

    public Task Confirm()
    {
        ConfirmationServicesClient confirmation;
        confirmation = new ConfirmationServicesClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/ConfirmationServices"));
        IConfirmationServicesJugador jugador = new IConfirmationServicesJugador();
        jugador.Código = Code_InputField.text;
        jugador.Correo = CurrentPlayer.Email;
        Debug.Log(CurrentPlayer.Código);
        Debug.Log(CurrentPlayer.Email);

        try
        {
            if(confirmation.ChangeConfirmationStatus(jugador) == 0)
            {
                throw new WrongCodeException();
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

    public Task NewCode()
    {
        System.Random generator = new System.Random();
        ConfirmationServicesClient confirmation;
        confirmation = new ConfirmationServicesClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://localhost:8091/ConfirmationServices"));
        IConfirmationServicesJugador jugador = new IConfirmationServicesJugador();
        jugador.Código = generator.Next(0, 999999).ToString("D6");
        jugador.Correo = CurrentPlayer.Email;

        try
        {
            confirmation.GenerateNewCode(jugador);
        }
        catch (SocketException)
        {
            throw new SocketException();

        }
        catch (TimeoutException)
        {
            throw new TimeoutException();

        }
        CurrentPlayer.Código = jugador.Código;
        return Task.CompletedTask;
    }



    private bool CheckEmpty()
    {
        bool result;
        if (Code_InputField.text == string.Empty)
        {
            result = false;
            ShowMessage(Empty_Message);
        }
        else
        {
            result = true;
        }

        return result;
    }

    private bool Validations()
    {
        bool result;
        ValidarCampos validarCampos = new ValidarCampos();
        if(validarCampos.ValidarNúmero(Code_InputField.text) == ValidarCampos.ResultadosValidacion.NúmeroInválido)
        {
            result = false;
            ShowMessage(InvalidCode_Message);
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

    private void LoadingMessageStatus(bool status)
    {
        Loading_Message.SetActive(status);
    }



}
