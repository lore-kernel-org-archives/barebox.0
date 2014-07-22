Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9eXU-0008RO-PW
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 18:11:59 +0000
Received: by mail-wi0-f178.google.com with SMTP id hi2so915918wib.11
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 11:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 22 Jul 2014 20:10:47 +0200
Message-Id: <1406052648-8675-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/2] pinctrl: mvebu: add pinctrl driver for Armada 370
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a pinctrl driver for pin muxing on Marvell Armada 370. The
driver is ported from Linux and modified to fit on Barebox's common
mvebu pinctrl driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/Kconfig        |   1 +
 drivers/pinctrl/mvebu/Kconfig      |   4 +
 drivers/pinctrl/mvebu/Makefile     |   1 +
 drivers/pinctrl/mvebu/armada-370.c | 416 +++++++++++++++++++++++++++++++++++++
 4 files changed, 422 insertions(+)
 create mode 100644 drivers/pinctrl/mvebu/armada-370.c

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 18f61f74f968..2cc127d30ada 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -14,6 +14,7 @@ config ARCH_ARMADA_370
 	bool "Armada 370"
 	select CPU_V7
 	select CLOCKSOURCE_MVEBU
+	select PINCTRL_ARMADA_370
 
 config ARCH_ARMADA_XP
 	bool "Armada XP"
diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
index f5cf60804cd2..1fd1b755c77a 100644
--- a/drivers/pinctrl/mvebu/Kconfig
+++ b/drivers/pinctrl/mvebu/Kconfig
@@ -1,3 +1,7 @@
+config PINCTRL_ARMADA_370
+	bool
+	select PINCTRL
+
 config PINCTRL_DOVE
 	bool
 	select PINCTRL
diff --git a/drivers/pinctrl/mvebu/Makefile b/drivers/pinctrl/mvebu/Makefile
index 05f320d5a3f2..6f5b57fc97c5 100644
--- a/drivers/pinctrl/mvebu/Makefile
+++ b/drivers/pinctrl/mvebu/Makefile
@@ -1,3 +1,4 @@
 obj-y				+= common.o
+obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
 obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
