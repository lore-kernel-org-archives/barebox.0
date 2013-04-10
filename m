Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7V-0008Jv-R2
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:27 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:52 +0200
Message-Id: <1365585295-2420-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
References: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 10/13] tegra: add common lowlevel startup
To: barebox@lists.infradead.org

All Tegra20 boards have a common startup sequence. Also there is an
agreement on how to find out about the installed amount of RAM and other
information needed by early startup. So as there is really no need to do
any lowlevel stuff per board, we can just do it at the ARCH level.

This also enables the first stage loading of barebox by detecting the
currently running CPU and booting the main CPU cluster if neccesary.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toshiba-ac100/Makefile         |   1 -
 arch/arm/boards/toshiba-ac100/lowlevel.c       |  10 --
 arch/arm/mach-tegra/Makefile                   |   3 +
 arch/arm/mach-tegra/include/mach/iomap.h       |   3 +
 arch/arm/mach-tegra/include/mach/lowlevel.h    | 113 ++++++++++++
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 157 +++++++++++++++++
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h |  30 ++++
 arch/arm/mach-tegra/tegra_avp_init.c           | 228 +++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra_maincomplex_init.c   |  46 +++++
 9 files changed, 580 insertions(+), 11 deletions(-)
 delete mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-tegra/tegra_avp_init.c
 create mode 100644 arch/arm/mach-tegra/tegra_maincomplex_init.c

diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 4d321e1..9e14763 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/toshiba-ac100/lowlevel.c b/arch/arm/boards/toshiba-ac100/lowlevel.c
deleted file mode 100644
index 2f99d70..0000000
--- a/arch/arm/boards/toshiba-ac100/lowlevel.c
+++ /dev/null
@@ -1,10 +0,0 @@
-#include <common.h>
-#include <sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-void __naked barebox_arm_reset_vector(void)
-{
-	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x0, SZ_512M, 0);
-}
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 131a1d9..0807af6 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,3 +1,6 @@
+CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
+lwl-y += tegra_avp_init.o
+lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20-car.o
 obj-y += tegra20-pmc.o
 obj-y += tegra20-timer.o
diff --git a/arch/arm/mach-tegra/include/mach/iomap.h b/arch/arm/mach-tegra/include/mach/iomap.h
index 6ca6504..70eebb4 100644
--- a/arch/arm/mach-tegra/include/mach/iomap.h
+++ b/arch/arm/mach-tegra/include/mach/iomap.h
@@ -59,6 +59,9 @@
 #define TEGRA_GART_BASE			0x58000000
 #define TEGRA_GART_SIZE			SZ_32M
 
