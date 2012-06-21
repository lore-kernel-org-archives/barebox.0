Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rJ-KO
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:14 +0200
Message-Id: <1340272517-8972-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
References: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/9] USB storage: use dma_alloc where appropriate
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/storage/transport.c |   11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index e7a5972..68170b6 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -26,6 +26,7 @@
 #include <clock.h>
 #include <scsi.h>
 #include <errno.h>
+#include <dma.h>
 
 #undef USB_STOR_DEBUG
 
@@ -65,8 +66,8 @@ int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe)
 /* Determine what the maximum LUN supported is */
 int usb_stor_Bulk_max_lun(struct us_data *us)
 {
-	int len;
-	unsigned char iobuf[1];
+	int len, ret = 0;
+	unsigned char *iobuf = dma_alloc(1);
 
 	/* issue the command */
 	iobuf[0] = 0;
@@ -81,7 +82,9 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 
 	/* if we have a successful request, return the result */
 	if (len > 0)
-		return (int)iobuf[0];
+		ret = iobuf[0];
+
+	dma_free(iobuf);
 
 	/*
 	 * Some devices don't like GetMaxLUN.  They may STALL the control
@@ -90,7 +93,7 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 	 * ways.  In these cases the best approach is to use the default
 	 * value: only one LUN.
 	 */
-	return 0;
+	return ret;
 }
 
 int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
