using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class CurrentPlayer
{
    public static string Username { get; set; }
    public static string Email { get; set; }
    public static string Código { get; set; }


}

public static class LoginStatus
{
    public static EloginStatus Status { get; set; }

   public enum EloginStatus
    {
        WrongCredentials,
        NotConfirmed,
        Succces,
        Clear
    }
}