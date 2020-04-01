Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXyr-00009P-6s
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 07:40:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Apr 2020 09:40:06 +0200
Message-Id: <20200401074006.13877-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] arm: omap: Fix no previous prototype warnings
To: Barebox List <barebox@lists.infradead.org>

The board's set_muxconf_regs is declared in the C file using it and
defined in another file without a header file providing the prototype.
Add a header file to avoid compiler warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/lowlevel.c                | 2 +-
 arch/arm/boards/archosg9/mux.c                     | 3 ++-
 arch/arm/boards/archosg9/mux.h                     | 2 +-
 arch/arm/boards/panda/lowlevel.c                   | 6 +++---
 arch/arm/boards/panda/mux.c                        | 4 +++-
 arch/arm/boards/panda/mux.h                        | 6 ++++++
 arch/arm/boards/phytec-phycard-omap4/lowlevel.c    | 6 +++---
 arch/arm/boards/phytec-phycard-omap4/mux.c         | 4 +++-
 arch/arm/boards/phytec-phycard-omap4/mux.h         | 6 ++++++
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c | 6 +++---
 arch/arm/boards/phytec-phycore-omap4460/mux.c      | 4 +++-
 arch/arm/boards/phytec-phycore-omap4460/mux.h      | 6 ++++++
 12 files changed, 40 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/boards/panda/mux.h
 create mode 100644 arch/arm/boards/phytec-phycard-omap4/mux.h
 create mode 100644 arch/arm/boards/phytec-phycore-omap4460/mux.h

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 2a93428462..b1045a44ed 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -48,7 +48,7 @@ static noinline void archosg9_init_lowlevel(void)
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
 
-	set_muxconf_regs();
+	archosg9_set_muxconf_regs();
 
 	omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1380);
 
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
index e9cb3c43b0..aab8122f49 100644
--- a/arch/arm/boards/archosg9/mux.c
+++ b/arch/arm/boards/archosg9/mux.c
@@ -257,7 +257,8 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{ JTAG_TDO            , IEN | PTU | M0 },
 };
 
