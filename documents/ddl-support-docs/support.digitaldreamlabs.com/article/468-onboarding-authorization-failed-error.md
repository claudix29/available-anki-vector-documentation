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
::: {.contentWrapper .withRelated}
# Onboarding: \"Authorization Failed\" Error {#onboarding-authorization-failed-error .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

The \"Authorization Failed\" Error is generally related to 3-4 root
causes, and is usually easy to fix! Let\'s take a look at the most
common causes of the \"Authorization Failed\" error.

![Authorization
Failed](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/61e4dd7d79a38f5473fd463a/file-TZfGNVj6Mz.jpg){style="width: 901px; display: block; margin: auto;"}

------------------------------------------------------------------------

### Causes:

-   Software:
    -   An Escape-Pod compatible version of the Vector software has not
        been installed onto the Robot.
-   License:
    -   A License (you should have received this in a text file via
        email) was not applied in the \"Licenses\" screen.**
    -   The License that was applied in the License screen does not
        match the serial number.
-   Vector Robot:
    -   A Clear User Data reset was not completed during the Onboarding
        process.
    -   **OSKR Units Only:** The server_config.json file was not changed
        to point to the address of the Escape Pod.

------------------------------------------------------------------------

### Resolutions:

1.  Check the Software version running on the robot:\
    1.  Place Vector on his Charger (make sure the Charger is plugged
        into the wall).
    2.  Double tap Vector\'s Back button to enter Pairing Mode. A key
        will appear on his screen.
    3.  Gently lift his arm and set it back down. A screen with
        diagnostic information will appear.
    4.  After the text \"OS\" you should see \"ep\" on the end of the
        Software version. Example: \"1.7.3.6016ep\"
    5.  If you do **NOT** see \"ep\" on the end of the Software, please
        retry loading the Software titled \"PROD\_(*version number*)\"
        using the [Onboarding
        process](//support.digitaldreamlabs.com/article/360-launching-your-escape-pod-4){target="_blank"}.
        1.  **If you are on an OSKR robot, this may not apply to you, as
            the server configuration file can be modified to accept the
            Escape Pod without loading new software. Please see the
            \"OSKR Robots Only\" section below.**
    6.  If you see \"ep\" on the end of the Software Version, then
        Escape Pod compatible software is already loaded. Lift Vector\'s
        arm and set it down again to exit the diagnostic screen. Move to
        Step 2.
2.  Check the License:\
    1.  With your web browser pointing to the Escape Pod, click \"Menu\"
        at the top right of the Escape Pod interface. 
    2.  Click \"Licenses\" in the menu.
    3.  Verify that you have a License installed; you should see
        \"vic:\" followed by your robot\'s serial number in the screen,
        as shown, under the \"Licensed Robots\"
        section:![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/61e4fac5b54d116b7c397d92/file-B2XvWiK6E0.png){style="width: 1226px;"}
    4.  If you do not have a License installed, please download your
        License from the \"Escape Pod License\" email that was sent to
        you:
        1.  Click the \"Add License\" button on the \"Licenses\" screen
            of the Escape Pod.
        2.  Open the text file that was sent to you (it should be titled
            with your robot\'s serial number).
        3.  Copy the **entire contents **of the* *text file.
        4.  Paste the text file into the \"License Key\"
    5.  Verify that the serial number **exactly** matches the bottom of
        your robot (see this article with [how to find your serial
        number](//support.digitaldreamlabs.com/article/338-how-do-i-find-vectors-serial-number){target="_blank"}).
        If your License does not match this format, or does not match
        your robot\'s serial number, please Contact Us at
        support@digitaldreamlabs.com for a new license (or you may reply
        to the email that your license was attached to). **Please
        include a photo of the bottom of your robot for the fastest
        assistance.**
3.  If the License looks good, it is possible that the robot was not
    reset prior to the Onboarding process. Perform a Clear User Data
    reset:
    1.  Follow the steps in [this
        article](//support.digitaldreamlabs.com/article/384-performing-a-clear-user-data-reset){target="_blank"}.
    2.  Retry the [Escape Pod Onboarding
        process](//support.digitaldreamlabs.com/article/360-launching-your-escape-pod-4){target="_blank"}.

------------------------------------------------------------------------

### Resolutions (OSKR Robots *Only*):

Please ensure that you have covered the steps above in the Standard
Robots section before moving into this section. **Be aware that if your
Vector has not been unlocked with a custom OSKR image and flashed with
new firmware, then this section* *will not apply to you.**

1.  Modify the server_config.json file on the Vector robot:
    1.  Point the Vector robot to the Escape Pod by changing the
        destination of his voice command requests. Follow **Step 3
        only*** *in [this
        article](//support.digitaldreamlabs.com/article/349-escape-pod-robot-onboarding-oskr){target="_blank"}.
    2.  Reboot the robot after the server_config.json has been modified:
        1.  Press Vector\'s Back button for 5 seconds until his screen
            shuts off completely.
        2.  Wait for 10 seconds.
        3.  Tap Vector\'s Back button once to begin the bootup process,
            which will take approximately 1 minute.
        4.  Retry the [Escape Pod Onboarding
            Process](//support.digitaldreamlabs.com/article/360-launching-your-escape-pod-4){target="_blank"}.
            **If you update Vector or reload the current software to the
            robot you will need to re-complete the process of modifying
            the server_config.json file each time.**
        5.  If you still have trouble, please Contact Us:
            support@digitaldreamlabs.com.

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/468-onboarding-authorization-failed-error"}
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

Last updated on April 1, 2022
:::
:::

::: {.section .related}
### Related Articles

-   [Launching Your Escape Pod, Step 4: Onboarding Your Vector
    Robot](/article/360-launching-your-escape-pod-4)
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
