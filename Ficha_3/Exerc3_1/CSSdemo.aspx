<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CSSdemo.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style>
        
        h1 {
            font-size: 20px;
            color: Green;
        }

        p {
            color: #0000FF;
            font-style: italic;
        }

        .Rightaligne {
            text-align: right;
        }

        body {
            background-color: black;
        }

        h1,h2,h3,h4,h5,h6 {
            color: #FF0000;
        }

        #divcontent {
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        #divcontent-left {
            width: 20%;
            height: 600px;
            background-color: #ff0000;
            float: left;   
        }

        #divcontent-center {
            width: 40%;
            height: 600px;
            background-color: #00ff00;
            float: left; 
        }

        #divcontent-right {
            width: 40%;
            height: 600px;
            background-color: #0000ff;
            float: left; 
        }

        #divcontent-right > p {
            color: #FFFFFF;
        }

        
        #divcontent-right > p > a {
            color: #000000;
            font-size: 30px;
        }

        #divfooter {
            width: 100%;
            height: 50px;
            background-color: #808080;
           
        }

        a:hover {
            color: #FF3300!important;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to this css Demo page</h1>
        <p>CSS makes it super easy to style your pages.</p>
        <p class="Rightaligne">
            With very little code, you can quickly change the look of a page.
        </p> 
        
        <div id="divcontent" >
            <div id="divcontent-left" >
                <h1>Title "divcontent-left" </h1>
                <p>The first paragraph </p>
                <p>The second paragraph </p>
            </div> 

            <div id="divcontent-center">
                <h1>Title "divcontent-center"</h1>
                <p>The first paragraph:</p>
                <p>The second paragraph</p>
            </div> 

            <div id="divcontent-right">
                <h1>Title "divcontent-right"</h1>
                <p>The first paragraph</p>

                <p>Link to Google: <a href="https://www.google.com" target="_blank">Go to Google </a> </p>
            </div> 
            
        </div>  
        
        <div id="divfooter">
            My footer
        </div>     
           
    </div>
    </form>
</body>
</html>
