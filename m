Delivery-date: Thu, 15 Feb 2024 17:31:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedc-007d95-0k
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedZ-0005gv-Vc
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VyXRjlXM7AAellVjDQGHn5s12LGdOZoU6iGRQY2lfVE=; b=gT5/tGnMkJOQxn3Wy7zTT37q7J
	oY9BiRX5Be+LEz/8aTYdnWuCKC6ooF+ckBwLKJvXR1b4njjvx6fcidG7gtAoVjCPNKm5kU106Kz97
	8IH5118/mrgd5reausSR0QeKeciKTqSubP21ooWlaaFrMtg07gVM2v25IUthZMv9gVL9eI1vVya/B
	nSlMD341C8fwlN9UUYvnzF0hdgdRywzdgldAg1tSwSU7iAHy1ZS8KuSHTF1TJLyr3gxMG7aLAEgrD
	Deh3i0YVW/BaEp+sdX6qTuoaKkw2t5pM/eGColil2sxRLcV8k4eE00hrFBd12BWY4FfBpq8TzsJUm
	vVciqgPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecx-0000000GyQ8-3M3I;
	Thu, 15 Feb 2024 16:30:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecr-0000000GyLm-2H1m
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005HD-RI; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzd-C0; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-0u;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:02 +0100
Message-Id: <20240215163009.2172795-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083017_640238_A005679A 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 08/15] ARM: at91: sam9263_ll: refactor MCK switch to PLLA for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Duplicating the bits being written to configure the MCK harms
readability, so factor that out into a new variable to make clear the
bits that change between the two calls to at91_pmc_cfg_mck().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
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



