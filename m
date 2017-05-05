Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bd6-00026o-Ry
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:42:38 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  5 May 2017 13:42:11 +0200
Message-Id: <20170505114211.14270-1-o.rempel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation: usbgadget: provide autostart notes
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

The usbgadget autostart funktionality is already added. Not it's
time to reflect it in the documentation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/usb.rst | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index bbcb045cee..ad7f8ab54f 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -195,6 +195,25 @@ USB CDC ACM compliant serial device.
 Unlike the :ref:`command_dfu` command the ``usbgadget`` command returns immediately
 after creating the gadget. The gadget can be removed with ``usbgadget -d``.
 
+USB Gadget autostart Support
+----------------------------
+
+Barebox can be configured to start usbgadget automatically by using global variables,
+instead of creating boot script. This can be usefoul if autostart policy should be
+chosen at boot time from other driver or script.
+To get usbgadget autostart support barebox has to be compiled with
+CONFIG_USB_GADGET_AUTOSTART enabled.
+
+USB Gadget autostart Options
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+``global.usbgadget.autostart``
+  Boolean flag. If set to 1, usbgadget will be started automatically on boot.
+``global.usbgadget.acm``
+  Boolean flag. If set to 1, CDC ACM function will be created. See :ref:`command_usbgadget` -a.
+``global.usbgadget.acm``
+  Function description for fastboot. See :ref:`command_usbgadget` -A <desc>.
+
 USB OTG support
 ---------------
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
