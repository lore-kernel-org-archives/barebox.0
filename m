Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjP6r-00081T-IP
 for barebox@lists.infradead.org; Wed, 29 Oct 2014 09:00:06 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 29 Oct 2014 16:59:34 +0800
Message-ID: <1414573174-10013-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: add sama5d4 xplained ultra board support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

The sama5d4 xplained ultra board support following features:
  - NAND flash support
  - SPI flash support
  - MMC card support (MCI1)
  - LCD display support (with QT1070)
  - Ethernet support

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/sama5d4_xplained/Makefile          |   1 +
 .../arm/boards/sama5d4_xplained/env/bin/init_board |  15 +
 arch/arm/boards/sama5d4_xplained/env/config        |  42 +++
 .../arm/boards/sama5d4_xplained/sama5d4_xplained.c | 319 +++++++++++++++++++++
 arch/arm/configs/sama5d4_xplained_defconfig        |  86 ++++++
 arch/arm/mach-at91/Kconfig                         |   5 +
 7 files changed, 469 insertions(+)
 create mode 100644 arch/arm/boards/sama5d4_xplained/Makefile
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/bin/init_board
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/config
 create mode 100644 arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
 create mode 100644 arch/arm/configs/sama5d4_xplained_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c80b9c9..84b427e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -94,6 +94,7 @@ obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
+obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
diff --git a/arch/arm/boards/sama5d4_xplained/Makefile b/arch/arm/boards/sama5d4_xplained/Makefile
new file mode 100644
index 0000000..44550f5
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/Makefile
@@ -0,0 +1 @@
+obj-y += sama5d4_xplained.o
diff --git a/arch/arm/boards/sama5d4_xplained/env/bin/init_board b/arch/arm/boards/sama5d4_xplained/env/bin/init_board
new file mode 100644
index 0000000..f3d417e
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/bin/init_board
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
diff --git a/arch/arm/boards/sama5d4_xplained/env/config b/arch/arm/boards/sama5d4_xplained/env/config
new file mode 100644
index 0000000..1007345
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/config
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
diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
new file mode 100644
index 0000000..0126220
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -0,0 +1,319 @@
+/*
+ * SAMA5D4 XPLAINED ULTRA board configuration.
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
+		.name		= "TM4301",
+		.refresh	= 60,
+		.xres		= 480,		.yres		= 272,
+		.pixclock	= KHZ2PICOS(9000),
+
+		.left_margin	= 2,		.right_margin	= 2,
+		.upper_margin	= 2,		.lower_margin	= 2,
+		.hsync_len	= 41,		.vsync_len	= 11,
+
+		.sync		= 0,
+		.vmode		= FB_VMODE_NONINTERLACED,
+	},
+};
+
+/* Output mode is TFT 24 bits */
+#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
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
+	/* On sama5d4 xplained ultra board, we use 24bits connection */
+	at91_set_A_periph(AT91_PIN_PA0, 0);	/* LCDD0 */
+	at91_set_A_periph(AT91_PIN_PA1, 0);	/* LCDD1 */
+	at91_set_A_periph(AT91_PIN_PA8, 0);	/* LCDD8 */
+	at91_set_A_periph(AT91_PIN_PA9, 0);	/* LCDD9 */
+	at91_set_A_periph(AT91_PIN_PA16, 0);	/* LCDD16 */
+	at91_set_A_periph(AT91_PIN_PA17, 0);	/* LCDD17 */
+
+	at91_add_device_lcdc(&ek_lcdc_data);
+}
+#else
+static void ek_add_device_lcdc(void) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data mci1_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PE3,
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
+	.irq_pin	= AT91_PIN_PE10,
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
+		.gpio	= AT91_PIN_PD30,
+		.active_low	= 0,
+		.led	= {
+			.name = "d8",
+		},
+	}, {
+		.gpio	= AT91_PIN_PE15,
+		.active_low	= 0,
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
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
new file mode 100644
index 0000000..51083fe
--- /dev/null
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -0,0 +1,86 @@
+CONFIG_ARCH_SAMA5D4=y
+CONFIG_MACH_SAMA5D4_XPLAINED=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x26f00000
+CONFIG_MALLOC_SIZE=0xA00000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="A5D4_XPLAINED:"
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
index 8c10c10..9ee4f30 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -492,6 +492,11 @@ config MACH_SAMA5D4EK
 	help
 	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
 
+config MACH_SAMA5D4_XPLAINED
+	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
+	help
+	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
+
 endchoice
 
 endif
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
