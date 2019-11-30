using System.Text.RegularExpressions;
using UnityEngine;

public class ValidarCampos : MonoBehaviour
{
    public enum ResultadosValidacion
    {
        ContraseñaInválida,
        ContraseñaVálida,
        Correoinválido,
        CorreoVálido,
        UsernameInválido,
        UsernameVálido,
        NombreVálido,
        NombreInválido,
        NúmeroVálido,
        NúmeroInválido

    }

    /// <summary>  Valida la estructura correcta de una contraseña. Debe contener por lo menos 8 caracteres, una mayúscula y un número</summary>
    /// <param name="contraseña">  contraseña.</param>
    /// <returns>Resultado de la validación</returns>
    public ResultadosValidacion ValidarPassword(string contraseña)
    {
        string patrón = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,50}$";

        if (Regex.IsMatch(contraseña, patrón))
        {
            return ResultadosValidacion.ContraseñaVálida;
        }
        return ResultadosValidacion.ContraseñaInválida;

    }

    public ResultadosValidacion ValidarCorreo(string correo)
    {
        string patrón = @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";
        if (Regex.IsMatch(correo, patrón))
        {
            return ResultadosValidacion.CorreoVálido;
        }
        return ResultadosValidacion.Correoinválido;
    }

    /// <summary>  Validar que el número no tenga letras ni caracteres especiales</summary>
    /// <param name="númeroInt">número int.</param>
    /// <returns>Resultado de la validación</returns>
    public ResultadosValidacion ValidarNúmero(string númeroInt)
    {
        string patrón = @"^[0-9]*$";
        if (Regex.IsMatch(númeroInt, patrón))
        {
            return ResultadosValidacion.NúmeroVálido;
        }
        return ResultadosValidacion.NúmeroInválido;
    }


}

