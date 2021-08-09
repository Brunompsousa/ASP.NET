using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MaquinaCalcularSimples
/// </summary>
public class MaquinaCalcularSimples
{
    private const decimal Cdecimais = 2;

    public MaquinaCalcularSimples()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public decimal Add(decimal a, decimal b)
    {
        return a + b;
    }

    public decimal Subtract(decimal a, decimal b)
    {
        return a - b;
    }

    public decimal Multiply(decimal a, decimal b)
    {
        return a * b;
    }

    public decimal Divide(decimal a, decimal b)
    {
        return a / b;
    }

}