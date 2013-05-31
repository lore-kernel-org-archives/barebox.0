Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiMj9-0005wj-UH
 for barebox@lists.infradead.org; Fri, 31 May 2013 10:38:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 12:38:04 +0200
Message-Id: <1369996686-15900-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
References: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] block: rename file operation functions
To: barebox@lists.infradead.org

block_read and block_write collide with a to-be-introduced
global function, so rename the file operation functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/block.c b/common/block.c
index 120d659..2cf85ae 100644
--- a/common/block.c
+++ b/common/block.c
@@ -176,7 +176,7 @@ static void *block_get(struct block_device *blk, int block)
 	return outdata;
 }
 
-static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
+static ssize_t block_op_read(struct cdev *cdev, void *buf, size_t count,
 		loff_t offset, unsigned long flags)
 {
 	struct block_device *blk = cdev->priv;
@@ -253,7 +253,7 @@ static int block_put(struct block_device *blk, const void *buf, int block)
 	return 0;
 }
 
-static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
+static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 		loff_t offset, ulong flags)
 {
 	struct block_device *blk = cdev->priv;
@@ -310,14 +310,14 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 }
 #endif
 
-static int block_close(struct cdev *cdev)
+static int block_op_close(struct cdev *cdev)
 {
 	struct block_device *blk = cdev->priv;
 
 	return writebuffer_flush(blk);
 }
 
-static int block_flush(struct cdev *cdev)
+static int block_op_flush(struct cdev *cdev)
 {
 	struct block_device *blk = cdev->priv;
 
@@ -325,12 +325,12 @@ static int block_flush(struct cdev *cdev)
 }
 
 static struct file_operations block_ops = {
-	.read	= block_read,
+	.read	= block_op_read,
 #ifdef CONFIG_BLOCK_WRITE
-	.write	= block_write,
+	.write	= block_op_write,
 #endif
-	.close	= block_close,
-	.flush	= block_flush,
+	.close	= block_op_close,
+	.flush	= block_op_flush,
 	.lseek	= dev_lseek_default,
 };
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
