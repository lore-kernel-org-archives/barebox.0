Delivery-date: Mon, 11 Apr 2022 13:54:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndscM-00Fp10-Jn
	for lore@lore.pengutronix.de; Mon, 11 Apr 2022 13:54:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndscK-0000Ox-02
	for lore@pengutronix.de; Mon, 11 Apr 2022 13:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/tvErSHatsrzQCVxq7URNGGp4DFkro6jtoIhc523s+o=; b=ihjrnV4E3nk3ZV
	w8vvrTGlBqEHGz1u7xC/ddM62z2Qgm2HwlT3NXmBCh0GIEaPcDM53ovqi84QOPGkLs8r3b6tqOFJf
	rexze6L0azSJjJIuS0OUHtKXQHu4/3V0R7808fzp7iuD4VI+uJoXYVsSYRrtEUw5SkYFQ/a1bwAKL
	/1wocdF9wNDnRQRvSGE83cXlwfhzdwl2//Iwh39ydukvo+pVgkOREjkq45dN1w9+07f4enTSkzh45
	88r6ehC0muCgiPkdagxMVMFZPqff57HNslT8nkAx5DLt2VniP6L134lVwhXSqygBBUeqAunZsIZ8v
	Z9XhqmpcCNvCCROj7NoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndsal-008mmF-IT; Mon, 11 Apr 2022 11:52:23 +0000
Received: from mxout4.routing.net ([134.0.28.9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndsag-008mLB-5V
 for barebox@lists.infradead.org; Mon, 11 Apr 2022 11:52:19 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id 03D9710087D;
 Mon, 11 Apr 2022 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1649677506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=71Lm4DzhHcm0cAxD7/6lALpQcwSVRxqBagMbMbUcF8Q=;
 b=aLg859ylfQbKvh+cy3OSy97KOLxqljJPmWpAA34JW2qyw3a1w21BZx/gnRrYNUKJ+MSnsS
 JOQrgNq8wocbliydzs/brf7zaizcuNpam6ITsOy8H17tTDBgpTpuzNoTR94n07I4sCnY18
 9i/WCM6+0RRYWGIA0/wlCk4ID7gXmi8=
Received: from localhost.localdomain (fttx-pool-80.245.79.187.bambit.de
 [80.245.79.187])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 74A6740284;
 Mon, 11 Apr 2022 11:45:05 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Mon, 11 Apr 2022 13:44:47 +0200
Message-Id: <20220411114447.20488-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 81c6f517-59e3-47d5-a177-62c0412d7f65
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_045218_421233_D5EA1E6F 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: Rockchip: Update DTS for BPI-R2Pro for new HW-Rev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

New Hardware revision swapped the gmacs (wan is now gmac1).
Previous Revision (v00) was not in public sale so devicetree
can be savely changed.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/dts/rk3568-bpi-r2-pro.dts | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index ef2e0c33e663..cc1bab37074a 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -120,20 +120,20 @@
 	};
 };
 
-&gmac0 {
-	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
-	assigned-clock-rates = <0>, <125000000>;
-	clock_in_out = "input";
-	phy-handle = <&rgmii_phy0>;
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
-	pinctrl-0 = <&gmac0_miim
-		     &gmac0_tx_bus2
-		     &gmac0_rx_bus2
-		     &gmac0_rgmii_clk
-		     &gmac0_rgmii_bus>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+
+	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f */
 	snps,reset-delays-us = <0 20000 100000>;
@@ -367,8 +367,8 @@
 	status = "disabled";
 };
 
-&mdio0 {
-	rgmii_phy0: ethernet-phy@0 {
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
 	};
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

