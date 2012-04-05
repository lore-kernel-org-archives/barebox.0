Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgZz-0002rA-2o
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:54:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:46 +0200
Message-Id: <1333608829-13213-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
References: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] mtd: fix compiler warning
To: barebox@lists.infradead.org

Fixes:

drivers/mtd/core.c: In function 'mtd_ioctl':
drivers/mtd/core.c:122:24: warning: unused variable 'ecc' [-Wunused-variable]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ccc5c26..7bc0a0f 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -119,7 +119,9 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	int ret = 0;
 	struct mtd_info *mtd = cdev->priv;
 	struct mtd_info_user *user = buf;
+#if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
 	struct mtd_ecc_stats *ecc = buf;
+#endif
 	struct region_info_user *reg = buf;
 
 	switch (request) {
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
