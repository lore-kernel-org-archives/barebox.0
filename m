Delivery-date: Tue, 07 Feb 2023 13:55:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPNV8-00H12u-0V
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 13:55:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPNV5-00059J-6E
	for lore@pengutronix.de; Tue, 07 Feb 2023 13:55:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+eNqfV0AwFWxcSPrlJwMtOlL8BiVr+r90/bFFSSy3S4=; b=yG38s6ZqtoUnED7sJvg4DX8lYu
	fpQa6ugI1e4eYfHo1h0ieG41O3NgnDnnhieF3Xj1M6IUT8sY6V1Qhgq0qcsaim/4cgyH/y6mw7K3L
	JLg0t16rSLZFTJQO++12vPCo+ppxuthnaEUbejcmrjujh+d1kH82yHT+jcxq6ea20IBZ+U65emMRa
	gw5duwLyjwGjlNuCutO8TBFgToUE8nbBqLR8C0Ce8/LLrmvcp2WljoGu8jr3T48VlPz7H7LayuVI3
	wPzAaXBOqAOZLXmC1VGxEmCKfLch9qlzWM6ckWDiDOsln4/L4d+KkDkL3NebKH44x/n8DD7iEInDZ
	8SgKjoQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNTg-00CADH-PT; Tue, 07 Feb 2023 12:53:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNTa-00CABc-RK
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 12:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTZ-00050p-3G; Tue, 07 Feb 2023 13:53:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTX-003Hwu-90; Tue, 07 Feb 2023 13:53:32 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTX-009mOs-RN; Tue, 07 Feb 2023 13:53:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 Feb 2023 13:53:27 +0100
Message-Id: <20230207125327.2329378-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230207125327.2329378-1-s.hauer@pengutronix.de>
References: <20230207125327.2329378-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_045334_918807_F1C75386 
X-CRM114-Status: GOOD (  11.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: i.MX Riotboard: Let phy driver initialize the phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The phy setup done in the board code is done by the phy driver already,
so drop the board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/board.c | 35 ------------------------
 arch/arm/mach-imx/Kconfig                |  1 +
 2 files changed, 1 insertion(+), 35 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index c5162d2b06..cd912f79e5 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -19,43 +19,8 @@
 #include <linux/phy.h>
 #include <deep-probe.h>
 
-static int ar8035_phy_fixup(struct phy_device *dev)
-{
-	u16 val;
-
-	/* Ar803x phy SmartEEE feature cause link status generates glitch,
-	 * which cause ethernet link down/up issue, so disable SmartEEE
-	 */
-	phy_write(dev, 0xd, 0x3);
-	phy_write(dev, 0xe, 0x805d);
-	phy_write(dev, 0xd, 0x4003);
-
-	val = phy_read(dev, 0xe);
-	phy_write(dev, 0xe, val & ~(1 << 8));
-
-	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	phy_write(dev, 0xd, 0x7);
-	phy_write(dev, 0xe, 0x8016);
-	phy_write(dev, 0xd, 0x4007);
-
-	val = phy_read(dev, 0xe);
-	val &= 0xffe3;
-	val |= 0x18;
-	phy_write(dev, 0xe, val);
-
-	/* introduce tx clock delay */
-	phy_write(dev, 0x1d, 0x5);
-	val = phy_read(dev, 0x1e);
-	val |= 0x0100;
-	phy_write(dev, 0x1e, val);
-
-	return 0;
-}
-
 static int riotboard_probe(struct device *dev)
 {
-	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
-
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
 	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc2", 0);
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dce5d9e1bb..2092b0b000 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -467,6 +467,7 @@ config MACH_EMBEST_MARSBOARD
 config MACH_EMBEST_RIOTBOARD
 	bool "Embest RIoTboard"
 	select ARCH_IMX6
+	imply AT803X_PHY
 
 config MACH_UDOO
 	bool "Freescale i.MX6 UDOO Board"
-- 
2.30.2



