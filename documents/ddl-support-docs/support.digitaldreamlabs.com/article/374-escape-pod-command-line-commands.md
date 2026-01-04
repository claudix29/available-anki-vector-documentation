::: {#mainNav .navbar}
::: navbar-inner
::: container-fluid
[![Digital Dream Labs Knowledge
Base](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/63222136c713d51da3ede832/logo-75h.png){width="195"
height="75"}](https://support.digitaldreamlabs.com/){.brand}

[Toggle Navigation]{.sr-only} []{.icon-bar} []{.icon-bar} []{.icon-bar}

::: {.nav-collapse .collapse}
-   [[Home ](/)]{#home}
-   [[General Information
    ](/collection/1-general-information)]{#general-information}
-   [[Vector ](/collection/6-vector)]{#vector}
-   [[Cozmo ](/collection/9-cozmo)]{#cozmo}
-   [[OverDrive ](/collection/62-overdrive)]{#overdrive}
-   [[Escape Pod ](/collection/364-escape-pod)]{#escape-pod}
-   [[Puzzlets ](/collection/325-puzzlets)]{#puzzlets}
-   [[Contact](#){.contactUs onclick="window.Beacon('open')"}]{#contact}
-   [[Contact](#){.contactUs
    onclick="window.Beacon('open')"}]{#contactMobile}
:::
:::
:::
:::

::: {#contentArea .section .container-fluid}
::: row-fluid
::: {#main-content .section .span9}
::: contentWrapper
# Command Line: Commands & Options {#command-line-commands-options .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

The Escape Pod has a simulated Command Line Interface with various
onboarding and connection tools that the Escape Pod uses to communicate
with Vector. Developers may find these tools handy to troubleshoot
issues, complete specific onboarding steps, load firmware, and more.
Below is a list of commands available on the Escape Pod.\
\
To access the Command Line Interface, please see [Switching Views on the
Escape
Pod](//support.digitaldreamlabs.com/article/372-switching-views-on-escape-pod){target="_blank"}.

::: {.section .callout-blue children-count="0"}
To see available commands in the Command Line Interface when connected
to Escape Pod, just type \"help\" to see these listings!
:::

####  {#section style="text-align: center;" children-count="0"}

#### Command List Table {#command-list-table style="text-align: center;" children-count="0"}

  ---------------------------------------------------------------------------------------------------------------------------
  Command                 Description              Example
  ----------------------- ------------------------ --------------------------------------------------------------------------
  **ble-connect**\        Connect to a Vector that *ble-connect M4D6*
                          is waiting in pairing    
                          mode (used with the      
                          4-character Vector       
                          Name). **Requires the    
                          argument of Vector\'s    
                          name.**                  

  **ble-clear**\          Clears stored Bluetooth  *ble-clear*
                          data. Use this command   
                          if ble-connect fails     
                          repeatedly. No argument  
                          is required.             

  **echo**\               Displays text to the     *echo \$LAST*
                          command line output. Can 
                          be used with environment 
                          variables that have been 
                          set with the             
                          **export** command       
                          (prefix variables with   
                          \"\$\").                 

  **export**\             Saves environment        *export ZERO=0*
                          variables. Useful for    
                          saving and mapping text  
                          or number values like    
                          directories and other    
                          commonly needed values.  

  **printenv**\           Lists all environment    *printenv*
                          variables that have been 
                          saved before with the    
                          **export** command. No   
                          argument is required.    

  **unset**\              Removes or clears an     *unset ZERO*
                          environment variable. It 
                          will no longer be        
                          usable, and will no      
                          longer be listed when    
                          typing **printenv.** You 
                          will need to use         
                          **export** to define the 
                          variable again to use    
                          it.                      

  **wifi-scan**\          Commands Vector to scan  *wifi-scan*
                          for nearby Wi-Fi access  
                          points / networks that   
                          he can connect to. No    
                          argument is required.    

  **wifi-connect**\       Commands Vector to       *wifi-connect network_name network_password*
                          connect to a nearby      
                          Wi-Fi access point /     
                          network discovered using 
                          the                      
                          **wifi-scan** command.   
                          Follow the command with  
                          the SSID and passphrase  
                          of the network,          
                          separated by a space     
                          (see example to the      
                          right).                  

  **ota-start**\          Starts an Over-The-Air   *ota-start http://ota.global.anki-services.com/vic/oskr/full/latest.ota*
                          (OTA) update to Vector   
                          to install new firmware  
                          and then will trigger a  
                          reboot. The firmware     
                          installed will depend on 
                          the firmware link or     
                          name that is specified   
                          after the command. The   
                          example to the right     
                          installs the latest OSKR 
                          firmware onto Vector,    
                          then reboots him.        

  **ota-cancel**\         Cancels the process of   *ota-cancel*
                          an Over-The-Air update   
                          (OTA) while it is        
                          running. Vector will     
                          stay booted into his     
                          current firmware. No     
                          argument is required.    

  **logs**\               Downloads a log package  *logs*
                          from Vector. These logs  
                          are useful in            
                          troubleshooting and may  
                          be requested by the      
                          Customer Care team at    
                          Digital Dream Labs. No   
                          argument is required.    

  **status**              Displays Vector\'s       *status*
                          current status,          
                          including the firmware   
                          that he is currently     
                          running and the network  
                          that he is connected to  
                          (denoted by the          
                          \"ssid:\" field). No     
                          argument is required.    
  ---------------------------------------------------------------------------------------------------------------------------

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/374-escape-pod-command-line-commands"}
[Did this answer your question?]{.articleRatings-question} [ [
![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=)
]{.articleRatings-feedback-tick} [Thanks for the
feedback]{.articleRatings-feedback-message} ]{.articleRatings-feedback}
[There was a problem submitting your feedback. Please try again
later.]{.articleRatings-failure}

::: articleRatings-actions
[Yes]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}

[No]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}
:::
:::

::: {.section .articleFoot}

Still need help? [Contact Us](#){#sbContact .contactUs
onclick="window.Beacon('open')"} [Contact Us](#){#sbContactMobile
.contactUs onclick="window.Beacon('open')"}

Last updated on April 2, 2021
:::
:::
:::

[Toggle Search]{.sr-only}

::: {#serp-dd .sb style="display: none;"}
:::

### Categories

-   [General Information ](/category/369-general-information)
-   [Launching Your Escape Pod
    ](/category/367-launching-your-escape-pod)
-   [Troubleshooting ](/category/375-troubleshooting)
-   [Advanced Configuration ](/category/368-developer-tools)
:::

::: {#noResults style="display:none;"}
No results found
:::

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023.
Powered by [Help
Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding){rel="nofollow noopener noreferrer"
target="_blank"}
:::