+#define TEGRA_UP_TAG_BASE		0x60000000
+#define TEGRA_UP_TAG_SIZE		SZ_4K
+
 #define TEGRA_RES_SEMA_BASE		0x60001000
 #define TEGRA_RES_SEMA_SIZE		SZ_4K
 
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
new file mode 100644
index 0000000..bd1a8db
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -0,0 +1,113 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/**
+ * @file
+ * @brief Boot informations provided by the Tegra SoC and it's BootROM. All
+ * accessor functions are a header only implementations, as they are meant to
+ * be used by both the main CPU complex (ARMv7) and the AVP (ARMv4).
+ */
+
+#include <sizes.h>
+#include <io.h>
+#include <mach/iomap.h>
+
+/* Bootinfotable */
+
+#define NV_BIT_BCTSIZE		0x38	/* size of the BCT in IRAM */
+#define NV_BIT_BCTPTR		0x3C	/* location of the BCT in IRAM */
+
+/* ODM data */
+#define BCT_ODMDATA_OFFSET	12	/* offset from the _end_ of the BCT */
+
+#define T20_ODMDATA_RAMSIZE_SHIFT	28
+#define T20_ODMDATA_RAMSIZE_MASK	(3 << T20_ODMDATA_RAMSIZE_SHIFT)
+
+static inline u32 tegra_get_odmdata(void)
+{
+	u32 bctsize, bctptr, odmdata;
+
+	bctsize = cpu_readl(TEGRA_IRAM_BASE + NV_BIT_BCTSIZE);
+	bctptr = cpu_readl(TEGRA_IRAM_BASE + NV_BIT_BCTPTR);
+
+	odmdata = cpu_readl(bctptr + bctsize - BCT_ODMDATA_OFFSET);
+
+	return odmdata;
+}
+
+/* chip ID */
+#define APB_MISC_HIDREV			0x804
+#define HIDREV_CHIPID_SHIFT		8
+#define HIDREV_CHIPID_MASK		(0xff << HIDREV_CHIPID_SHIFT)
+
+enum tegra_chiptype {
+	TEGRA_UNK_REV = -1,
+	TEGRA20 = 0,
+};
+
+static inline enum tegra_chiptype tegra_get_chiptype(void)
+{
+	u32 hidrev;
+
+	hidrev = readl(TEGRA_APB_MISC_BASE + APB_MISC_HIDREV);
+
+	switch ((hidrev & HIDREV_CHIPID_MASK) >> HIDREV_CHIPID_SHIFT) {
+	case 0x20:
+		return TEGRA20;
+	default:
+		return TEGRA_UNK_REV;
+	}
+}
+
+static inline int tegra_get_num_cores(void)
+{
+	switch (tegra_get_chiptype()) {
+	case TEGRA20:
+		return 2;
+		break;
+	default:
+		return 0;
+		break;
+	}
+}
+
+/* Runtime data */
+static inline int tegra_cpu_is_maincomplex(void)
+{
+	u32 tag0;
+
+	tag0 = readl(TEGRA_UP_TAG_BASE);
+
+	return (tag0 & 0xff) == 0x55;
+}
+
+static inline uint32_t tegra20_get_ramsize(void)
+{
+	switch ((tegra_get_odmdata() & T20_ODMDATA_RAMSIZE_MASK) >>
+		T20_ODMDATA_RAMSIZE_SHIFT)
+	{
+	case 1:
+		return SZ_256M;
+	default:
+	case 2:
+		return SZ_512M;
+	case 3:
+		return SZ_1G;
+	}
+}
+
+/* reset vector for the main CPU complex */
+void tegra_maincomplex_entry(void);
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index 43ed059..5669732 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -15,8 +15,165 @@
  */
 
 /* Register definitions */
