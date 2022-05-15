Delivery-date: Sun, 15 May 2022 21:40:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6U-00EWVw-Te
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6S-0005yb-8o
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNnUWUICreNaS6GYNFm4ufmSaCdCBRdfY2mV8xTq4HY=; b=aGggxe/GCVwA16
	624QL2vH4GmPTKDLRdQ500sp0oKcykxHEeEwYYJeJFmENVwvTfGNgnZH7NU0jj0gEyKcaxDF+BYaN
	BYUlDCpzv20cpwPbAfkxjBHQYaGzijil1s/ezY2dSsInLuajLKzXwt2WhnFNsZw5VecNkTc596ZNT
	dXqfq45cxGGBqbdllN5eA3VRsPzM/bFYXunzbOv83cE6h3wcLM4PUIyw6rCUrgM2Uog/0HRGH9RdJ
	uthMb3PsVW/XCSCLrA5QWasWGUAMUCI7eDUaq530W3rat64hAm2V4/qn93DI3vJLNqRs7lJhv3nJI
	8nww92ywMZt6NWHI2JKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4g-004naV-J2; Sun, 15 May 2022 19:38:42 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4T-004nUo-0S
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=AQ/mMZtcIy1U4PICG1dHJ36W9ivLLSxmcyELCPxiuw0=;
 b=KsLsmC/TcYcMoEOqlt5WKQ4N933Pl6rXzIWPrZKVpfqB2BI3gCfFOzzaFTcW/bClT2r5V+7YSxZ2Y
 mXPkyO/F+/dopQVyFxehUAuIkgr31toVunJGTlMhRThHaNvnNI8xhp1j2xHJjgXxh5eBt98TzCrVTn
 RuuY/B9E4XYMn5bCi6H4umJzh7xFYvN4h/ZvhXdTdmhaIglzK/I4kBHex30hNrBE4zeJBr4TIMCnBG
 rMs3HVdoHrPCnFUQFXX6zRlsZIRH94SVOQLSdJQignTpxRTBrrzC+y3PwuHSbV1VsJoX8hoLMP5a3k
 WQjOm4jXGRk+eda3rCj/9G6frsRnXMQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=AQ/mMZtcIy1U4PICG1dHJ36W9ivLLSxmcyELCPxiuw0=;
 b=o5NYYTQD2EQLJBrx/uEPlr3tCIzMHYr4D+xoBtsAa+jwjv/jnMyVknj81PNinuG8ms1o0QgU+E+Ue
 roxeSYfBQ==
X-HalOne-Cookie: 165563a6007c4d9408062d4ecc4e1e92dcc5aa66
X-HalOne-ID: 97294700-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 97294700-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:26 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:04 +0200
Message-Id: <20220515193807.354903-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123829_242324_779C269A 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 5/8] ARM: at91: Add lowlevel helpers for at91sam9263
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add lowlevel helpers like we already have for sama5d2 etc.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile                |   1 +
 arch/arm/mach-at91/include/mach/sam92_ll.h |  54 ++++++
 arch/arm/mach-at91/sam9263_ll.c            | 216 +++++++++++++++++++++
 3 files changed, 271 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sam92_ll.h
 create mode 100644 arch/arm/mach-at91/sam9263_ll.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 72805d6ef..56c2a3170 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -31,6 +31,7 @@ ifeq ($(CONFIG_OFDEVICE),)
 obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
+lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
 obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
 lwl-$(CONFIG_SOC_SAMA5D3)	+= sama5d3_ll.o
