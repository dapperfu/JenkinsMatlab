# Windows Jenkins Install

## Download Jenkins

Download Jenkins from [jenkins.io](https://jenkins.io/)

On the Jenkins home page click on the "**Download Jenkins**" button.

<a href="Images/2016-12-01 08_14-000000.png"><img src="Images/2016-12-01 08_14-000000.png" align="center" height="300"></a>

Then click on the down arrow to download the Windows installer.

<a href="Images/2016-12-01 08_15-000001.png"><img src="Images/2016-12-01 08_15-000001.png" align="center" height="300"></a>

The downloaded file (Found in your Downloads) is a zip containing the installer. 

<a href="Images/2016-12-01 08_17-000002.png"><img src="Images/2016-12-01 08_17-000002.png" align="center" height="300"></a>

Before it can be used you need to unzip it.

<a href="Images/2016-12-01 08_18-000003.png"><img src="Images/2016-12-01 08_18-000003.png" align="center" height="300"></a>

## Install Jenkins

Launch the extracted Jenkins installer and proceed. Admin access is required because Jenkins installs a Windows Service to keep it running in the background.

The default settings on all of the installer pages should be adequate.

<a href="Images/2016-12-01 08_19-000004.png"><img src="Images/2016-12-01 08_19-000004.png" align="center" height="300"></a>
<a href="Images/2016-12-01 08_20-000006.png"><img src="Images/2016-12-01 08_20-000006.png" align="center" height="300"></a>
<a href="Images/2016-12-01 08_20-000007.png"><img src="Images/2016-12-01 08_20-000007.png" align="center" height="300"></a>
<a href="Images/2016-12-01 08_20-000008.png"><img src="Images/2016-12-01 08_20-000008.png" align="center" height="300"></a>

## Setup Jenkins

Once the Jenkins installer finishes the User Interface will load in your default web browser. (http://localhost:8080/login)

<a href="Images/2016-12-01 08_24-000009.png"><img src="Images/2016-12-01 08_24-000009.png" align="center" height="300"></a>

To unlock Jenkins a randomly generated initial password is placed in a file at ``C:\Program Files (x86)\Jenkins\secrets\initialAdminPassword``. You can open it with any text editor. ([Notepad++](https://notepad-plus-plus.org/) is shown.)

<a href="Images/2016-12-01 08_24-000010.png"><img src="Images/2016-12-01 08_24-000010.png" align="center" height="300"></a>

For the purposes of this tutorial the suggested plugins are acceptible.

<a href="Images/2016-12-01 08_25-000011.png"><img src="Images/2016-12-01 08_25-000011.png" align="center" height="300"></a>

Jenkins will now download and install all of the default suggested plugins.

<a href="Images/2016-12-01 08_25-000012.png"><img src="Images/2016-12-01 08_25-000012.png" align="center" height="300"></a>

When it is finished Jenkins will ask you to setup an Admin user. **This separate from your Windows account information**. For simplicity I chose '``admin``' as the admin user and chose a unique password.

<a href="Images/2016-12-01 08_29-000013.png"><img src="Images/2016-12-01 08_29-000013.png" align="center" height="300"></a>

When that is complete Jenkins is Ready.

<a href="Images/2016-12-01 08_29-000015.png"><img src="Images/2016-12-01 08_29-000015.png" align="center" height="300"></a>

## Change Jenkins Run Time User.

Jenkins runs as a Windows service (starting at boot). By default it is setup to run as the local System Account. In most cases this should work fine, however it makes debugging MATLAB run in Jenkins more difficult.

In my opinion it is advisable change it to your local user. This way all of your environment variables and paths are set correctly.

Launch the windows services editor through the Start Menu or by pressing Win-R and typing ``services.msc``

<a href="Images/2016-12-01 08_31-000016.png"><img src="Images/2016-12-01 08_31-000016.png" align="center" height="300"></a>

Scroll down to find the Jenkins Service and double click on it.

<a href="Images/2016-12-01 08_32-000017.png"><img src="Images/2016-12-01 08_32-000017.png" align="center" height="300"></a>

Stop the service. At this time if you don't want Jenkins to always run on Windows boot you can change the '``Startup Type``' from '``Automatic``' to '``Manual``'

<a href="Images/2016-12-01 08_32-000021.png"><img src="Images/2016-12-01 08_32-000021.png" align="center" height="300"></a>

Switch to the '``Log On``' tab, check the '``This Account``' radio button and enter your user name (and domain if applicable) and press the '``Check Names``' button to validate your entry.

<a href="Images/2016-12-01 08_47-000022.png"><img src="Images/2016-12-01 08_47-000022.png" align="center" height="300"></a>

Press '``Ok``' to exit the '``Select User``' dialog and press '``Start``' to restart Jenkins.

Jenkins User Interface should now be available again at http://localhost:8080/login