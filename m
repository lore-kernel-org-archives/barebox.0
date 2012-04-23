Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDay-0006iK-Li
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:22:08 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A1C95FFA6DC
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:23:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 09:02:16 +0200
Message-Id: <1335164539-2188-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120423065650.GM20601@game.jcrosoft.org>
References: <20120423065650.GM20601@game.jcrosoft.org>
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
Subject: [PATCH 07/10] ARM: Add support for Linksys NSLU2 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                          |    1 +
 arch/arm/boards/nslu2/Makefile             |    1 +
 arch/arm/boards/nslu2/config.h             |    6 +
 arch/arm/boards/nslu2/env/config           |   36 ++++++
 arch/arm/boards/nslu2/init.c               |  171 ++++++++++++++++++++++++++++
 arch/arm/configs/nslu2_defconfig           |   65 +++++++++++
 arch/arm/cpu/Kconfig                       |    6 +-
 arch/arm/mach-ixp4xx/Kconfig               |   12 ++
 arch/arm/mach-ixp4xx/board_lowlevel_init.c |    4 +-
 9 files changed, 300 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/nslu2/Makefile
 create mode 100644 arch/arm/boards/nslu2/config.h
 create mode 100644 arch/arm/boards/nslu2/env/config
 create mode 100644 arch/arm/boards/nslu2/init.c
 create mode 100644 arch/arm/configs/nslu2_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index cc5223e..34abd19 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -97,6 +97,7 @@ board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
