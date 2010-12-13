Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020F-Us
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:48 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62G-0008R0-2m
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Iv-UP
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:36 +0100
Message-Id: <1292237617-7064-14-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/14] STM378x: Add TX28 CPU module
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 Documentation/boards.dox           |    1 +
 arch/arm/Makefile                  |    1 +
 arch/arm/boards/karo-tx28/Makefile |    1 +
 arch/arm/boards/karo-tx28/config.h |   16 +++++
 arch/arm/boards/karo-tx28/tx28.c   |  119 ++++++++++++++++++++++++++++++++++++
 arch/arm/mach-stm/Kconfig          |   16 +++++
 6 files changed, 154 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/Makefile
 create mode 100644 arch/arm/boards/karo-tx28/config.h
 create mode 100644 arch/arm/boards/karo-tx28/tx28.c

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index c04e06b..8087f01 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -14,6 +14,7 @@ ARM type:
 @li @subpage pcm043
 @li @subpage imx21ads
 @li @subpage imx27ads
+@li @subpage tx28
 @li @subpage the3stack
 @li @subpage mx23_evk
 @li @subpage board_babage
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9729c23..9d3350b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -88,6 +88,7 @@ board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
+board-$(CONFIG_MACH_TX28)			:= karo-tx28
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
new file mode 100644
index 0000000..6f7e865
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -0,0 +1 @@
+obj-y += tx28.o
diff --git a/arch/arm/boards/karo-tx28/config.h b/arch/arm/boards/karo-tx28/config.h
new file mode 100644
index 0000000..8f18fda
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/config.h
@@ -0,0 +1,16 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _CONFIG_H_
+# define _CONFIG_H_
+
+#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
new file mode 100644
index 0000000..d5edf5d
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -0,0 +1,119 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <environment.h>
+#include <errno.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+#include <mach/imx-regs.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = IMX_MEMORY_BASE,
+	.size = 128 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+/* setup the CPU card internal signals */
+static const uint32_t tx28_pad_setup[] = {
+	/* NAND interface */
+	GPMI_D0 | VE_3_3V | PULLUP(1),
+	GPMI_D1 | VE_3_3V | PULLUP(1),
+	GPMI_D2 | VE_3_3V | PULLUP(1),
+	GPMI_D3 | VE_3_3V | PULLUP(1),
+	GPMI_D4 | VE_3_3V | PULLUP(1),
+	GPMI_D5 | VE_3_3V | PULLUP(1),
+	GPMI_D6 | VE_3_3V | PULLUP(1),
+	GPMI_D7 | VE_3_3V | PULLUP(1),
+	GPMI_READY0 | VE_3_3V | PULLUP(0),	/* external PU */
+	GPMI_RDN | VE_3_3V | PULLUP(1),
+	GPMI_WRN | VE_3_3V | BITKEEPER(1),
+	GPMI_ALE | VE_3_3V | PULLUP(1),
+	GPMI_CLE | VE_3_3V | PULLUP(1),
+	GPMI_RESETN_GPIO | VE_3_3V | GPIO_IN,	/* act as WP, external PU */
+
+	/* Network interface */
+
+	/*
+	 * Note: To setup the external phy in a manner the baseboard
+	 * supports, its configuration is divided into a small part here in
+	 * the CPU card setup and the remaining configuration in the baseboard
+	 * file.
+	 * Here: Switch on the power supply to the external phy, but keep its
+	 * reset line low.
+	 */
+
+	/* send a "good morning" to the ext. phy 0 = reset */
+	ENET0_RX_CLK_GPIO | VE_3_3V | PULLUP(0) | GPIO_OUT | GPIO_VALUE(0),
+
+	/* phy power control 1 = on */
+	PWM4_GPIO | VE_3_3V | GPIO_OUT | PULLUP(0) | GPIO_VALUE(1),
+
+	ENET_CLK | VE_3_3V | BITKEEPER(0),
+	ENET0_MDC | VE_3_3V | PULLUP(0),
+	ENET0_MDIO | VE_3_3V | PULLUP(0),
+	ENET0_TXD0 | VE_3_3V | PULLUP(0),
+	ENET0_TXD1 | VE_3_3V | PULLUP(0),
+	ENET0_TX_EN | VE_3_3V | PULLUP(0),
+	ENET0_TX_CLK | VE_3_3V | BITKEEPER(0),
+
+};
+
+extern void base_board_init(void);
+
+static int tx28_devices_init(void)
+{
+	int i;
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
+		imx_gpio_mode(tx28_pad_setup[i]);
+
+	register_device(&sdram_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)(sdram_dev.map_base + 0x100));
+	armlinux_set_architecture(MACH_TYPE_TX28);
+
+	base_board_init();
+
+	return 0;
+}
+
+device_initcall(tx28_devices_init);
+
+/**
+@page tx28 KARO's TX28 CPU module
+
+http://www.karo-electronics.de/
+
+This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
+
+- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
+- 128 MiB NAND K9F1G08U0A (3.3V type)
+- PCA9554 GPIO expander
+- DS1339 RTC
+- LAN8710 Phy
+
+*/
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index 9a46138..824b2cf 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -4,10 +4,12 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x41000000 if MACH_MX23EVK
 	default 0x42000000 if MACH_CHUMBY
+	default 0x47000000 if MACH_TX28
 
 config BOARDINFO
 	default "Freescale i.MX23-EVK" if MACH_MX23EVK
 	default "Chumby Falconwing" if MACH_CHUMBY
+	default "Karo TX28" if MACH_TX28
 
 comment "SigmaTel/Freescale i.MX System-on-Chip"
 
@@ -46,6 +48,20 @@ endchoice
 
 endif
 
+if ARCH_IMX28
+
+choice
+	prompt "i.MX28 Board Type"
+
+config MACH_TX28
+	bool "KARO tx28"
+	help
+	  Say Y here if you are using the KARO TX28 CPU module.
+
+endchoice
+
+endif
+
 menu "Board specific settings       "
 
 endmenu
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
