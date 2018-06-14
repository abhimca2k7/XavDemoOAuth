<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XavDemoConsumingApp._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-login100">
        <div class="wrap-login100">
            <span class="login100-form-title p-b-26">Xav Portal - Log In 
            </span>
            <div class="g-signin2" data-onsuccess="onSignIn"></div>
        </div>
    </div>
</asp:Content>--%>

<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XavDemoConsumingApp._Default" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title>Xavient</title>
    <meta name="google-signin-client_id" content="95492946456-7shrpu60llk283p4s59115von713um54.apps.googleusercontent.com">
    <meta charset="utf-8" />
    <link href="Content/main.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/util.css" rel="stylesheet" />
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script type="text/javascript">
        function onSignIn(googleUser) {
            var profile = googleUser.getBasicProfile();
            window.location = "Dashboard.aspx?CRED=" + profile.getName();
        }
        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                window.location.assign("Default.aspx");
            });
        }
    </script>

</head>
<body>
    <form id="Form1" runat="server">
        <div id="body">
            <div class="container-login100">
                <div class="wrap-login100">
                    <span class="login100-form-title p-b-26">Xav Portal - Log In 
                    </span>
                    <div class="g-signin2" data-onsuccess="onSignIn"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>