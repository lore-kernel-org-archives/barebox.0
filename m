Delivery-date: Tue, 20 Feb 2024 10:32:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTw-00Fqio-1h
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTs-0002lk-1v
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9d4aOMdLFy1pwu4YcXHmqMoA98AtW2WL2ESLWHYjHFQ=; b=mdzPB7Hrr2MxXSPcjH3Bv6UHI8
	I+wGoFrug95PnZATt+5J4eY9GiW48XGUwm8X1rrEYHlxXrAVujbuIvxXTCzLhmviCbilDYrJqX4Bx
	wGdiTNxcTG5KDvrb3u4kWQptNFvE2q8BU1kADk5tNe+BrrM4uhf0xvnWDRIg6mHdnzdvRpOkVQf21
	489dW+nuHtgm0xFIhiEAR4bX7LVohldIBIgcCqlEYEFjrRBs0vdby19yjf9anDG0F0NheYTR+3+pm
	acLFAjCjFkxM2RY632MyMOD+zXhnHVt5DdmNWEsagsQUG/Hu/QOss26eK30sxGM4xnXSWFgoLBWVz
	g7jKxLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMTC-0000000DzxR-1Aee;
	Tue, 20 Feb 2024 09:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000DzoE-0XxY
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002FL-Ue; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001oiB-GO; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-1K;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:55 +0100
Message-Id: <20240220093100.1539120-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_270141_2974B2EA 
X-CRM114-Status: GOOD (  16.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 09/14] ARM: at91: sam9263_ll: support configuration of PLLB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PLLB may be used as input to derive the USB's 48 MHz clock.
PLLA is already being setup by currently unused sam9263_lowlevel_init(),
so add an extra parameter for PLLB as well.

While at it, we change the API of sam9263_lowlevel_init(): AT91Bootstrap
code has PLLA_SETTINGS and PLLB_SETTINGS as hex values in the headers,
so it makes porting easier by just allowing low-level barebox code to
use the values as is without having to split them up to stuff into a
struct, only to have them ORed into a single value again.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91_pmc_ll.c | 11 +++++++++++
 arch/arm/mach-at91/sam9263_ll.c  | 15 +++++++--------
 include/mach/at91/at91_pmc_ll.h  |  1 +
 include/mach/at91/sam92_ll.h     |  7 +------
 4 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
index 0d377b4ca720..0101623c8e39 100644
--- a/arch/arm/mach-at91/at91_pmc_ll.c
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -157,6 +157,17 @@ void at91_pmc_cfg_plla(void __iomem *pmc_base, u32 pmc_pllar,
 		;
 }
 
+void at91_pmc_cfg_pllb(void __iomem *pmc_base, u32 pmc_pllbr,
+		       unsigned int __always_unused flags)
+{
+	/* Always disable PLL before configuring it */
+	at91_pmc_write(AT91_CKGR_PLLBR, 0);
+	at91_pmc_write(AT91_CKGR_PLLBR, pmc_pllbr);
+
+	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKB))
+		;
+}
+
 void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags)
 {
 	u32 tmp;
diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index dd4ea7c938f7..a60d3c7a25be 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -7,7 +7,7 @@
 #include <mach/at91/at91_wdt.h>
 #include <mach/at91/sam92_ll.h>
 
-static void sam9263_pmc_init(const struct sam92_pmc_config *config)
+static void sam9263_pmc_init(u32 plla, u32 pllb)
 {
 	unsigned flags = AT91_PMC_LL_AT91SAM9263;
 	u32 mckr_settings;
@@ -15,11 +15,7 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), flags);
 
 	/* Setting PLL A and divider A */
-	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC),
-			  AT91_PMC_MUL_(config->mula) |
-			  AT91_PMC_OUT_2 |		// 190 to 240 MHz
-			  config->diva,			// Divider
-			  flags);
+	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC), plla, flags);
 
 	/* Selection of Master Clock and Processor Clock */
 	mckr_settings = AT91_PMC_PRES_1 | AT91SAM9_PMC_MDIV_2 | AT91_PMC_PDIV_1;
@@ -31,6 +27,9 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 	/* Switch MCK on PLLA output */
 	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
 			 AT91_PMC_CSS_PLLA | mckr_settings, flags);
+
+	if (pllb)
+		at91_pmc_cfg_pllb(IOMEM(AT91SAM926X_BASE_PMC), pllb, flags);
 }
 
 static inline void matrix_wr(unsigned int offset, const unsigned int value)
@@ -199,10 +198,10 @@ static void sam9263_rstc_init(void)
 	writel(AT91_RSTC_KEY | AT91_RSTC_URSTEN, IOMEM(AT91SAM926X_BASE_RSTC + AT91_RSTC_MR));
 }
 
-void sam9263_lowlevel_init(const struct sam92_pmc_config *config)
+void sam9263_lowlevel_init(u32 plla, u32 pllb)
 {
 	at91_wdt_disable(IOMEM(AT91SAM9263_BASE_WDT));
-	sam9263_pmc_init(config);
+	sam9263_pmc_init(plla, pllb);
 	sam9263_matrix_init();
 	sam9263_rstc_init();
 }
diff --git a/include/mach/at91/at91_pmc_ll.h b/include/mach/at91/at91_pmc_ll.h
index 9832712fe5ca..ceb7510144d8 100644
--- a/include/mach/at91/at91_pmc_ll.h
+++ b/include/mach/at91/at91_pmc_ll.h
@@ -45,6 +45,7 @@
 void at91_pmc_init(void __iomem *pmc_base, unsigned int flags);
 void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags);
 void at91_pmc_cfg_plla(void __iomem *pmc_base, u32 pmc_pllar, unsigned int flags);
+void at91_pmc_cfg_pllb(void __iomem *pmc_base, u32 pmc_pllbr, unsigned int flags);
 
 int at91_pmc_enable_generic_clock(void __iomem *pmc_base, void __iomem *sfr_base,
 				  unsigned int periph_id,
diff --git a/include/mach/at91/sam92_ll.h b/include/mach/at91/sam92_ll.h
index 8cfccd640220..25c572bfb4f3 100644
--- a/include/mach/at91/sam92_ll.h
+++ b/include/mach/at91/sam92_ll.h
@@ -15,12 +15,7 @@
 #include <mach/at91/early_udelay.h>
 #include <mach/at91/iomux.h>
 
-struct sam92_pmc_config {
-	unsigned int diva;
-	unsigned int mula;
-};
-
-void sam9263_lowlevel_init(const struct sam92_pmc_config *config);
+void sam9263_lowlevel_init(u32 plla, u32 pllb);
 
 static inline void sam92_pmc_enable_periph_clock(int clk)
 {
-- 
2.39.2



