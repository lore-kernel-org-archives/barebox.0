Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x230.google.com ([2607:f8b0:400e:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cz61I-000140-VL
 for barebox@lists.infradead.org; Fri, 14 Apr 2017 18:32:34 +0000
Received: by mail-pf0-x230.google.com with SMTP id i5so43472602pfc.2
 for <barebox@lists.infradead.org>; Fri, 14 Apr 2017 11:32:12 -0700 (PDT)
From: Matt Reimer <mreimer@sdgsystems.com>
Date: Fri, 14 Apr 2017 11:32:05 -0700
Message-Id: <20170414183205.62794-1-mreimer@sdgsystems.com>
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
Subject: [PATCH] mtd: nand_omap_gpmc: fix BCH error correction
To: barebox@lists.infradead.org
Cc: Matt Reimer <mreimer@sdgsystems.com>

BCH error detection and correction was only looking at the first
of four syndrome polynomials, which meant it was failing to detect
and correct bitflips in the last 3/4 of the data. In effect, only
the first 512 bytes of a 2048 byte page were being protected by ECC.

The syndrome polynomials (BCH error codes) are stored in the NAND's
OOB, each of which protects 512 bytes of data. The driver used
eccsteps = 1 which effectively made it only use the first polynomial,
and therefore was only protecting the first 512 bytes of the page.

The fix is to pull over a bit of code from the kernel's
omap_correct_data() that sets eccsteps = 4 when the page size is 2048
bytes and hardware ECC is being used.

Signed-off-by: Matt Reimer <mreimer@sdgsystems.com>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9d9d27e..2fe6a10 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -302,7 +302,8 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	unsigned int err_loc[8];
 	int select_4_8;
 
-	int eccsteps = oinfo->nand.ecc.steps;
+        int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
+                (nand->ecc.size == 2048) ? 4 : 1;
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
