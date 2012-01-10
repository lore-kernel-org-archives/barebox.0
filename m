Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkcOI-0001Vn-7L
 for barebox@lists.infradead.org; Tue, 10 Jan 2012 14:09:31 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2696110008F3
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2012 15:10:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Jan 2012 15:02:44 +0100
Message-Id: <1326204164-15184-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325930293-11161-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325930293-11161-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                            |    3 +
 arch/arm/boards/tny-a926x/Makefile           |    1 +
 arch/arm/boards/tny-a926x/config.h           |    6 +
 arch/arm/boards/tny-a926x/env/bin/init_board |   11 ++
 arch/arm/boards/tny-a926x/env/config         |   36 ++++
 arch/arm/boards/tny-a926x/init.c             |  245 ++++++++++++++++++++++++++
 arch/arm/configs/tny_a9260_defconfig         |   70 ++++++++
 arch/arm/configs/tny_a9263_defconfig         |   70 ++++++++
 arch/arm/configs/tny_a9g20_defconfig         |   70 ++++++++
 arch/arm/mach-at91/Kconfig                   |   21 +++
 10 files changed, 533 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/tny-a926x/Makefile
 create mode 100644 arch/arm/boards/tny-a926x/config.h
 create mode 100644 arch/arm/boards/tny-a926x/env/bin/init_board
 create mode 100644 arch/arm/boards/tny-a926x/env/config
 create mode 100644 arch/arm/boards/tny-a926x/init.c
 create mode 100644 arch/arm/configs/tny_a9260_defconfig
 create mode 100644 arch/arm/configs/tny_a9263_defconfig
 create mode 100644 arch/arm/configs/tny_a9g20_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9885634..6de6366 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -111,6 +111,9 @@ board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
+board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
+board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
 board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/tny-a926x/config.h b/arch/arm/boards/tny-a926x/config.h
