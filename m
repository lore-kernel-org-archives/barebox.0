Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f52.google.com ([74.125.82.52])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpnd-0006q1-6v
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:37:06 +0000
Received: by mail-wg0-f52.google.com with SMTP id 12so4455675wgh.7
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:37:03 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 11 Mar 2013 00:36:06 +0100
Message-Id: <1362958567-6110-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/4] OMAP4: add command to select next boot device priority
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

On OMAP4 SoC there is a SAR memory region (Save & Rescue) where the ROM
code reads the device to boot from.
This patch adds a way to set this.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
 arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
 commands/Kconfig                                |  5 ++
 commands/Makefile                               |  1 +
 commands/boot_order.c                           | 83 +++++++++++++++++++++++++
 5 files changed, 129 insertions(+)
 create mode 100644 commands/boot_order.c

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 9e82435..7e67abc 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -161,6 +161,25 @@
 #define OMAP44XX_PRM_RSTCTRL_RESET	0x01
 
 /*
+ * SAR (Save & Rescue) memory region
+ */
+#define OMAP44XX_SAR_RAM_BASE      0x4a326000
+#define OMAP44XX_SAR_CH_ADDRESS	   (OMAP44XX_SAR_RAM_BASE + 0xA00)
+#define OMAP44XX_SAR_CH_START	   (OMAP44XX_SAR_RAM_BASE + 0xA0C)
+#define OMAP44XX_SAR_BOOT_VOID     0x00
+#define OMAP44XX_SAR_BOOT_XIP      0x01
+#define OMAP44XX_SAR_BOOT_XIPWAIT  0x02
+#define OMAP44XX_SAR_BOOT_NAND     0x03
+#define OMAP44XX_SAR_BOOT_ONENAND  0x04
+#define OMAP44XX_SAR_BOOT_MMC1     0x05
+#define OMAP44XX_SAR_BOOT_MMC2_1   0x06
+#define OMAP44XX_SAR_BOOT_MMC2_2   0x07
+#define OMAP44XX_SAR_BOOT_UART     0x43
+#define OMAP44XX_SAR_BOOT_USB_1    0x45
+#define OMAP44XX_SAR_BOOT_USB_ULPI 0x46
+#define OMAP44XX_SAR_BOOT_USB_2    0x47
+
+/*
  * Non-secure SRAM Addresses
  * Non-secure RAM starts at 0x40300000 for GP devices. But we keep SRAM_BASE
  * at 0x40304000(EMU base) so that our code works for both EMU and GP
@@ -212,6 +231,7 @@ void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
 noinline int omap4_scale_vcores(unsigned vsel0_pin);
+void omap4_set_warmboot_order(u32 *device_list);
 
 #endif
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 2a09eb6..7f881f8 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -41,6 +41,26 @@ void __noreturn reset_cpu(unsigned long addr)
 	while (1);
 }
 
+void omap4_set_warmboot_order(u32 *device_list)
+{
+	const u32 CH[] = {
+		0xCF00AA01,
+		0x0000000C,
+		(device_list[0] << 16) | 0x0000,
+		(device_list[2] << 16) | device_list[1],
+		0x0000 | device_list[3],
+		0x00000000,
+		0x00000000,
+		0x00000000,
+		0x00000000
+	};
+	int i;
+
+	for (i = 0; i < sizeof(CH)/sizeof(CH[0]); i++)
+		writel(CH[i], OMAP44XX_SAR_CH_START + i*sizeof(CH[0]));
+	writel(OMAP44XX_SAR_CH_START, OMAP44XX_SAR_CH_ADDRESS);
+}
+
 #define WATCHDOG_WSPR	0x48
 #define WATCHDOG_WWPS	0x34
 
diff --git a/commands/Kconfig b/commands/Kconfig
index c1454c7..b4feb27 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -474,6 +474,11 @@ config CMD_POWEROFF
 	depends on HAS_POWEROFF
 	prompt "poweroff"
 
+config CMD_BOOT_ORDER
+	tristate
+	depends on ARCH_OMAP4
+	prompt "boot_order"
+
 config CMD_GO
 	tristate
 	prompt "go"
diff --git a/commands/Makefile b/commands/Makefile
index 0ae6b95..428da57 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
 obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
 obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
+obj-$(CONFIG_CMD_BOOT_ORDER)	+= boot_order.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_NET)		+= net.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
diff --git a/commands/boot_order.c b/commands/boot_order.c
new file mode 100644
index 0000000..eb8f7b3
--- /dev/null
+++ b/commands/boot_order.c
@@ -0,0 +1,83 @@
+/*
+ * boot_order.c - configure omap warm boot
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
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <getopt.h>
+#include <mach/omap4-silicon.h>
+
+static int cmd_boot_order(int argc, char *argv[])
+{
+	u32 device_list[] = {
+		OMAP44XX_SAR_BOOT_VOID,
+		OMAP44XX_SAR_BOOT_VOID,
+		OMAP44XX_SAR_BOOT_VOID,
+		OMAP44XX_SAR_BOOT_VOID,
+	};
+	int i, j = 1, do_reset = 0;
+
+	if (argc > 1 && strcmp(argv[1], "-r") == 0) {
+		do_reset = 1;
+		j = 2;
+	}
+	for (i = 0; i < 4 && j < argc; i++, j++) {
+		if      (strcmp(argv[j], "xip") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_XIP;
+		else if (strcmp(argv[j], "xipwait") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_XIPWAIT;
+		else if (strcmp(argv[j], "nand") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_NAND;
+		else if (strcmp(argv[j], "onenand") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_ONENAND;
+		else if (strcmp(argv[j], "mmc1") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_MMC1;
+		else if (strcmp(argv[j], "mmc2_1") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_MMC2_1;
+		else if (strcmp(argv[j], "mmc2_2") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_MMC2_2;
+		else if (strcmp(argv[j], "uart") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_UART;
+		else if (strcmp(argv[j], "usb_1") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_USB_1;
+		else if (strcmp(argv[j], "usb_ulpi") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_USB_ULPI;
+		else if (strcmp(argv[j], "usb_2") == 0)
+			device_list[i] = OMAP44XX_SAR_BOOT_USB_2;
+	}
+	if (device_list[0] == OMAP44XX_SAR_BOOT_VOID) {
+		printf("First boot device can't be void\n");
+		return COMMAND_ERROR_USAGE;
+	}
+	omap4_set_warmboot_order(device_list);
+	if (do_reset) {
+		shutdown_barebox();
+		reset_cpu(0);
+	}
+	return 0;
+}
+
+static const __maybe_unused char cmd_boot_order_help[] =
+"Usage: boot_order [-r] <device 1> [<device n>]\n"
+"Set warm boot order up to four devices\n"
+"and reset cpu if -r is specified.\n"
+"Each device can be one of:\n"
+"void xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2\n";
+
+BAREBOX_CMD_START(boot_order)
+	.cmd		= cmd_boot_order,
+	.usage		= "boot_order <device 1> [<device n>]",
+	BAREBOX_CMD_HELP(cmd_boot_order_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
