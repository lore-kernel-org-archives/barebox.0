Delivery-date: Mon, 14 Apr 2025 08:59:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnS-000XVG-1V
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:59:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnR-0000nG-Sd
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:59:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WfoxkVklK0CG1+aRZgSnUwhtAQ3xoUfMS+qsWlaLRD0=; b=pNnxcINB2a4elNFGR3QmEiZqZD
	2nouksXfdWOoVuMCYC08Q88cA2oDfSH67bIDRpnNrkv+D+NfMfF8pCL0+wKrVyLYUNOfmYrr5Liwc
	BFzoP+FHGw7lVogSUTl5EDlnpUZFhbPEhjn5/GY8y8HLlmfkmuhcCaZS85ckB4ajwG4CNyMm4DvY8
	TRPnmOAJ6nbORu2lcutwWx7UwEYQ3dG8+0m0GH+MpzJiSBK7zvzFUfnc8hic1bGuSrNr2pSyRE0iB
	Pw5gZ4gHLCM5Xt/NjP+u9r3HdgUG33dCCIlpOnmstoqdzpxzoG9HVIZU7M9hSeBtFbUXJrWAGKKqq
	TQ9eX39w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dn1-00000000rpX-0H5l;
	Mon, 14 Apr 2025 06:59:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4De1-00000000ql2-3shW
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:50:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-0006V0-EI; Mon, 14 Apr 2025 08:50:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-000Coh-0l;
	Mon, 14 Apr 2025 08:50:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-00BcuJ-0T;
	Mon, 14 Apr 2025 08:50:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:50:05 +0200
Message-Id: <20250414065009.2770749-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_235014_048378_B0CB1659 
X-CRM114-Status: GOOD (  15.77  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] ARM: i.MX8MP: skov: decrease VDD_SOC to 850mV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't do dynamic voltage scaling for VDD_SOC, so the value set in
barebox may never change if the Linux PMIC driver doesn't intentionally
change it. The static configuration we had in barebox was for overdrive
mode, but the kernel DT since v6.15-rc1 now configures all clocks for
nominal mode instead as that's what the heat sink was specced for.

Nominal mode is 850mV, so configure BUCK1 RUN voltage to exactly that
value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/lowlevel.c | 16 ++++++++--------
 arch/arm/dts/imx8mp-skov.dts           |  1 +
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/lowlevel.c b/arch/arm/boards/skov-imx8mp/lowlevel.c
index c35ffe526dae..692482f43580 100644
--- a/arch/arm/boards/skov-imx8mp/lowlevel.c
+++ b/arch/arm/boards/skov-imx8mp/lowlevel.c
@@ -48,22 +48,22 @@ static struct pmic_config pca9450_cfg[] = {
 	/* BUCKxOUT_DVS0/1 control BUCK123 output */
 	{ PCA9450_BUCK123_DVS, 0x29 },
 	/*
-	 * increase VDD_SOC to typical value 0.95V before first
+	 * Set VDD_SOC to typical value 0.85V before first
 	 * DRAM access, set DVS1 to 0.85v for suspend.
 	 * Enable DVS control through PMIC_STBY_REQ and
 	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
 	 */
-	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
+	{ PCA9450_BUCK1OUT_DVS0, 0x14 },
 	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
 	{ PCA9450_BUCK1CTRL, 0x59 },
-	/*
-	 * Increase VDD_ARM to 0.95V to avoid issues in case software after
-	 * Barebox switches to the OD ARM frequency without reprogramming the
-	 * PMIC first.
-	 */
-	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
 	/* set WDOG_B_CFG to cold reset */
 	{ PCA9450_RESET_CTRL, 0xA1 },
+	/*
+	 * As we do cold resets and Linux will take care to reconfigure the
+	 * pmic before switching to the OD ARM frequency, we will just keep
+	 * VDD_ARM at 850mV
+	 */
+	{ PCA9450_BUCK2OUT_DVS0, 0x14 },
 };
 
 static void power_init_board(void)
diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 5271c9deabe5..9ec0b9d21709 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -4,6 +4,7 @@
 
 #include <arm64/freescale/imx8mp.dtsi>
 #include "imx8mp.dtsi"
+#include <arm64/freescale/imx8mp-nominal.dtsi>
 
 #include <dt-bindings/leds/common.h>
 
-- 
2.39.5



