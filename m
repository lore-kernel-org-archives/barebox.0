Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9F-00084r-3r
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:08 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001Ca-Rh
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000ey-8B
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:38 +0200
Message-Id: <20180731104442.2451-16-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 15/19] ARM: socfpga: arria10-reset-manager: don't reset
 bootsource
To: Barebox List <barebox@lists.infradead.org>

Arria10 init code resets all peripherals. Convert this to keep the bootmedium
out of reset and keep the setup done by the boot ROM.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-bootsource.c         | 16 +++++++++--
 arch/arm/mach-socfpga/arria10-reset-manager.c      | 33 +++++++++++++++-------
 .../include/mach/arria10-system-manager.h          |  4 +++
 arch/arm/mach-socfpga/include/mach/generic.h       |  3 ++
 4 files changed, 43 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-bootsource.c b/arch/arm/mach-socfpga/arria10-bootsource.c
index 26af64a1a408..3319dc4bf968 100644
--- a/arch/arm/mach-socfpga/arria10-bootsource.c
+++ b/arch/arm/mach-socfpga/arria10-bootsource.c
@@ -15,16 +15,17 @@
 #include <bootsource.h>
 #include <init.h>
 #include <io.h>
+#include <mach/generic.h>
 #include <mach/arria10-system-manager.h>
 
-static int arria10_boot_save_loc(void)
-{
+enum bootsource arria10_get_bootsource(void) {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t val;
+	uint32_t mask = ARRIA10_SYSMGR_BOOTINFO_BSEL_MASK;
 
 	val = readl(ARRIA10_SYSMGR_BOOTINFO);
 
-	switch ((val & 0x7000) >> 12) {
+	switch ((val & mask) >> ARRIA10_SYSMGR_BOOTINFO_BSEL_SHIFT) {
 	case 0:
 		/* reserved */
 		break;
@@ -45,6 +46,15 @@ static int arria10_boot_save_loc(void)
 		break;
 	}
 
+	return src;
+}
+
+static int arria10_boot_save_loc(void)
+{
+	enum bootsource src;
+
+	src = arria10_get_bootsource();
+
 	bootsource_set(src);
 	bootsource_set_instance(0);
 
diff --git a/arch/arm/mach-socfpga/arria10-reset-manager.c b/arch/arm/mach-socfpga/arria10-reset-manager.c
index a7e4bd603e4c..76adc1702c69 100644
--- a/arch/arm/mach-socfpga/arria10-reset-manager.c
+++ b/arch/arm/mach-socfpga/arria10-reset-manager.c
@@ -5,8 +5,10 @@
  */
 
 #include <common.h>
+#include <bootsource.h>
 #include <errno.h>
 #include <io.h>
+#include <mach/generic.h>
 #include <mach/arria10-pinmux.h>
 #include <mach/arria10-regs.h>
 #include <mach/arria10-reset-manager.h>
@@ -14,23 +16,35 @@
 
 void arria10_reset_peripherals(void)
 {
-	unsigned mask_ecc_ocp = ARRIA10_RSTMGR_PER0MODRST_EMAC0OCP |
+	enum bootsource src;
+
+	uint32_t mask = ARRIA10_RSTMGR_PER0MODRST_EMAC0OCP |
 		ARRIA10_RSTMGR_PER0MODRST_EMAC1OCP |
 		ARRIA10_RSTMGR_PER0MODRST_EMAC2OCP |
 		ARRIA10_RSTMGR_PER0MODRST_USB0OCP |
 		ARRIA10_RSTMGR_PER0MODRST_USB1OCP |
 		ARRIA10_RSTMGR_PER0MODRST_NANDOCP |
-		ARRIA10_RSTMGR_PER0MODRST_QSPIOCP |
-		ARRIA10_RSTMGR_PER0MODRST_SDMMCOCP;
+		ARRIA10_RSTMGR_PER0MODRST_QSPIOCP;
+
+	src = arria10_get_bootsource();
+	if (src == BOOTSOURCE_MMC) {
+		mask |= ARRIA10_RSTMGR_PER0MODRST_SDMMC;
+		mask |= ARRIA10_RSTMGR_PER0MODRST_SDMMCOCP;
+	}
 
-	/* disable all components except ECC_OCP, L4 Timer0 and L4 WD0 */
+	/* disable all components except the ECC_OCP and bootsource */
 	writel(0xffffffff, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST);
-	setbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST,
-		     ~mask_ecc_ocp);
+	writel(~mask, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST);
+
+	mask = 0xffffffff;
+
+	if (src == BOOTSOURCE_MMC) {
+		mask &= ~ARRIA10_RSTMGR_PER0MODRST_SDMMC;
+		mask &= ~ARRIA10_RSTMGR_PER0MODRST_SDMMCOCP;
+	}
 
 	/* Finally disable the ECC_OCP */
-	setbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST,
-		     mask_ecc_ocp);
+	writel(mask, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST);
 }
 
 void arria10_reset_deassert_dedicated_peripherals(void)
@@ -45,8 +59,7 @@ void arria10_reset_deassert_dedicated_peripherals(void)
 	/* enable ECC OCP first */
 	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST, mask);
 
-	mask = ARRIA10_RSTMGR_PER0MODRST_SDMMC |
-	       ARRIA10_RSTMGR_PER0MODRST_QSPI |
+	mask = ARRIA10_RSTMGR_PER0MODRST_QSPI |
 	       ARRIA10_RSTMGR_PER0MODRST_NAND |
 	       ARRIA10_RSTMGR_PER0MODRST_DMA;
 
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h b/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
index f98cc36c7664..20bd35270aed 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
@@ -52,6 +52,10 @@
 #define ARRIA10_SYSMGR_NOC_IDLESTATUS		(ARRIA10_SYSMGR_ADDR + 0xd4)
 #define ARRIA10_SYSMGR_FPGA2SOC_CTRL		(ARRIA10_SYSMGR_ADDR + 0xd8)
 
+
+#define ARRIA10_SYSMGR_BOOTINFO_BSEL_MASK	0x00007000
+#define ARRIA10_SYSMGR_BOOTINFO_BSEL_SHIFT	12
+
 /* pin mux */
 #define ARRIA10_SYSMGR_PINMUXGRP		(ARRIA10_SYSMGR_ADDR + 0x400)
 #define ARRIA10_SYSMGR_PINMUXGRP_NANDUSEFPGA	(ARRIA10_SYSMGR_PINMUXGRP + 0x2F0)
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index da9028903cd5..5fcbc9ecf5ac 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -45,6 +45,9 @@ static inline void socfpga_cyclone5_qspi_init(void)
 	return;
 }
 #endif
+#if defined(CONFIG_ARCH_SOCFPGA_ARRIA10)
+enum bootsource arria10_get_bootsource(void);
+#endif
 
 static inline void __udelay(unsigned us)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
