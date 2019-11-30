using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DuplicateRecordException : Exception
{
    public DuplicateRecordException() :
      base("Correo o usuario registrado en el sistema")
    { }
}
