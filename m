Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkY-0002Gg-9Y
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:01:52 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id B015827A6FC
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:04 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:17 +0100
Message-Id: <1458208829-25570-2-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 01/13] mtd: cfi-flash: Set MTD's writebufsize
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

writebufsize is zero initialized, set actual value during init.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 drivers/mtd/nor/cfi_flash.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index e50f0e6..5bdccca 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -956,6 +956,7 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->erasesize = erasesize;
 
 	mtd->writesize = 1;
+	mtd->writebufsize = info->buffer_size;
 	mtd->subpage_sft = 0;
 	mtd->eraseregions = info->eraseregions;
 	mtd->numeraseregions = info->numeraseregions;
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
