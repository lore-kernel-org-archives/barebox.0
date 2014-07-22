Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9eXY-0008Rw-FO
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 18:12:06 +0000
Received: by mail-we0-f169.google.com with SMTP id u56so25175wes.0
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 11:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 22 Jul 2014 20:10:48 +0200
Message-Id: <1406052648-8675-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406052648-8675-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406052648-8675-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/2] pinctrl: mvebu: add pinctrl driver for Armada XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a pinctrl driver for pin muxing on Marvell Armada XP. The
driver is ported from Linux and modified to fit on Barebox's common
mvebu pinctrl driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/Kconfig       |   1 +
 drivers/pinctrl/mvebu/Kconfig     |   4 +
 drivers/pinctrl/mvebu/Makefile    |   1 +
 drivers/pinctrl/mvebu/armada-xp.c | 403 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 409 insertions(+)
 create mode 100644 drivers/pinctrl/mvebu/armada-xp.c

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 2cc127d30ada..131f3a67eaa4 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -20,6 +20,7 @@ config ARCH_ARMADA_XP
 	bool "Armada XP"
 	select CPU_V7
 	select CLOCKSOURCE_MVEBU
+	select PINCTRL_ARMADA_XP
 
 config ARCH_DOVE
 	bool "Dove 88AP510"
diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
index 1fd1b755c77a..be154ed43753 100644
--- a/drivers/pinctrl/mvebu/Kconfig
+++ b/drivers/pinctrl/mvebu/Kconfig
@@ -2,6 +2,10 @@ config PINCTRL_ARMADA_370
 	bool
 	select PINCTRL
 
+config PINCTRL_ARMADA_XP
+	bool
+	select PINCTRL
+
 config PINCTRL_DOVE
 	bool
 	select PINCTRL
diff --git a/drivers/pinctrl/mvebu/Makefile b/drivers/pinctrl/mvebu/Makefile
index 6f5b57fc97c5..6255a5f56d6b 100644
--- a/drivers/pinctrl/mvebu/Makefile
+++ b/drivers/pinctrl/mvebu/Makefile
@@ -1,4 +1,5 @@
 obj-y				+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370.o
+obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
 obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
