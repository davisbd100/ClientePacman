using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrongCodeException : Exception
{
    public WrongCodeException() :
      base("Correo o usuario registrado en el sistema")
    { }
}
