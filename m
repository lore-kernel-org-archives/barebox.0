Delivery-date: Tue, 20 Feb 2024 10:32:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMU0-00Fqjk-05
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTv-0002nr-By
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I0Gf8Ho5soVzTZKjXTbyXZ9yRjzYV7Eaxe38RBWbDGg=; b=3ONyNIKHgjj9QZ6bBpRDVtKZnz
	2LLoyYOJQxEfmy5shDEk37SJNBGWoa3CXAjlNcq6sLe+qx7IzfavHF0+GFEqTuhJI5YeO7BnabYBb
	sNqaWjXLUC5hWW4UA61B3knP9XPMzLRrwKZKJQ4lSXL7a+oCOT8BTWvPvH/esnerXSdjp+yUWdh5K
	junzZyRnPxZsktkHzRA2d0Pf4RWMiHU57EdmrYem3+egtUTS0eWSAAuq27W5jikS1CaaApPDWWRSI
	0SyTX8Az1BANpK5BOKHeWPvO4bJmZToyKRdzcHj89wC46aj1UjpUQ7qr/HCYJadQi0UCGJQ1t37US
	jmDeF/qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT8-0000000Dzty-0c3P;
	Tue, 20 Feb 2024 09:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000DzoC-0USo
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002FJ-Ta; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001oi8-Ey; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-1A;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:54 +0100
Message-Id: <20240220093100.1539120-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_268131_E6CECFA9 
X-CRM114-Status: GOOD (  11.37  )
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
Subject: [PATCH v4 08/14] ARM: at91: sam9263_ll: refactor MCK switch to PLLA for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Duplicating the bits being written to configure the MCK harms
readability, so factor that out into a new variable to make clear the
bits that change between the two calls to at91_pmc_cfg_mck().

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/sam9263_ll.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index ed56ad21cd89..dd4ea7c938f7 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -10,6 +10,7 @@
 static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 {
 	unsigned flags = AT91_PMC_LL_AT91SAM9263;
+	u32 mckr_settings;
 
 	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), flags);
 
@@ -21,22 +22,15 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 			  flags);
 
 	/* Selection of Master Clock and Processor Clock */
+	mckr_settings = AT91_PMC_PRES_1 | AT91SAM9_PMC_MDIV_2 | AT91_PMC_PDIV_1;
 
 	/* PCK = PLLA = 2 * MCK */
 	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
-			 AT91_PMC_CSS_SLOW
-			 | AT91_PMC_PRES_1
-			 | AT91SAM9_PMC_MDIV_2
-			 | AT91_PMC_PDIV_1,
-			 flags);
+			 AT91_PMC_CSS_SLOW | mckr_settings, flags);
 
 	/* Switch MCK on PLLA output */
 	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
-			 AT91_PMC_CSS_PLLA
-			 | AT91_PMC_PRES_1
-			 | AT91SAM9_PMC_MDIV_2
-			 | AT91_PMC_PDIV_1,
-			 flags);
+			 AT91_PMC_CSS_PLLA | mckr_settings, flags);
 }
 
 static inline void matrix_wr(unsigned int offset, const unsigned int value)
-- 
2.39.2



