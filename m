Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k34hb-0002ey-6c
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 21:42:32 +0000
Received: by mail-lf1-x132.google.com with SMTP id d2so17536604lfj.1
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2020 14:42:30 -0700 (PDT)
From: Anees Rehman <anees.r3hman@gmail.com>
Date: Tue,  4 Aug 2020 23:41:58 +0200
Message-Id: <20200804214158.25721-3-anees.r3hman@gmail.com>
In-Reply-To: <20200804214158.25721-1-anees.r3hman@gmail.com>
References: <20200804214158.25721-1-anees.r3hman@gmail.com>
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
Subject: [PATCH v2 2/2] ARM: i.MX: Add atlascopco sxb board
To: barebox@lists.infradead.org
Cc: Anees Rehman <anees.rehman@atlascopco.com>, Anees Rehman <anees.r3hman@gmail.com>

From: Anees Rehman <anees.rehman@atlascopco.com>

Signed-off-by: Anees Rehman <anees.r3hman@gmail.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ac-sxb/Makefile               |   2 +
 arch/arm/boards/ac-sxb/board.c                |  20 +++
 .../ac-sxb/flash-header-mx7d-lpddr2.imxcfg    |  10 ++
 arch/arm/boards/ac-sxb/lowlevel.c             | 131 ++++++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/ac-sxb.dts                       |  88 ++++++++++++
 arch/arm/dts/imx7d-ac-sxb.dtsi                | 121 ++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   6 +
 images/Makefile.imx                           |   5 +
 10 files changed, 385 insertions(+)
 create mode 100644 arch/arm/boards/ac-sxb/Makefile
 create mode 100644 arch/arm/boards/ac-sxb/board.c
 create mode 100644 arch/arm/boards/ac-sxb/flash-header-mx7d-lpddr2.imxcfg
 create mode 100644 arch/arm/boards/ac-sxb/lowlevel.c
 create mode 100644 arch/arm/dts/ac-sxb.dts
 create mode 100644 arch/arm/dts/imx7d-ac-sxb.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 304ae5985..5e6c0243d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -114,6 +114,7 @@ obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
 obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
+obj-$(CONFIG_MACH_AC_SXB)			+= ac-sxb/
 obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
 obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
 obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