new file mode 100644
index 000000000000..9f79d373e495
--- /dev/null
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -0,0 +1,403 @@
+/*
+ * Marvell Armada XP pinctrl driver based on mvebu pinctrl core
+ *
+ * Copyright (C) 2012 Marvell
+ *
+ * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This file supports the three variants of Armada XP SoCs that are
+ * available: mv78230, mv78260 and mv78460. From a pin muxing
+ * perspective, the mv78230 has 49 MPP pins. The mv78260 and mv78460
+ * both have 67 MPP pins (more GPIOs and address lines for the memory
+ * bus mainly). The only difference between the mv78260 and the
+ * mv78460 in terms of pin muxing is the addition of two functions on
+ * pins 43 and 56 to access the VDD of the CPU2 and 3 (mv78260 has two
+ * cores, mv78460 has four cores).
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <malloc.h>
+#include <of.h>
+#include <of_address.h>
+#include <sizes.h>
+
+#include "common.h"
+
+static void __iomem *mpp_base;
+
+static int armada_xp_mpp_ctrl_get(unsigned pid, unsigned long *config)
+{
+	return default_mpp_ctrl_get(mpp_base, pid, config);
+}
+
+static int armada_xp_mpp_ctrl_set(unsigned pid, unsigned long config)
+{
+	return default_mpp_ctrl_set(mpp_base, pid, config);
+}
+
+enum armada_xp_variant {
+	V_MV78230	= BIT(0),
+	V_MV78260	= BIT(1),
+	V_MV78460	= BIT(2),
+	V_MV78230_PLUS	= (V_MV78230 | V_MV78260 | V_MV78460),
+	V_MV78260_PLUS	= (V_MV78260 | V_MV78460),
+};
+
+static struct mvebu_mpp_mode armada_xp_mpp_modes[] = {
+	MPP_MODE(0, "mpp0", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txclko",     V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d0",         V_MV78230_PLUS)),
+	MPP_MODE(1, "mpp1", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd0",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d1",         V_MV78230_PLUS)),
+	MPP_MODE(2, "mpp2", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd1",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d2",         V_MV78230_PLUS)),
+	MPP_MODE(3, "mpp3", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd2",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d3",         V_MV78230_PLUS)),
+	MPP_MODE(4, "mpp4", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd3",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d4",         V_MV78230_PLUS)),
+	MPP_MODE(5, "mpp5", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txctl",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d5",         V_MV78230_PLUS)),
+	MPP_MODE(6, "mpp6", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd0",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d6",         V_MV78230_PLUS)),
+	MPP_MODE(7, "mpp7", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd1",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d7",         V_MV78230_PLUS)),
+	MPP_MODE(8, "mpp8", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd2",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d8",         V_MV78230_PLUS)),
+	MPP_MODE(9, "mpp9", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd3",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d9",         V_MV78230_PLUS)),
+	MPP_MODE(10, "mpp10", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxctl",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d10",        V_MV78230_PLUS)),
+	MPP_MODE(11, "mpp11", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxclk",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d11",        V_MV78230_PLUS)),
+	MPP_MODE(12, "mpp12", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd4",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "clkout",     V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d12",        V_MV78230_PLUS)),
+	MPP_MODE(13, "mpp13", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd5",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "txd0",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d13",        V_MV78230_PLUS)),
+	MPP_MODE(14, "mpp14", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd6",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "txd1",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d14",        V_MV78230_PLUS)),
+	MPP_MODE(15, "mpp15", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txd7",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "txd2",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d15",        V_MV78230_PLUS)),
+	MPP_MODE(16, "mpp16", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "txclk",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "txd3",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d16",        V_MV78230_PLUS)),
+	MPP_MODE(17, "mpp17", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "col",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "txctl",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d17",        V_MV78230_PLUS)),
+	MPP_MODE(18, "mpp18", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxerr",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxd0",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "ptp", "trig",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d18",        V_MV78230_PLUS)),
+	MPP_MODE(19, "mpp19", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "crs",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxd1",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "ptp", "evreq",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d19",        V_MV78230_PLUS)),
+	MPP_MODE(20, "mpp20", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd4",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxd2",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "ptp", "clk",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d20",        V_MV78230_PLUS)),
+	MPP_MODE(21, "mpp21", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd5",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxd3",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "mem", "bat",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d21",        V_MV78230_PLUS)),
+	MPP_MODE(22, "mpp22", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd6",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxctl",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "sata0", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d22",        V_MV78230_PLUS)),
+	MPP_MODE(23, "mpp23", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ge0", "rxd7",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "ge1", "rxclk",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "sata1", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "d23",        V_MV78230_PLUS)),
+	MPP_MODE(24, "mpp24", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sata1", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "nf", "bootcs-re",   V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "rst",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "hsync",      V_MV78230_PLUS)),
+	MPP_MODE(25, "mpp25", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sata0", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "nf", "bootcs-we",   V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "pclk",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "vsync",      V_MV78230_PLUS)),
+	MPP_MODE(26, "mpp26", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "fsync",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "clk",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu1-pd",    V_MV78230_PLUS)),
+	MPP_MODE(27, "mpp27", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ptp", "trig",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "dtx",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "e",          V_MV78230_PLUS)),
+	MPP_MODE(28, "mpp28", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ptp", "evreq",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "drx",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "pwm",        V_MV78230_PLUS)),
+	MPP_MODE(29, "mpp29", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "ptp", "clk",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int0",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "ref-clk",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu0-pd",    V_MV78230_PLUS)),
+	MPP_MODE(30, "mpp30", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "clk",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int1",       V_MV78230_PLUS)),
+	MPP_MODE(31, "mpp31", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "cmd",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int2",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu0-pd",    V_MV78230_PLUS)),
+	MPP_MODE(32, "mpp32", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "d0",         V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int3",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu1-pd",    V_MV78230_PLUS)),
+	MPP_MODE(33, "mpp33", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "d1",         V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int4",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "mem", "bat",        V_MV78230_PLUS)),
+	MPP_MODE(34, "mpp34", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "d2",         V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "sata0", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int5",       V_MV78230_PLUS)),
+	MPP_MODE(35, "mpp35", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "sd0", "d3",         V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "sata1", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int6",       V_MV78230_PLUS)),
+	MPP_MODE(36, "mpp36", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "mosi",       V_MV78230_PLUS)),
+	MPP_MODE(37, "mpp37", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "miso",       V_MV78230_PLUS)),
+	MPP_MODE(38, "mpp38", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "sck",        V_MV78230_PLUS)),
+	MPP_MODE(39, "mpp39", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "cs0",        V_MV78230_PLUS)),
+	MPP_MODE(40, "mpp40", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "cs1",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart2", "cts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "vdd", "cpu1-pd",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "vga-hsync",  V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "pcie", "clkreq0",   V_MV78230_PLUS)),
+	MPP_MODE(41, "mpp41", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "spi", "cs2",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart2", "rts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "sata1", "prsnt",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "lcd", "vga-vsync",  V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "pcie", "clkreq1",   V_MV78230_PLUS)),
+	MPP_MODE(42, "mpp42", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart2", "rxd",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart0", "cts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "tdm", "int7",       V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "tdm-1", "timer",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu0-pd",    V_MV78230_PLUS)),
+	MPP_MODE(43, "mpp43", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart2", "txd",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart0", "rts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "spi", "cs3",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "pcie", "rstout",    V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "vdd", "cpu2-3-pd",  V_MV78460)),
+	MPP_MODE(44, "mpp44", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart2", "cts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart3", "rxd",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "spi", "cs4",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "mem", "bat",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "pcie", "clkreq2",   V_MV78230_PLUS)),
+	MPP_MODE(45, "mpp45", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart2", "rts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart3", "txd",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "spi", "cs5",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "sata1", "prsnt",    V_MV78230_PLUS)),
+	MPP_MODE(46, "mpp46", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart3", "rts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart1", "rts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "spi", "cs6",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "sata0", "prsnt",    V_MV78230_PLUS)),
+	MPP_MODE(47, "mpp47", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "uart3", "cts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "uart1", "cts",      V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x3, "spi", "cs7",        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x4, "ref", "clkout",     V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x5, "pcie", "clkreq3",   V_MV78230_PLUS)),
+	MPP_MODE(48, "mpp48", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "tclk", NULL,        V_MV78230_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "dev", "burst/last", V_MV78230_PLUS)),
+	MPP_MODE(49, "mpp49", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "we3",        V_MV78260_PLUS)),
+	MPP_MODE(50, "mpp50", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "we2",        V_MV78260_PLUS)),
+	MPP_MODE(51, "mpp51", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad16",       V_MV78260_PLUS)),
+	MPP_MODE(52, "mpp52", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad17",       V_MV78260_PLUS)),
+	MPP_MODE(53, "mpp53", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad18",       V_MV78260_PLUS)),
+	MPP_MODE(54, "mpp54", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad19",       V_MV78260_PLUS)),
+	MPP_MODE(55, "mpp55", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad20",       V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "vdd", "cpu0-pd",    V_MV78260_PLUS)),
+	MPP_MODE(56, "mpp56", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad21",       V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "vdd", "cpu1-pd",    V_MV78260_PLUS)),
+	MPP_MODE(57, "mpp57", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad22",       V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x2, "vdd", "cpu2-3-pd",  V_MV78460)),
+	MPP_MODE(58, "mpp58", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad23",       V_MV78260_PLUS)),
+	MPP_MODE(59, "mpp59", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad24",       V_MV78260_PLUS)),
+	MPP_MODE(60, "mpp60", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad25",       V_MV78260_PLUS)),
+	MPP_MODE(61, "mpp61", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad26",       V_MV78260_PLUS)),
+	MPP_MODE(62, "mpp62", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad27",       V_MV78260_PLUS)),
+	MPP_MODE(63, "mpp63", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad28",       V_MV78260_PLUS)),
+	MPP_MODE(64, "mpp64", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad29",       V_MV78260_PLUS)),
+	MPP_MODE(65, "mpp65", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad30",       V_MV78260_PLUS)),
+	MPP_MODE(66, "mpp66", armada_xp_mpp_ctrl,
+	   MPP_VAR_FUNCTION(0x0, "gpio", NULL,        V_MV78260_PLUS),
+	   MPP_VAR_FUNCTION(0x1, "dev", "ad31",       V_MV78260_PLUS)),
+};
+
+static struct mvebu_pinctrl_soc_info armada_xp_pinctrl_info = {
+	.modes = armada_xp_mpp_modes,
+	.nmodes = ARRAY_SIZE(armada_xp_mpp_modes),
+};
+
+static struct of_device_id armada_xp_pinctrl_of_match[] = {
+	{ .compatible = "marvell,mv78230-pinctrl", .data = (u32)V_MV78230, },
+	{ .compatible = "marvell,mv78260-pinctrl", .data = (u32)V_MV78260, },
+	{ .compatible = "marvell,mv78460-pinctrl", .data = (u32)V_MV78460, },
+	{ },
+};
+
+static int armada_xp_pinctrl_probe(struct device_d *dev)
+{
+	const struct of_device_id *match =
+		of_match_node(armada_xp_pinctrl_of_match, dev->device_node);
+	struct mvebu_pinctrl_soc_info *soc = &armada_xp_pinctrl_info;
+
+	mpp_base = dev_request_mem_region(dev, 0);
+	if (!mpp_base)
+		return -EBUSY;
+
+	soc->variant = (enum armada_xp_variant)match->data;
+
+	/*
+	 * We don't necessarily want the full list of the armada_xp_mpp_modes,
+	 * but only the first 'n' ones that are available on this SoC
+	 */
+	if (soc->variant == V_MV78230)
+		soc->nmodes = 49;
+
+	return mvebu_pinctrl_probe(dev, soc);
+}
+
+static struct driver_d armada_xp_pinctrl_driver = {
+	.name		= "pinctrl-armada-xp",
+	.probe		= armada_xp_pinctrl_probe,
+	.of_compatible	= armada_xp_pinctrl_of_match,
+};
+
+static int armada_xp_pinctrl_init(void)
+{
+	return platform_driver_register(&armada_xp_pinctrl_driver);
+}
+postcore_initcall(armada_xp_pinctrl_init);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
