Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG5HS-0000lp-AX
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 14:06:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bG5H5-0004An-2W
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 16:06:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jun 2016 16:06:30 +0200
Message-Id: <1466690790-12107-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1466690790-12107-1-git-send-email-l.stach@pengutronix.de>
References: <1466690790-12107-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: fix mtdraw_erase stub signature
To: barebox@lists.infradead.org

Commit 81737c1d436a (mtd: Fix erasing of devices >4GiB) changed the
prototype of the erase function, but fogot to fix up the stub function
used when no MTD write support is built in.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index b06eb18f3f4d..d0b5f759263d 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -281,7 +281,7 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	return 0;
 }
-static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, loff_t offset)
+static ssize_t mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
 	return 0;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