diff --git a/arch/arm/boards/ac-sxb/Makefile b/arch/arm/boards/ac-sxb/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/ac-sxb/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ac-sxb/board.c b/arch/arm/boards/ac-sxb/board.c
new file mode 100644
index 000000000..3ea40dfb7
--- /dev/null
+++ b/arch/arm/boards/ac-sxb/board.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2017 Atlas Copco Industrial Technique
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+
+static int sxb_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("ac,imx7d-sxb"))
+		return 0;
+
+	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", 0);
+
+	return 0;
+}
+coredevice_initcall(sxb_coredevices_init);
diff --git a/arch/arm/boards/ac-sxb/flash-header-mx7d-lpddr2.imxcfg b/arch/arm/boards/ac-sxb/flash-header-mx7d-lpddr2.imxcfg
new file mode 100644
index 000000000..0b99f86d8
--- /dev/null
+++ b/arch/arm/boards/ac-sxb/flash-header-mx7d-lpddr2.imxcfg
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2017 Atlas Copco Industrial Technique
+ */
+
+soc imx7
+loadaddr 0x00910000
+max_load_size 0x10000
+ivtofs 0x400
diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
new file mode 100644
index 000000000..a910555f9
--- /dev/null
+++ b/arch/arm/boards/ac-sxb/lowlevel.c
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2017 Atlas Copco Industrial Technique
+ */
+
+#include <debug_ll.h>
+#include <io.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx7-ccm-regs.h>
+#include <mach/iomux-mx7.h>
+#include <mach/debug_ll.h>
+#include <asm/cache.h>
+#include <mach/esdctl.h>
+#include <mach/xload.h>
+#include <mach/imx7-ddr-regs.h>
+
+struct reginit {
+	u32 address;
+	u32 value;
+};
+
+static const struct reginit imx7d_ixb_dcd[] = {
+	{0x30340004, 0x4f400005},
+	{0x30391000, 0x00000002},
+	{MX7_DDRC_MSTR, 0x03020004},
+	{MX7_DDRC_RFSHTMG, 0x00200038},
+	{MX7_DDRC_MP_PCTRL_0, 0x00000001},
+	{MX7_DDRC_INIT0, 0x00350001},
+	{MX7_DDRC_INIT2, 0x00001105},
+	{MX7_DDRC_INIT3, 0x00c20006},
+	{MX7_DDRC_INIT4, 0x00020000},
+	{MX7_DDRC_INIT5, 0x00110006},
+	{MX7_DDRC_RANKCTL, 0x0000033f},
+	{MX7_DDRC_DRAMTMG0, 0x080e110b},
+	{MX7_DDRC_DRAMTMG1, 0x00020211},
+	{MX7_DDRC_DRAMTMG2, 0x02040705},
+	{MX7_DDRC_DRAMTMG3, 0x00504000},
+	{MX7_DDRC_DRAMTMG4, 0x05010307},
+	{MX7_DDRC_DRAMTMG5, 0x02020404},
+	{MX7_DDRC_DRAMTMG6, 0x02020003},
+	{MX7_DDRC_DRAMTMG7, 0x00000202},
+	{MX7_DDRC_DRAMTMG8, 0x00000202},
+	{MX7_DDRC_ZQCTL0, 0x20600018},
+	{MX7_DDRC_ZQCTL1, 0x00e00100},
+	{MX7_DDRC_DFITMG0, 0x02098203},
+	{MX7_DDRC_DFITMG1, 0x00060303},
+	{MX7_DDRC_DFIUPD0, 0x80400003},
+	{MX7_DDRC_DFIUPD1, 0x00100020},
+	{MX7_DDRC_DFIUPD2, 0x80100004},
+	{MX7_DDRC_ADDRMAP0, 0x00000015},
+	{MX7_DDRC_ADDRMAP1, 0x00080808},
+	{MX7_DDRC_ADDRMAP4, 0x00000f0f},
+	{MX7_DDRC_ADDRMAP5, 0x07070707},
+	{MX7_DDRC_ADDRMAP6, 0x0f0f0707},
+	{MX7_DDRC_ODTCFG, 0x06000600},
+	{MX7_DDRC_ODTMAP, 0x00000000},
+	{0x30391000, 0x00000000},
+	{MX7_DDR_PHY_PHY_CON0, 0x17421640},
+	{MX7_DDR_PHY_PHY_CON1, 0x10210100},
+	{MX7_DDR_PHY_PHY_CON2, 0x00010000},
+	{MX7_DDR_PHY_PHY_CON4, 0x00050408},
+	{MX7_DDR_PHY_MDLL_CON0, 0x1010007e},
+	{MX7_DDR_PHY_RODT_CON0, 0x01010000},
+	{MX7_DDR_PHY_DRVDS_CON0, 0x00000d6e},
+	{MX7_DDR_PHY_OFFSET_WR_CON0, 0x06060606},
+	{MX7_DDR_PHY_OFFSET_RD_CON0, 0x0a0a0a0a},
+	{MX7_DDR_PHY_CMD_SDLL_CON0, 0x01000008},
+	{MX7_DDR_PHY_CMD_SDLL_CON0, 0x00000008},
+	{MX7_DDR_PHY_LP_CON0, 0x0000000f},
+	{MX7_DDR_PHY_ZQ_CON0, 0x0e487304},
+	{MX7_DDR_PHY_ZQ_CON0, 0x0e4c7304},
+	{MX7_DDR_PHY_ZQ_CON0, 0x0e4c7306},
+	{MX7_DDR_PHY_ZQ_CON0, 0x0e487304},
+	{0x30384130, 0x00000000},
+	{0x30340020, 0x00000178},
+	{0x30384130, 0x00000002},
+};
+
+static inline void write_regs(const struct reginit *initvals, int count)
+{
+	int i;
+
+	for (i = 0; i < count; i++)
+		writel(initvals[i].value, initvals[i].address);
+}
+
+extern char __dtb_z_ac_sxb_start[];
+
+static inline void setup_uart(void)
+{
+	imx7_early_setup_uart_clock();
+
+	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
+
+	imx7_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+static noinline void imx7d_sxb_sram_setup(void)
+{
+	int ret;
+
+	relocate_to_current_adr();
+	setup_c();
+
+	pr_debug("configuring ddr...\n");
+	write_regs(imx7d_ixb_dcd, ARRAY_SIZE(imx7d_ixb_dcd));
+
+	ret = imx7_esdhc_start_image(2);
+
+	BUG_ON(ret);
+}
+
+ENTRY_FUNCTION(start_ac_sxb, r0, r1, r2)
+{
+	imx7_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	if (get_pc() < 0x80000000)
+		imx7d_sxb_sram_setup();
+
+	imx7d_barebox_entry(__dtb_z_ac_sxb_start + get_runtime_offset());
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3cbf65078..8fd8795a0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -153,6 +153,7 @@ lwl-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-scu4-aib.dtb.o	\
 	vf610-zii-spb4.dtb.o		\
 	vf610-zii-ssmb-dtu.dtb.o
+lwl-$(CONFIG_MACH_AC_SXB) += ac-sxb.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
diff --git a/arch/arm/dts/ac-sxb.dts b/arch/arm/dts/ac-sxb.dts
new file mode 100644
index 000000000..8f2eec0fa
--- /dev/null
+++ b/arch/arm/dts/ac-sxb.dts
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2017 Atlas Copco Industrial Technique
+ */
+
+#include "imx7d-ac-sxb.dtsi"
+#include "imx7d-ddrc.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	state: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		magic = <0x27031977>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend-storage-type = "direct";
+		backend-stridesize = <0x500>;
+		backend = <&usdhc1_sdcard>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			last_chosen@0 {
+				reg = <0x0 0x4>;
+				type = "uint32";
+				default = <0x1>;
+			};
+
+			fs1.remaining_attempts@4 {
+				reg = <0x4 0x4>;
+				type = "uint32";
+				default = <3>;
+			};
+
+			fs1.priority@8 {
+				reg = <0x8 0x4>;
+				type = "uint32";
+				default= <3>;
+			};
+
+			fs2.remaining_attempts@c {
+				reg = <0xc 0x4>;
+				type = "uint32";
+				default = <3>;
+			};
+
+			fs2.priority@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+				default= <2>;
+			};
+
+			rescue.remaining_attempts@14 {
+				reg = <0x14 0x4>;
+				type = "uint32";
+				default = <3>;
+			};
+
+			rescue.priority@18 {
+				reg = <0x18 0x4>;
+				type = "uint32";
+				default= <1>;
+			};
+
+			last_chosen_sucessfull@1c {
+				reg = <0x1c 0x4>;
+				type = "uint32";
+				default = <0>;
+			};
+		};
+	};
+
+	aliases {
+		state = &state;
+	};
+};
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart1 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
diff --git a/arch/arm/dts/imx7d-ac-sxb.dtsi b/arch/arm/dts/imx7d-ac-sxb.dtsi
new file mode 100644
index 000000000..00b0fd11c
--- /dev/null
+++ b/arch/arm/dts/imx7d-ac-sxb.dtsi
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2017 Atlas Copco Industrial Technique
+ */
+
+/dts-v1/;
+
+#include <arm/imx7d.dtsi>
+
+/ {
+	model = "Atlas Copco SXB Board";
+	compatible = "ac,imx7d-sxb", "fsl,imx7d";
+
+	reg_sd1_vmmc: regulator-reg-sd1-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_SD1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+	tuning-step = <2>;
+	vmmc-supply = <&reg_sd1_vmmc>;
+	enable-sdio-wakeup;
+	no-1-8-v;
+	keep-power-in-suspend;
+	status = "okay";
+
+	usdhc1_sdcard: state@4100000 {
+		reg = <0x4100000 0xffffff>;
+		label = "state-sdcard";
+	};
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	assigned-clocks = <&clks IMX7D_USDHC3_ROOT_CLK>;
+	assigned-clock-rates = <400000000>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+
+	usdhc3_emmc: usdhc3_emmc@1e800000 {
+		reg = <0x1e800000 0xffffff>;
+		label = "state-emmc";
+	};
+
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog1>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	imx7d-sxb {
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79
+				MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
+				MX7D_PAD_SD1_CLK__SD1_CLK		0x19
+				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
+				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
+				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
+				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
+				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59
+				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX7D_PAD_SD3_CMD__SD3_CMD		0x59
+				MX7D_PAD_SD3_CLK__SD3_CLK		0x19
+				MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
+				MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
+				MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
+				MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
+				MX7D_PAD_SD3_DATA4__SD3_DATA4		0x59
+				MX7D_PAD_SD3_DATA5__SD3_DATA5		0x59
+				MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59
+				MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59
+				MX7D_PAD_SD3_RESET_B__SD3_RESET_B	0x19
+			>;
+		};
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl_wdog1: wdog1grp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x75
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7e4265900..54eed911e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -458,6 +458,12 @@ config MACH_WARP7
 	bool "NXP i.MX7: element 14 WaRP7 Board"
 	select ARCH_IMX7
 
+config MACH_AC_SXB
+	bool "Atlas Copco: SXB board"
+	select ARCH_IMX7
+	select MCI_IMX_ESDHC_PBL
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 586197906..7b24e5fee 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -374,6 +374,11 @@ FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblb.imximg
 image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
 
 # ----------------------- i.MX7 based boards ---------------------------
+pblb-$(CONFIG_MACH_AC_SXB) += start_ac_sxb
+CFG_start_ac_sxb.pblb.imximg = $(board)/ac-sxb/flash-header-mx7d-lpddr2.imxcfg
+FILE_barebox-ac-sxb.img = start_ac_sxb.pblb.imximg
+image-$(CONFIG_MACH_AC_SXB) += barebox-ac-sxb.img
+
 pblb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
 CFG_start_imx7d_sabresd.pblb.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.imximg
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
