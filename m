Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bLs3E-00006S-Tc
 for barebox@lists.infradead.org; Sat, 09 Jul 2016 13:12:14 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat,  9 Jul 2016 15:09:44 +0200
Message-Id: <1468069784-31672-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM i.MX35: Add support for the Amazon Kindle3
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The Amazon Model No. D00901 Kindle3 is an E-Book reader based on the
i.MX35 SOC. The device boots in internal boot mode from a build-in eMMC,
alternatively the device may be set into USB-downloader mode when the
Vol+ key is pressed on startup.

Add support for this device and make barebox a drop-in replacement for
the factory shipped u-boot image.
Constraints for the use as drop-in replacement:
- imximg header (offset 0x400) has a maximum size of 2kB minus 16 byte
  since the last 16 bytes are used to store a vendor specific hardware
  desctription identifier
- the bootloader space (application plus env) is limited to 256kB minus
  16 bytes when installed with offset of 4kB (the u-boot offset was 3kB).
  A vendor specific device identifier is stored in the gap between
  application and kernel. The vendor specific identifiers should not
  be overwritten.

Notable features:
- Support for eMMC, USB, UART, I2C, SPI and Keys (except keyboard)
- Full support for vendor specific ATAGs
- usbserial barebox console access by pressing Select button at startup,
  alternatively full console support on connector J14.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx/amazon-kindle3.rst        |  28 ++
 arch/arm/Makefile                                  |   1 +
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/kindle3/Makefile                   |   2 +
 arch/arm/boards/kindle3/env/boot/mmc_kernel        |   7 +
 arch/arm/boards/kindle3/env/init/serials           |  21 ++
 arch/arm/boards/kindle3/env/init/usbconsole        |   8 +
 arch/arm/boards/kindle3/env/nv/autoboot_timeout    |   1 +
 arch/arm/boards/kindle3/env/nv/boot.default        |   1 +
 arch/arm/boards/kindle3/env/nv/linux.bootargs.base |   1 +
 .../boards/kindle3/env/nv/linux.bootargs.console   |   1 +
 arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj  |   1 +
 arch/arm/boards/kindle3/flash-header.imxcfg        |  24 ++
 arch/arm/boards/kindle3/kindle3.c                  | 318 +++++++++++++++++++++
 arch/arm/boards/kindle3/lowlevel.c                 | 142 +++++++++
 arch/arm/configs/kindle3_defconfig                 |  65 +++++
 arch/arm/mach-imx/Kconfig                          |   9 +
 17 files changed, 631 insertions(+)
 create mode 100644 Documentation/boards/imx/amazon-kindle3.rst
 create mode 100644 arch/arm/boards/kindle3/Makefile
 create mode 100644 arch/arm/boards/kindle3/env/boot/mmc_kernel
 create mode 100644 arch/arm/boards/kindle3/env/init/serials
 create mode 100644 arch/arm/boards/kindle3/env/init/usbconsole
 create mode 100644 arch/arm/boards/kindle3/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/kindle3/env/nv/boot.default
 create mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
 create mode 100644 arch/arm/boards/kindle3/flash-header.imxcfg
 create mode 100644 arch/arm/boards/kindle3/kindle3.c
 create mode 100644 arch/arm/boards/kindle3/lowlevel.c
 create mode 100644 arch/arm/configs/kindle3_defconfig

