Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQbDh-0008P7-HZ
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 10:28:51 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 12 Apr 2013 12:28:23 +0200
Message-Id: <1365762505-2540-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
References: <1365762505-2540-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v5 11/13] tegra: add generic debug UART support
To: barebox@lists.infradead.org

ODMdata tells us which UART to use for debugging purposes. This is
agreed upon in both the upstream Linux kernel and U-Boot, so do it the
same way in barebox.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v4:
- fix rebase error
- provide Kconfig option to ovveride ODMdata
v5:
- use IS_ENABLED macro
---
 arch/arm/boards/toshiba-ac100/Makefile      |  1 -
 arch/arm/boards/toshiba-ac100/serial.c      | 39 --------------------
 arch/arm/configs/toshiba_ac100_defconfig    |  1 +
 arch/arm/mach-tegra/Kconfig                 | 33 +++++++++++++++++
 arch/arm/mach-tegra/Makefile                |  1 +
 arch/arm/mach-tegra/include/mach/lowlevel.h | 34 ++++++++++++++++++
 arch/arm/mach-tegra/tegra20.c               | 56 +++++++++++++++++++++++++++++
 7 files changed, 125 insertions(+), 40 deletions(-)
 delete mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 create mode 100644 arch/arm/mach-tegra/tegra20.c

diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 9e14763..dcfc293 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,2 +1 @@
 obj-y += board.o
-obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/arm/boards/toshiba-ac100/serial.c b/arch/arm/boards/toshiba-ac100/serial.c
deleted file mode 100644
index 880270d..0000000
--- a/arch/arm/boards/toshiba-ac100/serial.c
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <types.h>
-#include <driver.h>
-#include <init.h>
-#include <ns16550.h>
-#include <asm/io.h>
-#include <asm/common.h>
-#include <mach/iomap.h>
-
-static struct NS16550_plat serial_plat = {
-	.clock = 0x75 * 115200 * 16 /* MODE_X_DIV */,
-	.shift = 2,
-};
-
-static int ac100_serial_console_init(void)
-{
-	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, TEGRA_UARTA_BASE, 8 << serial_plat.shift,
-			IORESOURCE_MEM_8BIT, &serial_plat);
-
-	return 0;
-}
-console_initcall(ac100_serial_console_init);
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
index 6f7011b..1903910 100644
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -1,5 +1,6 @@
 CONFIG_BUILTIN_DTB_NAME="tegra20-paz00"
 CONFIG_ARCH_TEGRA=y
+CONFIG_TEGRA_UART_A=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x01000000
 CONFIG_BROKEN=y
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 2f15b27..965e7ab 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -8,6 +8,39 @@ config ARCH_TEGRA_2x_SOC
 
 endchoice
 
+choice
+	prompt "Tegra debug UART"
+	help
+	  This is the first serial console that gets activated by barebox.
+	  Normally each board vendor should program a valid debug UART into
+	  the ODMdata section of the boot configuration table, so it's a
+	  reasonably good bet to use that.
+	  If you know your ODMdata is broken, or you don't wish to activate
+	  any serial console at all you can override the default here.
+
+config TEGRA_UART_ODMDATA
+	bool "ODMdata defined UART"
+
+config TEGRA_UART_A
+	bool "UART A"
+
+config TEGRA_UART_B
+	bool "UART B"
+
+config TEGRA_UART_C
+	bool "UART C"
+
+config TEGRA_UART_D
+	bool "UART D"
+
+config TEGRA_UART_E
+	bool "UART E"
+
+config TEGRA_UART_NONE
+	bool "None"
+
+endchoice
+
 # ---------------------------------------------------------
 
 if ARCH_TEGRA_2x_SOC
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 0807af6..f9c771f 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,6 +1,7 @@
 CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
+obj-y += tegra20.o
 obj-y += tegra20-car.o
 obj-y += tegra20-pmc.o
 obj-y += tegra20-timer.o
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 8d1fc00..b7c01c0 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -35,6 +35,10 @@
 
 #define T20_ODMDATA_RAMSIZE_SHIFT	28
 #define T20_ODMDATA_RAMSIZE_MASK	(3 << T20_ODMDATA_RAMSIZE_SHIFT)
+#define T20_ODMDATA_UARTTYPE_SHIFT	18
+#define T20_ODMDATA_UARTTYPE_MASK	(3 << T20_ODMDATA_UARTTYPE_SHIFT)
+#define T20_ODMDATA_UARTID_SHIFT	15
+#define T20_ODMDATA_UARTID_MASK		(7 << T20_ODMDATA_UARTID_SHIFT)
 
 static inline u32 tegra_get_odmdata(void)
 {
@@ -108,5 +112,35 @@ static inline uint32_t tegra20_get_ramsize(void)
 	}
 }
 
+static long uart_id_to_base[] = {
+	TEGRA_UARTA_BASE,
+	TEGRA_UARTB_BASE,
+	TEGRA_UARTC_BASE,
+	TEGRA_UARTD_BASE,
+	TEGRA_UARTE_BASE,
+};
+
+static inline long tegra20_get_debuguart_base(void)
+{
+	u32 odmdata;
+	int id;
+
+	odmdata = tegra_get_odmdata();
+
+	/*
+	 * Get type, we accept both "2" and "3", as they both demark a UART,
+	 * depending on the board type.
+	 */
+	if (!(((odmdata & T20_ODMDATA_UARTTYPE_MASK) >>
+	      T20_ODMDATA_UARTTYPE_SHIFT) & 0x2))
+		return 0;
+
+	id = (odmdata & T20_ODMDATA_UARTID_MASK) >> T20_ODMDATA_UARTID_SHIFT;
+	if (id > ARRAY_SIZE(uart_id_to_base))
+		return 0;
+
+	return uart_id_to_base[id];
+}
+
 /* reset vector for the main CPU complex */
 void tegra_maincomplex_entry(void);
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
new file mode 100644
index 0000000..9e14c98
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <ns16550.h>
+#include <mach/iomap.h>
+#include <mach/lowlevel.h>
+
+static struct NS16550_plat debug_uart = {
+	.clock = 216000000, /* pll_p rate */
+	.shift = 2,
+};
+
+static int tegra20_add_debug_console(void)
+{
+	unsigned long base = 0;
+
+	/* figure out which UART to use */
+	if (IS_ENABLED(CONFIG_TEGRA_UART_NONE))
+		return 0;
+	if (IS_ENABLED(CONFIG_TEGRA_UART_ODMDATA))
+		base = tegra20_get_debuguart_base();
+	if (IS_ENABLED(CONFIG_TEGRA_UART_A))
+		base = TEGRA_UARTA_BASE;
+	if (IS_ENABLED(CONFIG_TEGRA_UART_B))
+		base = TEGRA_UARTB_BASE;
+	if (IS_ENABLED(CONFIG_TEGRA_UART_C))
+		base = TEGRA_UARTC_BASE;
+	if (IS_ENABLED(CONFIG_TEGRA_UART_D))
+		base = TEGRA_UARTD_BASE;
+	if (IS_ENABLED(CONFIG_TEGRA_UART_E))
+		base = TEGRA_UARTE_BASE;
+
+	if (!base)
+		return -ENODEV;
+
+	add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shift,
+			   IORESOURCE_MEM_8BIT, &debug_uart);
+
+	return 0;
+}
+console_initcall(tegra20_add_debug_console);
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
