Delivery-date: Fri, 03 May 2024 12:37:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIb-00H8B4-1C
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:37:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIa-0002Ef-GI
	for lore@pengutronix.de; Fri, 03 May 2024 12:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yNsRIRLgZlZe6ZrJsMAtsEfnNuokMCDUOOkG4KS/5zM=; b=yCsU7V7zsMuH17ruWkktNRPTId
	j9y6Ec684xss80MvdtTzN3BvKiC4/JFeg9i8mYiZdn8+EdZwepo3q6b8mDmHw41xxqEXXcEflXDeI
	0OJZSl8GNS8k5ElCdD6BZypVVHQ3+CmRcuX5pSsLlX2VlOMZZdngdGnVWZuNmDklLgmoWxzhQF/hD
	wli/SKGUUElkjL641ODGcldgS6fgXu2iE6jogNssbv40Jm/9gt6qOsn/GTX3vZwN1GdrqKFRXys6u
	ylgFdRMJSjeLrwPHyMMMp43W9AB9XqP9KHFldf/WEyuLpJxosn6NDWjBWDUJT00HQVUmfXhh2p42A
	2Is4d7Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qIA-0000000G4ul-0HTO;
	Fri, 03 May 2024 10:37:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI5-0000000G4s4-0JTL
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:37:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-0001wN-P0; Fri, 03 May 2024 12:37:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-00FgXh-CJ; Fri, 03 May 2024 12:37:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-005kc5-0v;
	Fri, 03 May 2024 12:37:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:37:14 +0200
Message-Id: <20240503103717.1370636-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
References: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033721_201983_F259B22F 
X-CRM114-Status: GOOD (  12.89  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] ARM: i.MX8MP: configure PLL3 as 600MHz
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
v1 -> v2:
  - no change
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



