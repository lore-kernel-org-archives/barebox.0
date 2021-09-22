Delivery-date: Wed, 22 Sep 2021 08:58:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDP-0005Kw-N3
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDN-0003Mk-C0
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY6ZGfL8WXd+EJGy4TCXZklOkOOITtQBFPNc8ZHOqZo=; b=sY3dYNP/qGDl9D
	tU/W6oH2ic8Jh8CtniEZP2VxPJqFYcu7OtYivYqncAKkkO1LHuuej93MkyALz2+Tya95hyBasy+Qs
	8e34Y3QHGZTSC/jn+0n8T65vBAy+aXM7SJZZy1m+BqduiuxCy4SSLWyD6OkNy+fc3J9BZRo0K+cJY
	dMRCw8zytJqO/jHxlPT1z72VRWOa6m1a448uEBMSmv9j+SwjleFQMGcfGXtypvNZugMjWrWXen2CR
	m4yvG6QYaC9WamJh/30I2F8Z9N/SeIQXxQn+idmgMHbPOiae9zBDKaw986ayJ8HrL3J1gxM9vIVvS
	P7IiES6BE+3WpVLgWAiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwBS-007BWF-Ba; Wed, 22 Sep 2021 06:56:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5Q-0079jQ-EM
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0002AR-Oe; Wed, 22 Sep 2021 08:50:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yx-BA; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 08:50:01 +0200
Message-Id: <20210922065000.20970-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235032_915424_CF02487A 
X-CRM114-Status: GOOD (  26.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: AT91: migrate sama5d3-xplained to DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have one other DT-enabled SAMA5D3 board already:
microchip-ksz8477-evb, which is basically a sama5d3 xplained in
different form factor and with a switch. Mimic what we do there to get
rid of the sama5d3 board code.

Unlike the microchip-ksz9477-evb, the barebox support for this board
includes NAND, which is not yet up to date with respect to DT:

  - SMC for NAND configuration has no DT driver. Instead the board
    driver create this device
  - We don't support the newer NAND DT bindings (EBI). The device trees
    fix this up, so barebox sees the old bindings with the upstream
    partition layout. In future, this could be fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/at91.rst                 |   2 +
 .../at91/microchip-sama5d3-xplained.rst       |   8 -
 arch/arm/boards/sama5d3_xplained/Makefile     |   2 +-
 arch/arm/boards/sama5d3_xplained/board.c      |  73 ++++++
 arch/arm/boards/sama5d3_xplained/init.c       | 241 ------------------
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  60 ++++-
 arch/arm/configs/at91_multi_defconfig         |   5 +-
 arch/arm/configs/sama5d3_xplained_defconfig   |  80 ------
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-microchip-ksz9477-evb.dts   |   1 +
 arch/arm/dts/at91-sama5d3_xplained.dts        |  50 ++++
 arch/arm/dts/sama5d3.dtsi                     |  23 ++
 arch/arm/mach-at91/Kconfig                    |  14 +-
 images/Makefile.at91                          |   9 +
 14 files changed, 222 insertions(+), 347 deletions(-)
 delete mode 100644 Documentation/boards/at91/microchip-sama5d3-xplained.rst
 create mode 100644 arch/arm/boards/sama5d3_xplained/board.c
 delete mode 100644 arch/arm/boards/sama5d3_xplained/init.c
 delete mode 100644 arch/arm/configs/sama5d3_xplained_defconfig
 create mode 100644 arch/arm/dts/at91-sama5d3_xplained.dts
 create mode 100644 arch/arm/dts/sama5d3.dtsi

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index 199e4d653050..f502979df6eb 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -35,6 +35,8 @@ The resulting images will be placed under ``images/``:
   barebox-at91sam9263ek.img
   barebox-microchip-ksz9477-evb.img
   barebox-microchip-ksz9477-evb-xload-mmc.img
+  barebox-sama5d3-xplained.img
+  barebox-sama5d3-xplained-xload-mmc.img
   barebox-sama5d27-som1-ek.img
   barebox-sama5d27-som1-ek-xload-mmc.img
   barebox-groboards-sama5d27-giantboard.img
diff --git a/Documentation/boards/at91/microchip-sama5d3-xplained.rst b/Documentation/boards/at91/microchip-sama5d3-xplained.rst
deleted file mode 100644
index e96111af72b5..000000000000
--- a/Documentation/boards/at91/microchip-sama5d3-xplained.rst
+++ /dev/null
@@ -1,8 +0,0 @@
-Atmel SAMA5D3_XPLAINED Evaluation Kit
-=====================================
-
-Building barebox:
-
-.. code-block:: sh
-
-  make ARCH=arm sama5d3_xplained_defconfig
diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
index fc6d83be8c15..e5c86e58957e 100644
--- a/arch/arm/boards/sama5d3_xplained/Makefile
+++ b/arch/arm/boards/sama5d3_xplained/Makefile
@@ -1,3 +1,3 @@
-obj-y += init.o
+obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3_xplained
diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
new file mode 100644
index 000000000000..69357df0fb91
--- /dev/null
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <common.h>
+#include <init.h>
+#include <envfs.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/hardware.h>
+#include <linux/clk.h>
+
+static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
+	.ncs_read_setup		= 1,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 1,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 5,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 8,
+	.write_cycle		= 8,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+
+	.tclr			= 3,
+	.tadl			= 10,
+	.tar			= 3,
+	.ocms			= 0,
+	.trr			= 4,
+	.twb			= 5,
+	.rbnsel			= 3,
+	.nfsel			= 1
+};
+
+static int sama5d3_xplained_probe(struct device_d *dev)
+{
+	struct clk *clk;
+
+	barebox_set_hostname("sama5d3_xplained");
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_sama5d3_xplained);
+
+	add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
+			   SAMA5D3_BASE_HSMC + 0x600, 0xa0,
+			   IORESOURCE_MEM, NULL);
+
+	clk = clk_lookup("hsmc_clk");
+	if (IS_ERR(clk))
+		dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
+
+	clk_enable(clk);
+
+	/* configure chip-select 3 (NAND) */
+	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
+
+	return 0;
+}
+
+static const struct of_device_id sama5d3_xplained_of_match[] = {
+	{ .compatible = "atmel,sama5d3-xplained" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d sama5d3_xplained_board_driver = {
+	.name = "board-sama5d3_xplained",
+	.probe = sama5d3_xplained_probe,
+	.of_compatible = sama5d3_xplained_of_match,
+};
+coredevice_platform_driver(sama5d3_xplained_board_driver);
diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
deleted file mode 100644
index b648d7172244..000000000000
--- a/arch/arm/boards/sama5d3_xplained/init.c
+++ /dev/null
@@ -1,241 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2014 Bo Shen <voice.shen@gmail.com>
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <partition.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <envfs.h>
-#include <mach/hardware.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <linux/mtd/nand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
-#include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
-#include <linux/mtd/rawnand.h>
-#include <readkey.h>
-#include <poller.h>
-#include <linux/clk.h>
-#include <linux/phy.h>
-#include <linux/micrel_phy.h>
-
-#if defined(CONFIG_NAND_ATMEL)
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= -EINVAL,
-	.enable_pin	= -EINVAL,
-	.ecc_mode	= NAND_ECC_HW,
-	.has_pmecc	= 1,
-	.pmecc_sector_size = 512,
-	.pmecc_corr_cap = 4,
-#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-	.bus_width_16	= 1,
-#endif
-	.on_flash_bbt	= 1,
-};
-
-static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 2,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 2,
-
-	.ncs_read_pulse		= 5,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 5,
-	.nwe_pulse		= 3,
-
-	.read_cycle		= 8,
-	.write_cycle		= 8,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 3,
-
-	.tclr			= 3,
-	.tadl			= 10,
-	.tar			= 3,
-	.ocms			= 0,
-	.trr			= 4,
-	.twb			= 5,
-	.rbnsel			= 3,
-	.nfsel			= 1
-};
-
-static void ek_add_device_nand(void)
-{
-	struct clk *clk = clk_get(NULL, "smc_clk");
-
-	clk_enable(clk);
-
-	/* setup bus-width (8 or 16) */
-	if (nand_pdata.bus_width_16)
-		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_16;
-	else
-		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_8;
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
-
-	at91_add_device_nand(&nand_pdata);
-}
-#else
-static void ek_add_device_nand(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_NET_MACB)
-static struct macb_platform_data gmac_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = 7,
-};
-
-static struct macb_platform_data macb_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = 0,
-};
-
-static void ek_add_device_eth(void)
-{
-	at91_add_device_eth(0, &gmac_pdata);
-	at91_add_device_eth(1, &macb_pdata);
-}
-#else
-static void ek_add_device_eth(void) {}
-#endif
-
-#if defined(CONFIG_MCI_ATMEL)
-/*
- * MCI (SD/MMC)
- */
-static struct atmel_mci_platform_data mci0_data = {
-	.bus_width	= 8,
-	.detect_pin	= AT91_PIN_PE0,
-	.wp_pin		= -EINVAL,
-};
-
-static void ek_add_device_mci(void)
-{
-	/* MMC0 */
-	at91_add_device_mci(0, &mci0_data);
-}
-#else
-static void ek_add_device_mci(void) {}
-#endif
-
-#ifdef CONFIG_LED_GPIO
-struct gpio_led leds[] = {
-	{
-		.gpio	= AT91_PIN_PE23,
-		.active_low	= 1,
-		.led	= {
-			.name = "d2",
-		},
-	}, {
-		.gpio	= AT91_PIN_PE24,
-		.active_low	= 1,
-		.led	= {
-			.name = "d3",
-		},
-	},
-};
-
-static void ek_add_led(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++) {
-		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-		led_gpio_register(&leds[i]);
-	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
-}
-#else
-static void ek_add_led(void) {}
-#endif
-
-static int sama5d3_xplained_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(sama5d3_xplained_mem_init);
-
-static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
-	{
-		.offset = 0x00000,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "at91bootstrap_raw",
-		.bbname = "at91bootstrap",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 256 KiB */
-		.size = SZ_256K + SZ_128K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self_raw",
-		.bbname = "self0",
-	},
-	/* hole of 128 KiB */
-	{
-		.offset = SZ_512K + SZ_256K,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 1 MiB */
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw1",
-		.bbname = "env1",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int sama5d3_xplained_devices_init(void)
-{
-	ek_add_device_nand();
-	ek_add_led();
-	ek_add_device_eth();
-	ek_add_device_mci();
-
-	devfs_create_partitions("nand0", sama5d3_xplained_nand0_partitions);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_sama5d3_xplained);
-
-	return 0;
-}
-device_initcall(sama5d3_xplained_devices_init);
-
-static int sama5d3_xplained_console_init(void)
-{
-	barebox_set_model("Atmel sama5d3_xplained");
-	barebox_set_hostname("sama5d3_xplained");
-
-	at91_register_uart(0, 0);
-
-	return 0;
-}
-console_initcall(sama5d3_xplained_console_init);
-
-static int sama5d3_xplained_main_clock(void)
-{
-	at91_set_main_clock(12000000);
-
-	return 0;
-}
-pure_initcall(sama5d3_xplained_main_clock);
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 28c07d50531e..df561af36d5e 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -1,23 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
 /*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
+ * Copyright (C) 2014, Atmel Corporation
+ * Copyright (C) 2018 Ahmad Fatoum, Pengutronix
  */
 
 #include <common.h>
 #include <init.h>
 
 #include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+#include <mach/barebox-arm.h>
