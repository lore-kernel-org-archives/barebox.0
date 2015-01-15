Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBiIZ-0008Ac-4F
 for barebox@lists.infradead.org; Thu, 15 Jan 2015 11:09:14 +0000
From: Gregory Hermant <gregory.hermant@calao-systems.com>
Date: Thu, 15 Jan 2015 12:08:38 +0100
Message-Id: <1421320118-31779-1-git-send-email-gregory.hermant@calao-systems.com>
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
Subject: [PATCH] add support for the haba-knx-lite controller
To: barebox@lists.infradead.org


Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
---
 arch/arm/boards/Makefile                    |    1 +
 arch/arm/boards/haba-knx/Makefile           |    1 +
 arch/arm/boards/haba-knx/env/bin/init_board |   49 ++++
 arch/arm/boards/haba-knx/env/config         |   40 +++
 arch/arm/boards/haba-knx/init.c             |  348 +++++++++++++++++++++++++++
 arch/arm/configs/haba_knx_lite_defconfig    |   89 +++++++
 arch/arm/mach-at91/Kconfig                  |    5 +
 7 files changed, 533 insertions(+)
 create mode 100644 arch/arm/boards/haba-knx/Makefile
 create mode 100644 arch/arm/boards/haba-knx/env/bin/init_board
 create mode 100644 arch/arm/boards/haba-knx/env/config
 create mode 100644 arch/arm/boards/haba-knx/init.c
 create mode 100644 arch/arm/configs/haba_knx_lite_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9961ca8..bf04f38 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -50,6 +50,7 @@ obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
+obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
diff --git a/arch/arm/boards/haba-knx/Makefile b/arch/arm/boards/haba-knx/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/haba-knx/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/haba-knx/env/bin/init_board b/arch/arm/boards/haba-knx/env/bin/init_board
new file mode 100644
index 0000000..0a6baf7
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/bin/init_board
@@ -0,0 +1,49 @@
+#!/bin/sh
+
+button_name="dfu_bp"
+button_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo "${button_name} pressed detected wait ${button_wait}s"
+timeout -s -a ${button_wait}
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	echo "${button_name} released, normal boot"
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/haba-knx/env/config b/arch/arm/boards/haba-knx/env/config
new file mode 100644
index 0000000..d1dca10
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/config
@@ -0,0 +1,40 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=none
+#ip=dhcp-barebox
+[ x$armlinux_architecture = x4310 ] && dhcp_vendor_id=barebox-haba-knx-lite
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nand
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=nand
+# can be either 'nfs', 'tftp', 'nor', 'nand' or empty
+oftree_loc=nand
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
new file mode 100644
index 0000000..f9d8f0f
--- /dev/null
+++ b/arch/arm/boards/haba-knx/init.c
@@ -0,0 +1,348 @@
+/*
+ * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD
+ * Copyright (C) 2014 Gregory Hermant <gregory.hermant@calao-systems.com>
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
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <mach/hardware.h>
+#include <nand.h>
+#include <linux/sizes.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <gpio.h>
+#include <led.h>
+#include <mach/io.h>
+#include <mach/iomux.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <spi/spi.h>
+#include <i2c/i2c.h>
+#include <libfile.h>
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.ecc_mode	= NAND_ECC_SOFT,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config haba_knx_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+};
+
+static void haba_knx_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &haba_knx_nand_smc_config);
+	at91_add_device_nand(&nand_pdata);
+}
+#else
+static void haba_knx_add_device_nand(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+static struct macb_platform_data macb_pdata = {
+	.phy_interface	= PHY_INTERFACE_MODE_RMII,
+	.phy_addr	= -1,
+};
+
+static void haba_knx_phy_reset(void)
+{
+	unsigned long rstc;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
+
+	at91_set_gpio_input(AT91_PIN_PA14, 0);
+	at91_set_gpio_input(AT91_PIN_PA15, 0);
+	at91_set_gpio_input(AT91_PIN_PA17, 0);
+	at91_set_gpio_input(AT91_PIN_PA18, 0);
+
+	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
+
+	/* Need to reset PHY -> 500ms reset */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
+				     AT91_RSTC_URSTEN);
+
+	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
+
+	/* Wait for end hardware reset */
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
+		;
+
+	/* Restore NRST value */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (rstc) |
+				     AT91_RSTC_URSTEN);
+}
+
+#define MACB_SA1B	0x0098
+#define MACB_SA1T	0x009c
+
+static int haba_ip_get_macb_ethaddr(u8 *addr)
+{
+	u32 top, bottom;
+	void __iomem *base = IOMEM(AT91SAM9260_BASE_EMAC);
+
+	bottom = readl(base + MACB_SA1B);
+	top = readl(base + MACB_SA1T);
+	addr[0] = bottom & 0xff;
+	addr[1] = (bottom >> 8) & 0xff;
+	addr[2] = (bottom >> 16) & 0xff;
+	addr[3] = (bottom >> 24) & 0xff;
+	addr[4] = top & 0xff;
+	addr[5] = (top >> 8) & 0xff;
+
+	/* valid and not private */
+	if (is_valid_ether_addr(addr) && !(addr[0] & 0x02))
+		return 0;
+
+	return -EINVAL;
+}
+
+#define EEPROM_OFFSET 250
+#define EEPROM_SIZE 256
+
+static int haba_set_ethaddr(void)
+{
+	char addr[6];
+	char eep_data[256];
+	int i, fd, ret;
+
+	fd = open("/dev/eeprom0", O_RDONLY);
+	if (fd < 0) {
+		ret = fd;
+		goto err;
+	}
+
+	ret = read_full(fd, eep_data, EEPROM_SIZE);
+	if (ret < 0)
+		goto err_open;
+
+	for (i = 0; i < 6; i++)
+		addr[i] = eep_data[EEPROM_OFFSET+i];
+
+	eth_register_ethaddr(0, addr);
+
+	ret = 0;
+
+err_open:
+	close(fd);
+err:
+	if (ret)
+		pr_err("can't read eeprom /dev/eeprom0 (%s)\n", strerror(ret));
+
+	return ret;
+}
+
+static void haba_knx_add_device_eth(void)
+{
+	u8 enetaddr[6];
+
+	if (!haba_ip_get_macb_ethaddr(enetaddr))
+		eth_register_ethaddr(0, enetaddr);
+	else
+		haba_set_ethaddr();
+
+	haba_knx_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+}
+#else
+static void haba_knx_add_device_eth(void) {}
+#endif
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PB2,
+	.pullup_pin	= 0,		/* pull-up driven by UDC */
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("24c02", 0x50)
+	}
+};
+
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p16",
+		.max_speed_hz	= 30 * 1000 * 1000,
+		.bus_num	= 0,
+		.chip_select	= 0,
+	},
+	{
+		.name		= "spi_mci",
+		.max_speed_hz	= 25 * 1000 * 1000,
+		.bus_num	= 0,
+		.chip_select	= 1,
+	}
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PA3, AT91_PIN_PA27 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void haba_knx_add_device_spi(void)
+{
+	if (machine_is_haba_knx_lite()) {
+		spi_register_board_info(ek_spi_devices,
+					ARRAY_SIZE(ek_spi_devices));
+		at91_add_device_spi(0, &spi_pdata);
+	}
+}
+
+static struct at91_usbh_data haba_knx_usbh_data = {
+	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
+};
+
+static void haba_knx_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&haba_knx_usbh_data);
+}
+
+struct gpio_led led = {
+	.gpio = AT91_PIN_PA28,
+	.led = {
+		.name = "user_led",
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	if (!machine_is_haba_knx_lite())
+		return;
+	at91_set_gpio_output(led.gpio, led.active_low);
+	led_gpio_register(&led);
+}
+
+static int haba_knx_mem_init(void)
+{
+	at91_add_device_sdram(0);
+	return 0;
+}
+mem_initcall(haba_knx_mem_init);
+
+static void __init ek_add_device_button(void)
+{
+	at91_set_GPIO_periph(AT91_PIN_PC3, 1);	/* user btn, pull up enabled */
+	at91_set_deglitch(AT91_PIN_PC3, 1);
+	export_env_ull("dfu_button", AT91_PIN_PC3);
+}
+
+static const struct devfs_partition haba_knx_nand0_partitions[] = {
+	{
+		.offset = 0x00000,
+		.size = SZ_128K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "at91bootstrap_raw",
+		.bbname = "at91bootstrap",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "self_raw",
+		.bbname = "self0",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_128K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw",
+		.bbname = "env0",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND,
+		.size = SZ_128K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw1",
+		.bbname = "env1",
+	}, {
+		/* sentinel */
+	}
+};
+
+static int haba_knx_devices_init(void)
+{
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	haba_knx_add_device_nand();
+	haba_knx_add_device_eth();
+	haba_knx_add_device_spi();
+	haba_knx_add_device_usb();
+	at91_add_device_udc(&ek_udc_data);
+	ek_add_led();
+	ek_add_device_button();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_HABA_KNX_LITE);
+
+	devfs_create_partitions("nand0", haba_knx_nand0_partitions);
+
+	return 0;
+}
+device_initcall(haba_knx_devices_init);
+
+static int haba_knx_console_init(void)
+{
+	barebox_set_model("CALAO HABA-KNX-LITE");
+	barebox_set_hostname("haba-knx-lite");
+
+	at91_register_uart(0, 0);
+	at91_set_A_periph(AT91_PIN_PB14, 1);    /* Enable pull-up on DRXD */
+
+	at91_set_gpio_input(AT91_PIN_PB0, 1);	/* Enable pull-up on usd CD */
+	return 0;
+}
+console_initcall(haba_knx_console_init);
+
+static int haba_knx_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(haba_knx_main_clock);
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
new file mode 100644
index 0000000..62d66bc
--- /dev/null
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -0,0 +1,89 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_HABA_KNX_LITE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x27f00000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="HABA-KNX-LITE:"
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/haba-knx/env"
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
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_MTD_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+# CONFIG_MCI_INFO is not set
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_SPI=y
+CONFIG_MMC_SPI_CRC_ON=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT24=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 9ee4f30..b85e6fa 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -352,6 +352,11 @@ config MACH_QIL_A9G20
 	  Select this if you are using a Calao Systems QIL-A9G20 Board.
 	  <http://www.calao-systems.com>
 
+config MACH_HABA_KNX_LITE
+	bool "CALAO HABA-KNX-LITE"
+	help
+	  Select this if you are using a Calao Systems HABA-KNX-LITE.
+	  <http://www.calao-systems.com>
 endchoice
 
 endif
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
