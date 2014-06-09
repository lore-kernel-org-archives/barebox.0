Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wu1HB-0007BS-9U
 for barebox@lists.infradead.org; Mon, 09 Jun 2014 15:14:21 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 9 Jun 2014 17:14:08 +0200
Message-ID: <1402326848-16239-2-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1402326848-16239-1-git-send-email-Herve.CODINA@celad.com>
References: <1402326848-16239-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 2/2] mtd: fix mtd erasesize
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Set mtd erasize using max erasesize from erase regions

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 drivers/mtd/nor/cfi_flash.c |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 3d3d231..a56183d 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -949,6 +949,8 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 static void cfi_init_mtd(struct flash_info *info)
 {
 	struct mtd_info *mtd = &info->mtd;
+	u_int32_t erasesize;
+	int i;
 
 	mtd->read = cfi_mtd_read;
 	mtd->write = cfi_mtd_write;
@@ -956,7 +958,14 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->lock = cfi_mtd_lock;
 	mtd->unlock = cfi_mtd_unlock;
 	mtd->size = info->size;
-	mtd->erasesize = info->eraseregions[1].erasesize; /* FIXME */
+	
+	erasesize = 0;
+	for (i=0; i < info->numeraseregions; i++) {
+		if (erasesize < info->eraseregions[i].erasesize)
+			erasesize = info->eraseregions[i].erasesize;
+	}
+	mtd->erasesize = erasesize;
+	
 	mtd->writesize = 1;
 	mtd->subpage_sft = 0;
 	mtd->eraseregions = info->eraseregions;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
