Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsqH1-0002I1-FF
 for barebox@lists.infradead.org; Thu, 14 May 2015 10:21:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 May 2015 12:21:22 +0200
Message-Id: <1431598883-25668-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
References: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mtd: Fix function prototype
To: Barebox List <barebox@lists.infradead.org>

mtd_op_protect must return int instead of size_t.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 1755e76..681dc93 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -191,7 +191,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	return 0;
 }
 
-static ssize_t mtd_op_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
+static int mtd_op_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
 {
 	struct mtd_info *mtd = cdev->priv;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
