Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRPUt-0001LV-2K
 for barebox@lists.infradead.org; Thu, 25 Oct 2012 15:37:28 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 25 Oct 2012 17:37:20 +0200
Message-Id: <1351179440-24664-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] mtd: ubi: fix typos in comment of build.c
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/ubi/build.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index f2c8923..1ea1209 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -701,7 +701,7 @@ static int autoresize(struct ubi_device *ubi, int vol_id)
  *
  * This function attaches MTD device @mtd_dev to UBI and assign @ubi_num number
  * to the newly created UBI device, unless @ubi_num is %UBI_DEV_NUM_AUTO, in
- * which case this function finds a vacant device nubert and assings it
+ * which case this function finds a vacant device number and assigns it
  * automatically. Returns the new UBI device number in case of success and a
  * negative error code in case of failure.
  *
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