diff --git a/Documentation/boards/imx/amazon-kindle3.rst b/Documentation/boards/imx/amazon-kindle3.rst
new file mode 100644
index 0000000..50592f2
--- /dev/null
+++ b/Documentation/boards/imx/amazon-kindle3.rst
@@ -0,0 +1,28 @@
+Amazon Kindle 3 "Kindle Keyboard" Model No. D00901
+==================================================
+
+This e-book reader is based on a Freescale i.MX35 SOC.
+The device is equiped with:
+
+* 256MiB synchronous dynamic RAM
+* 4GiB eMMC
+* a MC13892 PMIC
+
+The device boots in internal boot mode from eMMC and is shipped with a
+vendor modified u-boot imximage.
+
+To upload and run a new bootloader the device can be put into USB-downloader
+mode by the SOC microcode when Vol+ is pressed during startup. A new USB
+device "SE Blank RINGO" should appear, barebox may be uploaded using
+$ scripts/imx/imx-usb-loader barebox.imximg
+
+Note: a USB serial ACM console will be launched by a barebox init script
+when the cursor select key is pressed during startup (e.g. before running
+imx-usb-loader)
+
+Barebox may be used as drop-in replacement for the shipped bootloader.
+When installing the barebox imximg on the eMMC take care not to overwrite
+the partition table and vendor supplied serial numbers stored on the eMMC.
+e.g. just write the imx-header and the application section:
+memcpy -b -s barebox.imximg -d /dev/disk0.imx_header 1024 0 1024
+memcpy -b -s barebox.imximg -d /dev/disk0.self 4096 0 195584
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 865de04..9fc3cd3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -252,6 +252,7 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3ds/fl
 imxcfg-$(CONFIG_MACH_TQMA53) += $(boarddir)/tqma53/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_KINDLE3) += $(boarddir)/kindle3/flash-header.imxcfg
 imxcfg-$(CONFIG_TX53_REV_1011) += $(boarddir)/karo-tx53/flash-header-tx53-rev1011.imxcfg
 imxcfg-$(CONFIG_TX53_REV_XX30) += $(boarddir)/karo-tx53/flash-header-tx53-revxx30.imxcfg
 ifneq ($(imxcfg-y),)
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c271f5d..e3dcc6a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
+obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
 obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
 obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
