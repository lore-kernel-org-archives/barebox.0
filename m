Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnVL2-0008GM-IZ
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 15:23:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Dec 2013 16:22:45 +0100
Message-Id: <1385997765-19218-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: mtdraw: drop ioctl callback for mtdraw device
To: barebox@lists.infradead.org

Do not call mtd_ioctl for mtdraw devices. mtd_ioctl will derefence
the priv pointer to a struct mtd_info whereas with mtdraw devices it will be
a struct mtdraw pointer. We do not need ioctls for mtdraw devices, so drop
it instead of fixing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 2acd51f..be34723 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -278,7 +278,6 @@ static const struct file_operations mtd_raw_fops = {
 	.read		= mtdraw_read,
 	.write		= mtdraw_write,
 	.erase		= mtdraw_erase,
-	.ioctl		= mtd_ioctl,
 	.lseek		= dev_lseek_default,
 };
 
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
