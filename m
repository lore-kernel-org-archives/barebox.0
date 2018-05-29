Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNc3v-0002rb-B7
 for barebox@lists.infradead.org; Tue, 29 May 2018 10:41:09 +0000
From: <Heinrich.Toews@wago.com>
Date: Tue, 29 May 2018 10:41:11 +0000
Message-ID: <1527590457-27742-1-git-send-email-heinrich.toews@wago.com>
Content-Language: en-US
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
Subject: [PATCH] mtd: nand: omap_gpmc: fix: remove bch4 string extant
To: barebox@lists.infradead.org

Remove an erroneous bch4 string leftover that
leads to a false ecc mode mapping.

BCH4 support was previously removed by Teresa Remmet:
d316cda 'mtd: nand: omap_gpmc: Remove BCH4 support'

Signed-off-by: Heinrich Toews <heinrich.toews@wago.com>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce63..ce03c7a 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -95,7 +95,6 @@ int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_l
 static const char *ecc_mode_strings[] = {
 	"software",
 	"hamming_hw_romcode",
-	"bch4_hw",
 	"bch8_hw",
 	"bch8_hw_romcode",
 };
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
