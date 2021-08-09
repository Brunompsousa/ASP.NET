<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        float num1=7;
        float num2=8;
        float num3=9;
        float media= 0;

        media = num1 + num2 + num3;
        media /= 3;

        Response.Write("A media e: " + media);

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
