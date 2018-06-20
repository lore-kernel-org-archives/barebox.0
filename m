Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVijP-0001Pm-T1
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 19:25:30 +0000
Received: by mail-pl0-x244.google.com with SMTP id k1-v6so308937plt.2
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 12:25:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Jun 2018 12:24:27 -0700
Message-Id: <20180620192430.16689-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180620192430.16689-1-andrew.smirnov@gmail.com>
References: <20180620192430.16689-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/4] ARM: babbage: Make PMIC initialization shareable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some board designs copy i.MX51 Babbadge board's PMIC design and so
require exactly the same initialization. Move correspoding code into a
separate file so it can be shared.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/Makefile                      |   2 +-
 .../boards/freescale-mx51-babbage/Makefile    |   5 +-
 .../arm/boards/freescale-mx51-babbage/board.c | 112 +---------------
 .../arm/boards/freescale-mx51-babbage/power.c | 120 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |  13 +-
 arch/arm/mach-imx/include/mach/imx5.h         |   2 +
 6 files changed, 138 insertions(+), 116 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/power.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b2fea4a40..f1dc4c685 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -43,7 +43,7 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
 obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
 obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
 obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
-obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/
+obj-y						+= freescale-mx51-babbage/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
diff --git a/arch/arm/boards/freescale-mx51-babbage/Makefile b/arch/arm/boards/freescale-mx51-babbage/Makefile
index 01c7a259e..b6e085818 100644
--- a/arch/arm/boards/freescale-mx51-babbage/Makefile
+++ b/arch/arm/boards/freescale-mx51-babbage/Makefile
@@ -1,2 +1,3 @@
-obj-y += board.o
-lwl-y += lowlevel.o
+obj-$(CONFIG_MACH_FREESCALE_MX51_PDK_POWER) += power.o
+obj-$(CONFIG_MACH_FREESCALE_MX51_PDK) += board.o
+lwl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 915748528..06d9ce391 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -30,8 +30,6 @@
 #include <mach/bbu.h>
 #include <nand.h>
 #include <notifier.h>
-#include <spi/spi.h>
-#include <mfd/mc13xxx.h>
 #include <io.h>
 #include <asm/mmu.h>
 #include <mach/imx5.h>
@@ -44,120 +42,14 @@
 
 #define MX51_CCM_CACRR 0x10
 
-static void babbage_power_init(struct mc13xxx *mc13xxx)
-{
-	u32 val;
-
-	/* Write needed to Power Gate 2 register */
-	mc13xxx_reg_read(mc13xxx, MC13892_REG_POWER_MISC, &val);
-	val &= ~0x10000;
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, val);
-
-	/* Write needed to update Charger 0 */
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_CHARGE, 0x0023807F);
-
-	/* power up the system first */
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, 0x00200000);
-
-	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
-		/* Set core voltage to 1.1V */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_0, &val);
-		val &= ~0x1f;
-		val |= 0x14;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_0, val);
-
-		/* Setup VCC (SW2) to 1.25 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_1, &val);
-		val &= ~0x1f;
-		val |= 0x1a;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_1, val);
-
-		/* Setup 1V2_DIG1 (SW3) to 1.25 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_2, &val);
-		val &= ~0x1f;
-		val |= 0x1a;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
-	} else {
-		/* Setup VCC (SW2) to 1.225 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_1, &val);
-		val &= ~0x1f;
-		val |= 0x19;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_1, val);
-
-		/* Setup 1V2_DIG1 (SW3) to 1.2 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_2, &val);
-		val &= ~0x1f;
-		val |= 0x18;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
-	}
-
-	if (mc13xxx_revision(mc13xxx) < MC13892_REVISION_2_0) {
-		/* Set switchers in PWM mode for Atlas 2.0 and lower */
-		/* Setup the switcher mode for SW1 & SW2*/
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
-		val &= ~0x3c0f;
-		val |= 0x1405;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_4, val);
-
-		/* Setup the switcher mode for SW3 & SW4 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_5, &val);
-		val &= ~0xf0f;
-		val |= 0x505;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_5, val);
-	} else {
-		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a */
-		/* Setup the switcher mode for SW1 & SW2*/
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
-		val &= ~0x3c0f;
-		val |= 0x2008;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_4, val);
-
-		/* Setup the switcher mode for SW3 & SW4 */
-		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_5, &val);
-		val &= ~0xf0f;
-		val |= 0x808;
-		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_5, val);
-	}
-
-	/* Set VDIG to 1.65V, VGEN3 to 1.8V, VCAM to 2.5V */
-	mc13xxx_reg_read(mc13xxx, MC13892_REG_SETTING_0, &val);
-	val &= ~0x34030;
-	val |= 0x10020;
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_0, val);
-
-	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
-	mc13xxx_reg_read(mc13xxx, MC13892_REG_SETTING_1, &val);
-	val &= ~0x1FC;
-	val |= 0x1F4;
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_1, val);
-
-	/* Configure VGEN3 and VCAM regulators to use external PNP */
-	val = 0x208;
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
-
-	udelay(200);
-
-	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
-	val = 0x49249;
-	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
-
-	udelay(200);
-
-	pr_info("initialized PMIC\n");
-
-	console_flush();
-	imx51_init_lowlevel(800);
-	clock_notifier_call_chain();
-}
-
 static int imx51_babbage_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx51-babbage"))
 		return 0;
 
