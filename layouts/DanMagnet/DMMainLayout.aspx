<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DMMainLayout.aspx.cs" Inherits="Sitecore.Danmaget.layouts.DanMagnet.DMMainLayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/css/danmagnet.css" rel="stylesheet" type="text/css" media="all" />
    <sc:VisitorIdentification runat="server" />
  </head>
  <body>
  <form method="post" runat="server" id="mainform">
    <div id="outercontainer">
        <div id="toparea">
            <div id="topareacontainer">
                <div id="logoarea">
                    <img src="/images/danmagnet/DM_logo.jpg" />
                </div>
                <sc:XslFile ID="Xslfile1" runat="server" Path="/xsl/DanMagnet/DMTopMenu.xslt" />
            </div>
            
        </div>
        <div id="innercontainer">
            <sc:Placeholder runat="server" Key="main content" />
        </div>
    </div>
  </form>
  </body>
</html>
