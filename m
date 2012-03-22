Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SApCP-00037k-J3
 for barebox@lists.infradead.org; Thu, 22 Mar 2012 21:05:34 +0000
Received: by wibhj13 with SMTP id hj13so1025355wib.0
 for <barebox@lists.infradead.org>; Thu, 22 Mar 2012 14:05:30 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 22 Mar 2012 22:05:17 +0100
Message-Id: <1332450318-26079-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 1/2] mtd: core: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following warning:
drivers/mtd/core.c: In function 'mtd_ioctl':
drivers/mtd/core.c:122:24: warning: unused variable 'ecc'

Found in at91rm9200ek_defconfig.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mtd/core.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ccc5c26..e11ba64 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -119,7 +119,6 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	int ret = 0;
 	struct mtd_info *mtd = cdev->priv;
 	struct mtd_info_user *user = buf;
-	struct mtd_ecc_stats *ecc = buf;
 	struct region_info_user *reg = buf;
 
 	switch (request) {
@@ -146,6 +145,8 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		break;
 #if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
 	case ECCGETSTATS:
+		struct mtd_ecc_stats *ecc = buf;
+
 		ecc->corrected = mtd->ecc_stats.corrected;
 		ecc->failed = mtd->ecc_stats.failed;
 		ecc->badblocks = mtd->ecc_stats.badblocks;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
