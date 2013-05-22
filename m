Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3oX-0001PT-BY
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:50:29 +0000
Received: from mailout-de.gmx.net ([10.1.76.35]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0Lpzc9-1U1Jc50AMR-00fjQX for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:50:02 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:49:47 +0200
Message-Id: <1369208989-14369-2-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
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
Subject: [RFC, PATCH v2 1/3] MIPS: add Atheros ar531x family support
To: barebox@lists.infradead.org

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                                  |  10 +
 arch/mips/Makefile                                 |   2 +
 arch/mips/mach-ar231x/Kconfig                      |   7 +
 arch/mips/mach-ar231x/Makefile                     |   3 +
 arch/mips/mach-ar231x/ar231x.c                     | 199 +++++++++++++++
 arch/mips/mach-ar231x/ar231x_reset.c               |  64 +++++
 arch/mips/mach-ar231x/board.c                      | 184 ++++++++++++++
 arch/mips/mach-ar231x/include/mach/ar2312_regs.h   | 269 +++++++++++++++++++++
 .../mach-ar231x/include/mach/ar231x_platform.h     |  89 +++++++
 arch/mips/mach-ar231x/include/mach/debug_ll.h      |  35 +++
 10 files changed, 862 insertions(+)
 create mode 100644 arch/mips/mach-ar231x/Kconfig
 create mode 100644 arch/mips/mach-ar231x/Makefile
 create mode 100644 arch/mips/mach-ar231x/ar231x.c
 create mode 100644 arch/mips/mach-ar231x/ar231x_reset.c
 create mode 100644 arch/mips/mach-ar231x/board.c
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar2312_regs.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar231x_platform.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d58b804..8d2a2ce 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -45,6 +45,15 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
 
+config MACH_MIPS_AR231X
+	bool "Atheros ar231x-based boards"
+	select CSRC_R4K_LIB
+	select DRIVER_SERIAL_NS16550
+	select SYS_HAS_CPU_MIPS32_R1
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_BIG_ENDIAN
+	select HAS_DEBUG_LL
+
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
 	select CSRC_R4K_LIB
@@ -64,6 +73,7 @@ config MACH_MIPS_XBURST
 endchoice
 
 source arch/mips/mach-malta/Kconfig
+source arch/mips/mach-ar231x/Kconfig
 source arch/mips/mach-bcm47xx/Kconfig
 source arch/mips/mach-xburst/Kconfig
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index c038933..135259f 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -72,6 +72,8 @@ LDFLAGS_barebox += -nostdlib
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
+machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
+
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
new file mode 100644
index 0000000..7694fe2
--- /dev/null
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -0,0 +1,7 @@
+if MACH_MIPS_AR231X
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xa0800000
+
+endif
diff --git a/arch/mips/mach-ar231x/Makefile b/arch/mips/mach-ar231x/Makefile
new file mode 100644
index 0000000..eba8e81
--- /dev/null
+++ b/arch/mips/mach-ar231x/Makefile
@@ -0,0 +1,3 @@
+obj-y += ar231x.o
+obj-y += board.o
+obj-y += ar231x_reset.o
diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/ar231x.c
new file mode 100644
index 0000000..d0add52
--- /dev/null
+++ b/arch/mips/mach-ar231x/ar231x.c
@@ -0,0 +1,199 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
+ * Copyright (C) 2006 FON Technology, SL.
+ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ * Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ */
+
+/*
+ * Platform devices for Atheros SoCs
+ */
+
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <ns16550.h>
+#include <mach/ar231x_platform.h>
+#include <mach/debug_ll.h>
+
+struct ar231x_board_data ar231x_board;
+
+/*
+ * This table is indexed by bits 5..4 of the CLOCKCTL1 register
+ * to determine the predevisor value.
+ */
+static int CLOCKCTL1_PREDIVIDE_TABLE[4] = { 1, 2, 4, 5 };
+
+static unsigned int
+ar2312_cpu_frequency(void)
+{
+	unsigned int predivide_mask, predivide_shift;
+	unsigned int multiplier_mask, multiplier_shift;
+	unsigned int clockCtl1, preDivideSelect, preDivisor, multiplier;
+	unsigned int doubler_mask;
+	u32 devid;
+
+	devid = __raw_readl((char *)KSEG1ADDR(AR2312_REV));
+	devid &= AR2312_REV_MAJ;
+	devid >>= AR2312_REV_MAJ_S;
+	if (devid == AR2312_REV_MAJ_AR2313) {
+		predivide_mask = AR2313_CLOCKCTL1_PREDIVIDE_MASK;
+		predivide_shift = AR2313_CLOCKCTL1_PREDIVIDE_SHIFT;
+		multiplier_mask = AR2313_CLOCKCTL1_MULTIPLIER_MASK;
+		multiplier_shift = AR2313_CLOCKCTL1_MULTIPLIER_SHIFT;
+		doubler_mask = AR2313_CLOCKCTL1_DOUBLER_MASK;
+	} else { /* AR5312 and AR2312 */
+		predivide_mask = AR2312_CLOCKCTL1_PREDIVIDE_MASK;
+		predivide_shift = AR2312_CLOCKCTL1_PREDIVIDE_SHIFT;
+		multiplier_mask = AR2312_CLOCKCTL1_MULTIPLIER_MASK;
+		multiplier_shift = AR2312_CLOCKCTL1_MULTIPLIER_SHIFT;
+		doubler_mask = AR2312_CLOCKCTL1_DOUBLER_MASK;
+	}
+
+	/*
+	 * Clocking is derived from a fixed 40MHz input clock.
+	 *
+	 *  cpuFreq = InputClock * MULT (where MULT is PLL multiplier)
+	 *  sysFreq = cpuFreq / 4	   (used for APB clock, serial,
+	 *							   flash, Timer, Watchdog Timer)
+	 *
+	 *  cntFreq = cpuFreq / 2	   (use for CPU count/compare)
+	 *
+	 * So, for example, with a PLL multiplier of 5, we have
+	 *
+	 *  cpuFreq = 200MHz
+	 *  sysFreq = 50MHz
+	 *  cntFreq = 100MHz
+	 *
+	 * We compute the CPU frequency, based on PLL settings.
+	 */
+
+	clockCtl1 = __raw_readl((char *)KSEG1ADDR(AR2312_CLOCKCTL1));
+	preDivideSelect = (clockCtl1 & predivide_mask) >> predivide_shift;
+	preDivisor = CLOCKCTL1_PREDIVIDE_TABLE[preDivideSelect];
+	multiplier = (clockCtl1 & multiplier_mask) >> multiplier_shift;
+
+	if (clockCtl1 & doubler_mask) {
+		multiplier = multiplier << 1;
+	}
+	return (40000000 / preDivisor) * multiplier;
+}
+
+static unsigned int
+ar2312_sys_frequency(void)
+{
+	return ar2312_cpu_frequency() / 4;
+}
+
+/*
+ * shutdown watchdog
+ */
+static int watchdog_init(void)
+{
+	pr_debug("Disable watchdog.\n");
+	__raw_writeb(AR2312_WD_CTRL_IGNORE_EXPIRATION,
+					(char *)KSEG1ADDR(AR2312_WD_CTRL));
+	return 0;
+}
+
+static void flash_init(void)
+{
+	u32 ctl, old_ctl;
+
+	/* Configure flash bank 0.
+	 * Assume 8M maximum window size on this SoC.
+	 * Flash will be aliased if it's smaller
+	 */
+	old_ctl = __raw_readl((char *)KSEG1ADDR(AR2312_FLASHCTL0));
+	ctl = FLASHCTL_E | FLASHCTL_AC_8M | FLASHCTL_RBLE |
+			(0x01 << FLASHCTL_IDCY_S) |
+			(0x07 << FLASHCTL_WST1_S) |
+			(0x07 << FLASHCTL_WST2_S) | (old_ctl & FLASHCTL_MW);
+
+	__raw_writel(ctl, (char *)KSEG1ADDR(AR2312_FLASHCTL0));
+	/* Disable other flash banks */
+	old_ctl = __raw_readl((char *)KSEG1ADDR(AR2312_FLASHCTL1));
+	__raw_writel(old_ctl & ~(FLASHCTL_E | FLASHCTL_AC),
+			(char *)KSEG1ADDR(AR2312_FLASHCTL1));
+
+	old_ctl = __raw_readl((char *)KSEG1ADDR(AR2312_FLASHCTL2));
+	__raw_writel(old_ctl & ~(FLASHCTL_E | FLASHCTL_AC),
+			(char *)KSEG1ADDR(AR2312_FLASHCTL2));
+
+	/* We need to find atheros config. MAC address is there. */
+	ar231x_find_config((char *)KSEG1ADDR(AR2312_FLASH + AR2312_MAX_FLASH_SIZE));
+	/* FIXME: currently we can't configure cfi flash. cfi driver is not able to
+	 * auto detect bus and flash width.
+	 */
+	add_cfi_flash_device(DEVICE_ID_SINGLE, KSEG1ADDR(AR2312_FLASH), 4 * 1024 * 1024, 0);
+}
+
+static int ether_init(void)
+{
+	static struct resource res[2];
+	struct ar231x_eth_platform_data *eth = &ar231x_board.eth_pdata;
+
+	/* Base ETH registers  */
+	res[0].start = KSEG1ADDR(AR2312_ENET1);
+	res[0].end = res[0].start + 0x100000 - 1;
+	res[0].flags = IORESOURCE_MEM;
+	/* Base PHY registers */
+	res[1].start = KSEG1ADDR(AR2312_ENET0);
+	res[1].end = res[1].start + 0x100000 - 1;
+	res[1].flags = IORESOURCE_MEM;
+
+	/* MAC address located in atheros config on flash. */
+	eth->mac = ar231x_board.config->enet0_mac;
+
+	eth->reset_mac = AR2312_RESET_ENET1;
+	eth->reset_phy = AR2312_RESET_EPHY0;
+
+	eth->reset_bit = ar231x_reset_bit;
+
+	/* FIXME: base_reset should be replaced with reset driver */
+	eth->base_reset = KSEG1ADDR(AR2312_RESET);
+
+	add_generic_device_res("ar2312_eth", DEVICE_ID_DYNAMIC, res, 2, eth);
+	return 0;
+}
+
+static int platform_init(void)
+{
+	add_generic_device("ar2312_reset", DEVICE_ID_SINGLE, NULL,
+			KSEG1ADDR(AR2312_RESETTMR), 0x4,
+			IORESOURCE_MEM, NULL);
+	watchdog_init();
+	flash_init();
+	ether_init();
+	return 0;
+}
+late_initcall(platform_init);
+
+static struct NS16550_plat serial_plat = {
+	.shift = AR2312_UART_SHIFT,
+};
+
+static int ar2312_console_init(void)
+{
+	u32 reset;
+
+	/* reset UART0 */
+	reset = __raw_readl((char *)KSEG1ADDR(AR2312_RESET));
+	reset = ((reset & ~AR2312_RESET_APB) | AR2312_RESET_UART0);
+	__raw_writel(reset, (char *)KSEG1ADDR(AR2312_RESET));
+
+	reset &= ~AR2312_RESET_UART0;
+	__raw_writel(reset, (char *)KSEG1ADDR(AR2312_RESET));
+
+	/* Register the serial port */
+	serial_plat.clock = ar2312_sys_frequency();
+	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(AR2312_UART0),
+		8 << AR2312_UART_SHIFT, IORESOURCE_MEM_8BIT, &serial_plat);
+	return 0;
+}
+console_initcall(ar2312_console_init);
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
new file mode 100644
index 0000000..6a9b070
--- /dev/null
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -0,0 +1,64 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#include <mach/ar2312_regs.h>
+#include <mach/ar231x_platform.h>
+
+static void __iomem *reset_base;
+
+void __noreturn reset_cpu(ulong addr)
+{
+       printf("reseting cpu\n");
+       __raw_writel(0x10000,
+                       (char *)KSEG1ADDR(AR2312_WD_TIMER));
+       __raw_writel(AR2312_WD_CTRL_RESET,
+                       (char *)KSEG1ADDR(AR2312_WD_CTRL));
+       unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
+
+static u32 ar231x_reset_readl(void)
+{
+	return __raw_readl(reset_base);
+}
+
+static void ar231x_reset_writel(u32 val)
+{
+	__raw_writel(val, reset_base);
+}
+
+void ar231x_reset_bit(u32 val, enum reset_state state)
+{
+	u32 tmp;
+
+	tmp = ar231x_reset_readl();
+
+	if (state == REMOVE)
+		ar231x_reset_writel(tmp & ~val);
+	else
+		ar231x_reset_writel(tmp | val);
+}
+EXPORT_SYMBOL(ar231x_reset_bit);
+
+static int ar231x_reset_probe(struct device_d *dev)
+{
+	reset_base = dev_request_mem_region(dev, 0);
+	if (!reset_base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static struct driver_d ar231x_reset_driver = {
+	.probe	= ar231x_reset_probe,
+	.name	= "ar231x_reset",
+};
+
+static int ar231x_reset_init(void)
+{
+	return platform_driver_register(&ar231x_reset_driver);
+}
+coredevice_initcall(ar231x_reset_init);
diff --git a/arch/mips/mach-ar231x/board.c b/arch/mips/mach-ar231x/board.c
new file mode 100644
index 0000000..69ee882
--- /dev/null
+++ b/arch/mips/mach-ar231x/board.c
@@ -0,0 +1,184 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
+ * Copyright (C) 2006 FON Technology, SL.
+ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ * Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/ar2312_regs.h>
+#include <mach/ar231x_platform.h>
+// this is needed only by eclipse
+#include <linux/stddef.h>
+#include <net.h>
+
+#define HDR_SIZE 6
+
+#define TAB_1 "\t"
+#define TAB_2 "\t\t"
+
+extern struct ar231x_board_data ar231x_board;
+
+static void
+ar231x_print_mac(unsigned char *mac)
+{
+	int i;
+	for (i = 0; i < 5; i++) {
+		printf("%02x:", mac[i]);
+	}
+	printf("%02x\n", mac[5]);
+}
+
+#ifdef DEBUG_BOARD
+static void
+ar231x_print_board_config(struct ar231x_board_config *config)
+{
+	printf("board config:\n");
+	printf(TAB_1 "chsum:" 		TAB_2 "%04x\n", config->cksum);
+	printf(TAB_1 "rev:" 		TAB_2 "%04x\n", config->rev);
+	printf(TAB_1 "name:" 		TAB_2 "%s\n", config->boardName);
+	printf(TAB_1 "maj:" 		TAB_2 "%04x\n", config->major);
+	printf(TAB_1 "min:" 		TAB_2 "%04x\n", config->minor);
+	printf(TAB_1 "board flags:" TAB_1 "%08x\n", config->flags);
+
+	if (config->flags & BD_ENET0)
+		printf(TAB_2 "ENET0 is stuffed\n");
+	if (config->flags & BD_ENET1)
+		printf(TAB_2 "ENET1 is stuffed\n");
+	if (config->flags & BD_UART1)
+		printf(TAB_2 "UART1 is stuffed\n");
+	if (config->flags & BD_UART0)
+		printf(TAB_2 "UART0 is stuffed (dma)\n");
+	if (config->flags & BD_RSTFACTORY)
+		printf(TAB_2 "Reset factory defaults stuffed\n");
+	if (config->flags & BD_SYSLED)
+		printf(TAB_2 "System LED stuffed\n");
+	if (config->flags & BD_EXTUARTCLK)
+		printf(TAB_2 "External UART clock\n");
+	if (config->flags & BD_CPUFREQ)
+		printf(TAB_2 "cpu freq is valid in nvram\n");
+	if (config->flags & BD_SYSFREQ)
+		printf(TAB_2 "sys freq is set in nvram\n");
+	if (config->flags & BD_WLAN0)
+		printf(TAB_2 "Enable WLAN0\n");
+	if (config->flags & BD_MEMCAP)
+		printf(TAB_2 "CAP SDRAM @ memCap for testing\n");
+	if (config->flags & BD_DISWATCHDOG)
+		printf(TAB_2 "disable system watchdog\n");
+	if (config->flags & BD_WLAN1)
+		printf(TAB_2 "Enable WLAN1 (ar5212)\n");
+	if (config->flags & BD_ISCASPER)
+		printf(TAB_2 "FLAG for AR2312\n");
+	if (config->flags & BD_WLAN0_2G_EN)
+		printf(TAB_2 "FLAG for radio0_2G\n");
+	if (config->flags & BD_WLAN0_5G_EN)
+		printf(TAB_2 "FLAG for radio0_5G\n");
+	if (config->flags & BD_WLAN1_2G_EN)
+		printf(TAB_2 "FLAG for radio1_2G\n");
+	if (config->flags & BD_WLAN1_5G_EN)
+		printf(TAB_2 "FLAG for radio1_5G\n");
+
+	printf(TAB_1 "ResetConf GPIO pin:" TAB_1 "%04x\n", config->resetConfigGpio);
+	printf(TAB_1 "Sys LED GPIO pin:" TAB_1 "%04x\n", config->sysLedGpio);
+	printf(TAB_1 "CPU Freq:" TAB_2 "%u\n", config->cpuFreq);
+	printf(TAB_1 "Sys Freq:" TAB_2 "%u\n", config->sysFreq);
+	printf(TAB_1 "Calculated Freq:" TAB_1 "%u\n", config->cntFreq);
+
+	printf(TAB_1 "wlan0 mac:" TAB_2);
+	ar231x_print_mac(config->wlan0_mac);
+	printf(TAB_1 "wlan1 mac:" TAB_2);
+	ar231x_print_mac(config->wlan1_mac);
+	printf(TAB_1 "eth0 mac:" TAB_2);
+	ar231x_print_mac(config->enet0_mac);
+	printf(TAB_1 "eth1 mac:" TAB_2);
+	ar231x_print_mac(config->enet1_mac);
+
+	printf(TAB_1 "Pseudo PCIID:" TAB_2 "%04x\n", config->pciId);
+	printf(TAB_1 "Mem capacity:" TAB_2 "%u\n", config->memCap);
+}
+#endif
+
+static u16
+ar231x_cksum16(u8 *data, int size)
+{
+	int i;
+	u16 sum;
+
+	for (i = 0; i < size; i++)
+		sum += data[i];
+
+	return sum;
+}
+
+static void
+ar231x_check_mac(u8 *addr)
+{
+	if (!is_valid_ether_addr(addr)) {
+		pr_warn("config: no valid mac was found. "
+				"Generating random mac: ");
+		random_ether_addr(addr);
+		ar231x_print_mac(addr);
+	}
+}
+
+static u8 *
+ar231x_find_board_config(u8 *flash_limit)
+{
+	u8 *addr;
+	int found = 0;
+
+	for (addr = flash_limit - 0x1000;
+		addr >= flash_limit - 0x30000;
+		addr -= 0x1000) {
+
+		if (*((u32 *)addr) == AR231X_BD_MAGIC) {
+			found = 1;
+			pr_debug("config at %x\n", addr);
+			break;
+		}
+	}
+
+	if (!found)
+		addr = NULL;
+
+	return addr;
+}
+
+void
+ar231x_find_config(u8 *flash_limit)
+{
+	struct ar231x_board_config *config;
+	u8 *bcfg, bsize;
+	u8 brocken;
+
+	bcfg = ar231x_find_board_config(flash_limit);
+
+	bsize = sizeof(struct ar231x_board_config);
+	config = xzalloc(bsize);
+	ar231x_board.config = config;
+
+	if (bcfg) {
+		u16 cksum;
+		/* Copy the board and radio data to RAM, because accessing the mapped
+		 * memory of the flash directly after booting is not safe */
+		memcpy(config, bcfg, bsize);
+		cksum= 0xca + ar231x_cksum16((unsigned char *)config + HDR_SIZE,
+				sizeof(struct ar231x_board_config) - HDR_SIZE);
+		if (cksum != config->cksum) {
+			pr_err("config: checksum is invalid: %04x != %04x\n",
+					cksum, config->cksum);
+			brocken = 1;
+		}
+		/* ar231x_print_board_config(config); */
+	}
+
+	/* We do not care about wlans here */
+	ar231x_check_mac(config->enet0_mac);
+	ar231x_check_mac(config->enet1_mac);
+}
diff --git a/arch/mips/mach-ar231x/include/mach/ar2312_regs.h b/arch/mips/mach-ar231x/include/mach/ar2312_regs.h
new file mode 100644
index 0000000..bc2f22d
--- /dev/null
+++ b/arch/mips/mach-ar231x/include/mach/ar2312_regs.h
@@ -0,0 +1,269 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
+ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
+ * Copyright (C) 2006 Felix Fietkau <nbd@openwrt.org>
+ */
+
+#ifndef AR2312_H
+#define AR2312_H
+
+#include <asm/addrspace.h>
+
+/* Address Map */
+#define AR2312_SDRAM0   0x00000000
+#define AR2312_SDRAM1   0x08000000
+#define AR2312_WLAN0            0x18000000
+#define AR2312_WLAN1            0x18500000
+#define AR2312_ENET0            0x18100000
+#define AR2312_ENET1            0x18200000
+#define AR2312_SDRAMCTL         0x18300000
+#define AR2312_FLASHCTL         0x18400000
+#define AR2312_APBBASE		0x1c000000
+#define AR2312_FLASH            0x1e000000
+
+#define AR2312_CPU_CLOCK_RATE              180000000
+/* Used by romSizeMemory to set SDRAM Memory Refresh */
+#define AR2312_SDRAM_CLOCK_RATE            (AR2312_CPU_CLOCK_RATE / 2)
+/*
+ * SDRAM Memory Refresh (MEM_REF) value is computed as:
+ *    15.625us * SDRAM_CLOCK_RATE (in MHZ)
+ */
+#define DESIRED_MEMORY_REFRESH_NSECS 15625
+#define AR2312_SDRAM_MEMORY_REFRESH_VALUE \
+        ((DESIRED_MEMORY_REFRESH_NSECS * AR2312_SDRAM_CLOCK_RATE/1000000) / 1000)
+
+/*
+ * APB Address Map
+ */
+#define AR2312_UART0		(AR2312_APBBASE + 0x0003) /* high speed uart */
+#define AR2312_UART_SHIFT	2
+#define AR2312_UART1		(AR2312_APBBASE + 0x1000) /* ar2312 only */
+#define AR2312_GPIO		(AR2312_APBBASE + 0x2000)
+#define AR2312_RESETTMR		(AR2312_APBBASE + 0x3000)
+#define AR2312_APB2AHB		(AR2312_APBBASE + 0x4000)
+
+/*
+ * AR2312_NUM_ENET_MAC defines the number of ethernet MACs that
+ * should be considered available.  The AR2312 supports 2 enet MACS,
+ * even though many reference boards only actually use 1 of them
+ * (i.e. Only MAC 0 is actually connected to an enet PHY or PHY switch.
+ * The AR2312 supports 1 enet MAC.
+ */
+#define AR2312_NUM_ENET_MAC             2
+
+/*
+ * Need these defines to determine true number of ethernet MACs
+ */
+#define AR5212_AR2312_REV2      0x0052          /* AR2312 WMAC (AP31) */
+#define AR5212_AR2312_REV7      0x0057          /* AR2312 WMAC (AP30-040) */
+#define AR5212_AR2313_REV8      0x0058          /* AR2313 WMAC (AP43-030) */
+
+/*
+ * AR2312_NUM_WMAC defines the number of Wireless MACs that\
+ * should be considered available.
+ */
+#define AR2312_NUM_WMAC                 2
+
+/* Reset/Timer Block Address Map */
+#define AR2312_RESETTMR		(AR2312_APBBASE  + 0x3000)
+#define AR2312_TIMER		(AR2312_RESETTMR + 0x0000) /* countdown timer */
+#define AR2312_WD_CTRL          (AR2312_RESETTMR + 0x0008) /* watchdog cntrl */
+#define AR2312_WD_TIMER         (AR2312_RESETTMR + 0x000c) /* watchdog timer */
+#define AR2312_ISR		(AR2312_RESETTMR + 0x0010) /* Intr Status Reg */
+#define AR2312_IMR		(AR2312_RESETTMR + 0x0014) /* Intr Mask Reg */
+#define AR2312_RESET		(AR2312_RESETTMR + 0x0020)
+#define AR2312_CLOCKCTL0	(AR2312_RESETTMR + 0x0060)
+#define AR2312_CLOCKCTL1	(AR2312_RESETTMR + 0x0064)
+#define AR2312_CLOCKCTL2	(AR2312_RESETTMR + 0x0068)
+#define AR2312_SCRATCH		(AR2312_RESETTMR + 0x006c)
+#define AR2312_PROCADDR		(AR2312_RESETTMR + 0x0070)
+#define AR2312_PROC1		(AR2312_RESETTMR + 0x0074)
+#define AR2312_DMAADDR		(AR2312_RESETTMR + 0x0078)
+#define AR2312_DMA1		(AR2312_RESETTMR + 0x007c)
+#define AR2312_ENABLE	(AR2312_RESETTMR + 0x0080) /* interface enb */
+#define AR2312_REV		(AR2312_RESETTMR + 0x0090) /* revision */
+
+/* AR2312_WD_CTRL register bit field definitions */
+#define AR2312_WD_CTRL_IGNORE_EXPIRATION 0x0000
+#define AR2312_WD_CTRL_NMI               0x0001
+#define AR2312_WD_CTRL_RESET             0x0002
+
+/* AR2312_ISR register bit field definitions */
+#define AR2312_ISR_NONE		0x0000
+#define AR2312_ISR_TIMER	0x0001
+#define AR2312_ISR_AHBPROC	0x0002
+#define AR2312_ISR_AHBDMA	0x0004
+#define AR2312_ISR_GPIO		0x0008
+#define AR2312_ISR_UART0	0x0010
+#define AR2312_ISR_UART0DMA	0x0020
+#define AR2312_ISR_WD		0x0040
+#define AR2312_ISR_LOCAL	0x0080
+
+/* AR2312_RESET register bit field definitions */
+#define AR2312_RESET_SYSTEM     0x00000001  /* cold reset full system */
+#define AR2312_RESET_PROC       0x00000002  /* cold reset MIPS core */
+#define AR2312_RESET_WLAN0      0x00000004  /* cold reset WLAN MAC and BB */
+#define AR2312_RESET_EPHY0      0x00000008  /* cold reset ENET0 phy */
+#define AR2312_RESET_EPHY1      0x00000010  /* cold reset ENET1 phy */
+#define AR2312_RESET_ENET0      0x00000020  /* cold reset ENET0 mac */
+#define AR2312_RESET_ENET1      0x00000040  /* cold reset ENET1 mac */
+#define AR2312_RESET_UART0      0x00000100  /* cold reset UART0 (high speed) */
+#define AR2312_RESET_WLAN1      0x00000200  /* cold reset WLAN MAC/BB */
+#define AR2312_RESET_APB        0x00000400  /* cold reset APB (ar2312) */
+#define AR2312_RESET_WARM_PROC  0x00001000  /* warm reset MIPS core */
+#define AR2312_RESET_WARM_WLAN0_MAC 0x00002000  /* warm reset WLAN0 MAC */
+#define AR2312_RESET_WARM_WLAN0_BB  0x00004000  /* warm reset WLAN0 BaseBand */
+#define AR2312_RESET_NMI        0x00010000  /* send an NMI to the processor */
+#define AR2312_RESET_WARM_WLAN1_MAC 0x00020000  /* warm reset WLAN1 mac */
+#define AR2312_RESET_WARM_WLAN1_BB  0x00040000  /* warm reset WLAN1 baseband */
+#define AR2312_RESET_LOCAL_BUS  0x00080000  /* reset local bus */
+#define AR2312_RESET_WDOG       0x00100000  /* last reset was a watchdog */
+
+/* AR2312_CLOCKCTL1 register bit field definitions */
+#define AR2312_CLOCKCTL1_PREDIVIDE_MASK    0x00000030
+#define AR2312_CLOCKCTL1_PREDIVIDE_SHIFT            4
+#define AR2312_CLOCKCTL1_MULTIPLIER_MASK   0x00001f00
+#define AR2312_CLOCKCTL1_MULTIPLIER_SHIFT           8
+#define AR2312_CLOCKCTL1_DOUBLER_MASK      0x00010000
+
+/* Valid for AR2313 */
+#define AR2313_CLOCKCTL1_PREDIVIDE_MASK    0x00003000
+#define AR2313_CLOCKCTL1_PREDIVIDE_SHIFT           12
+#define AR2313_CLOCKCTL1_MULTIPLIER_MASK   0x001f0000
+#define AR2313_CLOCKCTL1_MULTIPLIER_SHIFT          16
+#define AR2313_CLOCKCTL1_DOUBLER_MASK      0x00000000
+
+/* AR2312_ENABLE register bit field definitions */
+#define AR2312_ENABLE_WLAN0              0x0001
+#define AR2312_ENABLE_ENET0              0x0002
+#define AR2312_ENABLE_ENET1              0x0004
+#define AR2312_ENABLE_UART_AND_WLAN1_PIO 0x0008   /* UART, and WLAN1 PIOs */
+#define AR2312_ENABLE_WLAN1_DMA          0x0010   /* WLAN1 DMAs */
+#define AR2312_ENABLE_WLAN1 \
+            (AR2312_ENABLE_UART_AND_WLAN1_PIO | AR2312_ENABLE_WLAN1_DMA)
+
+/* AR2312_REV register bit field definitions */
+#define AR2312_REV_WMAC_MAJ    0xf000
+#define AR2312_REV_WMAC_MAJ_S  12
+#define AR2312_REV_WMAC_MIN    0x0f00
+#define AR2312_REV_WMAC_MIN_S  8
+#define AR2312_REV_MAJ         0x00f0
+#define AR2312_REV_MAJ_S       4
+#define AR2312_REV_MIN         0x000f
+#define AR2312_REV_MIN_S       0
+#define AR2312_REV_CHIP        (AR2312_REV_MAJ|AR2312_REV_MIN)
+
+/* Major revision numbers, bits 7..4 of Revision ID register */
+#define AR2312_REV_MAJ_AR2312          0x4
+#define AR2312_REV_MAJ_AR2313          0x5
+
+/* Minor revision numbers, bits 3..0 of Revision ID register */
+#define AR2312_REV_MIN_DUAL     0x0     /* Dual WLAN version */
+#define AR2312_REV_MIN_SINGLE   0x1     /* Single WLAN version */
+
+/* AR2312_FLASHCTL register bit field definitions */
+#define FLASHCTL_IDCY   0x0000000f      /* Idle cycle turn around time */
+#define FLASHCTL_IDCY_S 0
+#define FLASHCTL_WST1   0x000003e0      /* Wait state 1 */
+#define FLASHCTL_WST1_S 5
+#define FLASHCTL_RBLE   0x00000400      /* Read byte lane enable */
+#define FLASHCTL_WST2   0x0000f800      /* Wait state 2 */
+#define FLASHCTL_WST2_S 11
+#define FLASHCTL_AC     0x00070000      /* Flash address check (added) */
+#define FLASHCTL_AC_S   16
+#define FLASHCTL_AC_128K 0x00000000
+#define FLASHCTL_AC_256K 0x00010000
+#define FLASHCTL_AC_512K 0x00020000
+#define FLASHCTL_AC_1M   0x00030000
+#define FLASHCTL_AC_2M   0x00040000
+#define FLASHCTL_AC_4M   0x00050000
+#define FLASHCTL_AC_8M   0x00060000
+#define FLASHCTL_AC_RES  0x00070000     /* 16MB is not supported */
+#define FLASHCTL_E      0x00080000      /* Flash bank enable (added) */
+#define FLASHCTL_BUSERR 0x01000000      /* Bus transfer error status flag */
+#define FLASHCTL_WPERR  0x02000000      /* Write protect error status flag */
+#define FLASHCTL_WP     0x04000000      /* Write protect */
+#define FLASHCTL_BM     0x08000000      /* Burst mode */
+#define FLASHCTL_MW     0x30000000      /* Memory width */
+#define FLASHCTL_MWx8   0x00000000      /* Memory width x8 */
+#define FLASHCTL_MWx16  0x10000000      /* Memory width x16 */
+#define FLASHCTL_MWx32  0x20000000      /* Memory width x32 (not supported) */
+#define FLASHCTL_ATNR   0x00000000      /* Access type == no retry */
+#define FLASHCTL_ATR    0x80000000      /* Access type == retry every */
+#define FLASHCTL_ATR4   0xc0000000      /* Access type == retry every 4 */
+
+#define AR2312_MAX_FLASH_SIZE 0x800000
+
+/* ARM Flash Controller -- 3 flash banks with either x8 or x16 devices.  */
+#define AR2312_FLASHCTL0        (AR2312_FLASHCTL + 0x00)
+#define AR2312_FLASHCTL1        (AR2312_FLASHCTL + 0x04)
+#define AR2312_FLASHCTL2        (AR2312_FLASHCTL + 0x08)
+
+/* ARM SDRAM Controller -- just enough to determine memory size */
+#define AR2312_MEM_CFG0 (AR2312_SDRAMCTL + 0x00)
+#define AR2312_MEM_CFG1 (AR2312_SDRAMCTL + 0x04)
+#define AR2312_MEM_REF  (AR2312_SDRAMCTL + 0x08)        /* 16 bit value */
+
+#define MEM_CFG1_AC0    0x00000700      /* bank 0: SDRAM addr check (added) */
+#define MEM_CFG1_AC0_S  8
+#define MEM_CFG1_AC1    0x00007000      /* bank 1: SDRAM addr check (added) */
+#define MEM_CFG1_AC1_S  12
+
+#define MEM_CFG0_F0     0x00000002      /* bank 0: 256Mb support */
+#define MEM_CFG0_T0     0x00000004      /* bank 0: chip width */
+#define MEM_CFG0_B0     0x00000008      /* bank 0: 2 vs 4 bank */
+#define MEM_CFG0_F1     0x00000020      /* bank 1: 256Mb support */
+#define MEM_CFG0_T1     0x00000040      /* bank 1: chip width */
+#define MEM_CFG0_B1     0x00000080      /* bank 1: 2 vs 4 bank */
+                                        /* bank 2 and 3 are not supported */
+#define MEM_CFG0_E      0x00020000      /* SDRAM clock control */
+#define MEM_CFG0_C      0x00040000      /* SDRAM clock enable */
+#define MEM_CFG0_X      0x00080000      /* bus width (0 == 32b) */
+#define MEM_CFG0_CAS    0x00300000      /* CAS latency (1-3) */
+#define MEM_CFG0_C1     0x00100000
+#define MEM_CFG0_C2     0x00200000
+#define MEM_CFG0_C3     0x00300000
+#define MEM_CFG0_R      0x00c00000      /* RAS to CAS latency (1-3) */
+#define MEM_CFG0_R1     0x00400000
+#define MEM_CFG0_R2     0x00800000
+#define MEM_CFG0_R3     0x00c00000
+#define MEM_CFG0_A      0x01000000      /* AHB auto pre-charge */
+
+#define MEM_CFG1_I      0x00000001      /* memory init control */
+#define MEM_CFG1_M      0x00000002      /* memory init control */
+#define MEM_CFG1_R      0x00000004      /* read buffer enable (unused) */
+#define MEM_CFG1_W      0x00000008      /* write buffer enable (unused) */
+#define MEM_CFG1_B      0x00000010      /* SDRAM engine busy */
+#define MEM_CFG1_AC0    0x00000700      /* bank 0: SDRAM addr check (added) */
+#define MEM_CFG1_AC_2   0       /* AC of 2MB */
+#define MEM_CFG1_AC_4   1       /* AC of 4MB */
+#define MEM_CFG1_AC_8   2       /* AC of 8MB */
+#define MEM_CFG1_AC_16  3       /* AC of 16MB */
+#define MEM_CFG1_AC_32  4       /* AC of 32MB */
+#define MEM_CFG1_AC_64  5       /* AC of 64MB */
+#define MEM_CFG1_AC_128 6       /* AC of 128MB */
+#define MEM_CFG1_AC0_S  8
+#define MEM_CFG1_E0     0x00000800      /* bank 0: enable */
+#define MEM_CFG1_AC1    0x00007000      /* bank 1: SDRAM addr check (added) */
+#define MEM_CFG1_AC1_S  12
+#define MEM_CFG1_E1     0x00008000      /* bank 1: enable */
+
+/* GPIO Address Map */
+#define AR2312_GPIO         (AR2312_APBBASE  + 0x2000)
+#define AR2312_GPIO_DO      (AR2312_GPIO + 0x00)        /* output register */
+#define AR2312_GPIO_DI      (AR2312_GPIO + 0x04)        /* intput register */
+#define AR2312_GPIO_CR      (AR2312_GPIO + 0x08)        /* control register */
+
+/* GPIO Control Register bit field definitions */
+#define AR2312_GPIO_CR_M(x)    (1 << (x))                      /* mask for i/o */
+#define AR2312_GPIO_CR_O(x)    (0 << (x))                      /* mask for output */
+#define AR2312_GPIO_CR_I(x)    (1 << (x))                      /* mask for input */
+#define AR2312_GPIO_CR_INT(x)  (1 << ((x)+8))                  /* mask for interrupt */
+#define AR2312_GPIO_CR_UART(x) (1 << ((x)+16))                 /* uart multiplex */
+#define AR2312_NUM_GPIO		8
+
+#endif
diff --git a/arch/mips/mach-ar231x/include/mach/ar231x_platform.h b/arch/mips/mach-ar231x/include/mach/ar231x_platform.h
new file mode 100644
index 0000000..9784879
--- /dev/null
+++ b/arch/mips/mach-ar231x/include/mach/ar231x_platform.h
@@ -0,0 +1,89 @@
+#ifndef __AR231X_PLATFORM_H
+#define __AR231X_PLATFORM_H
+
+/*
+ * This is board-specific data that is stored in a "fixed" location in flash.
+ * It is shared across operating systems, so it should not be changed lightly.
+ * The main reason we need it is in order to extract the ethernet MAC
+ * address(es).
+ */
+struct ar231x_board_config {
+    u32 magic;                       /* board data is valid */
+#define AR231X_BD_MAGIC 0x35333131   /* "5311", for all 531x platforms */
+    u16 cksum;                       /* checksum (starting with BD_REV 2) */
+    u16 rev;                         /* revision of this struct */
+#define BD_REV  4
+    char boardName[64];            /* Name of board */
+    u16 major;                       /* Board major number */
+    u16 minor;                       /* Board minor number */
+    u32 flags;                      /* Board configuration */
+#define BD_ENET0        0x00000001   /* ENET0 is stuffed */
+#define BD_ENET1        0x00000002   /* ENET1 is stuffed */
+#define BD_UART1        0x00000004   /* UART1 is stuffed */
+#define BD_UART0        0x00000008   /* UART0 is stuffed (dma) */
+#define BD_RSTFACTORY   0x00000010   /* Reset factory defaults stuffed */
+#define BD_SYSLED       0x00000020   /* System LED stuffed */
+#define BD_EXTUARTCLK   0x00000040   /* External UART clock */
+#define BD_CPUFREQ      0x00000080   /* cpu freq is valid in nvram */
+#define BD_SYSFREQ      0x00000100   /* sys freq is set in nvram */
+#define BD_WLAN0        0x00000200   /* Enable WLAN0 */
+#define BD_MEMCAP       0x00000400   /* CAP SDRAM @ memCap for testing */
+#define BD_DISWATCHDOG  0x00000800   /* disable system watchdog */
+#define BD_WLAN1        0x00001000   /* Enable WLAN1 (ar5212) */
+#define BD_ISCASPER     0x00002000   /* FLAG for AR2312 */
+#define BD_WLAN0_2G_EN  0x00004000   /* FLAG for radio0_2G */
+#define BD_WLAN0_5G_EN  0x00008000   /* FLAG for radio0_2G */
+#define BD_WLAN1_2G_EN  0x00020000   /* FLAG for radio0_2G */
+#define BD_WLAN1_5G_EN  0x00040000   /* FLAG for radio0_2G */
+    u16 resetConfigGpio;             /* Reset factory GPIO pin */
+    u16 sysLedGpio;                  /* System LED GPIO pin */
+
+    u32 cpuFreq;                     /* CPU core frequency in Hz */
+    u32 sysFreq;                     /* System frequency in Hz */
+    u32 cntFreq;                     /* Calculated C0_COUNT frequency */
+
+    u8  wlan0_mac[6];
+    u8  enet0_mac[6];
+    u8  enet1_mac[6];
+
+    u16 pciId;                       /* Pseudo PCIID for common code */
+    u16 memCap;                      /* cap bank1 in MB */
+
+    /* version 3 */
+    u8  wlan1_mac[6];                 /* (ar5212) */
+};
+
+#define BOARD_CONFIG_BUFSZ		0x1000
+
+/*
+ * Platform device information for the Ethernet MAC
+ */
+enum reset_state {
+	SET,
+	REMOVE,
+};
+
+struct ar231x_eth_platform_data {
+	u32 base_reset;
+	u32 reset_mac;
+	u32 reset_phy;
+
+	u8 *mac;
+
+	void (*reset_bit)(u32 val, enum reset_state state);
+};
+
+struct ar231x_board_data {
+	u16 devid;
+
+	/* board config data */
+	struct ar231x_board_config *config;
+
+	struct ar231x_eth_platform_data eth_pdata;
+};
+
+void ar231x_find_config(u8 *flash_limit);
+
+void ar231x_reset_bit(u32 val, enum reset_state state);
+
+#endif /* __AR231X_PLATFORM_H */
diff --git a/arch/mips/mach-ar231x/include/mach/debug_ll.h b/arch/mips/mach-ar231x/include/mach/debug_ll.h
new file mode 100644
index 0000000..92da40f
--- /dev/null
+++ b/arch/mips/mach-ar231x/include/mach/debug_ll.h
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __MACH_AR231X_DEBUG_LL_H__
+#define __MACH_AR231X_DEBUG_LL_H__
+
+#include <mach/ar2312_regs.h>
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR2312_UART0)
+#define DEBUG_LL_UART_SHIFT	AR2312_UART_SHIFT
+
+#define DEBUG_LL_UART_CLK	(45000000 / 16)
+#define DEBUG_LL_UART_BPS	CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR	(DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#include <debug_ll_ns16550.h>
+
+#endif  /* __MACH_AR231X_DEBUG_LL_H__ */
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