-void set_muxconf_regs(void){
+archosg9_void set_muxconf_regs(void)
+{
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE,
 		core_padconf_array, ARRAY_SIZE(core_padconf_array));
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP,
diff --git a/arch/arm/boards/archosg9/mux.h b/arch/arm/boards/archosg9/mux.h
index 97297b64bb..4ee5415871 100644
--- a/arch/arm/boards/archosg9/mux.h
+++ b/arch/arm/boards/archosg9/mux.h
@@ -1,6 +1,6 @@
 #ifndef _MUX_H
 #define _MUX_H
 
-void set_muxconf_regs(void);
+void archosg9_set_muxconf_regs(void);
 
 #endif /* _MUX_H */
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 006fb627dd..1ed2b89f2f 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -29,9 +29,9 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
-#define TPS62361_VSEL0_GPIO    7
+#include "mux.h"
 
-void set_muxconf_regs(void);
+#define TPS62361_VSEL0_GPIO    7
 
 static const struct ddr_regs ddr_regs_400_mhz_2cs = {
 	/* tRRD changed from 10ns to 12.5ns because of the tFAW requirement*/
@@ -69,7 +69,7 @@ static void noinline panda_init_lowlevel(void)
 	/* Enable all clocks */
 	omap4_enable_all_clocks();
 
-	set_muxconf_regs();
+	panda_set_muxconf_regs();
 
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 8225aa615d..76d1c51005 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -5,6 +5,8 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-clock.h>
 
+#include "mux.h"
+
 static const struct pad_conf_entry core_padconf_array[] = {
 	{ GPMC_AD0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat0 */ },
 	{ GPMC_AD1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat1 */ },
@@ -239,7 +241,7 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{ FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
 };
 
-void set_muxconf_regs(void)
+void panda_set_muxconf_regs(void)
 {
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
 			ARRAY_SIZE(core_padconf_array));
diff --git a/arch/arm/boards/panda/mux.h b/arch/arm/boards/panda/mux.h
new file mode 100644
index 0000000000..11f2848a27
--- /dev/null
+++ b/arch/arm/boards/panda/mux.h
@@ -0,0 +1,6 @@
+#ifndef __BOARD_MUX_H
+#define __BOARD_MUX_H
+
+void panda_set_muxconf_regs(void);
+
+#endif /* __BOARD_MUX_H */
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
index c49c4ca841..3035cca7fa 100644
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
@@ -29,9 +29,9 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
-#define TPS62361_VSEL0_GPIO    7
+#include "mux.h"
 
-void set_muxconf_regs(void);
+#define TPS62361_VSEL0_GPIO    7
 
 static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
 	.tim1           = 0x0EEB0662,
@@ -57,7 +57,7 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
 	unsigned int rev = omap4_revision();
 
-	set_muxconf_regs();
+	phycard_omap4_set_muxconf_regs();
 
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.c b/arch/arm/boards/phytec-phycard-omap4/mux.c
index a31d995767..564944d1ba 100644
--- a/arch/arm/boards/phytec-phycard-omap4/mux.c
+++ b/arch/arm/boards/phytec-phycard-omap4/mux.c
@@ -5,6 +5,8 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-clock.h>
 
+#include "mux.h"
+
 static const struct pad_conf_entry core_padconf_array[] = {
 	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
 	{GPMC_AD1, (IEN | PTD | DIS | M0)},			 	/* gpmc_ad1 */
@@ -236,7 +238,7 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{SYS_BOOT7, (M0)},			/* sys_boot7 */
 };
 
-void set_muxconf_regs(void)
+void phycard_omap4_set_muxconf_regs(void)
 {
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
 			ARRAY_SIZE(core_padconf_array));
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.h b/arch/arm/boards/phytec-phycard-omap4/mux.h
new file mode 100644
index 0000000000..8b1a3d37e9
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-omap4/mux.h
@@ -0,0 +1,6 @@
+#ifndef __BOARD_MUX_H
+#define __BOARD_MUX_H
+
+void phycard_omap4_set_muxconf_regs(void);
+
+#endif /* __BOARD_MUX_H */
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 6511dae9d4..8c25eab7ce 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -29,6 +29,8 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
+#include "mux.h"
+
 #define TPS62361_VSEL0_GPIO    182
 #define LPDDR2_2G              0x5
 #define LPDDR2_4G              0x6
@@ -38,8 +40,6 @@
 #define EMIF_LPDDR2_MODE_REG_CONFIG	0x0050
 #define EMIF_LPDDR2_MODE_REG_DATA	0x0040
 
-void set_muxconf_regs(void);
-
 /* 512MB */
 static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
 	.tim1		= 0x0EEB0662,
@@ -94,7 +94,7 @@ static void noinline pcm049_init_lowlevel(void)
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
 	unsigned int rev = omap4_revision();
 
-	set_muxconf_regs();
+	phycore_omap4460_set_muxconf_regs();
 
 	if (IS_ENABLED(CONFIG_1024MB_DDR2RAM)) {
 		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.c b/arch/arm/boards/phytec-phycore-omap4460/mux.c
index fda4c519b8..ca4ccf39f0 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/mux.c
@@ -5,6 +5,8 @@
 #include <mach/omap4-mux.h>
 #include <mach/omap4-clock.h>
 
+#include "mux.h"
+
 static const struct pad_conf_entry core_padconf_array[] = {
 	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
 	{GPMC_AD1, (IEN | PTD | DIS | M0)},			 	/* gpmc_ad1 */
@@ -236,7 +238,7 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{SYS_BOOT7, (M0)},			/* sys_boot7 */
 };
 
-void set_muxconf_regs(void)
+void phycore_omap4460_set_muxconf_regs(void)
 {
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
 			ARRAY_SIZE(core_padconf_array));
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.h b/arch/arm/boards/phytec-phycore-omap4460/mux.h
new file mode 100644
index 0000000000..64d4478b2c
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-omap4460/mux.h
@@ -0,0 +1,6 @@
+#ifndef __BOARD_MUX_H
+#define __BOARD_MUX_H
+
+void phycore_omap4460_set_muxconf_regs(void);
+
+#endif /* __BOARD_MUX_H */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
