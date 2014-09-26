Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQnt-0004wG-00
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:23:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:14 +0200
Message-Id: <1411719735-30949-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] Documentation: USB: Add description for OTG device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/usb.rst | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 7cdd6ac..88be620 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -143,3 +143,24 @@ USB CDC ACM compliant serial device.
 
 Unlike the :ref:`command_dfu` command the ``usbgadget`` command returns immediately
 after creating the gadget. The gadget can be removed with ``usbgadget -d``.
+
+USB OTG support
+---------------
+
+barebox does not have USB OTG support. However, barebox supports some USB cores in
+both host and device mode. If these are specified for otg in the device tree
+(dr_mode = "otg";) barebox registers a OTG device which can be used to decide which
+mode shall be used. The device has a ``mode`` parameter which by default has the
+value ``otg``. setting this to ``host`` or ``device`` puts the device in the corresponding
+mode. Once a specific mode has been selected it can't be changed later anymore.
+
+.. code-block:: sh
+  barebox:/ devinfo otg0
+  Parameters:
+    mode: otg ("otg", "host", "peripheral")
+  barebox:/ otg0.mode=host
+  musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split, HB-ISO Rx, HB-ISO Tx, SoftConn)
+  musb-hdrc: MHDRC RTL version 2.0
+  musb-hdrc: setup fifo_mode 4
+  musb-hdrc: 28/31 max ep, 16384/16384 memory
+  barebox:/
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
