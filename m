Delivery-date: Fri, 03 May 2024 12:37:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIc-00H8Bv-19
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIb-0002Fx-L1
	for lore@pengutronix.de; Fri, 03 May 2024 12:37:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5203sCooQ7Lmt9LAP+uMWXpIA5o8WgJDr+qwdMs2Rug=; b=e6ApMCrJnS60/BxjVKCwztG/pF
	q3SsdLYLxK+qrVblWHriozv36X015h/EkpB5Xg2rcP25pQzfWrKk+sn71w2GOIR0etjzPT0kgODQK
	EdPc1z5ICRTByJgTEg1ZpnDFJcoW9kgsdl+91dJc25OJ3HvJVVyg+Zq00bL1fSvc+fDwD/awUlz+/
	yHUGeA+THFau9WVaKUodcxys4Q+VoCHYJ9LfrvTz5LH9i30vS79G+3gBPQP6jc1R2eiZg532kOlti
	03ZqTs6Kk4soYmpLdnKTr36wKNMQKHMcjuByuXCVA6JGSxxxKppDNoStN3zeaWXfevTuKqxZlqNkJ
	YbOTxwtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI9-0000000G4uW-2BbJ;
	Fri, 03 May 2024 10:37:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI5-0000000G4s3-0G12
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:37:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-0001wO-Qb; Fri, 03 May 2024 12:37:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-00FgXk-Di; Fri, 03 May 2024 12:37:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-005kc5-15;
	Fri, 03 May 2024 12:37:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:37:15 +0200
Message-Id: <20240503103717.1370636-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
References: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033721_189989_A3FABCB5 
X-CRM114-Status: GOOD (  11.71  )
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
Subject: [PATCH v2 3/5] ARM: i.MX8MP: configure PLL3 as noc_io parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

noc_io is clocked at 24MHz when exiting bootrom, which is a far cry
below the 600MHz it can run at in nominal drive mode.

This doesn't bother us much, because we reconfigure it to 800MHz later
on via assigned-clock-properties, but that frequency is only suitable
when running in overdrive mode (VDD_SOC = 950 mV).

Make switching to nominal mode easier by initializing NOC_IO to
the highest nominal frequency.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/arm/mach-imx/imx8m.c         | 7 +++++++
 include/mach/imx/imx8m-ccm-regs.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 211b4f782199..56330cef500c 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -116,6 +116,13 @@ static void __imx8m_early_clock_init(int cpu_type)
 	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
 				    pll3_freq, 25000000UL);
 
+	if (cpu_type == IMX_CPU_IMX8MP) {
+		/* 8MP ROM already set NOC to 800Mhz, only need to configure NOC_IO clk to 600Mhz */
+		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+	}
+
 	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
 			IMX8M_CCM_TARGET_ROOTn_MUX(7),
 			IMX8M_CCM_TARGET_ROOTn_MUX(2));
diff --git a/include/mach/imx/imx8m-ccm-regs.h b/include/mach/imx/imx8m-ccm-regs.h
index 29186eb8a7bc..035cd13ed694 100644
--- a/include/mach/imx/imx8m-ccm-regs.h
+++ b/include/mach/imx/imx8m-ccm-regs.h
@@ -22,6 +22,7 @@
  * Applications Processor Reference Manual
  */
 #define IMX8M_ARM_A53_CLK_ROOT		0
+#define IMX8M_NOC_IO_CLK_ROOT           27
 #define IMX8M_DRAM_SEL_CFG		48
 #define IMX8M_DRAM_ALT_CLK_ROOT		64
 #define IMX8M_DRAM_APB_CLK_ROOT		65
-- 
2.39.2