+#include <mach/iomux.h>
+#include <mach/sama5d3.h>
+#include <mach/sama5d3-xplained-ddramc.h>
+#include <mach/xload.h>
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/hardware.h>
+/* PCK = 528MHz, MCK = 132MHz */
+#define MASTER_CLOCK	132000000
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+static void dbgu_init(void)
 {
-	arm_cpu_lowlevel_init();
+	void __iomem *pio = IOMEM(SAMA5D3_BASE_PIOB);
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOB);
+
+	at91_mux_pio3_pin(pio, pin_to_mask(AT91_PIN_PB31), AT91_MUX_PERIPH_A, 0);
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_DBGU);
+	at91_dbgu_setup_ll(IOMEM(AT91_BASE_DBGU1), MASTER_CLOCK, 115200);
+
+	putc_ll('>');
+	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
+}
+
+SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_xload_mmc, r4)
+{
+	sama5d3_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	dbgu_init();
+
+	sama5d3_udelay_init(MASTER_CLOCK);
+	sama5d3_xplained_ddrconf();
+
+	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
+}
+
+extern char __dtb_z_at91_sama5d3_xplained_start[];
+
+SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained, r4)
+{
+	void *fdt;
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
+
+	fdt = __dtb_z_at91_sama5d3_xplained_start + get_runtime_offset();
+
+	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
 }
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index f0a4812f0c67..31427b1451d5 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_SKOV_ARM9CPU=y
 CONFIG_MACH_AT91SAM9263EK=y
 CONFIG_MACH_AT91SAM9X5EK=y
 CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_MACH_SAMA5D3_XPLAINED=y
 CONFIG_MACH_SAMA5D27_SOM1=y
 CONFIG_MACH_SAMA5D27_GIANTBOARD=y
 CONFIG_AEABI=y
