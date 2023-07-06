Delivery-date: Thu, 06 Jul 2023 10:12:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHK6l-00HOtd-Qo
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 10:12:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHK6i-00032R-Ub
	for lore@pengutronix.de; Thu, 06 Jul 2023 10:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gzKQ2GUM9Jk8dppwJ7IXDvtEzRjA4fcR/yaKsfkjv6I=; b=VExLtmHf4KYLhcAlV33f3p2oob
	zi4G6oHaEMOSKdxgxoy0hF8x8jwdiNgA7gNU+RPhng0rnqCDjtnx5gIST7hG6n8ifdqf7UmlUep9A
	wY8OOqiysVmOj7MK+EUAwozxUO3cbCXTQJFWgsWG73BY5T5DFQkP9Q39ihcfLqSj8tC9mBz4J77MF
	QsZCEkJsp+GM+XEHGkNMuQAN4WzPZDwU40cujU1fYtyBy9CGTRNua7QWb6SH0SlMJxbrcwdATi0Sn
	TQSRNOvkt7eBOF3I5OENCJ76UjNuN1iwB2rVdgZXFwhGR58fVA+odbnXE8bABAJZZv9nCuu5UPdFv
	6pNQHCVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHK5R-000uJ8-1g;
	Thu, 06 Jul 2023 08:11:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHK5N-000uHP-1C
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 08:11:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5M-0002rY-4O; Thu, 06 Jul 2023 10:11:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5L-00CSiF-Fp; Thu, 06 Jul 2023 10:11:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5K-003I9m-Gg; Thu, 06 Jul 2023 10:11:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Jul 2023 10:11:25 +0200
Message-Id: <20230706081126.784759-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230706081126.784759-1-o.rempel@pengutronix.de>
References: <20230706081126.784759-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_011133_567546_48D4E8B3 
X-CRM114-Status: GOOD (  17.47  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] ARM: at91: add support for SAMA5D3 - Ethernet Development System Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Microchip Technology SAMA5D3 Ethernet Development System (EDS) Board
(DM320114) is an MPU-based platform for evaluating Ethernet Switch and
PHY products. Compatible Ethernet Switch and PHY Evaluation Boards
connect to the SAMA5D3 EDS Board via either an RGMII or RMII connector.
The Microchip Technology SAMA5D3 EDS Board is not intended for
stand-alone use and has no Ethernet capabilities when no daughter board
or an USB Ethernet adapter is connected.

For more information see:
https://www.microchip.com/en-us/development-tool/DM320114

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/at91.rst                 |  2 +
 arch/arm/boards/Makefile                      |  1 +
 .../arm/boards/microchip-sama5d3-eds/Makefile |  3 +
 .../boards/microchip-sama5d3-eds/lowlevel.c   | 62 +++++++++++++++++++
 arch/arm/configs/at91_multi_defconfig         |  1 +
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/at91-microchip-sama5d3-eds.dts   | 14 +++++
 arch/arm/mach-at91/Kconfig                    | 10 +++
 images/Makefile.at91                          |  9 +++
 9 files changed, 103 insertions(+)
 create mode 100644 arch/arm/boards/microchip-sama5d3-eds/Makefile
 create mode 100644 arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
 create mode 100644 arch/arm/dts/at91-microchip-sama5d3-eds.dts

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index f502979df6..961ef58d84 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -35,6 +35,8 @@ The resulting images will be placed under ``images/``:
   barebox-at91sam9263ek.img
   barebox-microchip-ksz9477-evb.img
   barebox-microchip-ksz9477-evb-xload-mmc.img
+  barebox-microchip-sama5d3-eds.img
+  barebox-microchip-sama5d3-eds-xload-mmc.img
   barebox-sama5d3-xplained.img
   barebox-sama5d3-xplained-xload-mmc.img
   barebox-sama5d27-som1-ek.img
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2877debad5..382e649fce 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -121,6 +121,7 @@ obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
+obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS)	+= microchip-sama5d3-eds/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
 obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
