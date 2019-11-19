using UnityEngine;
using System.Security.Cryptography;
using System;
using System.Text;

public class Utilities : MonoBehaviour
{
    /// <summary>Hashea un parametro ingresado.</summary>
    /// <param name="data">El parametro.</param>
    /// <returns>El parametro en SHA1</returns>
    private String PassHash(String data)
    {
        SHA1 sha = SHA1.Create();
        byte[] hashData = sha.ComputeHash(Encoding.Default.GetBytes(data));
        StringBuilder stringBuilderValue = new StringBuilder();

        for (int i = 0; i < hashData.Length; i++)
        {
            stringBuilderValue.Append(hashData[i].ToString());
        }
        return stringBuilderValue.ToString();
    }


}
