Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTYeu-0004JO-OB
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 12:44:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RTYej-0006pP-99
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RTYei-0002LP-6L
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 13:43:56 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 24 Nov 2011 13:43:39 +0100
Message-Id: <1322138631-8963-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
References: <1322138631-8963-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/13] USB Mass Storage driver: Fix compile time warning
To: barebox@lists.infradead.org

drivers/usb/storage/usb.c: In function 'usb_stor_blk_io':
drivers/usb/storage/usb.c:257:16: warning: comparison of distinct pointer types lacks a cast

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/usb/storage/usb.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d033b29..6dba8cc 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -193,7 +193,7 @@ static int usb_stor_write_10(ccb *srb, struct us_data *us,
  * Disk driver interface
  ***********************************************************************/
 
-#define US_MAX_IO_BLK 32U
+#define US_MAX_IO_BLK 32
 
 enum { io_rd, io_wr };
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
