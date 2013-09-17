<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DMTwoCol.ascx.cs" Inherits="Sitecore.Danmaget.layouts.DanMagnet.DMTwoCol" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<sc:XslFile ID="Xslfile1" runat="server" Path="/xsl/DanMagnet/DMBanner.xslt" />
<div id="contentarea">
    <div id="contentareacontainerleft">
        <h1>
            <sc:Text ID="Text1" runat="server" Field="title" />
        </h1>
        <sc:Text ID="Text2" runat="server" Field="text" />
    </div>
    <div id="rightcolumn">test
    </div>
</div>