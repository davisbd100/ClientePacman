using TMPro;
using UnityEngine;
using Pacman_Sevices;
using System;
using System.ServiceModel;
using System.Net.Sockets;
using System.Threading.Tasks;
using UnityEngine.SceneManagement;

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
    public GameObject Loading_Message;


    public void StartRegister()
    {
        if (CheckEmpty() == true && Validations() == true)
        {
            if (DoRegisterAsync().Wait(30))
            {
                ShowMessage(ConectionError_Message);
            }
        }

    }

    public async Task DoRegisterAsync()
    {
        bool status = true;
        LoadingMessageStatus(true);
        try
        {
            await Task.Run(async () =>
            {
                Debug.Log("Task started");
                await RegisterPlayer();
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
        catch (DuplicateRecordException)
        {
            status = false;
            ShowMessage(ExistingUser_Message);
        }
        finally
        {
            LoadingMessageStatus(false);
        }
        LoadingMessageStatus(false);
        if (status)
        {
            SceneManager.LoadScene("Confirmacion");
        }

    }

    public Task RegisterPlayer()
    {

        System.Random generator = new System.Random();
        UtilitiesHash utilitiesHash = new UtilitiesHash();
        RegisterServiceClient register;
        register = new RegisterServiceClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://" + CurrentPlayer.IPDirection + ":8091/RegisterServices"));
        IRegisterServiceJugador player = new IRegisterServiceJugador();        
        player.Correo = Email_InputField.text;
        player.Nombre = Name_InputField.text;
        player.Username = User_InputField.text;
        player.Password = utilitiesHash.PassHash(Password_InputField.text);
        player.Código = generator.Next(0, 999999).ToString("D6");

        try
        {
            if (CheckInDb(player))
            {
                switch (register.AddUser(player))
                {
                    case DBOperationResultAddResult.Success:
                        SendEmail(player);
                        break;
                    case DBOperationResultAddResult.SQLError:
                        throw new TimeoutException();
                    case DBOperationResultAddResult.NullObject:
                        throw new SocketException();
                    
                }
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
        catch (DuplicateRecordException)
        {
            throw new DuplicateRecordException();
        }
        CurrentPlayer.Username = player.Username;
        CurrentPlayer.Email = player.Correo;
        CurrentPlayer.Código = player.Código;
        return Task.CompletedTask;
    }
 

    private bool CheckInDb(IRegisterServiceJugador jugador)
    {
        bool result = false;
        RegisterServiceClient register;
        register = new RegisterServiceClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://" + CurrentPlayer.IPDirection + ":8091/RegisterServices"));
        IRegisterServiceJugador player = jugador;

        switch (register.SerachUserInDB(player))
        {
            case DBOperationResultAddResult.Success:
                result = true;
                break;
            case DBOperationResultAddResult.ExistingRecord:
                Debug.Log("entra aquí");
                throw new DuplicateRecordException();
            case DBOperationResultAddResult.SQLError:
                Debug.Log("sql error");
                throw new TimeoutException();
            case DBOperationResultAddResult.NullObject:
                throw new SocketException();

        }
        
        return result;
    }

    private void SendEmail(IRegisterServiceJugador jugador)
    {
        ConfirmationServicesClient confirmation;
        confirmation = new ConfirmationServicesClient(new NetTcpBinding(SecurityMode.None), new EndpointAddress("net.tcp://" + CurrentPlayer.IPDirection + ":8091/ConfirmationServices"));
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

    private void LoadingMessageStatus(bool status)
    {
        Loading_Message.SetActive(status);
    }


}


