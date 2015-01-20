Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDZUn-0002NU-Rw
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 14:09:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Jan 2015 15:09:01 +0100
Message-Id: <1421762942-9789-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: MXS: imx28evk: Add lowlevel support
To: Barebox List <barebox@lists.infradead.org>

This switches the imx28evk to multiimage support and adds the
lowlevel initialization to make the bootlets unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/lowlevel.c | 58 ++++++++++++++++++++++++++-
 arch/arm/mach-mxs/Kconfig                     |  1 +
 images/Makefile.mxs                           | 10 +++++
 3 files changed, 67 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 3c7248e..a46a080 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -1,11 +1,65 @@
+#define pr_fmt(fmt) "Freescale MX28evk: " fmt
+#define DEBUG
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx28-regs.h>
+#include <mach/init.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/iomux.h>
+#include <stmp-device.h>
 
-void __naked barebox_arm_reset_vector(void)
+ENTRY_FUNCTION(start_barebox_freescale_mx28evk, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
 }
+
+static const uint32_t iomux_pads[] = {
+	/* EMI */
+	EMI_DATA0, EMI_DATA1, EMI_DATA2, EMI_DATA3, EMI_DATA4, EMI_DATA5,
+	EMI_DATA6, EMI_DATA7, EMI_DATA8, EMI_DATA9, EMI_DATA10, EMI_DATA11,
+	EMI_DATA12, EMI_DATA13, EMI_DATA14, EMI_DATA15, EMI_ODT0, EMI_DQM0,
+	EMI_ODT1, EMI_DQM1, EMI_DDR_OPEN_FB, EMI_CLK, EMI_DSQ0, EMI_DSQ1,
+	EMI_DDR_OPEN, EMI_A0, EMI_A1, EMI_A2, EMI_A3, EMI_A4, EMI_A5,
+	EMI_A6, EMI_A7, EMI_A8, EMI_A9, EMI_A10, EMI_A11, EMI_A12, EMI_A13,
+	EMI_A14, EMI_BA0, EMI_BA1, EMI_BA2, EMI_CASN, EMI_RASN, EMI_WEN,
+	EMI_CE0N, EMI_CE1N, EMI_CKE,
+
+	/* Debug UART */
+	PWM0_DUART_RX | VE_3_3V,
+	PWM1_DUART_TX | VE_3_3V,
+};
+
+static noinline void freescale_mx28evk_init(void)
+{
+	int i;
+
+	/* initialize muxing */
+	for (i = 0; i < ARRAY_SIZE(iomux_pads); i++)
+		imx_gpio_mode(iomux_pads[i]);
+
+	pr_debug("initializing power...\n");
+
+	mx28_power_init_battery_input();
+
+	pr_debug("initializing SDRAM...\n");
+
+	mx28_mem_init();
+
+	pr_debug("DONE\n");
+}
+
+ENTRY_FUNCTION(prep_start_barebox_freescale_mx28evk, r0, r1, r2)
+{
+	void (*back)(unsigned long) = (void *)get_lr();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	freescale_mx28evk_init();
+
+	back(0);
+}
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 4022710..ef5d223 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -69,6 +69,7 @@ config MACH_TX28
 config MACH_MX28EVK
 	bool "mx28-evk"
 	select MXS_OCOTP
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index abff255..e2cdbd2 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -32,6 +32,16 @@ image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-sd.img
 FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblx
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-2nd.img
 
+pblx-$(CONFIG_MACH_MX28EVK) += start_barebox_freescale_mx28evk prep_start_barebox_freescale_mx28evk
+PREP_start_barebox_freescale_mx28evk.pblx.mxsbs = start_barebox_freescale_mx28evk_prep
+CFG_start_barebox_freescale_mx28evk.mxsbs = $(mxs28cfg)
+FILE_barebox-freescale-mx28evk-bootstream.img = start_barebox_freescale_mx28evk.mxsbs
+image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-bootstream.img
+FILE_barebox-freescale-mx28evk-sd.img = start_barebox_freescale_mx28evk.mxsbs.mxssd
+image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-sd.img
+FILE_barebox-freescale-mx28evk-2nd.img = start_barebox_freescale_mx28evk.pblx
+image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-2nd.img
+
 pblx-$(CONFIG_MACH_IMX233_OLINUXINO) += start_barebox_olinuxino_imx23 prep_start_barebox_olinuxino_imx23
 PREP_start_barebox_olinuxino_imx23.pblx.mxsbs = start_barebox_olinuxino_imx23_prep;
 CFG_start_barebox_olinuxino_imx23.mxsbs = $(mxs23cfg)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