+#define CRC_CLK_OUT_ENB_L		0x010
+#define CRC_CLK_OUT_ENB_L_CACHE2	(1 << 31)
+#define CRC_CLK_OUT_ENB_L_VCP		(1 << 29)
+#define CRC_CLK_OUT_ENB_L_HOST1X	(1 << 28)
+#define CRC_CLK_OUT_ENB_L_DISP1		(1 << 27)
+#define CRC_CLK_OUT_ENB_L_DISP2		(1 << 26)
+#define CRC_CLK_OUT_ENB_L_IDE		(1 << 25)
+#define CRC_CLK_OUT_ENB_L_3D		(1 << 24)
+#define CRC_CLK_OUT_ENB_L_ISP		(1 << 23)
+#define CRC_CLK_OUT_ENB_L_USBD		(1 << 22)
+#define CRC_CLK_OUT_ENB_L_2D		(1 << 21)
+#define CRC_CLK_OUT_ENB_L_VI		(1 << 20)
+#define CRC_CLK_OUT_ENB_L_EPP		(1 << 19)
+#define CRC_CLK_OUT_ENB_L_I2S2		(1 << 18)
+#define CRC_CLK_OUT_ENB_L_PWM		(1 << 17)
+#define CRC_CLK_OUT_ENB_L_TWC		(1 << 16)
+#define CRC_CLK_OUT_ENB_L_SDMMC4	(1 << 15)
+#define CRC_CLK_OUT_ENB_L_SDMMC1	(1 << 14)
+#define CRC_CLK_OUT_ENB_L_NDFLASH	(1 << 13)
+#define CRC_CLK_OUT_ENB_L_I2C1		(1 << 12)
+#define CRC_CLK_OUT_ENB_L_I2S1		(1 << 11)
+#define CRC_CLK_OUT_ENB_L_SPDIF		(1 << 10)
+#define CRC_CLK_OUT_ENB_L_SDMMC2	(1 << 9)
+#define CRC_CLK_OUT_ENB_L_GPIO		(1 << 8)
+#define CRC_CLK_OUT_ENB_L_UART2		(1 << 7)
+#define CRC_CLK_OUT_ENB_L_UART1		(1 << 6)
+#define CRC_CLK_OUT_ENB_L_TMR		(1 << 5)
+#define CRC_CLK_OUT_ENB_L_RTC		(1 << 4)
+#define CRC_CLK_OUT_ENB_L_AC97		(1 << 3)
+#define CRC_CLK_OUT_ENB_L_CPU		(1 << 0)
+
+#define CRC_SCLK_BURST_POLICY		0x028
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_SHIFT	28
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_FIQ	8
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_IRQ	4
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_RUN	2
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_IDLE	1
+#define CRC_SCLK_BURST_POLICY_SYS_STATE_STDBY	0
+
+#define CRC_SUPER_SCLK_DIV		0x02c
+#define CRC_SUPER_SDIV_ENB		(1 << 31)
+#define CRC_SUPER_SDIV_DIS_FROM_COP_FIQ	(1 << 27)
+#define CRC_SUPER_SDIV_DIS_FROM_CPU_FIQ	(1 << 26)
+#define CRC_SUPER_SDIV_DIS_FROM_COP_IRQ	(1 << 25)
+#define CRC_SUPER_SDIV_DIS_FROM_CPU_IRQ	(1 << 24)
+#define CRC_SUPER_SDIV_DIVIDEND_SHIFT	8
+#define CRC_SUPER_SDIV_DIVIDEND_MASK	(0xff << CRC_SUPER_SDIV_DIVIDEND_SHIFT)
+#define CRC_SUPER_SDIV_DIVISOR_SHIFT	0
+#define CRC_SUPER_SDIV_DIVISOR_MASK	(0xff << CRC_SUPER_SDIV_DIVISOR_SHIFT)
+
+#define CRC_CLK_CPU_CMPLX		0x04c
+#define CRC_CLK_CPU_CMPLX_CPU3_CLK_STP	(1 << 11)
+#define CRC_CLK_CPU_CMPLX_CPU2_CLK_STP	(1 << 10)
+#define CRC_CLK_CPU_CMPLX_CPU1_CLK_STP	(1 << 9)
+#define CRC_CLK_CPU_CMPLX_CPU0_CLK_STP	(1 << 8)
+#define CRC_CLK_CPU_CMPLX_CPU_BRIDGE_DIV_SHIFT	0
+#define CRC_CLK_CPU_CMPLX_CPU_BRIDGE_DIV_4	3
+#define CRC_CLK_CPU_CMPLX_CPU_BRIDGE_DIV_3	2
+#define CRC_CLK_CPU_CMPLX_CPU_BRIDGE_DIV_2	1
+#define CRC_CLK_CPU_CMPLX_CPU_BRIDGE_DIV_1	0
+
 #define CRC_OSC_CTRL			0x050
 #define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
 #define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
 #define CRC_OSC_CTRL_PLL_REF_DIV_SHIFT	28
 #define CRC_OSC_CTRL_PLL_REF_DIV_MASK	(0x3 << CRC_OSC_CTRL_PLL_REF_DIV_SHIFT)