new file mode 100644
index 000000000000..4778358fada3
--- /dev/null
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -0,0 +1,416 @@
+/*
+ * Marvell Armada 370 pinctrl driver based on mvebu pinctrl core
+ *
+ * Copyright (C) 2012 Marvell
+ *
+ * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+static int armada_370_mpp_ctrl_get(unsigned pid, unsigned long *config)
+{
+	return default_mpp_ctrl_get(mpp_base, pid, config);
+}
+
+static int armada_370_mpp_ctrl_set(unsigned pid, unsigned long config)
+{
+	return default_mpp_ctrl_set(mpp_base, pid, config);
+}
+
+static struct mvebu_mpp_mode mv88f6710_mpp_modes[] = {
+	MPP_MODE(0, "mpp0", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "uart0", "rxd")),
+	MPP_MODE(1, "mpp1", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "uart0", "txd")),
+	MPP_MODE(2, "mpp2", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "i2c0", "sck"),
+	   MPP_FUNCTION(0x2, "uart0", "txd")),
+	MPP_MODE(3, "mpp3", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "i2c0", "sda"),
+	   MPP_FUNCTION(0x2, "uart0", "rxd")),
+	MPP_MODE(4, "mpp4", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "cpu_pd", "vdd")),
+	MPP_MODE(5, "mpp5", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txclko"),
+	   MPP_FUNCTION(0x2, "uart1", "txd"),
+	   MPP_FUNCTION(0x4, "spi1", "clk"),
+	   MPP_FUNCTION(0x5, "audio", "mclk")),
+	MPP_MODE(6, "mpp6", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd0"),
+	   MPP_FUNCTION(0x2, "sata0", "prsnt"),
+	   MPP_FUNCTION(0x4, "tdm", "rst"),
+	   MPP_FUNCTION(0x5, "audio", "sdo")),
+	MPP_MODE(7, "mpp7", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd1"),
+	   MPP_FUNCTION(0x4, "tdm", "tdx"),
+	   MPP_FUNCTION(0x5, "audio", "lrclk")),
+	MPP_MODE(8, "mpp8", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd2"),
+	   MPP_FUNCTION(0x2, "uart0", "rts"),
+	   MPP_FUNCTION(0x4, "tdm", "drx"),
+	   MPP_FUNCTION(0x5, "audio", "bclk")),
+	MPP_MODE(9, "mpp9", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd3"),
+	   MPP_FUNCTION(0x2, "uart1", "txd"),
+	   MPP_FUNCTION(0x3, "sd0", "clk"),
+	   MPP_FUNCTION(0x5, "audio", "spdifo")),
+	MPP_MODE(10, "mpp10", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txctl"),
+	   MPP_FUNCTION(0x2, "uart0", "cts"),
+	   MPP_FUNCTION(0x4, "tdm", "fsync"),
+	   MPP_FUNCTION(0x5, "audio", "sdi")),
+	MPP_MODE(11, "mpp11", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd0"),
+	   MPP_FUNCTION(0x2, "uart1", "rxd"),
+	   MPP_FUNCTION(0x3, "sd0", "cmd"),
+	   MPP_FUNCTION(0x4, "spi0", "cs1"),
+	   MPP_FUNCTION(0x5, "sata1", "prsnt"),
+	   MPP_FUNCTION(0x6, "spi1", "cs1")),
+	MPP_MODE(12, "mpp12", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd1"),
+	   MPP_FUNCTION(0x2, "i2c1", "sda"),
+	   MPP_FUNCTION(0x3, "sd0", "d0"),
+	   MPP_FUNCTION(0x4, "spi1", "cs0"),
+	   MPP_FUNCTION(0x5, "audio", "spdifi")),
+	MPP_MODE(13, "mpp13", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd2"),
+	   MPP_FUNCTION(0x2, "i2c1", "sck"),
+	   MPP_FUNCTION(0x3, "sd0", "d1"),
+	   MPP_FUNCTION(0x4, "tdm", "pclk"),
+	   MPP_FUNCTION(0x5, "audio", "rmclk")),
+	MPP_MODE(14, "mpp14", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd3"),
+	   MPP_FUNCTION(0x2, "pcie", "clkreq0"),
+	   MPP_FUNCTION(0x3, "sd0", "d2"),
+	   MPP_FUNCTION(0x4, "spi1", "mosi"),
+	   MPP_FUNCTION(0x5, "spi0", "cs2")),
+	MPP_MODE(15, "mpp15", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxctl"),
+	   MPP_FUNCTION(0x2, "pcie", "clkreq1"),
+	   MPP_FUNCTION(0x3, "sd0", "d3"),
+	   MPP_FUNCTION(0x4, "spi1", "miso"),
+	   MPP_FUNCTION(0x5, "spi0", "cs3")),
+	MPP_MODE(16, "mpp16", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxclk"),
+	   MPP_FUNCTION(0x2, "uart1", "rxd"),
+	   MPP_FUNCTION(0x4, "tdm", "int"),
+	   MPP_FUNCTION(0x5, "audio", "extclk")),
+	MPP_MODE(17, "mpp17", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge", "mdc")),
+	MPP_MODE(18, "mpp18", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge", "mdio")),
+	MPP_MODE(19, "mpp19", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txclk"),
+	   MPP_FUNCTION(0x2, "ge1", "txclkout"),
+	   MPP_FUNCTION(0x4, "tdm", "pclk")),
+	MPP_MODE(20, "mpp20", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd4"),
+	   MPP_FUNCTION(0x2, "ge1", "txd0")),
+	MPP_MODE(21, "mpp21", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd5"),
+	   MPP_FUNCTION(0x2, "ge1", "txd1"),
+	   MPP_FUNCTION(0x4, "uart1", "txd")),
+	MPP_MODE(22, "mpp22", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd6"),
+	   MPP_FUNCTION(0x2, "ge1", "txd2"),
+	   MPP_FUNCTION(0x4, "uart0", "rts")),
+	MPP_MODE(23, "mpp23", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "txd7"),
+	   MPP_FUNCTION(0x2, "ge1", "txd3"),
+	   MPP_FUNCTION(0x4, "spi1", "mosi")),
+	MPP_MODE(24, "mpp24", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "col"),
+	   MPP_FUNCTION(0x2, "ge1", "txctl"),
+	   MPP_FUNCTION(0x4, "spi1", "cs0")),
+	MPP_MODE(25, "mpp25", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxerr"),
+	   MPP_FUNCTION(0x2, "ge1", "rxd0"),
+	   MPP_FUNCTION(0x4, "uart1", "rxd")),
+	MPP_MODE(26, "mpp26", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "crs"),
+	   MPP_FUNCTION(0x2, "ge1", "rxd1"),
+	   MPP_FUNCTION(0x4, "spi1", "miso")),
+	MPP_MODE(27, "mpp27", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd4"),
+	   MPP_FUNCTION(0x2, "ge1", "rxd2"),
+	   MPP_FUNCTION(0x4, "uart0", "cts")),
+	MPP_MODE(28, "mpp28", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd5"),
+	   MPP_FUNCTION(0x2, "ge1", "rxd3")),
+	MPP_MODE(29, "mpp29", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd6"),
+	   MPP_FUNCTION(0x2, "ge1", "rxctl"),
+	   MPP_FUNCTION(0x4, "i2c1", "sda")),
+	MPP_MODE(30, "mpp30", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "ge0", "rxd7"),
+	   MPP_FUNCTION(0x2, "ge1", "rxclk"),
+	   MPP_FUNCTION(0x4, "i2c1", "sck")),
+	MPP_MODE(31, "mpp31", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x3, "tclk", NULL),
+	   MPP_FUNCTION(0x4, "ge0", "txerr")),
+	MPP_MODE(32, "mpp32", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "spi0", "cs0")),
+	MPP_MODE(33, "mpp33", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "bootcs"),
+	   MPP_FUNCTION(0x2, "spi0", "cs0")),
+	MPP_MODE(34, "mpp34", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "wen0"),
+	   MPP_FUNCTION(0x2, "spi0", "mosi")),
+	MPP_MODE(35, "mpp35", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "oen"),
+	   MPP_FUNCTION(0x2, "spi0", "sck")),
+	MPP_MODE(36, "mpp36", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "a1"),
+	   MPP_FUNCTION(0x2, "spi0", "miso")),
+	MPP_MODE(37, "mpp37", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "a0"),
+	   MPP_FUNCTION(0x2, "sata0", "prsnt")),
+	MPP_MODE(38, "mpp38", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ready"),
+	   MPP_FUNCTION(0x2, "uart1", "cts"),
+	   MPP_FUNCTION(0x3, "uart0", "cts")),
+	MPP_MODE(39, "mpp39", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad0"),
+	   MPP_FUNCTION(0x2, "audio", "spdifo")),
+	MPP_MODE(40, "mpp40", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad1"),
+	   MPP_FUNCTION(0x2, "uart1", "rts"),
+	   MPP_FUNCTION(0x3, "uart0", "rts")),
+	MPP_MODE(41, "mpp41", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad2"),
+	   MPP_FUNCTION(0x2, "uart1", "rxd")),
+	MPP_MODE(42, "mpp42", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad3"),
+	   MPP_FUNCTION(0x2, "uart1", "txd")),
+	MPP_MODE(43, "mpp43", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad4"),
+	   MPP_FUNCTION(0x2, "audio", "bclk")),
+	MPP_MODE(44, "mpp44", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad5"),
+	   MPP_FUNCTION(0x2, "audio", "mclk")),
+	MPP_MODE(45, "mpp45", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad6"),
+	   MPP_FUNCTION(0x2, "audio", "lrclk")),
+	MPP_MODE(46, "mpp46", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad7"),
+	   MPP_FUNCTION(0x2, "audio", "sdo")),
+	MPP_MODE(47, "mpp47", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad8"),
+	   MPP_FUNCTION(0x3, "sd0", "clk"),
+	   MPP_FUNCTION(0x5, "audio", "spdifo")),
+	MPP_MODE(48, "mpp48", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad9"),
+	   MPP_FUNCTION(0x2, "uart0", "rts"),
+	   MPP_FUNCTION(0x3, "sd0", "cmd"),
+	   MPP_FUNCTION(0x4, "sata1", "prsnt"),
+	   MPP_FUNCTION(0x5, "spi0", "cs1")),
+	MPP_MODE(49, "mpp49", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad10"),
+	   MPP_FUNCTION(0x2, "pcie", "clkreq1"),
+	   MPP_FUNCTION(0x3, "sd0", "d0"),
+	   MPP_FUNCTION(0x4, "spi1", "cs0"),
+	   MPP_FUNCTION(0x5, "audio", "spdifi")),
+	MPP_MODE(50, "mpp50", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad11"),
+	   MPP_FUNCTION(0x2, "uart0", "cts"),
+	   MPP_FUNCTION(0x3, "sd0", "d1"),
+	   MPP_FUNCTION(0x4, "spi1", "miso"),
+	   MPP_FUNCTION(0x5, "audio", "rmclk")),
+	MPP_MODE(51, "mpp51", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad12"),
+	   MPP_FUNCTION(0x2, "i2c1", "sda"),
+	   MPP_FUNCTION(0x3, "sd0", "d2"),
+	   MPP_FUNCTION(0x4, "spi1", "mosi")),
+	MPP_MODE(52, "mpp52", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad13"),
+	   MPP_FUNCTION(0x2, "i2c1", "sck"),
+	   MPP_FUNCTION(0x3, "sd0", "d3"),
+	   MPP_FUNCTION(0x4, "spi1", "sck")),
+	MPP_MODE(53, "mpp53", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad14"),
+	   MPP_FUNCTION(0x2, "sd0", "clk"),
+	   MPP_FUNCTION(0x3, "tdm", "pclk"),
+	   MPP_FUNCTION(0x4, "spi0", "cs2"),
+	   MPP_FUNCTION(0x5, "pcie", "clkreq1")),
+	MPP_MODE(54, "mpp54", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ad15"),
+	   MPP_FUNCTION(0x3, "tdm", "dtx")),
+	MPP_MODE(55, "mpp55", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "cs1"),
+	   MPP_FUNCTION(0x2, "uart1", "txd"),
+	   MPP_FUNCTION(0x3, "tdm", "rst"),
+	   MPP_FUNCTION(0x4, "sata1", "prsnt"),
+	   MPP_FUNCTION(0x5, "sata0", "prsnt")),
+	MPP_MODE(56, "mpp56", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "cs2"),
+	   MPP_FUNCTION(0x2, "uart1", "cts"),
+	   MPP_FUNCTION(0x3, "uart0", "cts"),
+	   MPP_FUNCTION(0x4, "spi0", "cs3"),
+	   MPP_FUNCTION(0x5, "pcie", "clkreq0"),
+	   MPP_FUNCTION(0x6, "spi1", "cs1")),
+	MPP_MODE(57, "mpp57", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "cs3"),
+	   MPP_FUNCTION(0x2, "uart1", "rxd"),
+	   MPP_FUNCTION(0x3, "tdm", "fsync"),
+	   MPP_FUNCTION(0x4, "sata0", "prsnt"),
+	   MPP_FUNCTION(0x5, "audio", "sdo")),
+	MPP_MODE(58, "mpp58", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "cs0"),
+	   MPP_FUNCTION(0x2, "uart1", "rts"),
+	   MPP_FUNCTION(0x3, "tdm", "int"),
+	   MPP_FUNCTION(0x5, "audio", "extclk"),
+	   MPP_FUNCTION(0x6, "uart0", "rts")),
+	MPP_MODE(59, "mpp59", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ale0"),
+	   MPP_FUNCTION(0x2, "uart1", "rts"),
+	   MPP_FUNCTION(0x3, "uart0", "rts"),
+	   MPP_FUNCTION(0x5, "audio", "bclk")),
+	MPP_MODE(60, "mpp60", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "ale1"),
+	   MPP_FUNCTION(0x2, "uart1", "rxd"),
+	   MPP_FUNCTION(0x3, "sata0", "prsnt"),
+	   MPP_FUNCTION(0x4, "pcie", "rst-out"),
+	   MPP_FUNCTION(0x5, "audio", "sdi")),
+	MPP_MODE(61, "mpp61", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "dev", "wen1"),
+	   MPP_FUNCTION(0x2, "uart1", "txd"),
+	   MPP_FUNCTION(0x5, "audio", "rclk")),
+	MPP_MODE(62, "mpp62", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "dev", "a2"),
+	   MPP_FUNCTION(0x2, "uart1", "cts"),
+	   MPP_FUNCTION(0x3, "tdm", "drx"),
+	   MPP_FUNCTION(0x4, "pcie", "clkreq0"),
+	   MPP_FUNCTION(0x5, "audio", "mclk"),
+	   MPP_FUNCTION(0x6, "uart0", "cts")),
+	MPP_MODE(63, "mpp63", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpo", NULL),
+	   MPP_FUNCTION(0x1, "spi0", "sck"),
+	   MPP_FUNCTION(0x2, "tclk", NULL)),
+	MPP_MODE(64, "mpp64", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "spi0", "miso"),
+	   MPP_FUNCTION(0x2, "spi0-1", "cs1")),
+	MPP_MODE(65, "mpp65", armada_370_mpp_ctrl,
+	   MPP_FUNCTION(0x0, "gpio", NULL),
+	   MPP_FUNCTION(0x1, "spi0", "mosi"),
+	   MPP_FUNCTION(0x2, "spi0-1", "cs2")),
+};
+
+static struct mvebu_pinctrl_soc_info mv88f6710_pinctrl_info = {
+	.modes = mv88f6710_mpp_modes,
+	.nmodes = ARRAY_SIZE(mv88f6710_mpp_modes),
+	.variant = 0,
+};
+
+static struct of_device_id armada_370_pinctrl_of_match[] = {
+	{
+		.compatible = "marvell,mv88f6710-pinctrl",
+		.data = (u32)&mv88f6710_pinctrl_info,
+	},
+	{ },
+};
+
+static int armada_370_pinctrl_probe(struct device_d *dev)
+{
+	const struct of_device_id *match =
+		of_match_node(armada_370_pinctrl_of_match, dev->device_node);
+	struct mvebu_pinctrl_soc_info *soc =
+		(struct mvebu_pinctrl_soc_info *)match->data;
+
+	mpp_base = dev_request_mem_region(dev, 0);
+	if (!mpp_base)
+		return -EBUSY;
+
+	return mvebu_pinctrl_probe(dev, soc);
+}
+
+static struct driver_d armada_370_pinctrl_driver = {
+	.name		= "pinctrl-armada-370",
+	.probe		= armada_370_pinctrl_probe,
+	.of_compatible	= armada_370_pinctrl_of_match,
+};
+
+static int armada_370_pinctrl_init(void)
+{
+	return platform_driver_register(&armada_370_pinctrl_driver);
+}
+postcore_initcall(armada_370_pinctrl_init);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
