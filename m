Delivery-date: Tue, 28 Jun 2022 22:41:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I14-000bM8-FX
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:41:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I14-0004Hx-D5
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:41:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TprP587aWZjtXBC/lw4x8MvnXvUVsQEC9P/BiZfnYQ0=; b=aAcvLmjk1IuKgLMXGC7pjJdDgF
	2KJGFAJZ1DyoeNDalbffBXHGyFmNo3uBqBOrMMatGxP94Trr5ZakIpuC5b4VFBjWYfdyrPcUSGCKT
	7PDpolwQ1KR2BHXiwYPovgZ6QWdtEnYJgPOPLQxy0eD683pAD4HYWCj2cxhzj+UxT4HWYE8xd7V+4
	bn3u2mlR/01P6KTvtQ3Z8tLAs/ocliO37NJ8yXv+5wpA0hMVBwKShizl2agj5uoM1jQdE04h8Av69
	oe/fm8oTfPTT5OsICeiJDAYpb2MDsk6/oh6yfaZK0klsz/kl2fkaAU8fFuKwaM1EvwnH9Wg0gqUD7
	0dGt2s2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzk-0084uN-Ha; Tue, 28 Jun 2022 20:39:36 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzJ-0084j5-JU
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=TprP587aWZjtXBC/lw4x8MvnXvUVsQEC9P/BiZfnYQ0=;
	b=NVADRSCOPGPQPZxPR5IQoeT447ZjjwXI4YTaDcqM3TGF7IDyNF7ZxlS838qTnyguAB6Z/87mdQ8hH
	 9jUNFIf29slrR4eSQKKDEH+qCzvrr6XFGkrvdWIJVkdGDDQotj6Md6+F/fR/jo/Wbxb4KtXUpBDidc
	 EquyNfI+LwDi/DDA+tlXmBvhdeTANN38WWFll6vYhO6RvaDroYgKtgRBXLm0i3J9Qqul/jnrOf9Nsj
	 aZZuFpNgKk3volYa65MKns9MYukA3Tkst5Qk9N/CDxwlCd+bplVCjtvXwCIF3k/DOFJp3/3yYM4aE/
	 FAg+NzT4P26/tj+oass58HDW89hmJHQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=TprP587aWZjtXBC/lw4x8MvnXvUVsQEC9P/BiZfnYQ0=;
	b=PZ9abgFQQ37RNZnptmClHlH+oc3rUQyg3VK+TcWYXETMX5odcJbP3Wax079Pp4UKil+dtYBn9vzUA
	 wZqbJNkCQ==
X-HalOne-Cookie: d32073184c82ca7b4716211242efcc6855b9e53b
X-HalOne-ID: 5b46c943-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 5b46c943-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:07 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:46 +0200
Message-Id: <20220628203849.2785611-9-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133909_913526_6D69414D 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 08/11] ARM: at91: Add lowlevel helpers for at91sam9263
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add lowlevel helpers like we already have for sama5d2 etc.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Makefile                |   1 +
 arch/arm/mach-at91/include/mach/sam92_ll.h |  54 ++++++
 arch/arm/mach-at91/sam9263_ll.c            | 215 +++++++++++++++++++++
 3 files changed, 270 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sam92_ll.h
 create mode 100644 arch/arm/mach-at91/sam9263_ll.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index b171d682f..390d49d03 100644
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
index 000000000..ffde065f6
--- /dev/null
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -0,0 +1,215 @@
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
+	at91_wdt_disable(IOMEM(AT91SAM9263_BASE_WDT));
+	sam9263_pmc_init(config);
+	sam9263_matrix_init();
+	sam9263_rstc_init();
+}
-- 
2.34.1



