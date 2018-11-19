Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003j1-29
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:49 +0100
Message-Id: <20181119084454.17599-8-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] mtd: nand: omap: Add header file for bch decoder
To: Barebox List <barebox@lists.infradead.org>

omap_gpmc_decode_bch() is defined in its user rather than properly in a
header file. Add a header file to be included by both its user and the
file implementing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_bch_decoder.c | 2 ++
 drivers/mtd/nand/nand_omap_bch_decoder.h | 6 ++++++
 drivers/mtd/nand/nand_omap_gpmc.c        | 4 ++--
 3 files changed, 10 insertions(+), 2 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_omap_bch_decoder.h

diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.c b/drivers/mtd/nand/nand_omap_bch_decoder.c
index 64e8031785..4dd28a7704 100644
--- a/drivers/mtd/nand/nand_omap_bch_decoder.c
+++ b/drivers/mtd/nand/nand_omap_bch_decoder.c
@@ -15,6 +15,8 @@
 
 #include <common.h>
 
+#include "nand_omap_bch_decoder.h"
+
 #define mm		13
 #define kk_shorten	4096
 #define nn		8191	/* Length of codeword, n = 2**mm - 1 */
diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.h b/drivers/mtd/nand/nand_omap_bch_decoder.h
new file mode 100644
index 0000000000..74d24be028
--- /dev/null
+++ b/drivers/mtd/nand/nand_omap_bch_decoder.h
@@ -0,0 +1,6 @@
+#ifndef MTD_OMAP_GPMC_DECODE_BCH_H
+#define MTD_OMAP_GPMC_DECODE_BCH_H
+
+int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
+
+#endif /* MTD_OMAP_GPMC_DECODE_BCH_H */
\ No newline at end of file
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d0b1699839..323a9c7532 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -71,6 +71,8 @@
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 
+#include "nand_omap_bch_decoder.h"
+
 #define GPMC_ECC_CONFIG_ECCENABLE		(1 << 0)
 #define GPMC_ECC_CONFIG_ECCCS(x)		(((x) & 0x7) << 1)
 #define GPMC_ECC_CONFIG_ECCTOPSECTOR(x)		(((x) & 0x7) << 4)
@@ -90,8 +92,6 @@
 static const uint8_t bch8_vector[] = {0xf3, 0xdb, 0x14, 0x16, 0x8b, 0xd2,
 		0xbe, 0xcc, 0xac, 0x6b, 0xff, 0x99, 0x7b};
 
-int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
-
 static const char *ecc_mode_strings[] = {
 	"software",
 	"hamming_hw_romcode",
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
