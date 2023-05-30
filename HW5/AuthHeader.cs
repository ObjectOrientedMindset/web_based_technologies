using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AuthHeader
/// </summary>
public class AuthHeader : System.Web.Services.Protocols.SoapHeader
{
    public string UserName;
    public string Password;
}