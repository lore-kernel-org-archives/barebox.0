Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Vmt-0004eM-UQ
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 08:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 10:02:13 +0200
Message-Id: <1405065733-31407-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
References: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] usb: usbserial gadget: Add persistent device name
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/u_serial.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index c2072dc..375ec65 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -483,7 +483,12 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	cdev->getc = serial_getc;
 	cdev->flush = serial_flush;
 	cdev->setbrg = serial_setbaudrate;
-	console_register(cdev);
+	cdev->devname = "usbserial";
+
+	status = console_register(cdev);
+	if (status)
+		goto fail_out;
+
 	mycdev = cdev;
 
 	return status;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
