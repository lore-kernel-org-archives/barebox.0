Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFlA7-0000DP-Su
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 18:14:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1eFl9m-0002FN-6L
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 19:14:26 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 17 Nov 2017 19:14:26 +0100
Message-Id: <20171117181426.27347-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2] imx-bbu-nand-fcb: fix build on MX28 only
To: barebox@lists.infradead.org

This code may be compiled without ARCH_IMX6 present, so it must not
depend on any functions provided by the architecture support.

Fixes: a2618c215bff (imx-bbu-nand-fcb: add support for imx6ul)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: Remove ifdeffery by introducing a dedicated function, as
    suggested by Sascha.
---
 common/imx-bbu-nand-fcb.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 89b404884ae8..2c8ca979266c 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -38,9 +38,21 @@
 #include <io.h>
 #include <crc.h>
 #include <mach/generic.h>
-#include <mach/imx6.h>
 #include <mtd/mtd-peb.h>
 
+#ifdef CONFIG_ARCH_IMX6
+#include <mach/imx6.h>
+static inline int fcb_is_bch_encoded(void)
+{
+       return cpu_is_mx6ul() || cpu_is_mx6ull();
+}
+#else
+static inline int fcb_is_bch_encoded(void)
+{
+       return 0;
+}
+#endif
+
 struct dbbt_block {
 	uint32_t Checksum;
 	uint32_t FingerPrint;
@@ -441,7 +453,7 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		goto err;
 	}
 
-	if (cpu_is_mx6ul() || cpu_is_mx6ull())
+	if (fcb_is_bch_encoded())
 		fcb = read_fcb_bch(rawpage, 40);
 	else
 		fcb = read_fcb_hamming_13_8(rawpage);
@@ -899,7 +911,7 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
-	if (cpu_is_mx6ul() || cpu_is_mx6ull()) {
+	if (fcb_is_bch_encoded()) {
 		/* 40 bit BCH, for i.MX6UL(L) */
 		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
 	} else {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
