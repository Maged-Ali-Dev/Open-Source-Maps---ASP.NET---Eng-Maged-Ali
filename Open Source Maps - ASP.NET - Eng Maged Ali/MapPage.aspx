<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapPage.aspx.cs" Inherits="Open_Source_Maps___ASP.NET___Eng_Maged_Ali.MapPage" %>



<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>OpenStreetMap with Leaflet.js</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <style>
        #map {
            height: 100vh; /* Full viewport height */
            width: 100%;
        }
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map"></div>
    </form>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        var map = L.map('map').setView([40.712776, -74.005974], 12); // New York City, USA
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap contributors'
        }).addTo(map);
    </script>
</body>
</html>