+
+#define CRC_PLLX_BASE			0x0e0
+#define CRC_PLLX_BASE_BYPASS		(1 << 31)
+#define CRC_PLLX_BASE_ENABLE		(1 << 30)
+#define CRC_PLLX_BASE_REF_DIS		(1 << 29)
+#define CRC_PLLX_BASE_LOCK		(1 << 27)
+#define CRC_PLLX_BASE_DIVP_SHIFT	20
+#define CRC_PLLX_BASE_DIVP_MASK		(0x7 << CRC_PLLX_BASE_DIVP_SHIFT)
+#define CRC_PLLX_BASE_DIVN_SHIFT	8
+#define CRC_PLLX_BASE_DIVN_MASK		(0x3ff << CRC_PLLX_BASE_DIVN_SHIFT)
+#define CRC_PLLX_BASE_DIVM_SHIFT	0
+#define CRC_PLLX_BASE_DIVM_MASK		(0xf << CRC_PLLX_BASE_DIVM_SHIFT)
+
+#define CRC_PLLX_MISC			0x0e4
+#define CRC_PLLX_MISC_SETUP_SHIFT	24
+#define CRC_PLLX_MISC_SETUP_MASK	(0xf << CRC_PLLX_MISC_SETUP_SHIFT)
+#define CRC_PLLX_MISC_PTS_SHIFT		22
+#define CRC_PLLX_MISC_PTS_MASK		(0x3 << CRC_PLLX_MISC_PTS_SHIFT)
+#define CRC_PLLX_MISC_DCCON		(1 << 20)
+#define CRC_PLLX_MISC_LOCK_ENABLE	(1 << 18)
+#define CRC_PLLX_MISC_LOCK_SEL_SHIFT	12
+#define CRC_PLLX_MISC_LOCK_SEL_MASK	(0x3f << CRC_PLLX_MISC_LOCK_SEL_SHIFT)
+#define CRC_PLLX_MISC_CPCON_SHIFT	8
+#define CRC_PLLX_MISC_CPCON_MASK	(0xf << CRC_PLLX_MISC_CPCON_SHIFT)
+#define CRC_PLLX_MISC_LFCON_SHIFT	4
+#define CRC_PLLX_MISC_LFCON_MASK	(0xf << CRC_PLLX_MISC_LFCON_SHIFT)
+#define CRC_PLLX_MISC_VCOCON_SHIFT	0
+#define CRC_PLLX_MISC_VCOCON_MASK	(0xf << CRC_PLLX_MISC_VCOCON_SHIFT)
+
+#define CRC_RST_DEV_L_SET		0x300
+#define CRC_RST_DEV_L_SET_CACHE2	(1 << 31)
+#define CRC_RST_DEV_L_SET_VCP		(1 << 29)
+#define CRC_RST_DEV_L_SET_HOST1X	(1 << 28)
+#define CRC_RST_DEV_L_SET_DISP1		(1 << 27)
+#define CRC_RST_DEV_L_SET_DISP2		(1 << 26)
+#define CRC_RST_DEV_L_SET_IDE		(1 << 25)
+#define CRC_RST_DEV_L_SET_3D		(1 << 24)
+#define CRC_RST_DEV_L_SET_ISP		(1 << 23)
+#define CRC_RST_DEV_L_SET_USBD		(1 << 22)
+#define CRC_RST_DEV_L_SET_2D		(1 << 21)
+#define CRC_RST_DEV_L_SET_VI		(1 << 20)
+#define CRC_RST_DEV_L_SET_EPP		(1 << 19)
+#define CRC_RST_DEV_L_SET_I2S2		(1 << 18)
+#define CRC_RST_DEV_L_SET_PWM		(1 << 17)
+#define CRC_RST_DEV_L_SET_TWC		(1 << 16)
+#define CRC_RST_DEV_L_SET_SDMMC4	(1 << 15)
+#define CRC_RST_DEV_L_SET_SDMMC1	(1 << 14)
+#define CRC_RST_DEV_L_SET_NDFLASH	(1 << 13)
+#define CRC_RST_DEV_L_SET_I2C1		(1 << 12)
+#define CRC_RST_DEV_L_SET_I2S1		(1 << 11)
+#define CRC_RST_DEV_L_SET_SPDIF		(1 << 10)
+#define CRC_RST_DEV_L_SET_SDMMC2	(1 << 9)
+#define CRC_RST_DEV_L_SET_GPIO		(1 << 8)
+#define CRC_RST_DEV_L_SET_UART2		(1 << 7)
+#define CRC_RST_DEV_L_SET_UART1		(1 << 6)
+#define CRC_RST_DEV_L_SET_TMR		(1 << 5)
+#define CRC_RST_DEV_L_SET_AC97		(1 << 3)
+#define CRC_RST_DEV_L_SET_SYS		(1 << 2)
+#define CRC_RST_DEV_L_SET_COP		(1 << 1)
+#define CRC_RST_DEV_L_SET_CPU		(1 << 0)
+
+#define CRC_RST_DEV_L_CLR		0x304
+#define CRC_RST_DEV_L_CLR_CACHE2	(1 << 31)
+#define CRC_RST_DEV_L_CLR_VCP		(1 << 29)
+#define CRC_RST_DEV_L_CLR_HOST1X	(1 << 28)
+#define CRC_RST_DEV_L_CLR_DISP1		(1 << 27)
+#define CRC_RST_DEV_L_CLR_DISP2		(1 << 26)
+#define CRC_RST_DEV_L_CLR_IDE		(1 << 25)
+#define CRC_RST_DEV_L_CLR_3D		(1 << 24)
+#define CRC_RST_DEV_L_CLR_ISP		(1 << 23)
+#define CRC_RST_DEV_L_CLR_USBD		(1 << 22)
+#define CRC_RST_DEV_L_CLR_2D		(1 << 21)
+#define CRC_RST_DEV_L_CLR_VI		(1 << 20)
+#define CRC_RST_DEV_L_CLR_EPP		(1 << 19)
+#define CRC_RST_DEV_L_CLR_I2S2		(1 << 18)
+#define CRC_RST_DEV_L_CLR_PWM		(1 << 17)
+#define CRC_RST_DEV_L_CLR_TWC		(1 << 16)
+#define CRC_RST_DEV_L_CLR_SDMMC4	(1 << 15)
+#define CRC_RST_DEV_L_CLR_SDMMC1	(1 << 14)
+#define CRC_RST_DEV_L_CLR_NDFLASH	(1 << 13)
+#define CRC_RST_DEV_L_CLR_I2C1		(1 << 12)
+#define CRC_RST_DEV_L_CLR_I2S1		(1 << 11)
+#define CRC_RST_DEV_L_CLR_SPDIF		(1 << 10)
+#define CRC_RST_DEV_L_CLR_SDMMC2	(1 << 9)
+#define CRC_RST_DEV_L_CLR_GPIO		(1 << 8)
+#define CRC_RST_DEV_L_CLR_UART2		(1 << 7)
+#define CRC_RST_DEV_L_CLR_UART1		(1 << 6)
+#define CRC_RST_DEV_L_CLR_TMR		(1 << 5)
+#define CRC_RST_DEV_L_CLR_AC97		(1 << 3)
+#define CRC_RST_DEV_L_CLR_SYS		(1 << 2)
+#define CRC_RST_DEV_L_CLR_COP		(1 << 1)
+#define CRC_RST_DEV_L_CLR_CPU		(1 << 0)
+
+#define CRC_RST_CPU_CMPLX_SET		0x340
+
+#define CRC_RST_CPU_CMPLX_CLR		0x344
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
index a905399..d56b845 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
@@ -35,3 +35,33 @@
 #define PMC_CNTRL_RTC_RST		(1 << 2)
 #define PMC_CNTRL_RTC_CLK_DIS		(1 << 1)
 #define PMC_CNTRL_KBC_CLK_DIS		(1 << 0)
