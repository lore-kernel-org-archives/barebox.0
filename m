Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xR-0003Yc-PR
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:49 +0100
Message-Id: <20201106133900.2656-16-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/26] mtd: nand: omap_gpmc: Add missing bch16 string
To: Barebox List <barebox@lists.infradead.org>

We support bch16_hw in the OMAP NAND driver, but we cannot show it in
the eccmode parameter. Add the missing string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 670eba4206..d51a8a8a9e 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -102,6 +102,7 @@ static const char *ecc_mode_strings[] = {
 	"hamming_hw_romcode",
 	"bch8_hw",
 	"bch8_hw_romcode",
+	"bch16_hw",
 };
 
 /** internal structure maintained for nand information */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