@@ -94,9 +95,8 @@ CONFIG_I2C=y
 CONFIG_I2C_AT91=y
 CONFIG_MTD=y
 CONFIG_NAND=y
-CONFIG_NAND_ECC_BCH=y
-CONFIG_NAND_ECC_HW_OOB_FIRST=y
 CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
 CONFIG_USB_HOST=y
@@ -113,7 +113,6 @@ CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_MMC_GPP_PARTITIONS=y
-CONFIG_MCI_ATMEL=y
 CONFIG_MCI_ATMEL_SDHCI=y
 CONFIG_MFD_ATMEL_FLEXCOM=y
 CONFIG_STATE_DRV=y
diff --git a/arch/arm/configs/sama5d3_xplained_defconfig b/arch/arm/configs/sama5d3_xplained_defconfig
deleted file mode 100644
index 498d5af4b794..000000000000
--- a/arch/arm/configs/sama5d3_xplained_defconfig
+++ /dev/null
@@ -1,80 +0,0 @@
-CONFIG_TEXT_BASE=0x26f00000
-CONFIG_ARCH_SAMA5D3=y
-CONFIG_MACH_SAMA5D3_XPLAINED=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0xA00000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="A5D3_XPLD:"
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_DHCP=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_MICREL_PHY=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_VIDEO=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_PNG=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ffa9fe88c128..96063c541d96 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -165,6 +165,7 @@ lwl-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-ssmb-dtu.dtb.o
 lwl-$(CONFIG_MACH_AC_SXB) += ac-sxb.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
