Delivery-date: Wed, 02 Apr 2025 15:20:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzy1Q-007Psb-1T
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 15:20:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzy1P-0005dG-Hq
	for lore@pengutronix.de; Wed, 02 Apr 2025 15:20:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zfIOX3JwXL/D1eWs/CjuWQbgAx1cDi21uWeOBbHbUc4=; b=pwAVg4h1houYnmSYn1ul0iiOmX
	V43TVAQbOVW5KhHq+Xx2FcgGVQUx/YBDSCq8gMLYsme4zlpqRNT84evbbfsaJf7iHznFj/kzks0Mi
	GQuUGYKWqOBu4EBv4pSrq4kvwzL3/VJs8S5x700otgl859T3gOCEIHFqbl63jYeowsIGRkiqTHJ/0
	UWqk9JyZIAAf7zDvt/3+B3oHBL7Uo2DazMavoyu2eteA+EAYZqeJOv+7XOrnphVEXheKUDk9e8M1n
	l6hy/x/Dw3dPrNAqs206u004lPdzebW72aMNCjrAfIuV5exes81TH2kaZbMB8ovpDd2leMPRG0OoR
	IOwKr72Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzy0s-00000006DUc-0xsj;
	Wed, 02 Apr 2025 13:20:14 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzy0p-00000006DU9-3wic
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 13:20:13 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-54993c68ba0so2494832e87.2
        for <barebox@lists.infradead.org>; Wed, 02 Apr 2025 06:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743600009; x=1744204809; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zfIOX3JwXL/D1eWs/CjuWQbgAx1cDi21uWeOBbHbUc4=;
        b=OczxCVCOka5HottIwvuooCIgMQNxE3wJb6VwNX3jrztxYhafotS/e9NOtU3NA/fbXl
         0XUyTZnrQFwBFQacaq5m+x3rjQdxYtu37tzhu63ALQLQ327VZHhiFShplpGOc6t5SJu4
         drZ/xwCLMxUaH2vkOxPSvF1jXIlWBh4GIxYEeZvzC/CGHxdGtVXzC08ldrgX9sTavn+a
         +zpqrUwpUXLMD4eU8ACg7nVS9ig223cXP1k+fln1qG70bvjCZR4P0/fzTbgxFTi6HmyC
         Ncxz5iOMzZlS/63G6b11r39j7KM2t+/1WWL1Q539SsWiCa9BCNTmuXk44UhbOW7AY7ZI
         SWuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743600009; x=1744204809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zfIOX3JwXL/D1eWs/CjuWQbgAx1cDi21uWeOBbHbUc4=;
        b=s/e0ChHIEiiL2Izd3By7/PK8ZuOh2DTt+zfutYszEdwSl0RVA4TTF+nTDXWICiYd4/
         3V9QRBDYx2wmhuArLdql0MNIBCgma9RgvZ9zpF/CwkXU8ewO0FbuWt7bwR6w7sH0vNLh
         QHSKHcRxb8RgiswBJ3vV41WA+jfvfHPlVnTkDRcQDxYKVETmyGPV6MYaIFDddHhiLhPu
         G8ZsljCCTZJ5N72jZQIN/HM1AozDCnQsgs3WR2YvdZef5ZE8oSc4pLE4z6Ku7/sWv1/g
         PDRghlMKxngC6mBxTwBwW8sS07oWdvNFN60Gg4pDqSaCgOPjRtzKttjlrub6B7AxBViK
         ZKhQ==
X-Gm-Message-State: AOJu0Yxx759j2K2lgjihjYKOZdtneayGcWIRcIP3V6qtFCTmJXPImmuY
	7s2U2xW4ubt/pw4AwWqhWJieiD4GK73zGKou/Tft/sPvF6wrcI2lYbNFmw==
X-Gm-Gg: ASbGnctyRywv2pvtkcz/NczXQrRXxGa66wbBMRZUcQ6pSTEpAgsQC16f7tf23SB9h6L
	4nrixaR6xg70oMcUIHIEFJCMvFZn6ZJu11rzahO+xgv0BzhlsPLN0PpvlJ11LdSmWl6heRbY9RA
	ICevPeoDUqNI983hLPc88CLMtXGb9o1YTAEmwFiyBEToMuOKmGvH5DDOw5pDPKu8boiMr/1SAOo
	KcjmLWnw8Ef7Ox+zmj2BOPSLZB49bcNep4B7NoB/danqQcIsRFVSRIZov1KqSCgDmapQqp0Z59h
	2mNta7UYqEz3EmkWjiZ/4GLpyyudB1VRsdwcoW1BKhVgxRYsyqfy1jEHfyLCALAdSGJ1zU65hjZ
	YIQD+
