Delivery-date: Mon, 06 Feb 2023 22:02:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8d1-00GKhb-7u
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 22:02:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8cy-0006U7-3r
	for lore@pengutronix.de; Mon, 06 Feb 2023 22:02:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J8pHf8xN4cUMN+j67kHdzvcSYtJ1GKuonoLEowJlN9w=; b=EvwzX/AZWoLwXUGxesxUS8aNqJ
	j9SKc6TQG7/kpPDesuXUW/wVP3ErGex09WDorjGeQphD5QfyQgM4XPYMKQ//yRLoQxx+dccr0QbIv
	rl/YwcTX8jYNLRpu5cow6eSf9J1iS7zwhbuMJRK3dqx8ZI6zNb8YfQUZji6KXqPkfMtbJcJxd4QyR
	vBg5u50fFoDXDFkEiQUr8wCLGcd7Y5OrEdbArMIo81XweGmsOd8dInzzeo8kF4MNuRnLqHTy4XKZz
	GCBmqlPPbCa8IWH6y1pGaWW7UcwZY+qW2jEJLID01CBu3SgvGZbD86kAbM5CpscpHxMM77jBQQBnB
	aPfFuMcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8b7-009vSd-Bd; Mon, 06 Feb 2023 21:00:21 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8au-009vPx-ED
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 21:00:10 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 26581E74012; Mon,  6 Feb 2023 21:59:32 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-33.net-htp.de [89.183.230.33])
	by lynxeye.de (Postfix) with ESMTPA id 3E856E74008
	for <barebox@lists.infradead.org>; Mon,  6 Feb 2023 21:59:31 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 Feb 2023 21:59:28 +0100
Message-Id: <20230206205928.627270-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_130008_684552_680C000A 
X-CRM114-Status: GOOD (  11.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP-EVK: increase VDD_ARM to OD voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux kernel or whatever is started from Barebox might switch the
ARM frequency to OD level, without first reprogramming the PMIC as
required. This might lead to system instability. To avoid this,
increase VDD_ARM to OD level. When the kernel handles the PMIC properly
it will drop the voltage back to ND level when appropriate.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3cb24df1ca3f..d6fc32e65b61 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -61,6 +61,12 @@ static struct pmic_config pca9450_cfg[] = {
 	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
 	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
 	{ PCA9450_BUCK1CTRL, 0x59 },
+	/*
+	 * Increase VDD_ARM to 0.95V to avoid issues in case software after
+	 * Barebox switches to the OD ARM frequency without reprogramming the
+	 * PMIC first.
+	 */
+	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
 	/* set WDOG_B_CFG to cold reset */
 	{ PCA9450_RESET_CTRL, 0xA1 },
 };
-- 
2.39.1



