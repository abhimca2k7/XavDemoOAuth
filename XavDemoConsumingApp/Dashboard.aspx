<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="XavDemoConsumingApp.Dashboard" %>

<!DOCTYPE html>
<html>
<head>
    <title>Xav</title>
    <meta name="google-signin-client_id" content="95492946456-7shrpu60llk283p4s59115von713um54.apps.googleusercontent.com">
    <link href="Content/bootstrap-social.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <link href="Content/metisMenu.min.css" rel="stylesheet" />
    <link href="Content/morris.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/startmin.css" rel="stylesheet" />
    <link href="Content/timeline.css" rel="stylesheet" />
    <style type="text/css">
        #centerBox {
            position: absolute;
            height: 500px;
            width: 500px;
            margin: -100px 0 0 -200px;
            top: 50%;
            left: 50%;
        }
    </style>
</head>
<body>
    <script>
        function getParameterByName(name, url) {
            if (!url) url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }

        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                window.location.assign("Default.aspx");
            });
        }

        function onLoad() {
            gapi.load('auth2', function () {
                gapi.auth2.init();
            });
            var cred = getParameterByName('CRED');
            var name = document.getElementById('txtName');
            name.textContent = cred;
        }
    </script>
    <div>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <ul class="nav navbar-nav navbar-left navbar-top-links">
                <li><a href="#" style="text-decoration: none;">Xavient Demo App</a></li>
            </ul>
            <ul class="nav navbar-right navbar-top-links">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="signOut();" style="text-decoration: none;">
                        Sign out</a>
                </li>
            </ul>
        </nav>
        <div id="centerBox">
            <label id="Label1"><u>User Name</u></label>
            <label id="txtName"></label>
        </div>
    </div>
    <%-- <a href="#" onclick="signOut();">Sign out</a>--%>

    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
</body>
</html>
