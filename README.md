# UPS Waybar Module

This Waybar module provides a live battery status of both local and network enabled UPS along with all UPS information.

Dependancies: yad, apcupsd

## Features

- **Live remaining battery in minutes display**: Shows real-time remaining battery of the UPS.
 
![Live Battery](ups_widget.png)

- **UPS Information**: Clicking on the widget displays a popup with all the UPS information.
  
![UPS Information](ups_info.png)



To install:

Make sure you have yad installed and apcupsd installed and configured to comunicate with your UPS 

Clone the repository / download the zip.

Copy upstest.sh and apc_info.sh to your ~/.config/hypr/scripts folder

From ~/.config/hypr/scripts run sudo chmod +x apc_info.sh upstest.sh

Add the example module to your config.jsonc. Do not forget to add "custom/ups", to you modules-[LOCATION] (left,center,right)

Add the example style to you style.css. Do not forget to add #custom-ups, to your list of modules in you styles.css.