diff --git a/arch/arm/boards/kindle3/Makefile b/arch/arm/boards/kindle3/Makefile
new file mode 100644
index 0000000..86c7462
--- /dev/null
+++ b/arch/arm/boards/kindle3/Makefile
@@ -0,0 +1,2 @@
+obj-y += kindle3.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/kindle3/env/boot/mmc_kernel b/arch/arm/boards/kindle3/env/boot/mmc_kernel
new file mode 100644
index 0000000..c6145b8
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/boot/mmc_kernel
@@ -0,0 +1,7 @@
+#!/bin/sh
+# Boot the Amazon factory-shipped kernel uimage stored on
+# the eMMC at MOVINAND_OFFSET_KERNEL=266240.
+
+global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 ro"
+
+bootm -c -a 0x80008000 /dev/disk0.kernel
diff --git a/arch/arm/boards/kindle3/env/init/serials b/arch/arm/boards/kindle3/env/init/serials
new file mode 100644
index 0000000..76580ae
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/init/serials
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+global board.serial16
+global board.revision16
+
+# 16-byte alphanumeric containing the serial number
+# SN is the first 16 bytes before the bootloader
+if test -b /dev/disk0.serial; then
+	if memcpy -s /dev/disk0.serial -d tmp_serial16 -b 0 0 16; then
+		readf tmp_serial16 global.board.serial16
+	fi
+fi
+[ -f tmp_serial16 ] && rm tmp_serial16
+
+# 16-byte alphanumeric containing the board revision
+if test -b /dev/disk0.imx_header; then
+	if memcpy -s /dev/disk0.imx_header -d tmp_revision16 -b 2032 0 16; then
+		readf tmp_revision16 global.board.revision16
+	fi
+fi
+[ -f tmp_revision16 ] && rm tmp_revision16
diff --git a/arch/arm/boards/kindle3/env/init/usbconsole b/arch/arm/boards/kindle3/env/init/usbconsole
new file mode 100644
index 0000000..87a8f9b
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/init/usbconsole
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# Fiveway device select key activates usbserial access for 60s
+echo
+if gpio_get_value 63; then
+	usbserial
+	global.autoboot_timeout=60
+fi
diff --git a/arch/arm/boards/kindle3/env/nv/autoboot_timeout b/arch/arm/boards/kindle3/env/nv/autoboot_timeout
new file mode 100644
index 0000000..00750ed
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/nv/autoboot_timeout
@@ -0,0 +1 @@
+3
diff --git a/arch/arm/boards/kindle3/env/nv/boot.default b/arch/arm/boards/kindle3/env/nv/boot.default
new file mode 100644
index 0000000..3118b7a
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/nv/boot.default
@@ -0,0 +1 @@
+mmc_kernel
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.base b/arch/arm/boards/kindle3/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..3a940d8
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+mem=256M ip=none
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.console b/arch/arm/boards/kindle3/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj b/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
new file mode 100644
index 0000000..aa3ba59
--- /dev/null
+++ b/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
@@ -0,0 +1 @@
+lpj=2555904
diff --git a/arch/arm/boards/kindle3/flash-header.imxcfg b/arch/arm/boards/kindle3/flash-header.imxcfg
new file mode 100644
index 0000000..cb56acf
--- /dev/null
+++ b/arch/arm/boards/kindle3/flash-header.imxcfg
@@ -0,0 +1,24 @@
+soc imx35
+loadaddr 0x87eff400
+dcdofs 0x400
+
+wm 32 0x53f80004 0x00821000
+wm 32 0x53f80004 0x00821000
+wm 32 0xb8001010 0x00000002
+wm 32 0xb8001010 0x00000004
+wm 32 0xb8001004 0x0019672f
+wm 32 0xb8001000 0x93100000
+wm 8 0x80000400 0xda
+wm 32 0xb8001000 0xa3100000
+wm 32 0x80000000 0x12344321
+wm 32 0x80000000 0x12344321
+wm 32 0xb8001000 0xb3100000
+wm 8 0x80000033 0xda
+wm 8 0x82000000 0xff
+wm 32 0xb8001000 0x83226080
+wm 32 0xb8001010 0x0000000c
+wm 32 0x80000000 0xdeadbeef
+wm 32 0xb8001030 0x00e78000
+wm 32 0x43fac004 0x00000004
+wm 32 0x43fac328 0x00002100
+wm 32 0x43fac7d0 0x00000000
diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
new file mode 100644
index 0000000..e06b3d7
--- /dev/null
+++ b/arch/arm/boards/kindle3/kindle3.c
@@ -0,0 +1,318 @@
+/*
+ * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (C) 2016 Alexander Kurz <akurz@blala.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ * Board support for the Amazon Kindle 3rd generation
+ */
+
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+#include <init.h>
+#include <bootsource.h>
+#include <io.h>
+#include <environment.h>
+#include <generated/mach-types.h>
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+#include <asm/setup.h>
+#include <mach/imx35-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/iomux-mx35.h>
+#include <mach/devices-imx35.h>
+#include <mach/generic.h>
+#include <usb/fsl_usb2.h>
+#include <mach/usb.h>
+#include <mach/spi.h>
+#include <spi/spi.h>
+#include <magicvar.h>
+
+/* 16 byte id for serial number */
+#define ATAG_SERIAL16   0x5441000a
+/* 16 byte id for a board revision */
+#define ATAG_REVISION16 0x5441000b
+
+struct char16_tag {
+	char data[16];
+};
+
+static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
+				    const char *value)
+{
+	struct char16_tag *target;
+	target = ((void *) params) + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(char16_tag);
+	memcpy(target->data, value, sizeof target->data);
+	return tag_next(params);
+}
+
+static const char *get_env_16char_tag(const char *tag)
+{
+	static const char *default16 = "0000000000000000";
+	const char *value;
+	value = getenv(tag);
+	if (!value) {
+		printf("env var %s not found, using default\n", tag);
+		return default16;
+	}
+	if (strlen(value) != 16) {
+		printf("env var %s: expecting 16 characters, using default\n",
+			tag);
+		return default16;
+	}
+	printf("%s: %s\n", tag, value);
+	return value;
+}
+
+BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
+	"Pass the kindle Serial as vendor-specific ATAG to linux");
+BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
+	"Pass the kindle BoardId as vendor-specific ATAG to linux");
+
+/* The Kindle3 Kernel expects two custom ATAGs, ATAG_REVISION16 describing
+ * the board and ATAG_SERIAL16 to identify the individual device.
+ */
+struct tag *kindle3_append_atags(struct tag *params)
+{
+	params = setup_16char_tag(params, ATAG_SERIAL16,
+				get_env_16char_tag("global.board.serial16"));
+	params = setup_16char_tag(params, ATAG_REVISION16,
+				get_env_16char_tag("global.board.revision16"));
+	return params;
+}
+
+static struct fsl_usb2_platform_data kindle3_usb_info = {
+	.operating_mode = FSL_USB2_DR_DEVICE,
+	.phy_mode = FSL_USB2_PHY_UTMI,
+};
+
+/* SPI master devices. */
+static int kindle3_spi0_internal_chipselect[] = {
+	IMX_GPIO_NR(1, 18),
+};
+
+static struct spi_imx_master kindle3_spi0_info = {
+	.chipselect	= kindle3_spi0_internal_chipselect,
+	.num_chipselect	= ARRAY_SIZE(kindle3_spi0_internal_chipselect),
+};
+
+static const struct spi_board_info kindle3_spi_board_info[] = {
+	{
+		.name		= "mc13892",
+		.bus_num	= 0,
+		.chip_select	= 0,
+		.mode		= SPI_CS_HIGH,
+	},
+};
+
+static int kindle3_mmu_init(void)
+{
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+
+	return 0;
+}
+postmmu_initcall(kindle3_mmu_init);
+
+static int kindle3_devices_init(void)
+{
+	imx35_add_mmc0(NULL);
+
+	if (IS_ENABLED(CONFIG_USB_GADGET)) {
+		unsigned int tmp;
+		/* Workaround ENGcm09152 */
+		tmp = readl(MX35_USB_OTG_BASE_ADDR + 0x608);
+		writel(tmp | (1 << 23), MX35_USB_OTG_BASE_ADDR + 0x608);
+		add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL,
+				   MX35_USB_OTG_BASE_ADDR, 0x200,
+				   IORESOURCE_MEM, &kindle3_usb_info);
+	}
+
+	/* The kindle3 related linux patch published by amazon bluntly
+	 * renamed MACH_MX35_3DS to MACH_MX35_LUIGI
+	 */
+	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
+
+	/* Compatibility ATAGs for original kernel */
+	armlinux_set_atag_appender(kindle3_append_atags);
+	return 0;
+}
+device_initcall(kindle3_devices_init);
+
+static iomux_v3_cfg_t kindle3_pads[] = {
+	/* UART1 */
+	MX35_PAD_RXD1__UART1_RXD_MUX,
+	MX35_PAD_TXD1__UART1_TXD_MUX,
+
+	/* eMMC */
+	MX35_PAD_SD1_CMD__ESDHC1_CMD,
+	MX35_PAD_SD1_CLK__ESDHC1_CLK,
+	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
+
+	/* USB */
+	MX35_PAD_USBOTG_PWR__USB_TOP_USBOTG_PWR,
+	MX35_PAD_USBOTG_OC__USB_TOP_USBOTG_OC,
+
+	/* I2C 1+2 */
+	MX35_PAD_I2C1_CLK__I2C1_SCL,
+	MX35_PAD_I2C1_DAT__I2C1_SDA,
+	MX35_PAD_I2C2_CLK__I2C2_SCL,
+	MX35_PAD_I2C2_DAT__I2C2_SDA,
+
+	/* SPI */
+	MX35_PAD_CSPI1_SS0__GPIO1_18,
+	MX35_PAD_CSPI1_SCLK__CSPI1_SCLK,
+	MX35_PAD_CSPI1_MOSI__CSPI1_MOSI,
+	MX35_PAD_CSPI1_MISO__CSPI1_MISO,
+	MX35_PAD_CSPI1_SPI_RDY__CSPI1_RDY,
+
+	/* fiveway device: up, down, left, right, select */
+	MX35_PAD_ATA_DATA14__GPIO2_27,
+	MX35_PAD_ATA_DATA15__GPIO2_28,
+	MX35_PAD_TX5_RX0__GPIO1_10,
+	MX35_PAD_ATA_BUFF_EN__GPIO2_30,
+	IOMUX_PAD(0x728, 0x2c4, 5, 0x8c8, 1,
+		  PAD_CTL_PUS_100K_UP | PAD_CTL_HYS | PAD_CTL_DVS),
+
+	/* Volume keys: up, down */
+	MX35_PAD_SCKR__GPIO1_4,
+	MX35_PAD_FSR__GPIO1_5,
+
+};
+
+static int kindle3_part_init(void)
+{
+	devfs_add_partition("disk0", SZ_1K, 2 * SZ_1K,
+			    DEVFS_PARTITION_FIXED, "disk0.imx_header");
+	devfs_add_partition("disk0", 4 * SZ_1K, (192 - 1) * SZ_1K,
+			    DEVFS_PARTITION_FIXED, "disk0.self");
+	devfs_add_partition("disk0", (192 + 3) * SZ_1K, SZ_64K,
+			    DEVFS_PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", (256 + 3) * SZ_1K, SZ_1K,
+			    DEVFS_PARTITION_FIXED, "disk0.serial");
+	devfs_add_partition("disk0", (256 + 4) * SZ_1K, 3407872,
+			    DEVFS_PARTITION_FIXED, "disk0.kernel");
+	devfs_add_partition("disk0", 3674112, SZ_256K,
+			    DEVFS_PARTITION_FIXED, "disk0.waveform");
+	return 0;
+}
+
+late_initcall(kindle3_part_init);
+
+static int imx35_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(kindle3_pads,
+					 ARRAY_SIZE(kindle3_pads));
+
+	barebox_set_model("Kindle3");
+	barebox_set_hostname("kindle3");
+
+	imx35_add_uart0();
+
+	spi_register_board_info(kindle3_spi_board_info,
+				ARRAY_SIZE(kindle3_spi_board_info));
+	imx35_add_spi0(&kindle3_spi0_info);
+
+	imx35_add_i2c0(NULL);
+	imx35_add_i2c1(NULL);
+	return 0;
+}
+console_initcall(imx35_console_init);
+
+static int kindle3_core_setup(void)
+{
+	u32 tmp;
+
+	/* AIPS setup - Only setup MPROTx registers.
+	 * The PACR default values are good.
+	 */
+	/*
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
+	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
+	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
+	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
+
+	/*
+	 * Clear the on and off peripheral modules Supervisor Protect bit
+	 * for SDMA to access them. Did not change the AIPS control registers
+	 * (offset 0x20) access type
+	 */
+	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
+	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
+	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
+	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
+	tmp = readl(MX35_AIPS1_BASE_ADDR + 0x50);
+	tmp &= 0x00FFFFFF;
+	writel(tmp, MX35_AIPS1_BASE_ADDR + 0x50);
+
+	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
+	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
+	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
+	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
+	tmp = readl(MX35_AIPS2_BASE_ADDR + 0x50);
+	tmp &= 0x00FFFFFF;
+	writel(tmp, MX35_AIPS2_BASE_ADDR + 0x50);
+
+	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
+
+	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
+#define MAX_PARAM1 0x00302154
+	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x0);   /* for S0 */
+	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
+	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
+	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
+	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
+
+	/* SGPCR - always park on last master */
+	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
+	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
+	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
+	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
+	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
+
+	/* MGPCR - restore default values */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
+	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
+
+	/*
+	 * M3IF Control Register (M3IFCTL)
+	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
+	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
+	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
+	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
+	 *                                                       ------------
+	 *                                                        0x00000040
+	 */
+	writel(0x40, MX35_M3IF_BASE_ADDR);
+
+	return 0;
+}
+
+core_initcall(kindle3_core_setup);
diff --git a/arch/arm/boards/kindle3/lowlevel.c b/arch/arm/boards/kindle3/lowlevel.c
new file mode 100644
index 0000000..58e6318
--- /dev/null
+++ b/arch/arm/boards/kindle3/lowlevel.c
@@ -0,0 +1,142 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (c) 2016 Alexander Kurz <akurz@blala.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <mach/imx35-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <asm/cache-l2x0.h>
+#include <io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/sections.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/system.h>
+
+void __bare_init __naked barebox_arm_reset_vector(void)
+{
+	uint32_t r, s;
+	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
+	register uint32_t loops = 0x20000;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
+	r = get_cr();
+	r |= CR_Z; /* Flow prediction (Z) */
+	r |= CR_U; /* unaligned accesses  */
+	r |= CR_FI; /* Low Int Latency     */
+
+	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1" : "=r"(s));
+	s |= 0x7;
+	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
+
+	set_cr(r);
+
+	r = 0;
+	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
+
+	/*
+	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
+	 * starting point.  Don't flush BTAC while it is disabled to avoid
+	 * ARM1136 erratum 408023.
+	 */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
+
+	/* invalidate I cache and D cache */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
+
+	/* invalidate TLBs */
+	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
+
+	/* Drain the write buffer */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
+
+	/* Also setup the Peripheral Port Remap register inside the core */
+	r = 0x40000015; /* start from AIPS 2GB region */
+	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
+
+	/*
+	 * End of ARM1136 init
+	 */
+
+	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
+
+	/* Set MPLL , arm clock and ahb clock*/
+	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
+
+	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
+	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
+
+	r = readl(ccm_base + MX35_CCM_CGR0);
+	r |= 0x3 << MX35_CCM_CGR0_CSPI1_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR0_ESDHC1_SHIFT;
+	writel(r, ccm_base + MX35_CCM_CGR0);
+
+	r = readl(ccm_base + MX35_CCM_CGR1);
+	r |= 0x3 << MX35_CCM_CGR1_IOMUX_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_I2C2_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_GPIO1_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_GPIO2_SHIFT;
+	writel(r, ccm_base + MX35_CCM_CGR1);
+
+	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
+	r |= 0x1000;
+	writel(r, MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0x80000000 && r < 0x90000000)
+		goto out;
+
+	/* Init Mobile DDR */
+	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	/* ESD_MISC: Enable DDR SDRAM */
+	writel(0x00000004, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	__asm__ volatile ("1:\n"
+			"subs %0, %1, #1\n"
+			"bne 1b" : "=r" (loops) : "0" (loops));
+
+	writel(0x0019672f, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
+	/* ESD_ESDCTL0 : select Prechare-All mode */
+	writel(0x93220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x400);
+	/* ESD_ESDCTL0: Auto Refresh command */
+	writel(0xA3220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writeb(0xda, MX35_CSD0_BASE_ADDR);
+	writeb(0xda, MX35_CSD0_BASE_ADDR);
+	/* ESD_ESDCTL0: Load Mode Register */
+	writel(0xB3220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x33);
+	writeb(0xff, MX35_CSD0_BASE_ADDR + 0x2000000);
+	/* ESD_ESDCTL0: enable Auto-Refresh */
+	writel(0x83228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
+
+	writel(0x0000000c, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0xdeadbeef, MX35_CSD0_BASE_ADDR);
+	writel(0x00e78000, MX35_CSD0_BASE_ADDR + 0x1030);
+
+out:
+	imx35_barebox_entry(NULL);
+}
diff --git a/arch/arm/configs/kindle3_defconfig b/arch/arm/configs/kindle3_defconfig
new file mode 100644
index 0000000..0b7088e
--- /dev/null
+++ b/arch/arm/configs/kindle3_defconfig
@@ -0,0 +1,65 @@
+CONFIG_ARCH_IMX=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x30000
+CONFIG_MACH_KINDLE3=y
+CONFIG_ARCH_IMX_USBLOADER=y
+CONFIG_IMX_IIM=y
+CONFIG_AEABI=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_ARM_BOARD_PREPEND_ATAG=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/kindle3/env/"
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MMC_EXTCSD=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b648ac..80f8fd8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -33,6 +33,7 @@ config ARCH_TEXT_BASE
 	default 0x17800000 if MACH_SABRESD
 	default 0x4fc00000 if MACH_REALQ7
 	default 0x4fc00000 if MACH_GK802
+	default 0x87f00000 if MACH_KINDLE3
 	default 0x2fc00000 if MACH_TQMA6X
 	default 0x4fc00000 if MACH_DFI_FS700_M60
 	default 0x4fc00000 if MACH_UDOO
@@ -453,6 +454,14 @@ config MACH_GUF_CUPID
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX35 Processor
 
+config MACH_KINDLE3
+	bool "Amazon Kindle3"
+	select ARCH_IMX35
+	select ARCH_HAS_L2X0
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Amazon Model No. D00901 Kindle
+
 # ----------------------------------------------------------
 
 comment "i.MX51 Boards"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