-	barebox_set_hostname("babbage");
+	imx51_babbage_power_init();
 
-	mc13xxx_register_init_callback(babbage_power_init);
+	barebox_set_hostname("babbage");
 
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/power.c b/arch/arm/boards/freescale-mx51-babbage/power.c
new file mode 100644
index 000000000..6edc672a5
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-babbage/power.c
@@ -0,0 +1,120 @@
+#define pr_fmt(fmt) "babbage-power: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <notifier.h>
+#include <mach/revision.h>
+#include <mach/imx5.h>
+#include <mfd/mc13xxx.h>
+
+static void babbage_power_init(struct mc13xxx *mc13xxx)
+{
+	u32 val;
+
+	/* Write needed to Power Gate 2 register */
+	mc13xxx_reg_read(mc13xxx, MC13892_REG_POWER_MISC, &val);
+	val &= ~0x10000;
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, val);
+
+	/* Write needed to update Charger 0 */
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_CHARGE, 0x0023807F);
+
+	/* power up the system first */
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, 0x00200000);
+
+	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
+		/* Set core voltage to 1.1V */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_0, &val);
+		val &= ~0x1f;
+		val |= 0x14;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_0, val);
+
+		/* Setup VCC (SW2) to 1.25 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_1, &val);
+		val &= ~0x1f;
+		val |= 0x1a;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_1, val);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.25 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_2, &val);
+		val &= ~0x1f;
+		val |= 0x1a;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
+	} else {
+		/* Setup VCC (SW2) to 1.225 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_1, &val);
+		val &= ~0x1f;
+		val |= 0x19;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_1, val);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.2 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_2, &val);
+		val &= ~0x1f;
+		val |= 0x18;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
+	}
+
+	if (mc13xxx_revision(mc13xxx) < MC13892_REVISION_2_0) {
+		/* Set switchers in PWM mode for Atlas 2.0 and lower */
+		/* Setup the switcher mode for SW1 & SW2*/
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
+		val &= ~0x3c0f;
+		val |= 0x1405;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_4, val);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_5, &val);
+		val &= ~0xf0f;
+		val |= 0x505;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_5, val);
+	} else {
+		/* Set switchers in Auto in NORMAL mode & STANDBY mode
+		 * for Atlas 2.0a */
+		/* Setup the switcher mode for SW1 & SW2*/
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
+		val &= ~0x3c0f;
+		val |= 0x2008;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_4, val);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_5, &val);
+		val &= ~0xf0f;
+		val |= 0x808;
+		mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_5, val);
+	}
+
+	/* Set VDIG to 1.65V, VGEN3 to 1.8V, VCAM to 2.5V */
+	mc13xxx_reg_read(mc13xxx, MC13892_REG_SETTING_0, &val);
+	val &= ~0x34030;
+	val |= 0x10020;
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_0, val);
+
+	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
+	mc13xxx_reg_read(mc13xxx, MC13892_REG_SETTING_1, &val);
+	val &= ~0x1FC;
+	val |= 0x1F4;
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_1, val);
+
+	/* Configure VGEN3 and VCAM regulators to use external PNP */
+	val = 0x208;
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
+
+	udelay(200);
+
+	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
+	val = 0x49249;
+	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
+
+	udelay(200);
+
+	pr_info("initialized PMIC\n");
+
+	console_flush();
+	imx51_init_lowlevel(800);
+	clock_notifier_call_chain();
+}
+
+void imx51_babbage_power_init(void)
+{
+	mc13xxx_register_init_callback(babbage_power_init);
+}
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dec5e387e..6a6710c39 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -85,6 +85,15 @@ config RESET_IMX_SRC
 	def_bool y
 	depends on ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53
 
+#
+# PMIC configuration found on i.MX51 Babbadge board
+#
+config MACH_FREESCALE_MX51_PDK_POWER
+        bool
+	select SPI
+	select DRIVER_SPI_IMX
+	select MFD_MC13XXX
+
 comment "Freescale i.MX System-on-Chip"
 
 config ARCH_IMX1
@@ -256,9 +265,7 @@ config MACH_EMBEDSKY_E9
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
-	select SPI
-	select DRIVER_SPI_IMX
-	select MFD_MC13XXX
+	select MACH_FREESCALE_MX51_PDK_POWER
 
 config MACH_CCMX53
 	bool "Digi ConnectCore i.MX53"
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index 595714129..dd5cfe99c 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -18,4 +18,6 @@ void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 #define imx5_setup_pll_400(base)	imx5_setup_pll((base),  400, (( 8 << 4) + ((2 - 1) << 0)), (3 - 1), 1)
 #define imx5_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 6 << 4) + ((3 - 1) << 0)), (4 - 1), 3)
 
+void imx51_babbage_power_init(void);
+
 #endif /* __MACH_MX53_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