+board-$(CONFIG_MACH_NSLU2)			:= nslu2
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
diff --git a/arch/arm/boards/nslu2/Makefile b/arch/arm/boards/nslu2/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/nslu2/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/nslu2/config.h b/arch/arm/boards/nslu2/config.h
new file mode 100644
index 0000000..279d0bc
--- /dev/null
+++ b/arch/arm/boards/nslu2/config.h
@@ -0,0 +1,6 @@
+/*
+ * SDRAM settings
+ */
+#define CONFIG_SDRAM_CONFIG	0x18
+#define CONFIG_SDRAM_MODE	0x1
+#define CONFIG_SDRAM_REFRESH	0x81a
diff --git a/arch/arm/boards/nslu2/env/config b/arch/arm/boards/nslu2/env/config
new file mode 100644
index 0000000..3a6eaa2
--- /dev/null
+++ b/arch/arm/boards/nslu2/env/config
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+dhcp_vendor_id=barebox-nslu2
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp' or 'nor'
+kernel_loc=nfs
+# can be either 'net', 'nor' or 'initrd'
+rootfs_loc=net
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
+nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/nslu2/init.c b/arch/arm/boards/nslu2/init.c
new file mode 100644
index 0000000..dc594fb
--- /dev/null
+++ b/arch/arm/boards/nslu2/init.c
@@ -0,0 +1,171 @@
+//#define DEBUG
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <linux/types.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+#include <mach/ixp4xx-regs.h>
+#include <mach/platform.h>
+#include <sizes.h>
+#include <led.h>
+#include <gpio.h>
+
+
+/* LEDs */
+#define NSLU2_LED_RED_GPIO	0
+#define NSLU2_LED_GRN_GPIO	1
+#define NSLU2_LED_DISK1_GPIO	3
+#define NSLU2_LED_DISK2_GPIO	2
+
+#ifdef CONFIG_LED_GPIO
+struct gpio_led leds[] = {
+	{
+		.gpio		= NSLU2_LED_GRN_GPIO,
+		.led = {
+			.name	= "nslu2:green:ready",
+		},
+	}, {
+		.gpio		= NSLU2_LED_RED_GPIO,
+		.led = {
+			.name	= "nslu2:red:status",
+		},
+	}, {
+		.gpio		= NSLU2_LED_DISK1_GPIO,
+		.active_low	= true,
+		.led = {
+			.name	= "nslu2:green:disk-1",
+		},
+	}, {
+		.gpio		= NSLU2_LED_DISK2_GPIO,
+		.active_low	= true,
+		.led = {
+			.name	= "nslu2:green:disk-2",
+		},
+	},
+};
+
+static void nslu2_leds_init(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++)
+		led_gpio_register(&leds[i]);
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+}
+#else
+static void nslu2_leds_init(void) {}
+#endif
+
+#ifdef CONFIG_DRIVER_NET_IXP4XX_ETH
+static struct eth_plat_info eth_pinfo = {
+	.npe		= 1,
+	.phy		= 1,
+	.rxq		= 20,
+	.txreadyq	= 29,
+};
+
+static void nslu2_eth_init(void)
+{
+	int i;
+	u32 f;
+
+	/*
+	 * Map in a portion of the flash and read the MAC address.
+	 * Since it is stored in BE in the flash itself, we need to
+	 * byteswap it if we're in LE mode.
+	 */
+	f = IXP4XX_EXP_BASE(0);
+	for (i = 0; i < 6; i++)
+#ifdef __ARMEB__
+		eth_pinfo.hwaddr[i] = readb(f + 0x3FFB0 + i);
+#else
+		eth_pinfo.hwaddr[i] = readb(f + 0x3FFB0 + (i^3));
+#endif
+
+	ixp4xx_add_eth(1, &eth_pinfo);
+}
+#else
+static void nslu2_eth_init(void) {}
+#endif
+
+static int nslu2_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x00000000, SZ_32M);
+
+	return 0;
+}
+mem_initcall(nslu2_mem_init);
+
+static inline u8 __init flash_readb(u32 addr)
+{
+	return __raw_readb(IXP4XX_EXP_BASE(0) + addr);
+}
+
+static int __init nslu2_devices_init(void)
+{
+	IXP4XX_EXP_CS0 = IXP4XX_EXP_WR_EN | IXP4XX_EXP_BYTE_RD16 |
+		IXP4XX_EXP_EN | IXP4XX_EXP_BITS(24) |
+		IXP4XX_EXP_T1(3) | IXP4XX_EXP_T2(3) | IXP4XX_EXP_T3(3) |
+		IXP4XX_EXP_T4(1) | IXP4XX_EXP_T5(2);
+
+	add_cfi_flash_device(0, IXP4XX_EXP_BASE(0), SZ_8M, 0);
+
+	devfs_add_partition("nor0", 0x0, SZ_256K,
+			    DEVFS_PARTITION_FIXED | DEVFS_PARTITION_READONLY, "barebox");
+	devfs_add_partition("nor0", SZ_256K, SZ_256K,
+			    DEVFS_PARTITION_FIXED, "env0");
+
+	nslu2_eth_init();
+	nslu2_leds_init();
+
+/*
+ * GPIO settings
+ */
+#define GPIO_BUZZER		4
+#define GPIO_POWERBUTTON	5
+#define GPIO_I2C_SCL		6
+#define GPIO_I2C_SDA		7
+#define GPIO_POWEROFF		8
+#define GPIO_PCI_INTC		9
+#define GPIO_PCI_INTB		10
+#define GPIO_PCI_INTA		11
+#define GPIO_RESSETBUTTOM	12
+#define GPIO_PCI_RESET		13
+#define GPIO_EXTBUS_CLK		14
+
+	/*
+	 * Setup GPIO's for PCI INTA & INTB & INTC
+	 */
+	gpio_direction_input(GPIO_PCI_INTA);
+	gpio_int_act_low_set(GPIO_PCI_INTA);
+	gpio_direction_input(GPIO_PCI_INTB);
+	gpio_int_act_low_set(GPIO_PCI_INTB);
+	gpio_direction_input(GPIO_PCI_INTC);
+	gpio_int_act_low_set(GPIO_PCI_INTC);
+
+	gpio_direction_input(GPIO_RESSETBUTTOM);
+	gpio_direction_input(GPIO_POWERBUTTON);
+
+	/*
+	 * Setup GPIO's for 33MHz clock output
+	 */
+	*IXP4XX_GPIO_GPCLKR = 0x01FF01FF;
+	gpio_direction_output(GPIO_PCI_RESET, IXP4XX_GPIO_HIGH);
+	gpio_line_config(GPIO_EXTBUS_CLK, IXP4XX_GPIO_OUT);
+
+	armlinux_set_bootparams((void *)(0x00000100));
+	armlinux_set_architecture(MACH_TYPE_NSLU2);
+
+	return 0;
+}
+device_initcall(nslu2_devices_init);
+
+static int nslu2_console_init(void)
+{
+	ixp4xx_add_uart1();
+	ixp4xx_add_uart2();
+	return 0;
+}
+console_initcall(nslu2_console_init);
diff --git a/arch/arm/configs/nslu2_defconfig b/arch/arm/configs/nslu2_defconfig
new file mode 100644
index 0000000..7a1a43b
--- /dev/null
+++ b/arch/arm/configs/nslu2_defconfig
@@ -0,0 +1,65 @@
+CONFIG_ARCH_IXP4XX=y
+CONFIG_BOOT_ENDIANNESS_SWITCH=y
+CONFIG_MACH_NSLU2=y
+CONFIG_IXP4XX_QMGR=y
+CONFIG_IXP4XX_NPE=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+# CONFIG_ARM_EXCEPTIONS is not set
+CONFIG_EXPERIMENTAL=y
+# CONFIG_MACH_DO_LOWLEVEL_INIT is not set
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="mgl# "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/nslu2/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_SERIAL_ARM_DCC=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_IXP4XX_ETH=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_CRAMFS=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f55e862..230f596 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -46,10 +46,14 @@ config CPU_V7
 	select CPU_32v7
 
 # Xscale PXA25x, PXA27x
