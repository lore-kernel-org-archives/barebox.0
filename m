Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003px-FA
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:07 +0200
Message-Id: <1374487450-13800-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
References: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: rename mtd_read_oob
To: barebox@lists.infradead.org

There is the same function name in the Kernel but with different
semantics. Rename to avoid naming conflicts when we update the
mtd support from the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdoob.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 903138c..6023302 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -37,7 +37,7 @@ static struct mtd_info *to_mtd(struct cdev *cdev)
 	return mtdoob->mtd;
 }
 
-static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
+static ssize_t mtd_op_read_oob(struct cdev *cdev, void *buf, size_t count,
 			     loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
@@ -64,7 +64,7 @@ static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
 }
 
 static struct file_operations mtd_ops_oob = {
-	.read   = mtd_read_oob,
+	.read   = mtd_op_read_oob,
 	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
