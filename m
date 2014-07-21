Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YZ-Hh
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:46 +0200
Message-Id: <1405955687-27433-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/23] Documentation: Add documentation for USB serial console
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/usb.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 8b700d3..f67a2f1 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -88,3 +88,10 @@ the following:
 
 The ``dfu-util`` command automatically finds DFU-capable devices. If there are
 multiple devices found, you need to identify one with the ``-d``/``-p`` options.
+
+USB serial console
+^^^^^^^^^^^^^^^^^^
+
+barebox can provide a serial console over USB. This can be initialized with the
+:ref:`command_usbserial` command. Once the host is plugged in it should show a
+new serial device, on Linux for example ``/dev/ttyACM0``.
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
