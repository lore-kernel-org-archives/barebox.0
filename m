Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3mu-0003Wz-LJ
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:38:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:37:50 +0200
Message-Id: <1436179070-10504-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Add TEM i.MX28 board support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/tem-imx28/Makefile                 |   3 +
 arch/arm/boards/tem-imx28/board.c                  |  78 ++++++
 .../tem-imx28/defaultenv-tem-imx28/data/logo.png   | Bin 0 -> 1432 bytes
 .../tem-imx28/defaultenv-tem-imx28/init/splash     |   5 +
 arch/arm/boards/tem-imx28/lowlevel.c               |  67 ++++++
 arch/arm/configs/tem_imx28_defconfig               | 111 +++++++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx28-tem.dts                         | 265 +++++++++++++++++++++
 arch/arm/mach-mxs/Kconfig                          |   8 +
 images/Makefile.mxs                                |   9 +
 11 files changed, 548 insertions(+)
 create mode 100644 arch/arm/boards/tem-imx28/Makefile
 create mode 100644 arch/arm/boards/tem-imx28/board.c
 create mode 100644 arch/arm/boards/tem-imx28/defaultenv-tem-imx28/data/logo.png
 create mode 100644 arch/arm/boards/tem-imx28/defaultenv-tem-imx28/init/splash
 create mode 100644 arch/arm/boards/tem-imx28/lowlevel.c
 create mode 100644 arch/arm/configs/tem_imx28_defconfig
 create mode 100644 arch/arm/dts/imx28-tem.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d6fc17c..a00c141 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -108,6 +108,7 @@ obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
