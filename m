Delivery-date: Fri, 09 Apr 2021 15:13:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwm-0007sR-9H
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 15:13:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwl-0000Zw-5t
	for lore@pengutronix.de; Fri, 09 Apr 2021 15:13:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r2WMi+BKPXSlZo29uXLzrpPZ3DjEyZR7Nc9oqp2wflc=; b=KKFmpdq4y+f78wg2ykF5T3WXI
	3Wv+ax8WC4tO2DwZBkwEFgd4xgOHutpJ/0KiC1O0HEYjO6MYm/+ET5DG/BA4Ig5Upnvq059IketB9
	No2ydwOvj07FigAT/J0ounPWqdOpjGPfZnmOpmNF9PaeAO0PwoT3TRmhkd9nAon83rx48o01HfYu6
	YI9fn3vguz5XIg3xW1nTYa5ah4U+eVVCQQsVgqqq88r2kFMhdV9Omr5ooMWvOGSczC8z8NWeO2QpO
	92PEZByS3d1OhdOAP8ei+YuN8LRHAArWooZ5loT1VA1Nyq1B5HcH1RoO3QTgjvepn1XphmEeuu78F
	i+i4YlURg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUqvs-000nia-JO; Fri, 09 Apr 2021 13:12:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvX-000neZ-6X
 for barebox@desiato.infradead.org; Fri, 09 Apr 2021 13:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5JYxvyh0wRVqGRqt2r0ilPD9vF4iatuielSllvHg1To=; b=lyjP8NWMMGHULlabJD7jnlcEs4
 Ng7a649u9nmHSZbHuTC3/nJpur29oqErhv4W2wmS+Of+TUdaDiWhw/CHPVUQvFC29y22p0MKgUerC
 60GQQXV2APUpqdJe4FtkwvD+75RWDyYmav9HAzVcIBPg0aX+m4wAT6Jebp4PuRh0P8tgQWUJsjSlC
 vCdx6Ipd21+YNgZHJORKfUpe6vBMhfILwLch5FOIQ1aEBTKUg6iDc+dyPJT6uXco/rXYkQnUkopSg
 +QBZkxje5F9kzTCesW/VwvuCwZ+VSmAWeozS5tqpje+y07iVTcbXglhl6g7yIRpE+Vo/PzIuG3Sp9
 s2fe4Npw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvT-004XU0-AF
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 13:11:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-0008Cz-Tr; Fri, 09 Apr 2021 15:11:51 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-00019I-Gc; Fri, 09 Apr 2021 15:11:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  9 Apr 2021 15:11:49 +0200
Message-Id: <20210409131149.2184-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210409131149.2184-1-o.rempel@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_061155_409575_35C7DDFA 
X-CRM114-Status: GOOD (  18.70  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 6/6] ARM: at91: sama5d3: add multiimage support for the
 microchip-ksz9477-evb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rework the lowlevel init code to make it multiimage capable. With this
patch we can build first and second stage in one run.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 33 ++++---
 .../include/mach/sama5d3-xplained-ddramc.h    | 88 +++++++++++++++++++
 images/Makefile.at91                          |  5 ++
 3 files changed, 114 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 30a5760da6..93ae481975 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -8,20 +8,16 @@
 #include <init.h>
 
 #include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/at91_pmc_ll.h>
-
-#include <mach/hardware.h>
-#include <mach/iomux.h>
 #include <debug_ll.h>
-#include <mach/at91_dbgu.h>
+#include <mach/barebox-arm.h>
+#include <mach/iomux.h>
+#include <mach/sama5d3.h>
+#include <mach/sama5d3-xplained-ddramc.h>
+#include <mach/xload.h>
 
 /* PCK = 528MHz, MCK = 132MHz */
 #define MASTER_CLOCK	132000000
 
-#define sama5d3_pmc_enable_periph_clock(clk) \
-	at91_pmc_enable_periph_clock(IOMEM(SAMA5D3_BASE_PMC), clk)
-
 static void dbgu_init(void)
 {
 	void __iomem *pio = IOMEM(SAMA5D3_BASE_PIOB);
@@ -36,14 +32,27 @@ static void dbgu_init(void)
 	putc_ll('>');
 }
 
+SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
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
 extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
 
-ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
+SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
-
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
diff --git a/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
new file mode 100644
index 0000000000..6f829282c6
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: BSD-1-Clause
+ *
+ * Copyright (C) 2014, Atmel Corporation
+ *
+ * SAMA5D27 System-in-Package DDRAMC configuration
+ */
+
+#include <mach/at91_ddrsdrc.h>
+#include <mach/ddramc.h>
+#include <mach/sama5d3_ll.h>
+
+static inline void sama5d3_xplained_ddrconf(void)
+{
+	const struct at91_ddramc_register conf = {
+		.mdr = AT91_DDRC2_DBW_32_BITS | AT91_DDRC2_MD_DDR2_SDRAM,
+
+		.cr = AT91_DDRC2_NC_DDR10_SDR9
+			| AT91_DDRC2_NR_13
+			| AT91_DDRC2_CAS_3
+			| AT91_DDRC2_DISABLE_RESET_DLL
+			| AT91_DDRC2_ENABLE_DLL
+			| AT91_DDRC2_ENRDM_ENABLE
+			| AT91_DDRC2_NB_BANKS_8
+			| AT91_DDRC2_NDQS_DISABLED
+			| AT91_DDRC2_DECOD_INTERLEAVED
+			| AT91_DDRC2_UNAL_SUPPORTED,
+
+		/*
+		 * The DDR2-SDRAM device requires a refresh every 15.625 us or 7.81 us.
+		 * With a 133 MHz frequency, the refresh timer count register must to be
+		 * set with (15.625 x 133 MHz) ~ 2084 i.e. 0x824
+		 * or (7.81 x 133 MHz) ~ 1039 i.e. 0x40F.
+		 */
+		.rtr = 0x40F,     /* Refresh timer: 7.812us */
+
+		/* One clock cycle @ 133 MHz = 7.5 ns */
+		.t0pr = AT91_DDRC2_TRAS_(6)	/* 6 * 7.5 = 45 ns */
+			| AT91_DDRC2_TRCD_(2)	/* 2 * 7.5 = 22.5 ns */
+			| AT91_DDRC2_TWR_(2)	/* 2 * 7.5 = 15   ns */
+			| AT91_DDRC2_TRC_(8)	/* 8 * 7.5 = 75   ns */
+			| AT91_DDRC2_TRP_(2)	/* 2 * 7.5 = 15   ns */
+			| AT91_DDRC2_TRRD_(2)	/* 2 * 7.5 = 15   ns */
+			| AT91_DDRC2_TWTR_(2)	/* 2 clock cycles min */
+			| AT91_DDRC2_TMRD_(2),	/* 2 clock cycles */
+
+		.t1pr = AT91_DDRC2_TXP_(2)		/* 2 clock cycles */
+			| AT91_DDRC2_TXSRD_(200)	/* 200 clock cycles */
+			| AT91_DDRC2_TXSNR_(19)	/* 19 * 7.5 = 142.5 ns */
+			| AT91_DDRC2_TRFC_(17),	/* 17 * 7.5 = 127.5 ns */
+
+		.t2pr = AT91_DDRC2_TFAW_(6)	/* 6 * 7.5 = 45 ns */
+			| AT91_DDRC2_TRTP_(2)		/* 2 clock cycles min */
+			| AT91_DDRC2_TRPA_(2)		/* 2 * 7.5 = 15 ns */
+			| AT91_DDRC2_TXARDS_(8)	/* = TXARD */
+			| AT91_DDRC2_TXARD_(8),	/* MR12 = 1 */
+	};
+	u32 reg;
+
+	/* enable ddr2 clock */
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_MPDDRC);
+	at91_pmc_enable_system_clock(IOMEM(SAMA5D3_BASE_PMC), AT91CAP9_PMC_DDR);
+
+
+	/* Init the special register for sama5d3x */
+	/* MPDDRC DLL Slave Offset Register: DDR2 configuration */
+	reg = AT91_MPDDRC_S0OFF_1
+		| AT91_MPDDRC_S2OFF_1
+		| AT91_MPDDRC_S3OFF_1;
+	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_SOR);
+
+	/* MPDDRC DLL Master Offset Register */
+	/* write master + clk90 offset */
+	reg = AT91_MPDDRC_MOFF_7
+		| AT91_MPDDRC_CLK90OFF_31
+		| AT91_MPDDRC_SELOFF_ENABLED | AT91_MPDDRC_KEY;
+	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_MOR);
+
+	/* MPDDRC I/O Calibration Register */
+	/* DDR2 RZQ = 50 Ohm */
+	/* TZQIO = 4 */
+	reg = AT91_MPDDRC_RDIV_DDR2_RZQ_50
+		| AT91_MPDDRC_TZQIO_4;
+	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_IO_CALIBR);
+
+	/* DDRAM2 Controller initialize */
+	at91_ddram_initialize(IOMEM(SAMA5D3_BASE_MPDDRC), IOMEM(SAMA5_DDRCS),
+			      &conf);
+}
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 00fa4cab27..7c32049270 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -14,6 +14,11 @@ pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
 FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
 
+pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071_xload_mmc
+MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
+FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
+image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
+
 pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

