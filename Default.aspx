<%@ Page Title="" Language="C#" MasterPageFile="~/Tapkan.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TapkanClassic.Main" %>

<asp:Content ID="title" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="main" ContentPlaceHolderID="Main" runat="server">
    <body>
        <h1>
            Tapkan.com</h1>
        <div class="img">
            <img src="Content/images/mugshot2.jpg" alt="picture - Baskin" />
        </div>
        <p>
            This is domain name registered to <a href="mailto:baskin@tapkan.com">Baskin</a>. 
            <br />
            <br />
            <i style="font-size: small">Baskin is an Application Developer / Architect / Consultant residing in Twin Cities, MN.</i>
        </p>
         <div class="navigation">
                <h3>Professional Links:</h3>
                <ul class="none">
                    <li><a href="http://tapkan.blogspot.com/">Tapkan Blog</a></li>
                    <li><a href="http://msdn.microsoft.com/">MSDN</a></li>
                    <li><a href="http://www.scrumforteamsystem.com/processguidance/v1/ProcessGuidance.html">
                        Agile/Scrum</a></li>
                    <li><a href="http://msdn.microsoft.com/en-us/vcsharp/default.aspx">C#</a></li>
                    <li><a href="http://msdn.microsoft.com/en-us/vbasic/default.aspx">VB.NET</a></li>
                    <li><a href="http://www.microsoft.com/sqlserver/2008/en/us/default.aspx">SQLServer</a></li>
                    <li><a href="http://msdn.microsoft.com/en-us/netframework/aa663324.aspx">WCF</a></li>
                    <li><a href="http://msdn.microsoft.com/en-us/netframework/aa663328.aspx">Workflow</a></li>
                    <li><a href="http://asp.net">ASP.NET</a></li>
                    <li><a href="http://en.wikipedia.org/wiki/Service-oriented_architecture">SOA</a></li>
                    <li><a href="http://www.asp.net/mvc/">ASP.NET MVC</a></li>
                    <li><a href="http://msdn.microsoft.com/en-us/library/bb399572.aspx">ADO.NET Entity Framework</a></li>
                    <li><a href="http://jquery.com">jQuery</a></li>
                    <li><a href="http://silverlight.net/">Silverlight</a></li>
                </ul>
            </div>

        <script type="text/javascript">
            $(document).ready(function() {
                $('img').each(function() {
                    var maxWidth = 150; // Max width for the image
                    var maxHeight = 150;    // Max height for the image
                    var ratio = 0;  // Used for aspect ratio
                    var width = $(this).width();    // Current image width
                    var height = $(this).height();  // Current image height

                    // Check if the current width is larger than the max
                    if (width > maxWidth) {
                        ratio = maxWidth / width;   // get ratio for scaling image
                        $(this).css("width", maxWidth); // Set new width
                        $(this).css("height", height * ratio);  // Scale height based on ratio
                        height = height * ratio;    // Reset height to match scaled image
                        width = width * ratio;    // Reset width to match scaled image
                    }

                    // Check if current height is larger than max
                    if (height > maxHeight) {
                        ratio = maxHeight / height; // get ratio for scaling image
                        $(this).css("height", maxHeight);   // Set new height
                        $(this).css("width", width * ratio);    // Scale width based on ratio
                        width = width * ratio;    // Reset width to match scaled image
                    }
                });
            });
         
        </script>

    </body>
</asp:Content>
