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

    // Verificacao dos dados e escolha da operacao a ser feita
    public string Calc(string Valor_A, String Operacao, string Valor_B, int NumDigDec = 1)
    {
        Decimal Result;
        Decimal val1;
        Decimal val2;

        if ((decimal.TryParse(Valor_A, out val1) == true))
        {
            if (decimal.TryParse(Valor_B, out val2))
            {

                switch (Operacao)
                {
                    case ("+"):
                        Result = Add(val1, val2);
                        return decimal.Round(Result, NumDigDec, MidpointRounding.AwayFromZero).ToString();

                    case ("-"):
                        Result = Subtract(val1, val2);
                        return decimal.Round(Result, NumDigDec, MidpointRounding.AwayFromZero).ToString();

                    case ("*"):
                        Result = Multiply(val1, val2);
                        return decimal.Round(Result, NumDigDec, MidpointRounding.AwayFromZero).ToString();

                    case ("/"):
                        if (val2 == 0)
                        {
                            return "Infinito";
                        }

                        else
                        {
                            Result = Divide(val1, val2);
                            return decimal.Round(Result, NumDigDec, MidpointRounding.AwayFromZero).ToString();
                        }                       

                    default:
                        return "Valores Invalidos";              
                }

            }
            else
            {
                return "Valores Invalidos";
            }
        }
        else
        {
            return "Valores Invalidos";
        }
    }

    // Conta de somar
    public decimal Add(decimal a, decimal b)
    {
        return a + b;
    }

    // Conta de subtrair
    public decimal Subtract(decimal a, decimal b)
    {
        return a - b;
    }

    // Conta de multiplicar
    public decimal Multiply(decimal a, decimal b)
    {
        return a * b;
    }

    // Conta de dividir
    public decimal Divide(decimal a, decimal b)
    {
        return a / b;
    }

}