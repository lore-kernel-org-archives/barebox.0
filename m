Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAtFO-0003JE-Qm
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 05:10:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  3 Jul 2015 07:10:23 +0200
Message-Id: <1435900223-13977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: musb: Use proper timeout loop
To: Barebox List <barebox@lists.infradead.org>

Poll for a well defined time in musb_init. The current counting loop
takes too short for some devices. Tested on OMAP3 with a rather slowish
memory stick.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/musb/musb_core.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index ccb7029..84a05c4 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -119,8 +119,6 @@ MODULE_AUTHOR(DRIVER_AUTHOR);
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" MUSB_DRIVER_NAME);
 
-#define MUSB_HOST_TIMEOUT 0x5fffff
-
 /*-------------------------------------------------------------------------*/
 
 #ifndef CONFIG_BLACKFIN
@@ -1025,17 +1023,18 @@ int musb_init(struct usb_host *host)
 {
 	struct musb *musb = to_musb(host);
 	void *mbase;
-	int timeout = MUSB_HOST_TIMEOUT;
+	u64 start;
 	u8 power;
 
 	musb_start(musb);
 	mbase = musb->mregs;
-	do {
+	start = get_time_ns();
+	while (1) {
 		if (musb_readb(mbase, MUSB_DEVCTL) & MUSB_DEVCTL_HM)
 			break;
-	} while (--timeout);
-	if (!timeout)
-		return -ENODEV;
+		if (is_timeout(start, 4 * SECOND))
+			return -ENODEV;
+	}
 
 	power = musb_readb(mbase, MUSB_POWER);
 	musb_writeb(mbase, MUSB_POWER, MUSB_POWER_RESET | power);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
