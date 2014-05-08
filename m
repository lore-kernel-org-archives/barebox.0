Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x234.google.com ([2607:f8b0:4001:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiTGe-0002Jp-Uy
 for barebox@lists.infradead.org; Thu, 08 May 2014 18:42:05 +0000
Received: by mail-ie0-f180.google.com with SMTP id as1so2885171iec.25
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 11:41:41 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 May 2014 14:41:38 -0400
Message-ID: <CAO6XYUtCeBmMotiG6svTRobfAK-PpM-jWCBC5gw5DA78FY95QA@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] Add variable USB status polling delay to fix issues with
 USB flash drives.
To: barebox@lists.infradead.org

Due to numerous problems that we have experienced with some USB flash
drives on multiple platforms (e.g. iMX35 and iMX6) a variable startup
delay is being added prior to starting to poll the usb devices for
status information. While current versions of the Linux kernel include
multiple retries on the poll operation (with associated timeouts),
adding a proper retry operation would require passing more detailed
error information back from the USB status polling command. So, this
patch simply adds a default delay (1100ms) in barebox equal to the
maximum period in Linux once all retries and timeouts are exhausted.
The length of this delay matches one that has been added to some newer
versions of u-Boot for the iMX6 platform.

This is specifically added to address two different, similar problems:
The first is that MOSFET power distribution switches (e.g. the Micrel
MIC2076) add an additional power-on time to the outputs of a USB hub
that is greater than what is typically reported in the "Power On to
Power Good" field. The second issue is that some USB flash drives
(e.g. Corsair and Transcend) use onboard micro-controllers that have
relatively long boot times before they begin properly responding to
USB bus commands.

Since the added delay time may be neither needed nor desirable in some
cases, a global magic variable of USB_POLL_DELAY has been created. The
value of this delay is in milliseconds and can be adjusted to whatever
value is desired prior to calling the barebox "usb" command. As
mentioned before, the current default value is set to 1100ms.

Signed-off-by: Michael Burkey <mdburkey at gmail.com>
---
diff -rupN a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
--- a/drivers/usb/core/usb.c	2014-05-05 04:33:13.000000000 -0400
+++ b/drivers/usb/core/usb.c	2014-05-08 14:39:09.590616304 -0400
@@ -49,6 +49,8 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <dma.h>
+#include <environment.h>
+#include <magicvar.h>

 #include <usb/usb.h>

@@ -1124,6 +1126,7 @@ static int usb_hub_configure(struct usb_
 	struct usb_hub_status *hubsts;
 	int i;
 	struct usb_hub_device *hub;
+	unsigned polling_delay;

 	hub = xzalloc(sizeof (*hub));
 	dev->hub = hub;
@@ -1235,6 +1238,24 @@ static int usb_hub_configure(struct usb_
 		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
 		"" : "no ");
 	usb_hub_power_on(hub);
+
+    /* Delay a user defined period to allow devices to startup
properly.              */
+    /* This is specifically added to address two different, similar
problems:         */
+    /* The first is that MOSFET power distribution switches (e.g. the
Micrel MIC2076) */
+    /* add an additional power-on time to the outputs of a USB hub
that is greater    */
+    /* than what is typically reported in the "Power On to Power
Good" field.         */
+    /* The second issue is that some USB flash drives (e.g. Corsair
and Transcend)    */
+    /* use onboard micro-controllers that have relatively long boot
times before they */
+    /* begin properly responding to USB bus commands.
                */
+
+    /* The default value of 1100ms has been experimentally determined
to work with    */
+    /* basically every mass storage device I have been able to test.
If you are using */
+    /* devices that have shorter startup times or that are on a
permanently powered   */
+    /* connection, this time can safely be reduced (potentially to
zero).             */
+	if (!getenv_uint("USB_POLLING_DELAY", &polling_delay))
+	{
+		mdelay(polling_delay);
+	}

 	for (i = 0; i < dev->maxchild; i++) {
 		struct usb_port_status portsts;
@@ -1463,6 +1484,12 @@ struct bus_type usb_bus_type = {

 static int usb_bus_init(void)
 {
+    /* Add Global MagicVar containing device polling delay. */
+	setenv("USB_POLLING_DELAY", "1100");
+	export("USB_POLLING_DELAY");
+
 	return bus_register(&usb_bus_type);
 }
 pure_initcall(usb_bus_init);
+
+BAREBOX_MAGICVAR(USB_POLLING_DELAY, "Delay in ms after hub power on
before devices are polled.");

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