diff --git a/arch/arm/mach-at91/include/mach/sam92_ll.h b/arch/arm/mach-at91/include/mach/sam92_ll.h
new file mode 100644
index 000000000..f5cef197d
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sam92_ll.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_SAM92_LL_H__
+#define __MACH_SAM92_LL_H__
+
+#include <debug_ll.h>
+#include <common.h>
+
+#include <mach/at91_pmc_ll.h>
+#include <mach/at91sam9260.h>
+#include <mach/at91sam9261.h>
+#include <mach/at91sam9263.h>
+#include <mach/at91sam926x.h>
+#include <mach/debug_ll.h>
+#include <mach/early_udelay.h>
+#include <mach/iomux.h>
+
+struct sam92_pmc_config {
+	unsigned int diva;
+	unsigned int mula;
+};
+
+void sam9263_lowlevel_init(const struct sam92_pmc_config *config);
+
+static inline void sam92_pmc_enable_periph_clock(int clk)
+{
+	at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC), clk);
+}
+
+/* requires relocation */
+static inline void sam92_udelay_init(unsigned int msc)
+{
+	early_udelay_init(IOMEM(AT91SAM926X_BASE_PMC), IOMEM(AT91SAM9263_BASE_PIT),
+			  AT91SAM926X_ID_SYS, msc, 0);
+}
+
+static inline void sam92_dbgu_setup_ll(unsigned int mck)
+{
+	void __iomem *pio = IOMEM(AT91SAM9263_BASE_PIOC);
+
+	// Setup clock for pio
+	sam92_pmc_enable_periph_clock(AT91SAM9263_ID_PIOCDE);
+
+	// Setup DBGU uart
+	at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PC30), AT91_MUX_PERIPH_A, GPIO_PULL_UP); // DRXD
+	at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PC31), AT91_MUX_PERIPH_A, 0); // DTXD
+
+	// Setup dbgu
+	at91_dbgu_setup_ll(IOMEM(AT91_BASE_DBGU1), mck, CONFIG_BAUDRATE);
+	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
+	putc_ll('#');
+}
+
+#endif
diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
new file mode 100644
index 000000000..11c399b66
--- /dev/null
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
+// SPDX-FileCopyrightText: 2017, Microchip Corporation
+
+#include <mach/at91sam9263_matrix.h>
+#include <mach/barebox-arm.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/sam92_ll.h>
+
+static void sam9263_pmc_init(const struct sam92_pmc_config *config)
+{
+	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), 0);
+
+	/* Initialize PLL charge pump, must be done before PLLAR/PLLBR */
+	at91_pmc_init_pll(IOMEM(AT91SAM926X_BASE_PMC), AT91SAM9_PMC_ICPPLLA | AT91SAM9_PMC_ICPPLLB);
+
+	/* Setting PLL A and divider A */
+	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC),
+			  AT91_PMC_MUL_(config->mula) |
+			  AT91_PMC_OUT_2 |		// 190 to 240 MHz		
+			  config->diva,			// Divider
+			  0);
+
+	/* Selection of Master Clock and Processor Clock */
+	 
+	/* PCK = PLLA = 2 * MCK */
+	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
+			 AT91_PMC_CSS_SLOW
+			 | AT91_PMC_PRES_1
+			 | AT91SAM9_PMC_MDIV_2
+			 | AT91_PMC_PDIV_1,
+			 0);
+
+	/* Switch MCK on PLLA output */
+	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
+			 AT91_PMC_CSS_PLLA
+			 | AT91_PMC_PRES_1
+			 | AT91SAM9_PMC_MDIV_2
+			 | AT91_PMC_PDIV_1,
+			 0);
+}
+
+static inline void matrix_wr(unsigned int offset, const unsigned int value)
+{
+	writel(value, IOMEM(AT91SAM9263_BASE_MATRIX + offset));
+}
+
+static void sam9263_matrix_init(void)
+{
+	/* Bus Matrix Master Configuration Register */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG0, AT91SAM9263_MATRIX_ULBT_SIXTEEN);	/* OHCI */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG1, AT91SAM9263_MATRIX_ULBT_EIGHT);	/* ISI */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG2, AT91SAM9263_MATRIX_ULBT_EIGHT);	/* 2D */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG3, AT91SAM9263_MATRIX_ULBT_EIGHT);	/* DMAC */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG4, AT91SAM9263_MATRIX_ULBT_FOUR);	/* MACB */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG5, AT91SAM9263_MATRIX_ULBT_SIXTEEN);	/* LCDC */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG6, AT91SAM9263_MATRIX_ULBT_SINGLE);	/* PDC */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG7, AT91SAM9263_MATRIX_ULBT_EIGHT);	/* DBUS */
+	matrix_wr(AT91SAM9263_MATRIX_MCFG8, AT91SAM9263_MATRIX_ULBT_EIGHT);	/* IBUS */
+
+	/* Bus Matrix Slave Configuration Registers */
+
+	/* ROM */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG0,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_ARM926I
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(32));
+
+	/* RAM80K */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG1,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_EMAC
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(32));
+
+	/* RAM16K */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG2,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_USB
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(16));
+
+	/* PERIPHERALS */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG3,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_PDC
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(4));
+
+	/* EBI0 */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG4,
+		  AT91SAM9263_MATRIX_ARBT_ROUND_ROBIN
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_ARM926I
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(32));
+
+	/* EBI1 */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG5,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_LCDC
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(64));
+
+	/* APB */
+	matrix_wr(AT91SAM9263_MATRIX_SCFG6,
+		  AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY
+		  | AT91SAM9263_MATRIX_FIXED_DEFMSTR_ARM926D
+		  | AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST
+		  | AT91SAM9263_MATRIX_SLOT_CYCLE_(4));
+
+	/* ROM */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS0,
+		  AT91SAM9263_MATRIX_M0PR_(1)
+		  | AT91SAM9263_MATRIX_M1PR_(0)
+		  | AT91SAM9263_MATRIX_M2PR_(2)
+		  | AT91SAM9263_MATRIX_M3PR_(1)
+		  | AT91SAM9263_MATRIX_M4PR_(0)
+		  | AT91SAM9263_MATRIX_M5PR_(3)
+		  | AT91SAM9263_MATRIX_M6PR_(2)
+		  | AT91SAM9263_MATRIX_M7PR_(3));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS0, AT91SAM9263_MATRIX_M8PR_(0));
+
+	/* RAM80K */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS1,
+		  AT91SAM9263_MATRIX_M0PR_(1)
+		  | AT91SAM9263_MATRIX_M1PR_(2)
+		  | AT91SAM9263_MATRIX_M2PR_(1)
+		  | AT91SAM9263_MATRIX_M3PR_(3)
+		  | AT91SAM9263_MATRIX_M4PR_(0)
+		  | AT91SAM9263_MATRIX_M5PR_(0)
+		  | AT91SAM9263_MATRIX_M6PR_(3)
+		  | AT91SAM9263_MATRIX_M7PR_(0));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS1, AT91SAM9263_MATRIX_M8PR_(2));
+
+       /* RAM16K */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS2,
+		  AT91SAM9263_MATRIX_M0PR_(1)
+		  | AT91SAM9263_MATRIX_M1PR_(0)
+		  | AT91SAM9263_MATRIX_M2PR_(2)
+		  | AT91SAM9263_MATRIX_M3PR_(1)
+		  | AT91SAM9263_MATRIX_M4PR_(0)
+		  | AT91SAM9263_MATRIX_M5PR_(3)
+		  | AT91SAM9263_MATRIX_M6PR_(3)
+		  | AT91SAM9263_MATRIX_M7PR_(2));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS2, AT91SAM9263_MATRIX_M8PR_(0));
+
+	/* PERIPHERALS */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS3,
+		  AT91SAM9263_MATRIX_M0PR_(0)
+		  | AT91SAM9263_MATRIX_M1PR_(1)
+		  | AT91SAM9263_MATRIX_M2PR_(0)
+		  | AT91SAM9263_MATRIX_M3PR_(2)
+		  | AT91SAM9263_MATRIX_M4PR_(1)
+		  | AT91SAM9263_MATRIX_M5PR_(0)
+		  | AT91SAM9263_MATRIX_M6PR_(3)
+		  | AT91SAM9263_MATRIX_M7PR_(2));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS3, AT91SAM9263_MATRIX_M8PR_(3));
+
+	/* EBI0 */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS4,
+		  AT91SAM9263_MATRIX_M0PR_(1)
+		  | AT91SAM9263_MATRIX_M1PR_(3)
+		  | AT91SAM9263_MATRIX_M2PR_(0)
+		  | AT91SAM9263_MATRIX_M3PR_(2)
+		  | AT91SAM9263_MATRIX_M4PR_(3)
+		  | AT91SAM9263_MATRIX_M5PR_(0)
+		  | AT91SAM9263_MATRIX_M6PR_(0)
+		  | AT91SAM9263_MATRIX_M7PR_(1));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS4, AT91SAM9263_MATRIX_M8PR_(2));
+
+	/* EBI1 */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS5,
+		  AT91SAM9263_MATRIX_M0PR_(0)
+		  | AT91SAM9263_MATRIX_M1PR_(1)
+		  | AT91SAM9263_MATRIX_M2PR_(0)
+		  | AT91SAM9263_MATRIX_M3PR_(0)
+		  | AT91SAM9263_MATRIX_M4PR_(3)
+		  | AT91SAM9263_MATRIX_M5PR_(2)
+		  | AT91SAM9263_MATRIX_M6PR_(3)
+		  | AT91SAM9263_MATRIX_M7PR_(2));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS5, AT91SAM9263_MATRIX_M8PR_(1));
+
+	/* APB */
+	matrix_wr(AT91SAM9263_MATRIX_PRAS6,
+		  AT91SAM9263_MATRIX_M0PR_(1)
+		  | AT91SAM9263_MATRIX_M1PR_(0)
+		  | AT91SAM9263_MATRIX_M2PR_(2)
+		  | AT91SAM9263_MATRIX_M3PR_(1)
+		  | AT91SAM9263_MATRIX_M4PR_(0)
+		  | AT91SAM9263_MATRIX_M5PR_(0)
+		  | AT91SAM9263_MATRIX_M6PR_(3)
+		  | AT91SAM9263_MATRIX_M7PR_(3));
+
+	matrix_wr(AT91SAM9263_MATRIX_PRBS6, AT91SAM9263_MATRIX_M8PR_(2));
+}
+
+static void sam9263_rstc_init(void)
+{
+	writel(AT91_RSTC_KEY | AT91_RSTC_URSTEN, IOMEM(AT91SAM926X_BASE_RSTC + AT91_RSTC_MR));
+}
+
+void sam9263_lowlevel_init(const struct sam92_pmc_config *config)
+{
+	arm_cpu_lowlevel_init();
+	at91_wdt_disable(IOMEM(AT91SAM9263_BASE_WDT));
+	sam9263_pmc_init(config);
+	sam9263_matrix_init();
+	sam9263_rstc_init();
+}
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

