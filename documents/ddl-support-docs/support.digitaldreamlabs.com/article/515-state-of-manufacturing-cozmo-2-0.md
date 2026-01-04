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
# State of Manufacturing: Cozmo 2.0 {#state-of-manufacturing-cozmo-2.0 .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

Hello! Digital Dream Labs has taken feedback from customers and
community members regarding the need for more consistent, open
communication on its current hardware manufacturing projects. Here,
we\'ll cover the current state of **Cozmo 2.0.** Since the hardware is
somewhat similar, many of the updates here will be similar to the
updates for Vector 2.0.

We will strive to update these articles weekly. In some cases, there may
be no new information to post; however we\'ll communicate everything we
can, when we can. It\'s our objective to ensure that you have a thorough
understanding of your order\'s status, how we are handling production
and shipping, and clear up a few FAQs regarding Pre-Orders and shipment.

------------------------------------------------------------------------

## Update as of 11/2/2022:

### **Development Unit Production:**

<div>

<div>

We have completed and successfully tested the Over the Air (OTA) update
system that will allow new software to go directly onto the robot. This
allows us to produce units for internal development teams to use for the
later stages of app and software development. Those units are now in
production.

</div>

</div>

<div>

**Self Charging (Docking):**

</div>

<div>

We are also working to ensure that Cozmo will return to dock and charge
when his battery is low! One thing we haven\'t been clear about
previously is that Cozmo 2.0 will now be an always-on robot. This is a
significant difference from the first generation of Cozmo (which was
limited to only being powered on when attached to a mobile device). This
also means that he will need software to find and dock with his charger
that he did not have before, and is one of the current items we are
working to tackle.

</div>

<div>

**Cozmo\'s Cube (2.0):\
**

</div>

<div>

Each of Cozmo\'s 3 cubes are programmed with unique software to help
Cozmo identify and interact with them! In case you have an older Cozmo,
these new cubes will not work with the current generation of robots;
however we still do offer Gen1 Cozmo replacement cubes! One of our
current challenges is that with the differences in hardware (and
operation) between Cozmo 1.0 and Cozmo 2.0, we must design a new system
of connecting to all of the Cubes at once, while being mindful of how
much power each Cube is using when Cozmo is interacting with them.

</div>

------------------------------------------------------------------------

## Update as of 8/2/2022:

**FCC Compliance Testing:**\
[Cozmo 2.0 has FCC
approval!](https://apps.fcc.gov/oetcf/eas/reports/ViewExhibitReport.cfm?mode=Exhibits&RequestTimeout=500&calledFromFrame=N&application_id=Sl8tgLtbPx6SL%2Fig6b1ecQ%3D%3D&fcc_id=2A653-00402){target="_blank"}
🎉

------------------------------------------------------------------------

## Update as of 7/28/2022:

**FCC compliance testing:**\
FCC compliance testing on Cozmo 2.0 has been completed by an independent
laboratory. Additional testing is required for Cozmo 2.0\'s Cube due to
changes to the electronic board for the new Cubes.\
\
**Software:\
**Software development also continues for Cozmo 2.0. Since much of the
hardware has changed to streamline manufacturing, multiple changes are
need to happen for the software to work correctly. However, having the
hardware development completed makes this process significantly easier.\

------------------------------------------------------------------------

## Update as of 5/20/2022:

Recently, because much of the hardware is similar, a lot of the updates
to Vector 2.0 also apply to Cozmo 2.0; please [see this
article](//support.digitaldreamlabs.com/article/516-state-of-manufacturing-vector-2-0)
to see the majority of the recent updates for base firmware for the new
hardware. We are currently working on adjusting Cozmo\'s software to get
him ready for your home! As our efforts continue, we will have more news
for Cozmo specifically.

------------------------------------------------------------------------

## Update as of 3/31/2022:

<div>

**Factory in China Reopened:**\
The contract manufacturer has reopened after the most recent COVID
lockdowns in China and the factory is now back in operation. Our
engineers have had several extensive meetings with factory engineers to
bring them up to speed on current developments with calibration, along
with providing updated documentation and instructions.

</div>

<div>

**Battery Testing:\
**Optimization for the battery has been delayed by work on the camera
calibration. It was necessary to resolve the camera issues first as our
team needs the prototypes to be able to pick up cubes, recognize faces,
etc., in order to fully simulate standard usage and be able to more
accurately gauge how our optimizations are affecting the new batteries.

</div>

<div>

**Camera Hardware Changes:**\
Several customers had questions on the model of camera included with
Cozmo 2.0 that our team wanted to address. Previously, it had been
expected that we were moving to a 5MP camera. Our team did a full
investigation of the involvement this change would require, and
ultimately we made the decision to revert to the 2 MP camera. This
decision was made to avoid changes that would have been required to the
PCB (electronics headboard) of the robot, which would have caused
further delays. Thankfully, the issues that our team initially
experienced with the 2MP camera have been resolved and the results of
the 2MP camera are what you see below in this update.

</div>

<div>

**Changes to Display Cover:**\
With the new calibration and distortion reduction, we no longer have to
make changes to the display cover! See the section below for more
details.

</div>

<div>

**Camera Calibration:**\
Over the past few days, we were able to make good strides for the camera
calibration. Previously, we were focusing on cleanup passes and the
lighting in the calibration fixture to correct issues with the
calibration. With that resolved, the last major hurdle we have been
working to overcome was distortion in the camera image. Since the
calibration values are hard-coded into the robot, it is a tedious
process to modify these values between testing iterations. However,
we\'ve had a large breakthrough with the camera calibration process; we
have narrowed down issues with distortion in the camera (see photos
below) and our calibration error rate is now within a standard range
(meaning effectively on par with Vector Gen 1, or within standard
parameters expected for the robot to consider this no longer an issue).
In the photos below depicting the distortion, you can see a significant
reduction in distortion, which allows the robot to recognize fiducials
(icons) on the cubes, as well as to provide better facial recognition
and object recognition. This may need more testing on a batch of
prototypes, but as long as results stay consistent, this breakthrough
effectively resolves the camera calibration issue and it will no longer
be a blocker to production.

</div>

#### 2MP Camera Adjustment Reference Photos (Distortion / Lighting) {#mp-camera-adjustment-reference-photos-distortion-lighting style="text-align: center;"}

![2MP Camera Reference Photos (After Distortion
Cleanup)](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6245facbab585b230a8a736f/file-LnZRGJzdBu.png){style="margin: auto;"}

GIF for better comparison between the two photos:

![Distorted \| Undistorted Calibration
Images](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/624606dfc1688a6d26a7befd/file-0XHJK3x5fq.gif){style="margin: auto;"}

------------------------------------------------------------------------

## Update as of 3/18/2022:

**Lockdowns in China delay work by (at minimum) 1 week:\
**A [COVID outbreak in
China](https://time.com/6157720/china-stealth-omicron-covid-outbreak/)
has led to a delay of 1 week, at minimum. Strict measurements are taking
place in China to stop the spread of the Omicron variant; invariably,
this means that factories and business offices are shut down- while we
can communicate with some members of the factory staff remotely, this
slows progress and there is very little we can do to overcome that
challenge given the circumstances.

**Occlusion in vision with new camera necessitates changes to the
display cover:**\
In the update on 2/21/2022, an occlusion or blockage can be seen on the
right hand side of the image. This occlusion is caused by the plastic
display cover, which needs to be adjusted to fully utilize the field of
view of the new camera.

**Testing is ongoing for the new camera calibration:**\
The new camera picture has been cleaned up fully and we are now
re-testing and refining the new calibration results to ensure that
calibration is heavily repeatable with a low margin of error.

**Battery Testing:**\
Power and battery measurements and refinements are continuing. The team
is testing battery runtimes and charging times across multiple
conditions and activity loads for the robot.

------------------------------------------------------------------------

## Update as of 3/5/2022:

**Battery Testing**: Power optimization and testing is ongoing; no new
information at this time.

**Camera Calibration**: Calibration finalization is ongoing; we are
currently focusing on clarity & resolution. Additional cameras are en
route and should be received on 3/8.

------------------------------------------------------------------------

## Update as of 2/21/2022:

We are investigating some necessary software changes for calibration of
the new camera module for Cozmo, and optimizing both color and
resolution of the new camera to ensure that the camera\'s feed captures
colors accurately and has face and object recognition dialed in
correctly. Below, see before and after images from when we initially got
the new camera working with the existing hardware modules, along with
Pass 1, Pass 2, and Pass 3 of improvements for clarity and color.

### Camera Calibration

  ------------------------------------------------------------------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------
  **Reference Image** (*Taken with smartphone.*)\                                                                                                        **Initial Image signal received from new camera module** (this was taken several months ago)\
  \                                                                                                                                                      Issues:\
  \                                                                                                                                                      1) Color\
  \                                                                                                                                                      2) Clarity & Resolution\
  \                                                                                                                                                      3) Duplication of image\
  ![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6213f630025ca67522c7da6d/file-7k8qZtZY1B.jpg){style="width: 303px;"}   ![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6213f654025ca67522c7da6e/file-IO6qXazsnY.png){style="width: 768px;"}

  ------------------------------------------------------------------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------

  ------------------------------------------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Cleanup Pass 1**![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6213f6732130e51694689c6d/file-YYNHobbjAC.png)   **Cleanup Pass 2**![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6213f8152130e51694689c6f/file-8Azi89U3HH.png){style="width: 499px;"}
  ------------------------------------------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  ------------------------------------------------------------------------------------------------------------------------------------------------------------ -----------------------------------
  **Cleanup Pass 3** (current                                                                                                                                   
  view)![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6213f8dc68cd260cc2d3da57/file-Ps8sqotlDb.jpg){style="width: 641px;"}\   
  We have a bit more cleanup on the camera side for color- once those final optimizations are done, then we\'re good to go with this new camera! Let\'s move   
  on to the current progress with the battery.                                                                                                                 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------ -----------------------------------

## Battery

Our team\'s calculations showed that we should get at or slightly more
than an hour of runtime on a new 600mAh battery, which is a significant
jump from the previous battery which had a runtime of about 30-40
minutes. Currently, we\'re averaging about 52-53 minutes. There are some
power optimizations we can make in multiple areas to reach our 1-hour
goal. We\'re currently doing further testing of these optimizations.

## Software

Cozmo\'s software is currently being adjusted to work with some of the
new hardware. We are finalizing the software additions for:

-   Cliff sensors
-   Display
-   Camera

Once the above software changes are finalized, we should be all set to
ramp production up for more units.

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/515-state-of-manufacturing-cozmo-2-0"}
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

Last updated on November 4, 2022
:::
:::
:::

[Toggle Search]{.sr-only}

::: {#serp-dd .sb style="display: none;"}
:::

### Categories

-   [Policies ](/category/386-policies)
-   [Repair Center ](/category/518-repair-center)
-   [State of Manufacturing ](/category/512-state-of-manufacturing)
-   [Anki & Digital Dream Labs ](/category/36-anki)
:::

::: {#noResults style="display:none;"}
No results found
:::

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023.
Powered by [Help
Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding){rel="nofollow noopener noreferrer"
target="_blank"}
:::
