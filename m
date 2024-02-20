Delivery-date: Tue, 20 Feb 2024 10:32:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTw-00Fqip-1o
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTr-0002l1-Fk
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y/RfcaFjsQlTBVE0dby+QUQBiUOtpjaoKYhhmtekwXY=; b=imM2ArCm6DSOq1ynrSgFVmVnFL
	eaT2e1ATIrzgPU1SpwVDS0ADguIuXOKrLbtwuJ8+UCxM5oi0mZLDwCFiLPn2JnRmDgcVYcf1FGCZv
	yIAKz01l+TkUYOXEKrNTVZrsdsU9ZnrxHjNn61UL9Na5XebV7XuBq6IUHml/jtLpzD11DSjfGnKR7
	/2GeD7lG9eIkwGzWpLDr9I+KOpj+BfgZxoT3WsWwm6oP9YoYUwqi+rgPI074GS0yZ7/JZE73pPb29
	DsAOE7a1Lr8tJnSRuOtINfDjI6/3XM+b9lH+HOPOw3NOh+0m/xZT1w62XENgFtey4Yl26/F+BVZvJ
	1KNcWTIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT6-0000000Dzt7-1p8k;
	Tue, 20 Feb 2024 09:31:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000DzoA-041a
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002FH-SB; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001oi5-D4; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-11;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:53 +0100
Message-Id: <20240220093100.1539120-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_160725_93035457 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH v4 07/14] ARM: at91: sam9263_ll: pass AT91_PMC_LL_AT91SAM9263 to PMC functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The low level PMC driver does things differently according to its flags
parameter that encodes what SoC is being used. The default case of flags
== 0 is appropriate for the AT91SAM9263, but we have a AT91_PMC_LL_AT91SAM9263
macro that expands to 0, which makes apparent that we take the necessary
precautions, so use that instead for documentation purposes.

No functional change.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/sam9263_ll.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index 7600391629af..ed56ad21cd89 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -9,14 +9,16 @@
 
 static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 {
-	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), 0);
+	unsigned flags = AT91_PMC_LL_AT91SAM9263;
+
+	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), flags);
 
 	/* Setting PLL A and divider A */
 	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC),
 			  AT91_PMC_MUL_(config->mula) |
 			  AT91_PMC_OUT_2 |		// 190 to 240 MHz
 			  config->diva,			// Divider
-			  0);
+			  flags);
 
 	/* Selection of Master Clock and Processor Clock */
 
@@ -26,7 +28,7 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 			 | AT91_PMC_PRES_1
 			 | AT91SAM9_PMC_MDIV_2
 			 | AT91_PMC_PDIV_1,
-			 0);
+			 flags);
 
 	/* Switch MCK on PLLA output */
 	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
@@ -34,7 +36,7 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 			 | AT91_PMC_PRES_1
 			 | AT91SAM9_PMC_MDIV_2
 			 | AT91_PMC_PDIV_1,
-			 0);
+			 flags);
 }
 
 static inline void matrix_wr(unsigned int offset, const unsigned int value)
-- 
2.39.2



