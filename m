Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIDFb-0003Gy-UZ
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:16 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZIBNj-00021X-LP
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jul 2015 11:56:50 +0200
Message-Id: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] usb: gadget: serial: only call into CONSOLE_FULL code if
 it's there
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Fixes:
drivers/built-in.o: In function `gserial_connect':
drivers/usb/gadget/u_serial.c:539: undefined reference to `console_set_active'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/gadget/u_serial.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 2b0faf33037e..140346e77028 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -536,8 +536,9 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	if (status)
 		goto fail_out;
 
-	console_set_active(cdev, CONSOLE_STDIN | CONSOLE_STDOUT |
-		CONSOLE_STDERR);
+	if (IS_ENABLED(CONFIG_CONSOLE_FULL))
+		console_set_active(cdev, CONSOLE_STDIN | CONSOLE_STDOUT |
+				   CONSOLE_STDERR);
 
 	/* REVISIT if waiting on "carrier detect", signal. */
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
