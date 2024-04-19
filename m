Delivery-date: Fri, 19 Apr 2024 08:14:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVk-0074eA-2P
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:14:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVj-00085M-Pe
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:14:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hHaelZJeGgZs81gKP8yiOfPnPoN3SA1iCrzdUN7b0/k=; b=eX7u4bsBWG7+a07t26WmHRYWMU
	EO4HNJvOrN1uWmKTYypwQa9dCxA+rAqwVIzVYBbutDvlFrwpOfhli/r387R3m8UlDsJNw2cOI+awc
	T982yVoEWBBSdZw7/ul3QZSm4xfbUOY5Aoyj0/KettAPc3AtwRlnPDpQbZsxAHNUnAdJfXIv/jWOB
	3NlbIohIXn3T+mnVqG4MTG5Phvk3zdfmSINDcRPyNL9xcrJfha5Gvg5K+dSKKjelaLJ9QPOqZgrFa
	MM7B99B4uREHT9LOYY20Pk1M5xF5rGuPo0w88kJPWBiXaJMt7bAAXUn/W1UwDR9+Qo7U+A2irZXfx
	CcHXj5tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhVK-00000004Z8k-2vtX;
	Fri, 19 Apr 2024 06:13:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhV8-00000004Z3i-3oFT
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:13:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-0007C9-JF; Fri, 19 Apr 2024 08:13:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-00D6hs-6y; Fri, 19 Apr 2024 08:13:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-00AsV5-0O;
	Fri, 19 Apr 2024 08:13:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:13:30 +0200
Message-Id: <20240419061331.2592739-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
References: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231335_010317_243A4B4B 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: i.MX8MP: don't reparent GIC from BootROM default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MP, GIC can run at up to 400 MHz in nominal drive mode and up
to 500 MHz in overdrive mode. We currently configure unconditionally
to 100 MHz on i.MX8MP.

The BootROM default is running it on 400 MHz, which works well for us on
the i.MX8MP, so skip the GIC configuration on the i.MX8MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 56330cef500c..0966f7fdf076 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -100,13 +100,6 @@ static void __imx8m_early_clock_init(int cpu_type)
 		INTPLL_DIV20_CLKE_MASK;
 	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
 
-	/* config GIC to sys_pll2_100m */
-	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
-	imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
-
 	if (cpu_type == IMX_CPU_IMX8MN || cpu_type == IMX_CPU_IMX8MP)
 		pll3_freq = 600000000UL;
 	else
@@ -118,11 +111,20 @@ static void __imx8m_early_clock_init(int cpu_type)
 
 	if (cpu_type == IMX_CPU_IMX8MP) {
 		/* 8MP ROM already set NOC to 800Mhz, only need to configure NOC_IO clk to 600Mhz */
+		/* 8MP ROM already set GIC to 400Mhz, system_pll1_800m with div = 2 */
 		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
 					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
 					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+	} else {
+		/* config GIC to sys_pll2_100m */
+		imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
+		imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(3));
+		imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
 	}
 
+
 	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
 			IMX8M_CCM_TARGET_ROOTn_MUX(7),
 			IMX8M_CCM_TARGET_ROOTn_MUX(2));
-- 
2.39.2



