Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1BB8-0007Gx-Tr
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 07:04:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4C486BF0E9
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 09:04:34 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 14 Aug 2012 09:04:31 +0200
Message-Id: <1344927873-19506-2-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
References: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] Add support for OMAP4460 TPS62361
To: barebox@lists.infradead.org

based on: [U-Boot] [PATCH v 4/5] omap4: support TPS programming
TPS62361 is the new power supply used in OMAP4460 that
supplies vdd_mpu.

VCORE1 from Phoenix supplies vdd_core and VCORE2 supplies
vdd_iva. VCORE3 is not used in OMAP4460.

Signed-off-by: F. Gasnier fabrice.gasnier@cenosys.com
Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/panda/lowlevel.c                |    4 ++-
 arch/arm/boards/pcm049/lowlevel.c               |    4 ++-
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |    4 ++-
 arch/arm/mach-omap/include/mach/omap4-clock.h   |   15 +++++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    9 +++++-
 arch/arm/mach-omap/omap4_clock.c                |   19 +++++++++++
 arch/arm/mach-omap/omap4_generic.c              |   39 +++++++++++++++++++++-
 7 files changed, 88 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 8591fff..0b4b199 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -28,6 +28,8 @@
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
 
+#define TPS62361_VSEL0_GPIO    7
+
 void set_muxconf_regs(void);
 
 static const struct ddr_regs ddr_regs_400_mhz_2cs = {
@@ -70,7 +72,7 @@ static void noinline panda_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores();
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
 
 	board_init_lowlevel_return();
 }
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 5b91098..5e591fa 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -28,6 +28,8 @@
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
 
+#define TPS62361_VSEL0_GPIO    182
+
 void set_muxconf_regs(void);
 
 static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
@@ -57,7 +59,7 @@ static void noinline pcm049_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores();
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index b8de2aa..2aa79a8 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -28,6 +28,8 @@
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
 
+#define TPS62361_VSEL0_GPIO    7
+
 void set_muxconf_regs(void);
 
 static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
@@ -57,7 +59,7 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores();
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index 0a31d09..391ee63 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -271,6 +271,20 @@
 #define PLL_FAST_RELOCK_BYPASS	6 /* CORE */
 #define PLL_LOCK		7 /* MPU, IVA, CORE & PER */
 
+/* TPS */
+#define TPS62361_I2C_SLAVE_ADDR		0x60
+#define TPS62361_REG_ADDR_SET0		0x0
+#define TPS62361_REG_ADDR_SET1		0x1
+#define TPS62361_REG_ADDR_SET2		0x2
+#define TPS62361_REG_ADDR_SET3		0x3
+#define TPS62361_REG_ADDR_CTRL		0x4
+#define TPS62361_REG_ADDR_TEMP		0x5
+#define TPS62361_REG_ADDR_RMP_CTRL	0x6
+#define TPS62361_REG_ADDR_CHIP_ID	0x8
+#define TPS62361_REG_ADDR_CHIP_ID_2	0x9
+
+#define TPS62361_BASE_VOLT_MV	500
+
 /* Used to index into DPLL parameter tables */
 struct dpll_param {
 	unsigned int m;
@@ -317,4 +331,5 @@ void omap4_configure_core_dpll_no_lock(const struct dpll_param *param);
 void omap4_lock_core_dpll(void);
 void omap4_lock_core_dpll_shadow(const struct dpll_param *param);
 void omap4_enable_all_clocks(void);
+void omap4_do_scale_tps62361(u32 reg, u32 volt_mv);
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index c785475..d5517c5 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -60,6 +60,13 @@
 #define OMAP44XX_PRM_VC_VAL_BYPASS	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7ba0)
 #define OMAP44XX_PRM_VC_CFG_I2C_MODE	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7ba8)
 #define OMAP44XX_PRM_VC_CFG_I2C_CLK	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x7bac)
+#define OMAP44XX_PRM_VC_VAL_BYPASS_VALID_BIT		0x1000000
+#define OMAP44XX_PRM_VC_VAL_BYPASS_SLAVEADDR_SHIFT	0
+#define OMAP44XX_PRM_VC_VAL_BYPASS_SLAVEADDR_MASK	0x7F
+#define OMAP44XX_PRM_VC_VAL_BYPASS_REGADDR_SHIFT	8
+#define OMAP44XX_PRM_VC_VAL_BYPASS_REGADDR_MASK		0xFF
+#define OMAP44XX_PRM_VC_VAL_BYPASS_DATA_SHIFT		16
+#define OMAP44XX_PRM_VC_VAL_BYPASS_DATA_MASK		0xFF
 
 /* IRQ */
 #define OMAP44XX_PRM_IRQSTATUS_MPU_A9	(OMAP44XX_WAKEUP_L4_IO_BASE + 0x6010)
@@ -178,6 +185,6 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
-noinline int omap4_scale_vcores(void);
+noinline int omap4_scale_vcores(unsigned vsel0_pin);
 
 #endif
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 3ab01f0..564a748 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/syslib.h>
+#include <mach/silicon.h>
 #include <mach/clocks.h>
 
 #define LDELAY	12000000
@@ -378,3 +379,21 @@ void omap4_enable_all_clocks(void)
 	sr32(CM_L3INIT_USBPHY_CLKCTRL, 0, 32, 0x301);
 }
 
