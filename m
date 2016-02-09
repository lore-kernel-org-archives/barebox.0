Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT527-0004mU-GB
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:45 +0100
Message-Id: <1455011748-5538-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
References: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mtd: Fix mtd_op_read for devices >4GiB
To: Barebox List <barebox@lists.infradead.org>

The mtd read file operation has a unnecessary conversion to unsigned
long in the read offset. Remove it to make it work with chips >4GiB

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 586b4a0..3251bbc 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -67,14 +67,13 @@ int mtd_all_ff(const void *buf, unsigned int len)
 }
 
 static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
-			  loff_t _offset, ulong flags)
+			  loff_t offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
 	size_t retlen;
 	int ret;
-	unsigned long offset = _offset;
 
-	dev_dbg(cdev->dev, "read ofs: 0x%08lx count: 0x%08zx\n",
+	dev_dbg(cdev->dev, "read ofs: 0x%08llx count: 0x%08zx\n",
 			offset, count);
 
 	ret = mtd_read(mtd, offset, count, &retlen, buf);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