new file mode 100644
index 0000000..d971810
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/tny-a926x/env/bin/init_board b/arch/arm/boards/tny-a926x/env/bin/init_board
new file mode 100644
index 0000000..0d40eb4
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/env/bin/init_board
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+autoboot_timeout=16
+echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+usbserial
diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
new file mode 100644
index 0000000..0ca38d5
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/env/config
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=none
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
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+#kernelimage=zImage
+kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=5
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
new file mode 100644
index 0000000..ad77f7b
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -0,0 +1,245 @@
+/*
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
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
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <spi/eeprom.h>
+
+static void tny_a9260_set_board_type(void)
+{
+	if (machine_is_tny_a9g20())
+		armlinux_set_architecture(MACH_TYPE_TNY_A9G20);
+	else if (machine_is_tny_a9263())
+		armlinux_set_architecture(MACH_TYPE_TNY_A9263);
+	else
+		armlinux_set_architecture(MACH_TYPE_TNY_A9260);
+}
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= 0,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config tny_a9260_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | \
+				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 2,
+};
+
+static struct sam9_smc_config tny_a9g20_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 2,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | \
+				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+};
+
+static void tny_a9260_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	if (machine_is_tny_a9g20())
+		sam9_smc_configure(3, &tny_a9g20_nand_smc_config);
+	else
+		sam9_smc_configure(3, &tny_a9260_nand_smc_config);
+
+	if (machine_is_tny_a9263()) {
+		nand_pdata.rdy_pin	= AT91_PIN_PA22;
+		nand_pdata.enable_pin	= AT91_PIN_PD15;
+	}
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+#ifdef CONFIG_DRIVER_NET_MACB
+static struct at91_ether_platform_data macb_pdata = {
+	.flags		= AT91SAM_ETHER_RMII,
+	.phy_addr	= 0,
+};
+
+static void tny_a9260_phy_reset(void)
+{
+	unsigned long rstc;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
+
+	at91_set_gpio_input(AT91_PIN_PA14, 0);
+	at91_set_gpio_input(AT91_PIN_PA15, 0);
+	at91_set_gpio_input(AT91_PIN_PA17, 0);
+	at91_set_gpio_input(AT91_PIN_PA25, 0);
+	at91_set_gpio_input(AT91_PIN_PA26, 0);
+	at91_set_gpio_input(AT91_PIN_PA28, 0);
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
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
+
+	/* Restore NRST value */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (rstc) |
+				     AT91_RSTC_URSTEN);
+}
+
+static void __init ek_add_device_macb(void)
+{
+	tny_a9260_phy_reset();
+	at91_add_device_eth(&macb_pdata);
+}
+#else
+static void __init ek_add_device_macb(void) {}
+#endif
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PB30,
+	.pullup_pin	= 0,		/* pull-up driven by UDC */
+};
+
+static struct spi_eeprom eeprom = {
+	.name = "at250x0",
+	.size = 8192,
+	.page_size = 32,
+	.flags = EE_ADDR2,	/* 16 bits address */
+};
+
+static struct spi_board_info tny_a9g20_spi_devices[] = {
+	{
+		.name = "at25x",
+		.max_speed_hz = 1 * 1000 * 1000,	/* max spi clock (SCK) speed in HZ */
+		.bus_num = 0,
+		.chip_select = 0,
+		.platform_data = &eeprom,
+	},
+};
+
+static int spi0_standard_cs[] = { AT91_PIN_PC11 };
+struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void __init ek_add_device_udc(void)
+{
+	if (machine_is_tny_a9260() || machine_is_tny_a9g20())
+		ek_udc_data.vbus_pin = AT91_PIN_PC5;
+
+	at91_add_device_udc(&ek_udc_data);
+}
+
+static int tny_a9260_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(tny_a9260_mem_init);
+
+static int tny_a9260_devices_init(void)
+{
+	tny_a9260_add_device_nand();
+	ek_add_device_macb();
+	ek_add_device_udc();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	tny_a9260_set_board_type();
+
+	if (machine_is_tny_a9260() || machine_is_tny_a9g20()) {
+		spi_register_board_info(tny_a9g20_spi_devices,
+			ARRAY_SIZE(tny_a9g20_spi_devices));
+		at91_add_device_spi(0, &spi_pdata);
+	}
+
+	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(tny_a9260_devices_init);
+
+static int tny_a9260_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(tny_a9260_console_init);
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
new file mode 100644
index 0000000..dbd6ffc
--- /dev/null
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -0,0 +1,70 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_TNY_A9260=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="TNY-9260:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_EEPROM_AT25=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
new file mode 100644
index 0000000..e65f4d3
--- /dev/null
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -0,0 +1,70 @@
+CONFIG_ARCH_AT91SAM9263=y
+CONFIG_MACH_TNY_A9263=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="TNY-9263:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_EEPROM_AT25=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
new file mode 100644
index 0000000..df82f65
--- /dev/null
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -0,0 +1,70 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_TNY_A9G20=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="TNY-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_EEPROM_AT25=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0df8e68..6152b66 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -21,6 +21,9 @@ config BOARDINFO
 	default "Ronetix PM9263" if MACH_PM9263
 	default "Ronetix PM9G45" if MACH_PM9G45
 	default "Aizo dSS11" if MACH_DSS11
+	default "Calao TNY-A9260" if MACH_TNY_A9260
+	default "Calao TNY-A9263" if MACH_TNY_A9263
+	default "Calao TNY-A9G20" if MACH_TNY_A9G20
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -124,6 +127,12 @@ config MACH_AT91SAM9260EK
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
+config MACH_TNY_A9260
+	bool "CALAO TNY-A9260"
+	help
+	  Select this if you are using a Calao Systems TNY-A9260.
+	  <http://www.calao-systems.com>
+
 config MACH_USB_A9260
 	bool "CALAO USB-A9260"
 	help
@@ -194,6 +203,12 @@ config MACH_AT91SAM9G20EK
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
 
+config MACH_TNY_A9G20
+	bool "CALAO TNY-A9G20"
+	help
+	  Select this if you are using a Calao Systems TNY-A9G20.
+	  <http://www.calao-systems.com>
+
 config MACH_USB_A9G20
 	bool "CALAO USB-A9G20"
 	help
@@ -236,6 +251,12 @@ config MACH_PM9263
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
+config MACH_TNY_A9263
+	bool "CALAO TNY-A9263"
+	help
+	  Select this if you are using a Calao Systems TNY-A9263.
+	  <http://www.calao-systems.com>
+
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
 	help
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
