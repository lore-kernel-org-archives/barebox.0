Delivery-date: Thu, 11 Dec 2025 09:40:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTcDQ-00AELN-2W
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 09:40:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTcDQ-0003X1-6T
	for lore@pengutronix.de; Thu, 11 Dec 2025 09:40:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tq1KSK0/Brx0pSpVHcslqhI0Ze8MSi/5hDZsUzII82A=; b=C8z4iBHXZMnS0E
	/daon61p1U9wHNHMaBmyx2e4c70+/SVkPTn9XPxh53usvyLEX6ISoZG1xoAqXNrK28aRN1P/HR8qR
	f+jjJ9FxE/kzSuyvYAG+YzlEcqK4ZEttNiPmXd7okbWyI0JQtR/jQ6tkqhSmvKZE9XugcEJWqcGDU
	d/V4fX2OR0NGUsavaMD9FIg7ipb94FXmgSDYcKGfFhtgw3PDL0cjqreCevxnRrDX6vkyh8nZQ7TYA
	fz+WZu9TpcSOU5BNQ9DmRnU1WL6x5v4+TDihh/Am9+Jg9Q8fdvxhvNAOFzEKN/99r/kVgt1KaZmhv
	vYyindUA3BWi++8fb/5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTcCz-0000000GO4y-3baO;
	Thu, 11 Dec 2025 08:39:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTcCu-0000000GO3t-1ZBU
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 08:39:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCs-0003PV-O3; Thu, 11 Dec 2025 09:39:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCs-0056Bc-1n;
	Thu, 11 Dec 2025 09:39:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCs-00000008KPH-1qIJ;
	Thu, 11 Dec 2025 09:39:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 11 Dec 2025 09:39:24 +0100
Message-ID: <20251211083925.1985059-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_003929_096752_6274EAC1 
X-CRM114-Status: GOOD (  14.17  )
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
Cc: Marco Felsch <mfe@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8MM EVK: refactor early startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

refactor startup a bit to make it more clear:
- Do not call start_atf() when not in EL3 rather than immediately
  returning from the function
- rename start_atf() to nxp_imx8mm_evk_init_early() and call
  nxp_imx8mm_evk_init_early() from nxp_imx8mm_evk_start() directly

This is done in preparation for a series which changes
nxp_imx8mm_evk_init_early() to take a device tree pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 881d8285b6..a09caa4904 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -95,21 +95,11 @@ static void power_init_board(void)
 
 extern struct dram_timing_info imx8mm_evk_dram_timing;
 
-static void start_atf(void)
+static void nxp_imx8mm_evk_init_early(void)
 {
-	/*
-	 * If we are in EL3 we are running for the first time and need to
-	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
-	 * to DRAM in EL2.
-	 */
-	if (current_el() != 3)
-		return;
-
 	imx8mm_early_clock_init();
 	power_init_board();
 	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
-
-	imx8mm_load_and_start_image_via_tfa();
 }
 
 /*
@@ -136,7 +126,15 @@ static __noreturn noinline void nxp_imx8mm_evk_start(void)
 
 	setup_uart();
 
-	start_atf();
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
+	 * to DRAM in EL2.
+	 */
+	if (current_el() == 3) {
+		nxp_imx8mm_evk_init_early();
+		imx8mm_load_and_start_image_via_tfa();
+	}
 
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF. I2C pad
-- 
2.47.3



