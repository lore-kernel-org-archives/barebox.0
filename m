Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqj7-0007qi-JN
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 08:08:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id q24so3584796plr.13
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2019 01:08:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 30 Sep 2019 01:07:48 -0700
Message-Id: <20190930080748.29977-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] mci: imx-esdhc-pbl: Fix watermark level value for i.MX
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>, Ruslan Sushko <ruslan.sushko@zii.aero>

Layerscape and i.MX have different semantics of Watermark Level
Register. Whereas the former uses "0" to signify maximum allowed
value, the latter does not.

According to the RM (i.MX8MQ, i.MX6):

"...The read burst length must be less than or equal to the read
watermark level.."

Setting Watermark Level Register to zero violates that limitation. It
appears that, on i.MX8MQ, not following that rule causes certain
configs + toolchains to result in non-bootable image. Specifically,
polling for CICHB, CIDHB and DLA to clear in esdhc_send_cmd() times
out. There doesn't appear to be any clear relationship as to what kind
of image will have the problem, but the following combinations failed
to boot on ZII i.MX8MQ Zest board:

  - gcc version 9.2.1 20190827 (Red Hat Cross 9.2.1-1) (GCC) +
    imx_v8_defconfig + CONFIG_DEBUG_LL and CONFIG_PBL_CONSOLE

  - gcc version 5.5.0 (Timesys 20190405) (custom toolchain) +
    imx_v8_defconfig

Setting WML's *_BRST_LE to 16 and *_WML to 128 on i.MX resolves the
issue (same setting that's selected by writing 0 on Layerscape).

Fixes: 48562aeaa8 ("esdhc-xload: check for PRSSTAT_BREN only after each block")
Cc: Chris Healy <cphealy@gmail.com>
Cc: Ruslan Sushko <ruslan.sushko@zii.aero>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

I don't have a very good explanation as to why those particuar
toolchain + config settings cause problems and it's not clear how the
IP block interprets those illegal values since RM is silent on that. I
spent a solid chunk of time trying to figure that out without much
luck, so I figured that maybe, given that mismatch is pretty clear
from comparing two datasheets, this fix can go in without having one.

If this patch is a acceptable, I think it should also go to master
since it fixes boot break

 drivers/mci/imx-esdhc-pbl.c | 23 ++++++++++++++++++++---
 drivers/mci/imx-esdhc.h     |  3 +++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index aa93af656c..66dcd473d1 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -28,11 +28,13 @@
 #include "imx-esdhc.h"
 
 #define SECTOR_SIZE 512
+#define SECTOR_WML  (SECTOR_SIZE / sizeof(u32))
 
 struct esdhc {
 	void __iomem *regs;
 	bool is_mx6;
 	bool is_be;
+	bool wrap_wml;
 };
 
 static uint32_t esdhc_read32(struct esdhc *esdhc, int reg)
@@ -107,7 +109,7 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 			}
 		}
 
-		for (i = 0; i < SECTOR_SIZE / sizeof(uint32_t); i++) {
+		for (i = 0; i < SECTOR_WML; i++) {
 			databuf = esdhc_read32(esdhc, SDHCI_BUFFER);
 			*((u32 *)buffer) = databuf;
 			buffer += 4;
@@ -203,7 +205,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
-	u32 val;
+	u32 val, wml;
 	int ret;
 
 	esdhc_write32(esdhc, SDHCI_INT_ENABLE,
@@ -212,7 +214,18 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 		      IRQSTATEN_DTOE | IRQSTATEN_DCE | IRQSTATEN_DEBE |
 		      IRQSTATEN_DINT);
 
-	esdhc_write32(esdhc, IMX_SDHCI_WML, 0x0);
+	wml = FIELD_PREP(WML_WR_BRST_LEN, 16)         |
+	      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
+	      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
+	      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML);
+	/*
+	 * Some SoCs intrpret 0 as MAX value so for those cases the
+	 * above value translates to zero
+	 */
+	if (esdhc->wrap_wml)
+		wml = 0;
+
+	esdhc_write32(esdhc, IMX_SDHCI_WML, wml);
 
 	val = esdhc_read32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val |= SYSCTL_HCKEN | SYSCTL_IPGEN;
@@ -388,6 +401,7 @@ int imx6_esdhc_start_image(int instance)
 
 	esdhc.is_be = 0;
 	esdhc.is_mx6 = 1;
+	esdhc.wrap_wml = false;
 
 	return esdhc_start_image(&esdhc, 0x10000000, 0x10000000, 0);
 }
@@ -421,6 +435,7 @@ int imx8_esdhc_start_image(int instance)
 
 	esdhc.is_be = 0;
 	esdhc.is_mx6 = 1;
+	esdhc.wrap_wml = false;
 
 	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
@@ -447,6 +462,7 @@ int imx8_esdhc_load_piggy(int instance)
 
 	esdhc.is_be = 0;
 	esdhc.is_mx6 = 1;
+	esdhc.wrap_wml = false;
 
 	/*
 	 * We expect to be running at MX8MQ_ATF_BL33_BASE_ADDR where the atf
@@ -503,6 +519,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 	struct esdhc esdhc = {
 		.regs = IOMEM(0x01560000),
 		.is_be = true,
+		.wrap_wml = false,
 	};
 	unsigned long sdram = 0x80000000;
 	void (*barebox)(unsigned long, unsigned long, unsigned long) =
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 9b79346f90..2d5471969d 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -24,6 +24,7 @@
 
 #include <errno.h>
 #include <asm/byteorder.h>
+#include <linux/bitfield.h>
 
 #define SYSCTL_INITA		0x08000000
 #define SYSCTL_TIMEOUT_MASK	0x000f0000
@@ -43,7 +44,9 @@
 
 #define WML_WRITE	0x00010000
 #define WML_RD_WML_MASK	0xff
+#define WML_WR_BRST_LEN	GENMASK(28, 24)
 #define WML_WR_WML_MASK	0xff0000
+#define WML_RD_BRST_LEN	GENMASK(12, 8)
 
 #define BLKATTR_CNT(x)	((x & 0xffff) << 16)
 #define BLKATTR_SIZE(x)	(x & 0x1fff)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