+obj-$(CONFIG_MACH_TEM_IMX28)			+= tem-imx28/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
diff --git a/arch/arm/boards/tem-imx28/Makefile b/arch/arm/boards/tem-imx28/Makefile
new file mode 100644
index 0000000..f750719
--- /dev/null
+++ b/arch/arm/boards/tem-imx28/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-tem-imx28
diff --git a/arch/arm/boards/tem-imx28/board.c b/arch/arm/boards/tem-imx28/board.c
new file mode 100644
index 0000000..96f9ccd
--- /dev/null
+++ b/arch/arm/boards/tem-imx28/board.c
@@ -0,0 +1,78 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
+ * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
+ * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <net.h>
+#include <envfs.h>
+
+#include <mach/clock.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-imx28.h>
+#include <mach/iomux.h>
+#include <mach/ocotp.h>
+#include <mach/devices.h>
+#include <bbu.h>
+#include <usb/fsl_usb2.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+static void tem_get_ethaddr(void)
+{
+	u8 mac_ocotp[3], mac[6];
+	int ret;
+
+	ret = mxs_ocotp_read(mac_ocotp, 3, 0);
+	if (ret != 3) {
+		pr_err("Reading MAC from OCOTP failed!\n");
+		return;
+	}
+
+	mac[0] = 0x00;
+	mac[1] = 0x23;
+	mac[2] = 0x43;
+	mac[3] = mac_ocotp[2];
+	mac[4] = mac_ocotp[1];
+	mac[5] = mac_ocotp[0];
+
+	eth_register_ethaddr(0, mac);
+}
+
+static int tem_devices_init(void)
+{
+	tem_get_ethaddr(); /* must be after registering ocotp */
+
+	return 0;
+}
+fs_initcall(tem_devices_init);
+
+static int tem_console_init(void)
+{
+	barebox_set_model("TEM i.MX28");
+	barebox_set_hostname("tem");
+
+	imx28_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+
+	defaultenv_append_directory(defaultenv_tem_imx28);
+
+	return 0;
+}
+console_initcall(tem_console_init);
diff --git a/arch/arm/boards/tem-imx28/defaultenv-tem-imx28/data/logo.png b/arch/arm/boards/tem-imx28/defaultenv-tem-imx28/data/logo.png
new file mode 100644
index 0000000000000000000000000000000000000000..c28af88830cabcc7362b5e31198289ddf3560a9e
GIT binary patch
literal 1432
zcmV;J1!ww+P)<h;3K|Lk000e1NJLTq004LZ000{Z1^@s6w**Tj00004XF*Lt006JZ
zHwB960000PbVXQnQ*UN;cVTj606}DLVr3vnZDD6+Qe|Oed2z{QJOBU%DoI2^RCwC#
zT4_uaR~-Mn*^^xssgytuh!GV6RH<p8#ad9TLa)@?%bJunq^(EOL|W}(iP0uP)x`7*
z5lfod09v53N=<6FMhTWuf?qHiq?8W=3Q4Kk!Y;eByYu>HAq}JmGqbZ4m;EI#%q;Vc
zdB6WXj|hd)R}se4aM&$mS3?mppSSt%yW5u2J=s=7SVm=y<MZlRpFvVwyBR5u_sLxb
zz1*0LFSeWl#}R-~Nu79SB+~O5wCplD%;c2Nh}5tqOr(mnSk@xPuO*J8;V?Y31Z~#m
z7{TSTSJG0u1ztWC`Us!Q^~Y<+FT$7_oTxxk{04dZ#uQI)1hrM{B3T>HA$isBlDoDw
ztVH{nx1iNS0aqLs=5Urk*jD>Ii|C0@cQf-Tt&h{Lr}dxhVcHuHPNP^t!<a4TjKKAl
zH|bB6Pf7B<=f5gI@6`f-zW_{77_+9u%v5t49nK!vi<@1s(>~kZ8G|3ocQXGS5y+HU
z@G=5I(V}Y&@@DXPMbjjIWqRY7?~>}{ygUnsJTm%7fSU~__|%P2bZq~I`ZDS1gGFRp
zW!W8{vsJu;fu0<g7a%Z#7iFB2D18*}Q62uck;{ySw3ntV0F938KvZlmDAmeXmw<up
zGzi{ANrVYr7w%1HN94j`Mu=KgiD2|^Bh1kws%x^r1hm#~quDQ8$%^%z|M~xw^GWpL
z*YCq*33w_kInbIf`RN-S7P>EQfN6`#A2iGamjmR*l2SbT!AW_Ep8)#avR`2zOoT>)
zTsVh~r0C;A$a($DT@!G*MiO!Q&`zYRdItvc1Yz}oHXQf}Zs%gZAgGWA$S}7)z3dqT
z1%3XtyCDoCBlTL-tGHA%S;3mCR->zR^O%bY9NLiBES-+hu3wfi6P?Ur3X^K%dU=kd
zKGBVsgujBI#w^Y-MA5qaB_w_ACB!9-;Lm;wwI1BdESOo6g`7788_WdFHJ_uox>Utc
zHE;}j@!_d_M(~B;lu_9B+izvlhSGP**2*$!JGv3KuIIrRHAQ`8J`+3^1hT-7XjE1*
zUC>iWJ<EdHzu!UY_VwWBliU6GDv=v%1P8^6N-pjPqQ#!k2VpJy)?bd~)TKllGUW0u
z<}=;u#%4}7n9rjR{`xrtQmqPog2iIZ^7UVml<XE37#UR4Uw)J#A??cDyfvXgu-gUl
z=%z-N2RF{Cby2Fa>!7kNR4CP==jgkr=)wg-_IRP8!FmIa4qG<dP7^b$L2_n#4+eYg
zXMcHiH*>D-VevrvnlAKSyALBn7Nwv2CgkK4Nss)1n_UmHcZ`>68A2ovHfd-}Z84gv
zv_Y$XiHf7q3NTp&zv-Qk5I4w@%wu%fW4)-~{|(F4mB$8RO`p^Dk!OlaXw~j=Cdl)Q
zU`jRqx~;(!?3p+=mqb@U#C5qyZsB*-R`CfOw^u-;Qy617fUHf`cxc^aroCo4W;*;m
zIGFIbjEG6_ku`4|Vb{w1v8cWJ2s;ZPkNX8!@DX_u8AfoUXc13ttwH?KCU_Nm7xyri
zpPExeRzBUyghVIb<b)A?EPTL&b#EW`A4-rDB#a5jZIZv^==ePe6Ff&jR=;)uaf>gG
zku1aaW^6c)w6%)Qu7?SpEi8z0kPX`p!^e9hMd4!3YcTaQ-&^fJ=A$&bQ;;m!MbCiA
z2g2`!Xx4azYxA<^2%!J}jeA5Lob*d>;aRj<PvE!Km!LDcrtR(HBal&0N3vdMpB$R|
m_kMVMf2M<Y-pBEe00RK-WT~=Y<&41q0000<MNUMnLSTaT4Z1A=

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/tem-imx28/defaultenv-tem-imx28/init/splash b/arch/arm/boards/tem-imx28/defaultenv-tem-imx28/init/splash
new file mode 100644
index 0000000..dfa9ad9
--- /dev/null
+++ b/arch/arm/boards/tem-imx28/defaultenv-tem-imx28/init/splash
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+splash -b 0x0 /env/data/logo.png
+fb0.enable=1
+backlight0.brightness=10
diff --git a/arch/arm/boards/tem-imx28/lowlevel.c b/arch/arm/boards/tem-imx28/lowlevel.c
new file mode 100644
index 0000000..89d623c
--- /dev/null
+++ b/arch/arm/boards/tem-imx28/lowlevel.c
@@ -0,0 +1,67 @@
+#define pr_fmt(fmt) "TEM i.MX28: " fmt
+#define DEBUG
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx28-regs.h>
+#include <mach/init.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/iomux.h>
+#include <stmp-device.h>
+
+extern char __dtb_imx28_tem_start[];
+
+ENTRY_FUNCTION(start_barebox_tem_imx28, r0, r1, r2)
+{
+	void *fdt;
+
+	fdt = __dtb_imx28_tem_start - get_runtime_offset();
+
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, fdt);
+}
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
+};
+
+static noinline void tem_init(void)
+{
+	int i;
+
+	/* initialize muxing */
+	for (i = 0; i < ARRAY_SIZE(iomux_pads); i++)
+		imx_gpio_mode(iomux_pads[i]);
+
+	pr_debug("initializing power...\n");
+
+	mx28_power_init(0, 0, 1);
+
+	pr_debug("initializing SDRAM...\n");
+
+	mx28_mem_init();
+
+	pr_debug("DONE\n");
+}
+
+ENTRY_FUNCTION(prep_start_barebox_tem_imx28, r0, r1, r2)
+{
+	void (*back)(unsigned long) = (void *)get_lr();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	tem_init();
+
+	back(0);
+}
diff --git a/arch/arm/configs/tem_imx28_defconfig b/arch/arm/configs/tem_imx28_defconfig
new file mode 100644
index 0000000..630a4f0
--- /dev/null
+++ b/arch/arm/configs/tem_imx28_defconfig
@@ -0,0 +1,111 @@
+CONFIG_ARCH_MXS=y
+CONFIG_ARCH_IMX28=y
+CONFIG_MACH_TEM_IMX28=y
+CONFIG_MXS_OCOTP_WRITABLE=y
+CONFIG_MXS_CMD_BCB=y
+CONFIG_ARCH_MXS_USBLOADER=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BLSPEC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_LL=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_AUART=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_MXS=y
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_NAND=y
+CONFIG_NAND_MXS=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_STM=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MXS=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_MXS_APBH_DMA=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 06c29c8..b61ba67 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -47,6 +47,7 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_TEM_IMX28) += imx28-tem.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx28-tem.dts b/arch/arm/dts/imx28-tem.dts
new file mode 100644
index 0000000..d439b9e
--- /dev/null
+++ b/arch/arm/dts/imx28-tem.dts
@@ -0,0 +1,265 @@
+/*
+ * Copyright 2014 Michael Grzeschik <mgr@pengutronix.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include <arm/imx28.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "TEM i.MX28 module";
+	compatible = "tem,imx28", "fsl,imx28";
+
+	aliases {
+		serial0 = &duart;
+	};
+
+	chosen {
+		stdout-path = &duart;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+		};
+	};
+
+	aliases {
+		mmc0 = &ssp0;
+	};
+
+	memory {
+		reg = <0x40000000 0x08000000>;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		/* 20kHz PWM */
+		pwms = <&pwm 2 50000>;
+		brightness-levels = <0 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+		enable-gpios = <&gpio1 27 GPIO_ACTIVE_HIGH>;
+	};
+
+	pwmleds {
+		compatible = "pwm-leds";
+		status = "okay";
+
+		green {
+			label = "green";
+			/* 200Hz PWM */
+			pwms = <&pwm 3 5000000>;
+			linux,default-trigger = "default-on";
+			max-brightness = <255>;
+		};
+
+		red {
+			label = "red";
+			/* 200Hz PWM */
+			pwms = <&pwm 4 5000000>;
+			max-brightness = <255>;
+		};
+	};
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins>;
+
+	hog_pins: hog@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			/* RS485 Setup */
+			/* MX28_PAD_SAIF0_LRCLK__GPIO_3_21 */
+			MX28_PAD_SAIF0_LRCLK__AUART4_RTS
+			MX28_PAD_SAIF0_BITCLK__GPIO_3_22
+			MX28_PAD_SAIF0_BITCLK__AUART4_RX
+			/* FRMS und FRMM */
+			MX28_PAD_AUART1_RX__GPIO_3_4
+			MX28_PAD_AUART1_TX__GPIO_3_5
+			/* Display Enable */
+			MX28_PAD_LCD_CS__GPIO_1_27
+			MX28_PAD_PWM0__PWM_0
+			MX28_PAD_PWM1__PWM_1
+			MX28_PAD_PWM2__PWM_2
+			MX28_PAD_PWM3__PWM_3
+			MX28_PAD_PWM4__PWM_4
+			MX28_PAD_AUART0_CTS__DUART_RX
+			MX28_PAD_AUART0_RTS__DUART_TX
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	gpmi_pins_b: gpmi-nand@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_D00__GPMI_D0
+			MX28_PAD_GPMI_D01__GPMI_D1
+			MX28_PAD_GPMI_D02__GPMI_D2
+			MX28_PAD_GPMI_D03__GPMI_D3
+			MX28_PAD_GPMI_D04__GPMI_D4
+			MX28_PAD_GPMI_D05__GPMI_D5
+			MX28_PAD_GPMI_D06__GPMI_D6
+			MX28_PAD_GPMI_D07__GPMI_D7
+			MX28_PAD_GPMI_CE0N__GPMI_CE0N
+			MX28_PAD_GPMI_RDY0__GPMI_READY0
+			MX28_PAD_GPMI_RDN__GPMI_RDN
+			MX28_PAD_GPMI_WRN__GPMI_WRN
+			MX28_PAD_GPMI_ALE__GPMI_ALE
+			MX28_PAD_GPMI_CLE__GPMI_CLE
+			MX28_PAD_GPMI_RESETN__GPMI_RESETN
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_LOW>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	lcdif_pins_imxmodul: lcdif-modul@0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RD_E__LCD_VSYNC
+			MX28_PAD_LCD_WR_RWN__LCD_HSYNC
+			MX28_PAD_LCD_RS__LCD_DOTCLK
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&digctl {
+	status = "okay";
+};
+
+/* 1st TX-Std UART - (D)UART */
+&duart {
+	status = "okay";
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcdif_24bit_pins_a &lcdif_pins_imxmodul>;
+	display = <&tem_display>;
+	status = "okay";
+
+	tem_display: display@0 {
+		bits-per-pixel = <32>;
+		bus-width = <24>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: timing0 {
+				clock-frequency = <10000000>;
+				hactive = <480>;
+				vactive = <272>;
+				hback-porch = <3>;
+				hfront-porch = <2>;
+				vback-porch = <3>;
+				vfront-porch = <33>;
+				hsync-len = <40>;
+				vsync-len = <10>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
+	};
+};
+
+&gpmi {
+	pinctrl-0 = <&gpmi_pins_b &gpmi_status_cfg>;
+	pinctrl-names = "default";
+	nand-on-flash-bbt;
+	status = "okay";
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x00000000 0x00400000>;
+	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x00400000 0x00100000>;
+	};
+	partition@2 {
+		label = "root";
+		reg = <0x005a0000 0x06400000>;
+	};
+	partition@3 {
+		label = "data";
+		reg = <0x069a0000 0x01400000>;
+	};
+	partition@4 {
+		label = "splash";
+		reg = <0x7da0000 0x00260000>;
+	};
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	status = "okay";
+};
+
+&mxs_rtc {
+	status = "okay";
+};
+
+&ocotp {
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&ssp2 {
+	compatible = "fsl,imx28-spi";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_pins_a>;
+	clock-frequency = <100000>;
+	status = "okay";
+	cs-gpios = <&gpio2 19 1 &gpio2 20 0>;
+	num-chipselects = <2>;
+
+	spidev0: spi@0 {
+		compatible = "spidev";
+		reg = <0>;
+		spi-max-frequency = <100000>;
+	};
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	clock-frequency = <50000>;
+	status = "okay";
+
+	himax-touch@4a{
+		compatible = "himax-hx8526";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 2>;
+		reset-gpio = <&gpio3 26 0>;
+		display-width = <480>;
+		display-height = <272>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ea0fa5a..66c8865 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -91,6 +91,14 @@ config MACH_CFA10036
 	help
 	  Say Y here if you are using the Crystalfontz CFA-10036 module
 
+config MACH_TEM_IMX28
+	bool "TEM i.MX28 module"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select MXS_OCOTP
+	select HAVE_PBL_MULTI_IMAGES
+	help
+	  Say Y here if you are using the TEM i.MX28 module
+
 endchoice
 
 endif
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 93d43b3..318d5e3 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -30,6 +30,15 @@ image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-sd.img
 FILE_barebox-duckbill-2nd.img = start_barebox_duckbill.pblx
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-2nd.img
 
+pblx-$(CONFIG_MACH_TEM_IMX28) += start_barebox_tem_imx28 prep_start_barebox_tem
+CFG_start_barebox_tem_imx28.mxsbs = $(mxs28cfg)
+FILE_barebox-tem-imx28-bootstream.img = start_barebox_tem_imx28.mxsbs
+image-$(CONFIG_MACH_TEM_IMX28) += barebox-tem-imx28-bootstream.img
+FILE_barebox-tem-imx28-sd.img = start_barebox_tem_imx28.mxsbs.mxssd
+image-$(CONFIG_MACH_TEM_IMX28) += barebox-tem-imx28-sd.img
+FILE_barebox-tem-imx28-2nd.img = start_barebox_tem_imx28.pblx
+image-$(CONFIG_MACH_TEM_IMX28) += barebox-tem-imx28-2nd.img
+
 pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
 CFG_start_barebox_karo_tx28.mxsbs = $(mxs28cfg)
 FILE_barebox-karo-tx28-bootstream.img = start_barebox_karo_tx28.mxsbs
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