-config CPU_XSCALE
+config CPU_PXA
 	bool
 	select CPU_32v4T
 
+config CPU_XSCALE
+	bool
+	select CPU_32v5
+
 # Figure out what processor architecture version we should be using.
 # This defines the compiler instruction set which depends on the machine type.
 config CPU_32v4T
diff --git a/arch/arm/mach-ixp4xx/Kconfig b/arch/arm/mach-ixp4xx/Kconfig
index f9388bf..480511c 100644
--- a/arch/arm/mach-ixp4xx/Kconfig
+++ b/arch/arm/mach-ixp4xx/Kconfig
@@ -1,13 +1,25 @@
 if ARCH_IXP4XX
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x00f80000
+
 config IXP4XX_GENERIC_LOWLEVEL_INIT
 	bool
 
 choice
 	prompt "IXP4xx Board Type"
 
+config MACH_NSLU2
+	bool "Linksys NSLU2"
+	select MACH_HAS_LOWLEVEL_INIT
+	select IXP4XX_GENERIC_LOWLEVEL_INIT
+
 endchoice
 
+config BOARDINFO
+	default "Linksys NSLU2" if MACH_NSLU2
+
 config IXP4XX_QMGR
 	tristate "IXP4xx Queue Manager support"
 	help
diff --git a/arch/arm/mach-ixp4xx/board_lowlevel_init.c b/arch/arm/mach-ixp4xx/board_lowlevel_init.c
index 061246d..e5a43da 100644
--- a/arch/arm/mach-ixp4xx/board_lowlevel_init.c
+++ b/arch/arm/mach-ixp4xx/board_lowlevel_init.c
@@ -11,10 +11,12 @@
 #include <asm/system.h>
 #include <mach/ixp4xx-regs.h>
 
+#define nop() asm volatile ("nop;\n\t"::)
+
 static void inline delay(int x)
 {
 	while (x-- > 0)
-		barrier();
+		nop();
 }
 
 void __naked __bare_init board_init_lowlevel(void)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
