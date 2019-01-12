Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCJK-0005eh-HF
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:58:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id 64so7927068pfr.9
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:58:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:58:14 -0800
Message-Id: <20190112055815.12180-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] block: Alias block_op_close() to block_op_flush()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The two functions are identical, so there's no need to keep two copies
of the same code around. Alias block_op_close() to block_op_flush()
and drop standalone definition for the former.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/block.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/block.c b/common/block.c
index 8d0de42d90..549df71a9d 100644
--- a/common/block.c
+++ b/common/block.c
@@ -329,13 +329,6 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 }
 #endif
 
-static int block_op_close(struct cdev *cdev)
-{
-	struct block_device *blk = cdev->priv;
-
-	return writebuffer_flush(blk);
-}
-
 static int block_op_flush(struct cdev *cdev)
 {
 	struct block_device *blk = cdev->priv;
@@ -343,6 +336,8 @@ static int block_op_flush(struct cdev *cdev)
 	return writebuffer_flush(blk);
 }
 
+static int block_op_close(struct cdev *cdev) __alias(block_op_flush);
+
 static struct cdev_operations block_ops = {
 	.read	= block_op_read,
 #ifdef CONFIG_BLOCK_WRITE
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
