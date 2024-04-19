Delivery-date: Fri, 19 Apr 2024 08:14:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVn-0074fJ-0P
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:14:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVm-000877-8W
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:14:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A661Mx+YKPFUXRc35fhLSyKG8Lcm/c1Xta/+pUgUDxM=; b=eHEYmdJ6HDejVdJKWQNTnnn9Nm
	pa7yIQsqDp2Sm7i5P2ffPh9S8WUZj2uSQyDupopg5n/eEsi8Wej0gmXQQA1QYBn57d8z6Xu8+3955
	if3U2LY30R2QFesCx9sIZjNvYcCedmwmRPAAcJrPRdbjzbJ35KRUAe86T/SWmsEGu6oCFRww6QxoB
	hDan+1lIRsOkWEgpSBf7kR4j701ZQqxBNMLpYDJyMLwTOuH/8FZIU6SAJcvabmGxZa53wGGoFTY3P
	N5zDD1ooGMQQXE8zYJXDKxoqQWNA2Uv5i5oR+mY/twKrMqIQRP6iI/j8RYbHVb4Ypq82FLvRVrPHj
	wvGbVndg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhVN-00000004ZA6-0Hry;
	Fri, 19 Apr 2024 06:13:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhV8-00000004Z3e-3ogj
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:13:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-0007C4-Fs; Fri, 19 Apr 2024 08:13:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-00D6hl-3h; Fri, 19 Apr 2024 08:13:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-00AsV5-06;
	Fri, 19 Apr 2024 08:13:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:13:28 +0200
Message-Id: <20240419061331.2592739-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
References: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231335_033435_207177B5 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH 2/5] ARM: i.MX8MP: configure PLL3 as 600MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When running the i.MX8MP in nominal drive mode, a number of clocks are
validated only up to 600MHz: m7_core, audio_axi, vpu_bus, gpu_axi,
noc_io, vpu_g1.

Let's configure PLL3 as 600MHz to make it a suitable parent for these
clocks. The upstream Linux DTs don't yet use PLL3, but this aligns us
with U-Boot's boot-time configuration.

While at it, we also add a comment about how pll1 and pll2 are
configured.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index d798c52c6a6e..211b4f782199 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -77,6 +77,13 @@ static void __imx8m_early_clock_init(int cpu_type)
 
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_DDR1);
 
+	/*
+	 * The gate is not exported to clk tree, so configure them here.
+	 * According to ANAMIX SPEC
+	 * sys pll1 fixed at 800MHz
+	 * sys pll2 fixed at 1GHz
+	 * Here we only enable the outputs.
+	 */
 	val = readl(ana + IMX8MM_CCM_ANALOG_SYS_PLL1_GEN_CTRL);
 	val |= INTPLL_CLKE_MASK | INTPLL_DIV2_CLKE_MASK |
 		INTPLL_DIV3_CLKE_MASK | INTPLL_DIV4_CLKE_MASK |
@@ -100,7 +107,7 @@ static void __imx8m_early_clock_init(int cpu_type)
 				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
 
-	if (cpu_type == IMX_CPU_IMX8MN)
+	if (cpu_type == IMX_CPU_IMX8MN || cpu_type == IMX_CPU_IMX8MP)
 		pll3_freq = 600000000UL;
 	else
 		pll3_freq = 750000000UL;
-- 
2.39.2