+
+#define PMC_PWRGATE_TOGGLE		0x030
+#define PMC_PWRGATE_TOGGLE_PARTID_SHIFT	0
+#define PMC_PWRGATE_TOGGLE_PARTID_MASK	(0x3 << PMC_PWRGATE_TOGGLE_PARTID_SHIFT)
+#define PMC_PWRGATE_TOGGLE_PARTID_CPU	0
+#define PMC_PWRGATE_TOGGLE_PARTID_TD	1
+#define PMC_PWRGATE_TOGGLE_PARTID_VE	2
+#define PMC_PWRGATE_TOGGLE_PARTID_PCX	3
+#define PMC_PWRGATE_TOGGLE_PARTID_VDE	4
+#define PMC_PWRGATE_TOGGLE_PARTID_L2C	5
+#define PMC_PWRGATE_TOGGLE_PARTID_MPE	6
+#define PMC_PWRGATE_TOGGLE_START	(1 << 8)
+
+#define PMC_REMOVE_CLAMPING_CMD		0x034
+#define PMC_REMOVE_CLAMPING_CMD_MPE	(1 << 6)
+#define PMC_REMOVE_CLAMPING_CMD_L2C	(1 << 5)
+#define PMC_REMOVE_CLAMPING_CMD_PCX	(1 << 4)
+#define PMC_REMOVE_CLAMPING_CMD_VDE	(1 << 3)
+#define PMC_REMOVE_CLAMPING_CMD_VE	(1 << 2)
+#define PMC_REMOVE_CLAMPING_CMD_TD	(1 << 1)
+#define PMC_REMOVE_CLAMPING_CMD_CPU	(1 << 0)
+
+#define PMC_PWRGATE_STATUS		0x038
+#define PMC_PWRGATE_STATUS_MPE		(1 << 6)
+#define PMC_PWRGATE_STATUS_L2C		(1 << 5)
+#define PMC_PWRGATE_STATUS_VDE		(1 << 4)
+#define PMC_PWRGATE_STATUS_PCX		(1 << 3)
+#define PMC_PWRGATE_STATUS_VE		(1 << 2)
+#define PMC_PWRGATE_STATUS_TD		(1 << 1)
+#define PMC_PWRGATE_STATUS_CPU		(1 << 0)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
new file mode 100644
index 0000000..76164b5
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -0,0 +1,228 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Partly based on code (C) Copyright 2010-2011
+ * NVIDIA Corporation <www.nvidia.com>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+#include <mach/tegra20-car.h>
+#include <mach/tegra20-pmc.h>
+
+static inline void tegra_cpu_lowlevel_setup(void)
+{
+	uint32_t r;
+
+	/* set the cpu to SVC32 mode */
+	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
+	r &= ~0x1f;
+	r |= 0xd3;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+}
+
+/* instruct the PMIC to enable the CPU power rail */
+static void enable_maincomplex_powerrail(void)
+{
+	u32 reg;
+
+	reg = readl(TEGRA_PMC_BASE + PMC_CNTRL);
+	reg |= PMC_CNTRL_CPUPWRREQ_OE;
+	writel(reg, TEGRA_PMC_BASE);
+}
+
+/* put every core in the main CPU complex into reset state */
+static void assert_maincomplex_reset(int num_cores)
+{
+	u32 mask = 0;
+	int i;
+
+	for (i = 0; i < num_cores; i++) {
+		mask |= 0x1111 << i;
+	}
+
+	writel(mask, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_SET);
+	writel(CRC_RST_DEV_L_SET_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
+}
+
+/* release reset state of the first core of the main CPU complex */
+static void deassert_cpu0_reset(void)
+{
+	writel(0x1111, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_CLR);
+	writel(CRC_RST_DEV_L_CLR_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_CLR);
+}
+
+/* stop all internal and external clocks to the main CPU complex */
+static void stop_maincomplex_clocks(int num_cores)
+{
+	u32 reg;
+	int i;
+
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
+	for (i = 0; i < num_cores; i++) {
+		reg |= 0x1 << (8 + i);
+	}
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
+
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
+	reg &= ~CRC_CLK_OUT_ENB_L_CPU;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
+}
+
+struct pll_config {
+	u16 divn;
+	u16 divm;
+	u16 divp;
+	u16 cpcon;
+};
+
+static struct pll_config pllx_config_table[][4] = {
+	{
+		{1000, 13, 0, 12},	/* OSC 13.0 MHz */
+		{625,  12, 0, 8 },	/* OSC 19.2 MHz */
+		{1000, 12, 0, 12},	/* OSC 12.0 MHz */
+		{1000, 26, 0, 12},	/* OSC 26.0 MHz */
+	}, /* TEGRA 20 */
+};
+
+static void init_pllx(void)
+{
+	struct pll_config *conf;
+	enum tegra_chiptype chiptype;
+	u8 osc_freq;
+	u32 reg;
+
+	/* If PLLX is already enabled, just return */
+	if (readl(TEGRA_CLK_RESET_BASE + CRC_PLLX_BASE) & CRC_PLLX_BASE_ENABLE)
+		return;
+
+	chiptype = tegra_get_chiptype();
+	if (chiptype < 0)
+		BUG();
+
+	osc_freq = (readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL) &
+		    CRC_OSC_CTRL_OSC_FREQ_MASK) >> CRC_OSC_CTRL_OSC_FREQ_SHIFT;
+
+	conf = &pllx_config_table[chiptype][osc_freq];
+
+	/* set PLL bypass and frequency parameters */
+	reg = CRC_PLLX_BASE_BYPASS;
+	reg |= (conf->divm << CRC_PLLX_BASE_DIVM_SHIFT) &
+		CRC_PLLX_BASE_DIVM_MASK;
+	reg |= (conf->divn << CRC_PLLX_BASE_DIVN_SHIFT) &
+		CRC_PLLX_BASE_DIVN_MASK;
+	reg |= (conf->divp << CRC_PLLX_BASE_DIVP_SHIFT) &
+		CRC_PLLX_BASE_DIVP_MASK;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_PLLX_BASE);
+
+	/* set chargepump parameters */
+	reg = (conf->cpcon << CRC_PLLX_MISC_CPCON_SHIFT) &
+		CRC_PLLX_MISC_CPCON_MASK;
+	if (conf->divn > 600)
+		reg |= CRC_PLLX_MISC_DCCON;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_PLLX_MISC);
+
+	/* enable PLL and disable bypass */
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_PLLX_BASE);
+	reg |= CRC_PLLX_BASE_ENABLE;
+	reg &= ~CRC_PLLX_BASE_BYPASS;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_PLLX_BASE);
+
+	/* enable PLL lock */
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_PLLX_MISC);
+	reg |= CRC_PLLX_MISC_LOCK_ENABLE;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_PLLX_MISC);
+}
+
+/* start internal and external clocks to core 0 of the main CPU complex */
+static void start_cpu0_clocks(void)
+{
+	u32 reg;
+
+	/* setup PLLX */
+	init_pllx();
+
+	/* setup super CLK */
+	writel(CRC_SCLK_BURST_POLICY_SYS_STATE_RUN <<
+	       CRC_SCLK_BURST_POLICY_SYS_STATE_SHIFT,
+	       TEGRA_CLK_RESET_BASE + CRC_SCLK_BURST_POLICY);
+	writel(CRC_SUPER_SDIV_ENB, TEGRA_CLK_RESET_BASE + CRC_SUPER_SCLK_DIV);
+
+	/* deassert clock stop for cpu 0 */
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
+	reg &= ~CRC_CLK_CPU_CMPLX_CPU0_CLK_STP;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
+
+	/* enable main CPU complex clock */
+	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
+	reg |= CRC_CLK_OUT_ENB_L_CPU;
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
+}
+
+static void maincomplex_powerup(void)
+{
+	u32 reg;
+
+	if (!(readl(TEGRA_PMC_BASE + PMC_PWRGATE_STATUS) &
+	      PMC_PWRGATE_STATUS_CPU)) {
+		writel(PMC_PWRGATE_TOGGLE_START | PMC_PWRGATE_TOGGLE_PARTID_CPU,
+		       TEGRA_PMC_BASE + PMC_PWRGATE_TOGGLE);
+
+		while (!(readl(TEGRA_PMC_BASE + PMC_PWRGATE_STATUS) &
+			 PMC_PWRGATE_STATUS_CPU));
+
+		reg = readl(TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
+		reg |= PMC_REMOVE_CLAMPING_CMD_CPU;
+		writel(reg, TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
+	}
+}
+void barebox_arm_reset_vector(void)
+{
+	int num_cores;
+
+	/* minimal initialization, OK for both ARMv4 and ARMv7 */
+	tegra_cpu_lowlevel_setup();
+
+	/*
+	 * If we are already running on the main CPU complex jump straight
+	 * to the maincomplex entry point.
+	 */
+	if (tegra_cpu_is_maincomplex())
+		tegra_maincomplex_entry();
+
+	/* get the number of cores in the main CPU complex of the current SoC */
+	num_cores = tegra_get_num_cores();
+	if (!num_cores)
+		BUG();
+
+	/* bring down main CPU complex (this may be a warm boot) */
+	enable_maincomplex_powerrail();
+	assert_maincomplex_reset(num_cores);
+	stop_maincomplex_clocks(num_cores);
+
+	/* set start address for the main CPU complex processors */
+	writel(barebox_arm_head, TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
+
+	/* bring up main CPU complex */
+	start_cpu0_clocks();
+	maincomplex_powerup();
+	deassert_cpu0_reset();
+
+	/* assert AVP reset to stop execution here */
+	writel(CRC_RST_DEV_L_SET_COP, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
+
+	unreachable();
+}
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
new file mode 100644
index 0000000..dea9c91
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/lowlevel.h>
+
+void tegra_maincomplex_entry(void)
+{
+	uint32_t rambase, ramsize;
+
+	arm_cpu_lowlevel_init();
+
+	switch (tegra_get_chiptype()) {
+	case TEGRA20:
+		rambase = 0x0;
+		ramsize = tegra20_get_ramsize();
+		break;
+	default:
+		/* If we don't know the chiptype, better bail out */
+		BUG();
+	}
+
+	/*
+	 * The standard load address for Tegra systems is 0x10800 which means
+	 * the barebox binary will always be below the malloc area for all
+	 * reasonable malloc area sizes. We offset the RAM base address by 8MB
+	 * to pretend barebox is in another bank.
+	 */
+	barebox_arm_entry(rambase + SZ_8M, ramsize - SZ_8M, 0);
+}
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