X-Google-Smtp-Source: AGHT+IG7wRC0JXZkmJq0CduYdIihUQ4NJuOkdXuwQp2mCVwOmMb254uIjf9bcRgmtAPJyJDfCAQ6Gw==
X-Received: by 2002:ac2:4e10:0:b0:549:8cbb:5443 with SMTP id 2adb3069b0e04-54c0a535a5emr1810690e87.47.1743600009205;
        Wed, 02 Apr 2025 06:20:09 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b09580011sm1620716e87.149.2025.04.02.06.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 06:20:08 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  2 Apr 2025 16:19:58 +0300
Message-Id: <20250402131958.3858100-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_062011_982580_46337583 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] phy: rockchip: snps-pcie3: Updating the driver from the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch replaces the driver code from the Linux kernel repository,
specifically to handle the new device tree binding
"rockchip,rx-common-refclk-mode".

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 92 ++++++++++++-------
 1 file changed, 57 insertions(+), 35 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index e533b77ac1..3605dfe435 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -11,7 +11,6 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
-//#include <linux/phy/pcie.h>
 #include <mfd/syscon.h>
 #include <linux/phy/phy.h>
 #include <linux/regmap.h>
@@ -33,11 +32,19 @@
 #define RK3588_PCIE3PHY_GRF_CMN_CON0		0x0
 #define RK3588_PCIE3PHY_GRF_PHY0_STATUS1	0x904
 #define RK3588_PCIE3PHY_GRF_PHY1_STATUS1	0xa04
+#define RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1	0x1004
+#define RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1	0x1104
+#define RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1	0x2004
+#define RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1	0x2104
 #define RK3588_SRAM_INIT_DONE(reg)		(reg & BIT(0))
 
 #define RK3588_BIFURCATION_LANE_0_1		BIT(0)
 #define RK3588_BIFURCATION_LANE_2_3		BIT(1)
 #define RK3588_LANE_AGGREGATION		BIT(2)
+#define RK3588_RX_CMN_REFCLK_MODE_EN		((BIT(7) << 16) |  BIT(7))
+#define RK3588_RX_CMN_REFCLK_MODE_DIS		(BIT(7) << 16)
+#define RK3588_PCIE1LN_SEL_EN			(GENMASK(1, 0) << 16)
+#define RK3588_PCIE30_PHY_MODE_EN		(GENMASK(2, 0) << 16)
 
 struct rockchip_p3phy_ops;
 
@@ -56,6 +63,7 @@ struct rockchip_p3phy_priv {
 	int num_clks;
 	int num_lanes;
 	u32 lanes[4];
+	u32 rx_cmn_refclk_mode[4];
 };
 
 struct rockchip_p3phy_ops {
@@ -115,39 +123,45 @@ static const struct rockchip_p3phy_ops rk3568_ops = {
 static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 {
 	u32 reg = 0;
-	u8 mode = 0;
+	u8 mode = RK3588_LANE_AGGREGATION; /* default */
 	int ret;
 
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1,
+		     priv->rx_cmn_refclk_mode[0] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1,
+		     priv->rx_cmn_refclk_mode[1] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1,
+		     priv->rx_cmn_refclk_mode[2] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1,
+		     priv->rx_cmn_refclk_mode[3] ? RK3588_RX_CMN_REFCLK_MODE_EN :
+		     RK3588_RX_CMN_REFCLK_MODE_DIS);
+
 	/* Deassert PCIe PMA output clamp mode */
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, BIT(8) | BIT(24));
 
 	/* Set bifurcation if needed */
 	for (int i = 0; i < priv->num_lanes; i++) {
-		if (!priv->lanes[i])
-			mode |= (BIT(i) << 3);
-
 		if (priv->lanes[i] > 1)
-			mode |= (BIT(i) >> 1);
+			mode &= ~RK3588_LANE_AGGREGATION;
+		if (priv->lanes[i] == 3)
+			mode |= RK3588_BIFURCATION_LANE_0_1;
+		if (priv->lanes[i] == 4)
+			mode |= RK3588_BIFURCATION_LANE_2_3;
 	}
 
-	if (!mode)
-		reg = RK3588_LANE_AGGREGATION;
-	else {
-		if (mode & (BIT(0) | BIT(1)))
-			reg |= RK3588_BIFURCATION_LANE_0_1;
-
-		if (mode & (BIT(2) | BIT(3)))
-			reg |= RK3588_BIFURCATION_LANE_2_3;
-	}
-
-	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, (0x7<<16) | reg);
+	reg = mode;
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0,
+		     RK3588_PCIE30_PHY_MODE_EN | reg);
 
 	/* Set pcie1ln_sel in PHP_GRF_PCIESEL_CON */
 	if (!IS_ERR(priv->pipe_grf)) {
-		reg = (mode & (BIT(6) | BIT(7))) >> 6;
+		reg = mode & (RK3588_BIFURCATION_LANE_0_1 | RK3588_BIFURCATION_LANE_2_3);
 		if (reg)
 			regmap_write(priv->pipe_grf, PHP_GRF_PCIESEL_CON,
-				     (reg << 16) | reg);
+				     RK3588_PCIE1LN_SEL_EN | reg);
 	}
 
 	reset_control_deassert(priv->p30phy);
