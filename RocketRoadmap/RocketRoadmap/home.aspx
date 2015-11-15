﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="RocketRoadmap.home" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Rocket Roadmap</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            padding-top: 70px;
            /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
            /*cursor: url(/RocketRoadmap/images/Rocket.cur), auto;*/
            }


    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <form id="form1" runat="server">
<input type =hidden name ="__EVENTTARGET" value ="">
<input type =hidden name ="__EVENTARGUMENT" value ="">
                                    <asp:ScriptManager runat="server" EnablePageMethods="true"></asp:ScriptManager>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display-->
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Enterprise Architecture Roadmap</a>
    </div>
       
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav pull-right">
                <li><asp:Textbox id = "search_text" runat="server" placeholder ="Search..."  /><asp:Button ID="searchb" runat="server" text ="Search" OnClick="searchRoadmaps"/></li>
                <li><a data-toggle="modal" href="#roadModal" class="pull-left">New Roadmap</a></li>
                <li><a href="index.aspx" class="pull-right">Logout</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->

   
    <!-- /.container -->
</nav>

    <div class="modal fade" id="roadModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="roadmapmodal">New Roadmap</h4>
                    </div>
                    <div class="modal-body">
                        <h2><u>Roadmap Name:</u></h2>
                        <input type="text" id="roadmap_Name" size="60" runat="server" />
                        <p></p>
                        <h2><u>Roadmap Description</u></h2>
                        <textarea id="roadmap_Desc" rows="4" cols="75" runat="server"></textarea>
                        <p></p>
                       
                    </div>
                    <div class="modal-footer">
                        <asp:button type="button" class="btn btn-default" onclick="newroadmap" runat="server" Text="Create"></asp:button>
                    </div>
                </div>
            </div>
        </div>


<!-- Page Content -->
<h1 id="search_name" runat="server"></h1>
    <asp:Table ID="searchtable" runat="server" class="table table-striped table-bordered" cellspacing="0" width="100%"> 
    </asp:Table>
<h1 ID="name" runat="server"></h1>  
    <asp:Table ID="userroadmaps" runat="server" class="table table-striped table-bordered" cellspacing="0" width="100%">   
    </asp:Table>
<h1 id="all">All Roadmaps</h1>
<asp:Table ID="allroadmaps" runat="server" class="table table-striped table-bordered" cellspacing="0" width="100%">   
      <asp:TableHeaderRow>
            <asp:TableHeaderCell>Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author</asp:TableHeaderCell>
            <asp:TableHeaderCell>Description</asp:TableHeaderCell>
            <asp:TableHeaderCell>Timestamp</asp:TableHeaderCell>
        </asp:TableHeaderRow>
</asp:Table> 
 
<!-- /.container -->

<!-- jQuery Version 1.11.1 -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>


<style>
    #search_text{
        width: 300px;
        height: 50px;
        background: #2b303b;
        border: none;
        font-size: 10pt;
        float: left;
        color: #63717f;
        padding-left: 45px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
    }
    #name{
        text-align: center;
    }
    #all{
        text-align: center;
    }
    #search_name{
        text-align: center;
    }

</style>
</form>
</body>

</html>
