Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNY-0007yg-Il
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:29 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:35 +0800
Message-ID: <1410949295-30296-10-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 9/9] ARM: at91: add sama5d4ek board support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Add Atmel sama5d4ek board support, which include following features:
  - NAND flash support
  - SPI flash support
  - MMC card support (MCI1)
  - LCD display support (with QT1070)
  - Ethernet support

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/Makefile                     |   1 +
 arch/arm/boards/sama5d4ek/Makefile           |   1 +
 arch/arm/boards/sama5d4ek/env/bin/init_board |  15 ++
 arch/arm/boards/sama5d4ek/env/config         |  42 ++++
 arch/arm/boards/sama5d4ek/init.c             | 311 +++++++++++++++++++++++++++
 arch/arm/configs/sama5d4ek_defconfig         |  85 ++++++++
 arch/arm/mach-at91/Kconfig                   |  26 +++
 arch/arm/mach-at91/Makefile                  |   2 +
 8 files changed, 483 insertions(+)
 create mode 100644 arch/arm/boards/sama5d4ek/Makefile
 create mode 100644 arch/arm/boards/sama5d4ek/env/bin/init_board
 create mode 100644 arch/arm/boards/sama5d4ek/env/config
 create mode 100644 arch/arm/boards/sama5d4ek/init.c
 create mode 100644 arch/arm/configs/sama5d4ek_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 122f5cd..beb70f6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -92,6 +92,7 @@ obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
+obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
diff --git a/arch/arm/boards/sama5d4ek/Makefile b/arch/arm/boards/sama5d4ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/sama5d4ek/env/bin/init_board b/arch/arm/boards/sama5d4ek/env/bin/init_board
new file mode 100644
index 0000000..f3d417e
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/bin/init_board
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
+
+exit 1
diff --git a/arch/arm/boards/sama5d4ek/env/config b/arch/arm/boards/sama5d4ek/env/config
new file mode 100644
index 0000000..1007345
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/config
@@ -0,0 +1,42 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nfs
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+ubiroot=rootfs
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
+rootfs_mtdblock_nand=7
+
+m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/sama5d4ek/init.c b/arch/arm/boards/sama5d4ek/init.c
new file mode 100644
index 0000000..1bb37d8
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/init.c
@@ -0,0 +1,311 @@
+/*
+ * SAMA5D4EK board configureation.
+ *
+ * Copyright (C) 2014 Atmel Corporation,
+ *		      Bo Shen <voice.shen@atmel.com>
+ *
+ * Licensed under GPLv2 or later.
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <mach/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <gpio.h>
+#include <mach/iomux.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <input/qt1070.h>
+#include <readkey.h>
+#include <spi/spi.h>
+#include <linux/clk.h>
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= -EINVAL,
+	.enable_pin	= -EINVAL,
+	.ecc_mode	= NAND_ECC_HW,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 8,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config cm_nand_smc_config = {
+	.ncs_read_setup		= 1,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 1,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 2,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 2,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+
+	.tclr			= 2,
+	.tadl			= 7,
+	.tar			= 2,
+	.ocms			= 0,
+	.trr			= 3,
+	.twb			= 7,
+	.rbnsel			= 3,
+	.nfsel			= 1,
+};
+
+static void ek_add_device_nand(void)
+{
+	struct clk *clk = clk_get(NULL, "smc_clk");
+
+	clk_enable(clk);
+
+	/* configure chip-select 3 (NAND) */
+	sama5_smc_configure(0, 3, &cm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+#else
+static void ek_add_device_nand(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+static struct macb_platform_data macb0_pdata = {
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
+	.phy_addr = 0,
+};
+
+static void ek_add_device_eth(void)
+{
+	at91_add_device_eth(0, &macb0_pdata);
+}
+#else
+static void ek_add_device_eth(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
+static struct fb_videomode at91_tft_vga_modes[] = {
+	{
+		.name		= "LG",
+		.refresh	= 60,
+		.xres		= 800,		.yres		= 480,
+		.pixclock	= KHZ2PICOS(33260),
+
+		.left_margin	= 88,		.right_margin	= 168,
+		.upper_margin	= 8,		.lower_margin	= 37,
+		.hsync_len	= 128,		.vsync_len	= 2,
+
+		.sync		= 0,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+/* Output mode is TFT 18 bits */
+#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_18BPP)
+
+static struct atmel_lcdfb_platform_data ek_lcdc_data = {
+	.lcdcon_is_backlight		= true,
+	.default_bpp			= 16,
+	.default_dmacon			= ATMEL_LCDC_DMAEN,
+	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
+	.guard_time			= 9,
+	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
+	.mode_list			= at91_tft_vga_modes,
+	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
+};
+
+static void ek_add_device_lcdc(void)
+{
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data mci1_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PE6,
+	.wp_pin		= -EINVAL,
+};
+
+static void ek_add_device_mci(void)
+{
+	/* MMC1 */
+	at91_add_device_mci(1, &mci1_data);
+
+	/* power on MCI1 */
+	at91_set_gpio_output(AT91_PIN_PE15, 0);
+}
+#else
+static void ek_add_device_mci(void) {}
+#endif
+
+#if defined(CONFIG_I2C_GPIO)
+struct qt1070_platform_data qt1070_pdata = {
+	.irq_pin	= AT91_PIN_PE25,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		.platform_data = &qt1070_pdata,
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
+	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+}
+#else
+static void ek_add_device_i2c(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p80",
+		.chip_select	= 0,
+		.max_speed_hz	= 30 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PC3 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices, ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+#else
+static void ek_add_device_spi(void) {}
+#endif
+
+#ifdef CONFIG_LED_GPIO
+struct gpio_led leds[] = {
+	{
+		.gpio	= AT91_PIN_PE28,
+		.active_low	= 1,
+		.led	= {
+			.name = "d8",
+		},
+	}, {
+		.gpio	= AT91_PIN_PE8,
+		.active_low	= 1,
+		.led	= {
+			.name = "d10",
+		},
+	},
+};
+
+static void ek_add_led(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
+		led_gpio_register(&leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+}
+#else
+static void ek_add_led(void) {}
+#endif
+
+static int sama5d4ek_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(sama5d4ek_mem_init);
+
+static const struct devfs_partition sama5d4ek_nand0_partitions[] = {
+	{
+		.offset = 0x00000,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "at91bootstrap_raw",
+		.bbname = "at91bootstrap",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_512K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "bootloader_raw",
+		.bbname = "bootloader",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw",
+		.bbname = "env0",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw1",
+		.bbname = "env1",
+	}, {
+		/* sentinel */
+	}
+};
+
+static int sama5d4ek_devices_init(void)
+{
+	ek_add_device_i2c();
+	ek_add_device_nand();
+	ek_add_led();
+	ek_add_device_eth();
+	ek_add_device_spi();
+	ek_add_device_mci();
+	ek_add_device_lcdc();
+
+	devfs_create_partitions("nand0", sama5d4ek_nand0_partitions);
+
+	return 0;
+}
+device_initcall(sama5d4ek_devices_init);
+
+static int sama5d4ek_console_init(void)
+{
+	barebox_set_model("Atmel sama5d4ek");
+	barebox_set_hostname("sama5d4ek");
+
+	at91_register_uart(4, 0);
+
+	return 0;
+}
+console_initcall(sama5d4ek_console_init);
+
+static int sama5d4ek_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+
+	return 0;
+}
+pure_initcall(sama5d4ek_main_clock);
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
new file mode 100644
index 0000000..bbf254a
--- /dev/null
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -0,0 +1,85 @@
+CONFIG_ARCH_SAMA5D4=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x26f00000
+CONFIG_MALLOC_SIZE=0xA00000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="A5D4EK:"
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
+CONFIG_DEBUG_INFO=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_MICREL_PHY=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_QT1070=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_PNG=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 826917e..8c10c10 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,9 @@ config HAVE_AT91_DBGU0
 config HAVE_AT91_DBGU1
 	bool
 
+config HAVE_AT91_DBGU2
+	bool
+
 config HAVE_AT91_LOWLEVEL_INIT
 	bool
 
@@ -168,6 +171,13 @@ config ARCH_SAMA5D3
 	select HAS_MACB
 	select AT91SAM9G45_RESET
 
+config ARCH_SAMA5D4
+	bool "SAMA5D4"
+	select SOC_SAMA5
+	select HAVE_AT91_DBGU2
+	select HAS_MACB
+	select AT91SAM9G45_RESET
+
 endchoice
 
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
@@ -472,6 +482,22 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_SAMA5D4
+
+choice
+	prompt "SAMA5D4 Board Type"
+
+config MACH_SAMA5D4EK
+	bool "Atmel SAMA5D4 Evaluation Kit"
+	help
+	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 comment "AT91 Board Options"
 
 config MTD_AT91_DATAFLASH_CARD
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 8599f50..c2991b0 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -12,6 +12,7 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9X5) += at91sam9x5_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9N12) += at91sam9n12_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_SAMA5D3) += sama5d3_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_SAMA5D4) += sama5d3_lowlevel_init.o
 lwl-y += $(lowlevel_init-y)
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
@@ -31,3 +32,4 @@ obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
 obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
+obj-$(CONFIG_ARCH_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
