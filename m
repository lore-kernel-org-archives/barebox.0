Delivery-date: Fri, 14 Nov 2025 08:24:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoAC-000p8v-1j
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 08:24:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoAC-0000bB-06
	for lore@pengutronix.de; Fri, 14 Nov 2025 08:24:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jz5DmZ47V1Bzxlk9Tvtzddr9VVGqU2JXatsV9QDlQRw=; b=IjD5KGWk3VZcGf4Fzd2EIgEnau
	N8d8B2z8bp7eudEeoL2GC2FkcvzXd4fq9UOL/ZZ4iHfZXhohC40pkr4ym81uRC2Yyv1VmSkxHqM8h
	hB4rZxtELYeC4z6oDsCDkbdLouTFK1pL5N1P8ajwl7e4SPLIN/KUc7WorrDwWr58W0d4VuEjciPDJ
	x0ctdqohdbXvtpPrPkyJnyxZCjcJTjhfLpPQx14D9qlW9xuaP17aMqUkycvjHkGstmkqG1WBRgSRX
	QZKcxiC4vB8O5XAH96KlCGXTgjj3dRUrAaCoFM1l6oY6znGLX9T0ihRHs87hGDkweY6dyu43NJwc2
	SoOvWJcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9f-0000000BkUl-2QBr;
	Fri, 14 Nov 2025 07:23:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9b-0000000BkTU-2H0I
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 07:23:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vJo9Y-0000Ng-7s; Fri, 14 Nov 2025 08:23:28 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Nov 2025 08:23:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-v2025-11-0-topic-socfpga-arria10-v1-1-e091cddacea5@pengutronix.de>
References: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
In-Reply-To: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Bruno Knittel <bruno.knittel@bruker.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_232331_584493_F326BD4A 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: socfpga: arria10-reset-manager: release UART0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bruno Knittel <bruno.knittel@bruker.com>

UART0 is also a dedictated peripheral. Release from reset to have
earlier serial for debugging.

Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-reset-manager.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/arria10-reset-manager.c b/arch/arm/mach-socfpga/arria10-reset-manager.c
index 6f209e7045..01534cd74b 100644
--- a/arch/arm/mach-socfpga/arria10-reset-manager.c
+++ b/arch/arm/mach-socfpga/arria10-reset-manager.c
@@ -86,6 +86,7 @@ void arria10_reset_deassert_dedicated_peripherals(void)
 	mask = ARRIA10_RSTMGR_PER1MODRST_I2C3 |
 	       ARRIA10_RSTMGR_PER1MODRST_I2C4 |
 	       ARRIA10_RSTMGR_PER1MODRST_I2C2 |
+	       ARRIA10_RSTMGR_PER1MODRST_UART0 |
 	       ARRIA10_RSTMGR_PER1MODRST_UART1 |
 	       ARRIA10_RSTMGR_PER1MODRST_GPIO2;
 	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST, mask);

-- 
2.46.0