+lwl-$(CONFIG_MACH_SAMA5D3_XPLAINED) += at91-sama5d3_xplained.dtb.o
 lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
index 3eb2017942fa..b7e619a36365 100644
--- a/arch/arm/dts/at91-microchip-ksz9477-evb.dts
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -9,6 +9,7 @@
  */
 /dts-v1/;
 #include <arm/sama5d36.dtsi>
+#include "sama5d3.dtsi"
 
 / {
 	model = "Microchip EVB-KSZ9477";
diff --git a/arch/arm/dts/at91-sama5d3_xplained.dts b/arch/arm/dts/at91-sama5d3_xplained.dts
new file mode 100644
index 000000000000..cdb29ca6669e
--- /dev/null
+++ b/arch/arm/dts/at91-sama5d3_xplained.dts
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0 OR X11 */
+/*
+ *  Copyright (C) 2021 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include <arm/at91-sama5d3_xplained.dts>
+#include "sama5d3.dtsi"
+
+/ {
+	model = "Atmel sama5d3_xplained";
+
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &mmc0, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
+
+/* Will be automatically read back from HW */
+/delete-node/ &{/memory@20000000};
+
+&nand_controller {
+	nand@3 {
+		compatible = "atmel,at91rm9200-nand";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <	0x60000000 0x01000000	/* EBI CS3 */
+			0xffffc070 0x00000490	/* SMC PMECC regs */
+			0xffffc500 0x00000100	/* SMC PMECC Error Location regs */
+			0x00110000 0x00018000	/* ROM code */
+			>;
+		interrupts = <5 IRQ_TYPE_LEVEL_HIGH 6>;
+		atmel,nand-addr-offset = <21>;
+		atmel,nand-cmd-offset = <22>;
+		atmel,nand-has-dma;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_nand0_ale_cle>;
+		atmel,pmecc-lookup-table-offset = <0x10000 0x8000>;
+
+		atmel,has-pmecc;
+		atmel,pmecc-cap = <4>;
+		atmel,pmecc-sector-size = <512>;
+		status = "okay";
+	};
+};
+
diff --git a/arch/arm/dts/sama5d3.dtsi b/arch/arm/dts/sama5d3.dtsi
new file mode 100644
index 000000000000..2301ad135b3b
--- /dev/null
+++ b/arch/arm/dts/sama5d3.dtsi
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/ {
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+	};
+};
+
+&ebi {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges;
+
+};
+
+&nand_controller {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges;
+
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 290178706a40..734256e3614e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -534,11 +534,6 @@ config MACH_SAMA5D3XEK
 	help
 	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
 
-config MACH_SAMA5D3_XPLAINED
-	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
-	help
-	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
-
 endchoice
 
 endif
@@ -613,6 +608,15 @@ config MACH_MICROCHIP_KSZ9477_EVB
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
 
+config MACH_SAMA5D3_XPLAINED
+	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
+	select SOC_SAMA5D3
+	select OFDEVICE
+	select MCI_ATMEL_PBL
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
+
 config MACH_SAMA5D27_SOM1
 	bool "Microchip SAMA5D27 SoM-1 Evaluation Kit"
 	select SOC_SAMA5D2
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 1d443eae0e55..c7a2209e0085 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -19,6 +19,15 @@ MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
 FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
 
+pblb-$(CONFIG_MACH_SAMA5D3_XPLAINED) += start_sama5d3_xplained
+FILE_barebox-sama5d3-xplained.img = start_sama5d3_xplained.pblb
+image-$(CONFIG_MACH_SAMA5D3_XPLAINED) += barebox-sama5d3-xplained.img
+
+pblb-$(CONFIG_MACH_SAMA5D3_XPLAINED) += start_sama5d3_xplained_xload_mmc
+MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_xload_mmc = 0xffff
+FILE_barebox-sama5d3-xplained-xload-mmc.img = start_sama5d3_xplained_xload_mmc.pblb
+image-$(CONFIG_MACH_SAMA5D3_XPLAINED) += barebox-sama5d3-xplained-xload-mmc.img
+
 pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

