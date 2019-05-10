Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Oy-Sf
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:35 +0200
Message-Id: <20190510062135.11534-15-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] ARM: Layerscape: Add device tree compatible to image
 metadata
To: Barebox List <barebox@lists.infradead.org>

Enrich the image metadata with the device tree compatible string
the image supports.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/lowlevel.c | 3 +++
 arch/arm/boards/tqmls1046a/lowlevel.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 6de16063a7..0c95fbb035 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <ddr_spd.h>
+#include <image-metadata.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <i2c/i2c-early.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
@@ -201,6 +202,8 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 	debug_ll_init();
 	ls1046a_init_lowlevel();
 
+	IMD_USED_OF(fsl_ls1046a_rdb);
+
 	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
 	ret = spd_read_eeprom(i2c, i2c_fsl_xfer, 0x51, &spd_eeprom);
 	if (ret) {
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 2d0223ce89..dc0e179694 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
 #include <debug_ll.h>
+#include <image-metadata.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
@@ -253,6 +254,8 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
+	IMD_USED_OF(fsl_tqmls1046a_mbls10xxa);
+
 	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
 
 	ls1046a_errata_post_ddr();
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
