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
# Managing Multiple Vectors on Escape Pod {#managing-multiple-vectors-on-escape-pod .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

The Escape Pod is designed to be able to manage multiple Vectors, but by
default is configured to run 1 Vector at a time. Each Vector requires a
process as a listener if you want more than one Vector to hear and
answer simultaneously. If there are not enough listening processes set,
then the next audio clip will be interpreted as soon as a listener
becomes free of its previous task.\
\
Think of these listeners as lanes in a highway, with the audio clips
from 2 Vector robots acting as cars: If you have two cars occupying the
same lane, one must follow the other toward the destination, and one
cannot pass the other, but they will both arrive at the destination, one
after the other. This would be if you have 1 listener running. If you
have 2 listeners running, then you have just added a lane to your
highway, and both cars can travel at the same speed without getting in
the way of one another. Thus, we\'re assuming that for each Vector in
the same room, you\'d run 1 listener, because we expect that each Vector
in the room would hear you when you say his wake word, \"Hey Vector.\"
You\'d run 2 listeners for 2 Vectors in the same room, etc.

::: {.section .callout-blue children-count="0"}
Since each listener will require additional resources on the Pi to run,
for performance reasons we recommend following the below table:

  Amount of Vector Robots   Recommended Amount of Pi RAM
  ------------------------- ------------------------------
  2                         2GB
  5                         4GB
  6+ (limit 19)             8GB
:::

To set the amount of Vectors that you need to run simultaneously, please
perform the following steps. These steps are for Windows 10 but will be
similar on all platforms:\
\
**Note**: Mac & Linux users, you can skip to Step 2. You have SSH
installed already!

1.  Install SSH tools:
    1.  Open the Start Menu from the Start Button (usually in the lower
        left hand corner of your desktop screen)
    2.  Search for \"Optional\" and select \"Manage Optional Features\"
        when it appears.
    3.  Type \"OpenSSH\" into the search bar and check the box next to
        \"OpenSSH Client\"
    4.  Click \"Install\". OpenSSH will be installed. You may now close
        the Windows 10 Settings window.
2.  Open a Command Prompt or Terminal session from the Start Menu:\
    1.  Open the Start Menu from the Start Button
    2.  Search for \"Command\" and then click on \"Command Prompt\" once
        it appears.
        1.  **Note**: In Mac & Linux computers, search for \"Terminal\"
3.  Open an SSH connection to the Escape Pod:\
    1.  Type in \"ssh ubuntu@escapepod.local\". A connection to the
        Escape Pod will be opened.
    2.  Type your Raspberry Pi password.
        1.  **If you have never logged in before**, this will be
            \"ubuntu\" by default. Once you log in it will force you to
            create a new password. Select a password and type it in
            twice. The window will close and you will need to start back
            at Step 2 in this article to open a new Command Prompt /
            Terminal window.
4.  Edit the Escape Pod configuration file:\
    1.  Type \"nano /etc/escape-pod.conf\" and hit Enter. You will enter
        a new screen where you can input text. Use the arrow keys to
        move around the file and use the Enter button to insert new
        lines where needed.
    2.  Using a new line with no other text on it, enter the following,
        and replace \"\<number of Vectors\>\" with the actual amount of
        processes you need to be able to run:\
        \"DDL_SAYWHATNOW_STT_POOL_SIZE=\<number of Vectors\>\" (See
        Example Below)
    3.  Press **Ctrl+X** to Exit the editor.
    4.  Press **Y** to save the changes you\'ve made. If you\'ve made a
        mistake and need to go back into the Editor, press **Ctrl+C**.
    5.  Press Enter to confirm and save the file.
5.  Reboot the Escape Pod:
    1.  Type \"sudo reboot\" and Press **Enter**. The connection will
        close. You may now close the Command window.

Wait 2 minutes to ensure a full reboot has taken place, and then the Pod
should start the amount of listening processes you have asked for.

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/371-multiple-vectors-on-escape-pod"}
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

Last updated on March 19, 2022
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