diff --git a/arch/arm/boards/microchip-sama5d3-eds/Makefile b/arch/arm/boards/microchip-sama5d3-eds/Makefile
new file mode 100644
index 0000000000..458f520900
--- /dev/null
+++ b/arch/arm/boards/microchip-sama5d3-eds/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
new file mode 100644
index 0000000000..79346a9b6a
--- /dev/null
+++ b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
+/*
+ * Copyright (C) 2014, Atmel Corporation
+ * Copyright (C) 2018 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <debug_ll.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/sama5d3.h>
+#include <mach/at91/sama5d3-xplained-ddramc.h>
+#include <mach/at91/xload.h>
+
+/* PCK = 528MHz, MCK = 132MHz */
+#define MASTER_CLOCK	132000000
+
+static void dbgu_init(void)
+{
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
+}
+
+SAMA5D3_ENTRY_FUNCTION(start_microchip_sama5d3_eds_xload_mmc, r4)
+{
+	sama5d3_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	sama5d3_udelay_init(MASTER_CLOCK);
+	sama5d3_xplained_ddrconf();
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
+
+	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
+}
+
+extern char __dtb_z_at91_microchip_sama5d3_eds_start[];
+
+SAMA5D3_ENTRY_FUNCTION(start_microchip_sama5d3_eds, r4)
+{
+	void *fdt;
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
+
+	fdt = __dtb_z_at91_microchip_sama5d3_eds_start + get_runtime_offset();
+
+	sama5d3_barebox_entry(r4, fdt);
+}
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index c93c2f5786..de47af3bd0 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_SKOV_ARM9CPU=y
 CONFIG_MACH_AT91SAM9263EK=y
 CONFIG_MACH_AT91SAM9X5EK=y
 CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_MACH_MICROCHIP_SAMA5D3_EDS=y
 CONFIG_MACH_SAMA5D3_XPLAINED=y
 CONFIG_MACH_SAMA5D27_SOM1=y
 CONFIG_MACH_SAMA5D27_GIANTBOARD=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 98f4c4e019..eb9e0e062a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -193,6 +193,7 @@ lwl-$(CONFIG_MACH_AC_SXB) += ac-sxb.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D3_XPLAINED) += at91-sama5d3_xplained.dtb.o
 lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+lwl-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += at91-microchip-sama5d3-eds.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D4_WIFX) += at91-sama5d4_wifx_l1.dtb.o
diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
new file mode 100644
index 0000000000..ad75fc882c
--- /dev/null
+++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/dts-v1/;
+#include <arm/at91-sama5d3_eds.dts>
+#include "sama5d3.dtsi"
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &mmc0, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 349586b683..d249974725 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -606,6 +606,16 @@ config MACH_MICROCHIP_KSZ9477_EVB
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
 
+config MACH_MICROCHIP_SAMA5D3_EDS
+	bool "Microchip SAMA5D3 Ethernet Development System"
+	select SOC_SAMA5D3
+	select OFDEVICE
+	select MCI_ATMEL_PBL
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using Microchip's SAMA5D3 Ethernet Development
+	  System.
+
 config MACH_SAMA5D3_XPLAINED
 	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
 	select SOC_SAMA5D3
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 19a81e2e9a..36f7259406 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -20,6 +20,15 @@ MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
 FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
 
+pblb-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += start_microchip_sama5d3_eds
+FILE_barebox-microchip-sama5d3-eds.img = start_microchip_sama5d3_eds.pblb
+image-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += barebox-microchip-sama5d3-eds.img
+
+pblb-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += start_microchip_sama5d3_eds_xload_mmc
+MAX_PBL_IMAGE_SIZE_start_microchip_sama5d3_eds_xload_mmc = 0xffff
+FILE_barebox-microchip-sama5d3-eds-xload-mmc.img = start_microchip_sama5d3_eds_xload_mmc.pblb
+image-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += barebox-microchip-sama5d3-eds-xload-mmc.img
+
 pblb-$(CONFIG_MACH_SAMA5D3_XPLAINED) += start_sama5d3_xplained
 FILE_barebox-sama5d3-xplained.img = start_sama5d3_xplained.pblb
 image-$(CONFIG_MACH_SAMA5D3_XPLAINED) += barebox-sama5d3-xplained.img
-- 
2.39.2



