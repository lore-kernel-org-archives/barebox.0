Delivery-date: Fri, 03 May 2024 12:37:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIc-00H8C7-1r
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIa-0002Es-V5
	for lore@pengutronix.de; Fri, 03 May 2024 12:37:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3b+S6mgQxVXTeL0DHVePugvpGdHM57yCv0KXQ/HOJQ=; b=KNaS+cGEQtRpIc1xFD0dn/up1l
	iU6LxmcIO2Bf7C6HbH6cmlfdjQAia7nSZgCgCvmcOuf+ObJn0ISTrXchI8NYneujSqfmKFUwfVsGz
	zb4MXkMxaVcrv93fVxG9lLPHRcNLv8N/WbZL+Tx2EEoY6qVuU7cl1kUsI1jS+PrFIXxR8foShvOHE
	3/GqaqUCZogv/RO/7+6SbwC6Wo0AvIDqStLviT4y2djBNUjN7A0itmr02SxF9ZzeHpPu70W8CCkWR
	S++rcLkSLSuLa97O4/krs8D0bafeCuNqwWZxmHrPJBeRfYsaJIjrBKA7hhV7K3yxNc/IX731hE1Cy
	k5NG86mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qIC-0000000G4vy-00nv;
	Fri, 03 May 2024 10:37:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI5-0000000G4s5-0F8h
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:37:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-0001wQ-Rg; Fri, 03 May 2024 12:37:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-00FgXn-F0; Fri, 03 May 2024 12:37:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-005kc5-1E;
	Fri, 03 May 2024 12:37:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:37:16 +0200
Message-Id: <20240503103717.1370636-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
References: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033721_205627_186BD5F1 
X-CRM114-Status: GOOD (  12.67  )
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
Subject: [PATCH v2 4/5] ARM: i.MX8MP: don't reparent GIC from BootROM default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MP, GIC can run at up to 400 MHz in nominal drive mode and up
to 500 MHz in overdrive mode. We currently configure unconditionally
to 100 MHz on i.MX8MP.

The BootROM default is running it on 400 MHz, which works well for us on
the i.MX8MP, so skip the GIC configuration on the i.MX8MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
   User if (!8mp) condition for clarity and move comment into it (Lucas)
---
 arch/arm/mach-imx/imx8m.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 56330cef500c..6286ab7344bc 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -100,12 +100,15 @@ static void __imx8m_early_clock_init(int cpu_type)
 		INTPLL_DIV20_CLKE_MASK;
 	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
 
-	/* config GIC to sys_pll2_100m */
-	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
-	imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
+	if (cpu_type != IMX_CPU_IMX8MP) {
+		/* 8MP ROM already set GIC to 400Mhz, system_pll1_800m with div = 2 */
+		/* For everything else, config GIC to sys_pll2_100m */
+		imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
+		imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(3));
+		imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
+	}
 
 	if (cpu_type == IMX_CPU_IMX8MN || cpu_type == IMX_CPU_IMX8MP)
 		pll3_freq = 600000000UL;
-- 
2.39.2



