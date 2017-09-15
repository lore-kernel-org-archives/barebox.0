Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsmaw-0000Hp-Ce
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 09:07:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dsmaa-00022a-Lm
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 11:07:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 15 Sep 2017 11:07:08 +0200
Message-Id: <20170915090708.29889-2-l.stach@pengutronix.de>
In-Reply-To: <20170915090708.29889-1-l.stach@pengutronix.de>
References: <20170915090708.29889-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] imx-bbu-nand-fcb: fix build on MX28 only
To: barebox@lists.infradead.org

This code may be compiled without ARCH_IMX6 present, so it must not
depend on any functions provided by the architecture support.

Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 7218c5e1ccda..bd539bafa7f7 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -38,9 +38,12 @@
 #include <io.h>
 #include <crc.h>
 #include <mach/generic.h>
-#include <mach/imx6.h>
 #include <mtd/mtd-peb.h>
 
+#ifdef CONFIG_ARCH_IMX6
+#include <mach/imx6.h>
+#endif
+
 struct dbbt_block {
 	uint32_t Checksum;
 	uint32_t FingerPrint;
@@ -141,7 +144,8 @@ static uint8_t reverse_bit(uint8_t b)
 	return b;
 }
 
-static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
+static void __maybe_unused encode_bch_ecc(void *buf, struct fcb_block *fcb,
+					  int eccbits)
 {
 	int i, j, m = 13;
 	int blocksize = 128;
@@ -441,9 +445,11 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
+#if IS_ENABLED(CONFIG_ARCH_IMX6)
 	if (cpu_is_mx6ul() || cpu_is_mx6ull())
 		fcb = read_fcb_bch(rawpage, 40);
 	else
+#endif
 		fcb = read_fcb_hamming_13_8(rawpage);
 
 	if (IS_ERR(fcb)) {
@@ -899,10 +905,13 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
+#if IS_ENABLED(CONFIG_ARCH_IMX6)
 	if (cpu_is_mx6ul() || cpu_is_mx6ull()) {
 		/* 40 bit BCH, for i.MX6UL(L) */
 		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
-	} else {
+	} else
+#endif
+	{
 		memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
 		encode_hamming_13_8(fcb_raw_page + 12,
 				    fcb_raw_page + 12 + 512, 512);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