@@ -170,7 +184,7 @@ static const struct rockchip_p3phy_ops rk3588_ops = {
 	.phy_init = rockchip_p3phy_rk3588_init,
 };
 
-static int rochchip_p3phy_init(struct phy *phy)
+static int rockchip_p3phy_init(struct phy *phy)
 {
 	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
 	int ret;
@@ -193,7 +207,7 @@ static int rochchip_p3phy_init(struct phy *phy)
 	return ret;
 }
 
-static int rochchip_p3phy_exit(struct phy *phy)
+static int rockchip_p3phy_exit(struct phy *phy)
 {
 	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
 
@@ -202,20 +216,12 @@ static int rochchip_p3phy_exit(struct phy *phy)
 	return 0;
 }
 
-static const struct phy_ops rochchip_p3phy_ops = {
-	.init = rochchip_p3phy_init,
-	.exit = rochchip_p3phy_exit,
+static const struct phy_ops rockchip_p3phy_ops = {
+	.init = rockchip_p3phy_init,
+	.exit = rockchip_p3phy_exit,
 	.set_mode = rockchip_p3phy_set_mode,
 };
 
-static struct phy *rockchip_p3phy_xlate(struct device *dev,
-					const struct of_phandle_args *args)
-{
-	struct rockchip_p3phy_priv *priv = dev->priv;
-
-	return priv->phy;
-}
-
 static int rockchip_p3phy_probe(struct device *dev)
 {
 	struct phy_provider *phy_provider;
@@ -274,7 +280,24 @@ static int rockchip_p3phy_probe(struct device *dev)
 		return priv->num_lanes;
 	}
 
-	priv->phy = phy_create(dev, NULL, &rochchip_p3phy_ops);
+	ret = of_property_read_variable_u32_array(dev->of_node,
+						  "rockchip,rx-common-refclk-mode",
+						  priv->rx_cmn_refclk_mode, 1,
+						  ARRAY_SIZE(priv->rx_cmn_refclk_mode));
+	/*
+	 * if no rockchip,rx-common-refclk-mode, assume enabled for all lanes in
+	 * order to be DT backwards compatible. (Since HW reset val is enabled.)
+	 */
+	if (ret == -EINVAL) {
+		for (int i = 0; i < ARRAY_SIZE(priv->rx_cmn_refclk_mode); i++)
+			priv->rx_cmn_refclk_mode[i] = 1;
+	} else if (ret < 0) {
+		dev_err(dev, "failed to read rockchip,rx-common-refclk-mode property %d\n",
+			ret);
+		return ret;
+	}
+
+	priv->phy = phy_create(dev, NULL, &rockchip_p3phy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
 		return PTR_ERR(priv->phy);
@@ -294,8 +317,7 @@ static int rockchip_p3phy_probe(struct device *dev)
 
 	dev->priv = priv;
 	phy_set_drvdata(priv->phy, priv);
-	phy_provider = of_phy_provider_register(dev, rockchip_p3phy_xlate);
-
+	phy_provider = of_phy_provider_register(dev, of_phy_simple_xlate);
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-- 
2.38.2