+void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
+{
+	u32 temp, step;
+
+	step = volt_mv - TPS62361_BASE_VOLT_MV;
+	step /= 10;
+
+	temp = TPS62361_I2C_SLAVE_ADDR |
+	    (reg << OMAP44XX_PRM_VC_VAL_BYPASS_REGADDR_SHIFT) |
+	    (step << OMAP44XX_PRM_VC_VAL_BYPASS_DATA_SHIFT) |
+	    OMAP44XX_PRM_VC_VAL_BYPASS_VALID_BIT;
+	debug("do_scale_tps62361: volt - %d step - 0x%x\n", volt_mv, step);
+
+	writel(temp, OMAP44XX_PRM_VC_VAL_BYPASS);
+	if (!wait_on_value(OMAP44XX_PRM_VC_VAL_BYPASS_VALID_BIT, 0,
+				OMAP44XX_PRM_VC_VAL_BYPASS, LDELAY))
+		puts("Scaling voltage failed for vdd_mpu from TPS\n");
+}
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 28fb776..3f6865a 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -7,6 +7,7 @@
 #include <mach/syslib.h>
 #include <mach/xload.h>
 #include <mach/gpmc.h>
+#include <mach/gpio.h>
 
 /*
  *  The following several lines are taken from U-Boot to support
@@ -468,7 +469,7 @@ enum omap_boot_src omap4_bootsrc(void)
 
 #define I2C_SLAVE 0x12
 
-noinline int omap4_scale_vcores(void)
+noinline int omap4_scale_vcores(unsigned vsel0_pin)
 {
 	unsigned int rev = omap4_revision();
 
@@ -478,8 +479,41 @@ noinline int omap4_scale_vcores(void)
 	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
 	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
 
+	/* TPS - supplies vdd_mpu on 4460 */
+	if (rev >= OMAP4460_ES1_0) {
+		/*
+		 * Setup SET1 and SET0 with right values so that kernel
+		 * can use either of them based on its needs.
+		 */
+		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, 1430);
+		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, 1430);
+
+		/*
+		 * Select SET1 in TPS62361:
+		 * VSEL1 is grounded on board. So the following selects
+		 * VSEL1 = 0 and VSEL0 = 1
+		 */
+		gpio_direction_output(vsel0_pin, 0);
+		gpio_set_value(vsel0_pin, 1);
+	}
+
 	/* set VCORE1 force VSEL */
-	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
+	/*
+	 * 4430 : supplies vdd_mpu
+	 * Setting a high voltage for Nitro mode as smart reflex is not enabled.
+	 * We use the maximum possible value in the AVS range because the next
+	 * higher voltage in the discrete range (code >= 0b111010) is way too
+	 * high
+	 *
+	 * 4460 : supplies vdd_core
+	 *
+	 */
+	if (rev < OMAP4460_ES1_0)
+		/* 0x55: i2c addr, 3A: ~ 1430 mvolts*/
+		omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
+	else
+		/* 0x55: i2c addr, 28: ~ 1200 mvolts*/
+		omap4_power_i2c_send((0x2855 << 8) | I2C_SLAVE);
 
 	/* FIXME: set VCORE2 force VSEL, Check the reset value */
 	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
@@ -492,6 +526,7 @@ noinline int omap4_scale_vcores(void)
 	case OMAP4430_ES2_1:
 		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
 		break;
+	/* > OMAP4460_ES1_0 : VCORE3 not connected */
 	}
 
 	return 0;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
