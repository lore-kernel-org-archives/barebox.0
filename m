Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FI-3N
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:19 +0100
Message-Id: <1422430339-11969-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] ARM: MXS: Add duckbill board support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile            |   1 +
 arch/arm/boards/duckbill/Makefile   |   2 +
 arch/arm/boards/duckbill/board.c    |  82 +++++++++++++++++++++++++++++
 arch/arm/boards/duckbill/lowlevel.c |  73 ++++++++++++++++++++++++++
 arch/arm/configs/duckbill_defconfig | 100 ++++++++++++++++++++++++++++++++++++
 arch/arm/dts/Makefile               |   1 +
 arch/arm/dts/imx28-duckbill.dts     |  15 ++++++
 arch/arm/mach-mxs/Kconfig           |   8 +++
 images/Makefile.mxs                 |  10 ++++
 9 files changed, 292 insertions(+)
 create mode 100644 arch/arm/boards/duckbill/Makefile
 create mode 100644 arch/arm/boards/duckbill/board.c
 create mode 100644 arch/arm/boards/duckbill/lowlevel.c
 create mode 100644 arch/arm/configs/duckbill_defconfig
 create mode 100644 arch/arm/dts/imx28-duckbill.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9961ca8..d81d360 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
 obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
+obj-$(CONFIG_MACH_DUCKBILL)			+= duckbill/
 obj-$(CONFIG_MACH_DSS11)			+= dss11/
 obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9301)			+= edb93xx/
diff --git a/arch/arm/boards/duckbill/Makefile b/arch/arm/boards/duckbill/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/duckbill/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/duckbill/board.c b/arch/arm/boards/duckbill/board.c
new file mode 100644
index 0000000..3c6ab8e
--- /dev/null
+++ b/arch/arm/boards/duckbill/board.c
@@ -0,0 +1,82 @@
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
+
+#include <mach/clock.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-imx28.h>
+#include <mach/iomux.h>
+#include <mach/ocotp.h>
+#include <mach/devices.h>
+#include <mach/usb.h>
+#include <usb/fsl_usb2.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+static void duckbill_get_ethaddr(void)
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
+	mac[1] = 0x04;
+	mac[2] = 0x9f;
+	mac[3] = mac_ocotp[2];
+	mac[4] = mac_ocotp[1];
+	mac[5] = mac_ocotp[0];
+
+	eth_register_ethaddr(0, mac);
+}
+
+static struct fsl_usb2_platform_data usb_pdata = {
+	.operating_mode	= FSL_USB2_DR_DEVICE,
+	.phy_mode	= FSL_USB2_PHY_UTMI,
+};
+
+static int duckbill_devices_init(void)
+{
+	duckbill_get_ethaddr(); /* must be after registering ocotp */
+
+	imx28_usb_phy0_enable();
+	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_USB0_BASE,
+			   0x200, IORESOURCE_MEM, &usb_pdata);
+
+	return 0;
+}
+fs_initcall(duckbill_devices_init);
+
+static int duckbill_console_init(void)
+{
+	barebox_set_model("I2SE Duckbill");
+	barebox_set_hostname("duckbill");
+
+	return 0;
+}
+console_initcall(duckbill_console_init);
diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
new file mode 100644
index 0000000..4cb991f
--- /dev/null
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -0,0 +1,73 @@
+#define pr_fmt(fmt) "Freescale MX28evk: " fmt
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
+extern char __dtb_imx28_duckbill_start[];
+
+ENTRY_FUNCTION(start_barebox_duckbill, r0, r1, r2)
+{
+	void *fdt;
+
+	pr_debug("here we are!\n");
+
+	fdt = __dtb_imx28_duckbill_start - get_runtime_offset();
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
+
+	/* Debug UART */
+	PWM0_DUART_RX | VE_3_3V,
+	PWM1_DUART_TX | VE_3_3V,
+};
+
+static noinline void duckbill_init(void)
+{
+	int i;
+
+	/* initialize muxing */
+	for (i = 0; i < ARRAY_SIZE(iomux_pads); i++)
+		imx_gpio_mode(iomux_pads[i]);
+
+	pr_debug("initializing power...\n");
+
+	mx28_power_init();
+
+	pr_debug("initializing SDRAM...\n");
+
+	mx28_mem_init();
+
+	pr_debug("DONE\n");
+}
+
+ENTRY_FUNCTION(prep_start_barebox_duckbill, r0, r1, r2)
+{
+	void (*back)(unsigned long) = (void *)get_lr();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	duckbill_init();
+
+	back(0);
+}
diff --git a/arch/arm/configs/duckbill_defconfig b/arch/arm/configs/duckbill_defconfig
new file mode 100644
index 0000000..6210416
--- /dev/null
+++ b/arch/arm/configs/duckbill_defconfig
@@ -0,0 +1,100 @@
+CONFIG_ARCH_MXS=y
+CONFIG_ARCH_IMX28=y
+CONFIG_MACH_DUCKBILL=y
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
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_AUART=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_MXS=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_MXS=y
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
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dc32dd3..f716628 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -10,6 +10,7 @@ obj-y += empty.o
 pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+pbl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
diff --git a/arch/arm/dts/imx28-duckbill.dts b/arch/arm/dts/imx28-duckbill.dts
new file mode 100644
index 0000000..2a995a7
--- /dev/null
+++ b/arch/arm/dts/imx28-duckbill.dts
@@ -0,0 +1,15 @@
+#include <arm/imx28-duckbill.dts>
+
+/ {
+	chosen {
+		stdout-path = &duart;
+	};
+};
+
+&duart {
+	arm,primecell-periphid = <0x00041011>;
+};
+
+&ocotp {
+	status = "okay";
+};
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 5b50e82..ea0fa5a 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -74,6 +74,14 @@ config MACH_MX28EVK
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
+config MACH_DUCKBILL
+	bool "Duckbill"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select MXS_OCOTP
+	select HAVE_PBL_MULTI_IMAGES
+	help
+	  Say Y here if you are using the I2SE Duckbill board
+
 config MACH_CFA10036
 	bool "cfa-10036"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index e2cdbd2..733f83b 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -22,6 +22,16 @@ board = $(srctree)/arch/$(ARCH)/boards
 mxs23cfg = $(srctree)/arch/arm/mach-mxs/mxs23img.cfg
 mxs28cfg = $(srctree)/arch/arm/mach-mxs/mxs28img.cfg
 
+pblx-$(CONFIG_MACH_DUCKBILL) += start_barebox_duckbill prep_start_barebox_duckbill
+PREP_start_barebox_duckbill.pblx.mxsbs = start_barebox_duckbill_prep
+CFG_start_barebox_duckbill.mxsbs = $(mxs28cfg)
+FILE_barebox-duckbill-bootstream.img = start_barebox_duckbill.mxsbs
+image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-bootstream.img
+FILE_barebox-duckbill-sd.img = start_barebox_duckbill.mxsbs.mxssd
+image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-sd.img
+FILE_barebox-duckbill-2nd.img = start_barebox_duckbill.pblx
+image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-2nd.img
+
 pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
 PREP_start_barebox_karo_tx28.pblx.mxsbs = start_barebox_karo_tx28_prep
 CFG_start_barebox_karo_tx28.mxsbs = $(mxs28cfg)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
