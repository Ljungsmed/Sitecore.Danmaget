<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DMOneColBanner.ascx.cs" Inherits="Sitecore.Danmaget.layouts.DanMagnet.DMOneColBanner" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<sc:XslFile ID="Xslfile1" runat="server" Path="/xsl/DanMagnet/DMBanner.xslt" />
<div id="contentarea">
    <div id="contentareacontainer">
        <h1>
            <sc:Text ID="Text1" runat="server" Field="title" />
        </h1>
        <sc:Text ID="Text2" runat="server" Field="text" />
    </div>
</div>