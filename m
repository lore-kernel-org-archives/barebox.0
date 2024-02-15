Delivery-date: Thu, 15 Feb 2024 17:31:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedc-007d8m-0E
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedZ-0005gT-Ov
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+/gW+rtdrJLLKPh1czrxa/879mFUi1F5KMAgeBeoaA=; b=AjD+aR/xwMwPLMni9A+on+2nus
	saYfYK81aQdDJx/QtuSN/HJ7XrIwmoLMjxLBq2VgJdcWRPCK0HUFjLxYxfKnenvX57s2nmU5yki3C
	l+xgVYOworoWakja4dXFHhpmMjdh352mZYvQaAVgvTl71lpS4xyEV8Uv8+2+/49lf1m3+GZq5gBo3
	1M3HDFgj2zwNYdFCwl0AaLKT/jQQkZqZbfX4H4X0KjkAC5XAbBfvnlVM5kIOxwBARhQdLGdhKx4Wt
	Ql0+I99f/2m5TJTtJ+80WzPU7EjbhcngiyOi7R06rUYoqcAu0cRxKnIh27FgMrX9UGtD53z0b1+cb
	JI3l0GsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecz-0000000GyQq-1ny8;
	Thu, 15 Feb 2024 16:30:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecr-0000000GyLj-2OZG
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005H7-Nb; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzX-8w; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-0c;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:00 +0100
Message-Id: <20240215163009.2172795-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083017_726198_85139CE2 
X-CRM114-Status: GOOD (  12.36  )
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
Subject: [PATCH v3 06/15] ARM: at91: sam9263_ll: drop PLL charge pump initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The datasheet[1] described the PLL Charge Pump Current Register in 27.9.17
very sparingly by mandating that 0x10001 is to be written into it.

In the 28-Jan-16 revision of the datasheet the access mode for the
register was changed from Write-only to Read/Write. Indeed reading the
register is possible, but it seems to always return 0, even directly
after write.

Given that code for initializing the PLL charge pumps was added to
AT91Bootsrap only for SAMA5 support and that apparently no adverse effect
was observed on SAM9263 for not doing this for all these years, it follows
that the PLL charge pump has to be already initialized on POR or by BootROM
and we are better off playing it safe and not introducing code in the PMC
setup that didn't exist in Atmel's own AT91Bootstrap.

Therefore drop that line again. There are no upstream boards calling
this function yet anyway, so this should have very limited effect.

[1]: Atmel-6249N-ATARM-SAM9263-Datasheet_14-Mar-16

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 arch/arm/mach-at91/sam9263_ll.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index 8855a679fdf2..7600391629af 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -11,9 +11,6 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 {
 	at91_pmc_init(IOMEM(AT91SAM926X_BASE_PMC), 0);
 
-	/* Initialize PLL charge pump, must be done before PLLAR/PLLBR */
-	at91_pmc_init_pll(IOMEM(AT91SAM926X_BASE_PMC), AT91SAM9_PMC_ICPPLLA | AT91SAM9_PMC_ICPPLLB);
-
 	/* Setting PLL A and divider A */
 	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC),
 			  AT91_PMC_MUL_(config->mula) |
-- 
2.39.2



