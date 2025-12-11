Delivery-date: Thu, 11 Dec 2025 09:40:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTcDQ-00AELX-2p
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 09:40:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTcDQ-0003XI-AH
	for lore@pengutronix.de; Thu, 11 Dec 2025 09:40:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpMMIxVxyHNfZECd1mH8e6EYM1PNrkZlo+SPVK1hlRw=; b=vE/KPDkIc5LDB6
	xyaYXGQUaYi0m/wwpzSPsmyBNYbsMCsm4IFBzlHKfffKItKoW+I8T5evaIYoTkiH0YsEIUD9wbw3T
	RZgD6nHq/vPAePuaNEqE2rlPaAdsJtCSxvy+vClEv62JSbMqETsFexSZsiioYeKxfW9KqVbWloAKJ
	3D4wP4E/02HrQ8+yMR+3jude31UaPgY7UUlbf9hnH7ufdI61sKKVNNr5IToJ4OPBWN8CZNi5cOF2/
	8a0p++aG+oMObaWAkrKdK9x5biBArcmI2WfhR5xpwN7AfDjy4tFhAl7HTIWs1fU1Bglm6qwP6yHO3
	CAz7ncXdUdomQU6NqQeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTcCz-0000000GO4s-2ToT;
	Thu, 11 Dec 2025 08:39:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTcCu-0000000GO3u-2KJT
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 08:39:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCt-0003Ps-54; Thu, 11 Dec 2025 09:39:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCs-0056Bg-35;
	Thu, 11 Dec 2025 09:39:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTcCs-00000008KPH-3XqP;
	Thu, 11 Dec 2025 09:39:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 11 Dec 2025 09:39:25 +0100
Message-ID: <20251211083925.1985059-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211083925.1985059-1-s.hauer@pengutronix.de>
References: <20251211083925.1985059-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_003929_096731_12B7F377 
X-CRM114-Status: GOOD (  16.00  )
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
Subject: [PATCH 2/2] ARM: i.MX8MN EVK: refactor early startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

refactor startup a bit to make it more clear:
- Do not call start_atf() when not in EL3 rather than immediately
  returning from the function
- rename start_atf() to nxp_imx8mn_evk_init_early() and call
  nxp_imx8mn_evk_init_early() from nxp_imx8mn_evk_start() directly

This is done in preparation for a series which changes
nxp_imx8mn_evk_init_early() to take a device tree pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index a1a501b1d9..93e3ce7a09 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -80,18 +80,10 @@ static struct pmic_config bd71837_cfg[] = {
 
 extern struct dram_timing_info imx8mn_evk_ddr4_timing, imx8mn_evk_lpddr4_timing;
 
-static void start_atf(void)
+static void nxp_imx8mn_evk_init_early(void)
 {
 	struct pbl_i2c *i2c;
 
-	/*
-	 * If we are in EL3 we are running for the first time and need to
-	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
-	 * to DRAM in EL2.
-	 */
-	if (current_el() != 3)
-		return;
-
 	imx8mn_early_clock_init();
 
 	imx8mn_setup_pad(IMX8MN_PAD_I2C1_SCL__I2C1_SCL);
@@ -108,8 +100,6 @@ static void start_atf(void)
 		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
 		imx8mn_ddr_init(&imx8mn_evk_ddr4_timing, DRAM_TYPE_DDR4);
 	}
-
-	imx8mn_load_and_start_image_via_tfa();
 }
 
 /*
@@ -135,7 +125,15 @@ static __noreturn noinline void nxp_imx8mn_evk_start(void)
 
 	setup_uart();
 
-	start_atf();
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
+	 * to DRAM in EL2.
+	 */
+	if (current_el() == 3) {
+		nxp_imx8mn_evk_init_early();
+		imx8mn_load_and_start_image_via_tfa();
+	}
 
 	/* Check if we configured DDR4 in EL3 */
 	if (readl(MX8M_DDRC_CTL_BASE_ADDR) & BIT(4))
-- 
2.47.3



