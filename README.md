# ChromaSDK-Proxy
A proxy for ChromaSDK connection, compatible with ha-chroma by Vaskivskyi (https://github.com/Vaskivskyi/ha-chroma).
This will install a Windows service that work as a proxy for http://localhost:54235/razer/chromasdk.

This proxy server will let you connect to your ChromaSDK from another device, such as Home Assistant.

Why? You can connect to your Chroma Device from localhost only (http://localhost:54235/razer/chromasdk) as the older method from (https://chromasdk.io:54236/razer/chromasdk) is not working anymore. By installing this service you can use another custom port (54235) to connect to ChromaSDK outside localhost.

So, if your device IP is for example 192.168.1.151, you can connect to your Chroma device using http://192.168.1.151:54235/razer/chromasdk

# How to install
Just download the ZIP file form the green "Code" button at the top.
Extract all files in your Documents folder.
Use install.bat and click on yes every time he ask.
Use uninstall.bat if you want to remove the service.