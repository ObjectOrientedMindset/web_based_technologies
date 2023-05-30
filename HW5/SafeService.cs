using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;


/// <summary>
/// Summary description for SafeService
/// </summary>
public class SafeService
{
    public AuthHeader header;
    [WebMethod]
    [SoapHeader("header")]
    public bool checkLogin()
    {
        if (header.UserName == "username" &&
        header.Password == "password")
            return true;
        else throw new HttpException(401, "Not authorized");
    }
}
