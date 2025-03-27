Delivery-date: Thu, 27 Mar 2025 15:34:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txoJl-004u9p-2k
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:34:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txoJj-00039S-Ai
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:34:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ocuv98KynsEi3f9372ToZHiDNxciHmX3E8t8LelTEdk=; b=u1EY49Rm3IocSQGKbo5n37vt5n
	0L/Zwjd3CwkpUqfSXAU8yKzLXPg+wMZSqY0Xdk1srsKP1G2h8xMgLCE2y3qBQ33RQ3wJCopt2IxZ9
	TeILK91RAl4cGINT/V2A4OO98L+chNKBw+gHFh7ZjUU1j/acy7YWOSZo27x0orebOF1JvpZW5JpDH
	nO/OdLCptdw0Uw0as/H9gMgbOp6r0v3izAWAOOrS/W2BDpeAHNvppGqEYLxlQ0LHEV4FsPWqQr/Oh
	VV3c65G1AdmTgPIHxURX6scpZ5Wvt6t4LAyQGmp54+NsvQ6706YEw57QzBP37Ph05Ev2vwXiZopMa
	hoQN46JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoIu-0000000BDSm-2N01;
	Thu, 27 Mar 2025 14:33:56 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoHZ-0000000BDGr-3Ke6
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:32:35 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-549946c5346so1063887e87.2
        for <barebox@lists.infradead.org>; Thu, 27 Mar 2025 07:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743085951; x=1743690751; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ocuv98KynsEi3f9372ToZHiDNxciHmX3E8t8LelTEdk=;
        b=SNwfK0yKxmwe4eaD+PDNDjWkCE6oJXFrd4p8VmlqF2RZ1ZmD6bF9txIFLMnByHDqkz
         CTDf0u4Q18DO4dR6OzbXrie2u0i9/cZRLyfbak+qT0QVm+Nq65YZxn19Gw8mc/PXmpbH
         HCJXJf8gLrY9TqoE/1Etsj+UT4B0eRkZmh79Gi/sJujZkvAgKyGFDCu+8RWjXYjLZbGE
         fIm1f3kZol1z2P8Vu3/nYYWeikOzMIZ58o1K8BtzIEBJw4XWAiEYaKb2ZtrE7yNryxrm
         icokIYu2X0FC7KxgUwhT0ORmegQ2xi5IbLn5fW+vi/xwbgkwvC8zkrh1BZgfi2gtiHZI
         RHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743085951; x=1743690751;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ocuv98KynsEi3f9372ToZHiDNxciHmX3E8t8LelTEdk=;
        b=SFsQP1DuvK+b9KLOLZ87iOsU9FtZBloTns6cilulhjEJCZPvNBQHghPLC9/qvq5f5a
         kNcd29an7jm4D/WyO1Q76I5qrMGsp/krXfQKe1hi6IFeDf9VLGRph5fkbjl/b8AZjV1r
         NiqtTew9h/pwqFAFjQgro56x+jPd6p1AVwHw+fmLsFOW77NqUuoKbHcXVRugwnZCvy3n
         5MwXyrNDcbMjLdwM4bEFeekO7YkitfuF1co8G/Xb9JJxLzrv8DYJK6y2Wpb1Ko4o0m2D
         EgMAwYqnCIYDwvTvYAPYMvBzob8syOcdOKQj1IM+OufDJnHk7Q/bwKDNROFGk/06gFPi
         6CiQ==
X-Gm-Message-State: AOJu0YwDyq6x0M0YXXF4DLkD1cpJNYPoiWZQdvB/ki6bDVv06cBzMq3G
	0MH+fW8bkmAbV0yU84eAD0NJHf1DicYNNSX2KmdsAbSFaMKfqeQLyboPbQ==
X-Gm-Gg: ASbGncsTGdVDzxxcZRpVr81lu1V4Yei4FXkkkU0qVeN/tntedSBiLk+uHr0Ina+v3KG
	IE4BcTjnL2fQS01xocLP0m7WQaUVI9jVxKJDI2jQNEcw5+aq/noIDXrEKOjQ6EvfaizQkEFxpIj
	xQgqC1q/swqCPVJQyiNn9LLB3PLHC5p29oNStPNhvFP3/Tc12u4d7BxJ70bymGwdWzY0idep8ro
	igwhMhb9MRjCQh5EdQ2XzIHDpyKJkMF1TQKe5j6J80xCREBkfPMHnDnA5Def1lToESa9hpOSMNO
	jz05llrYRg/9yP3FmS92mx5YQ1/pY3/i83jEjZC0oCYsyZtPf3DfMhwatoDplFRrXZsIcFnEyp3
	7zxon
X-Google-Smtp-Source: AGHT+IGj7XIhOeq1Xf0JgVf8rA0F5gxDIDU1Mxt8hUQ2N6Ly9tDP9HhiR2ROE252hVHfbKMYhjAQmw==
X-Received: by 2002:a05:6512:23a9:b0:549:39b1:65c6 with SMTP id 2adb3069b0e04-54b012213fcmr1677099e87.34.1743085950527;
        Thu, 27 Mar 2025 07:32:30 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbb30sm2165055e87.115.2025.03.27.07.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 07:32:28 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 27 Mar 2025 17:32:18 +0300
Message-Id: <20250327143218.1630440-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_073233_847667_4F7F5939 
X-CRM114-Status: GOOD (  23.88  )
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
Subject: [PATCH] phy: rockchip: naneng-combphy: Updating the driver from the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current rockchip-naneng-combphy PHY driver causes my RK3588
board to hang when probing PCI2 (I think due to insufficient
clock initialization).
This patch replaces the driver code from the Linux kernel repository,
and now the bootloader works fine with pcie2x1l0.pcie2x1l2 devices
on the RK3588.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .../rockchip/phy-rockchip-naneng-combphy.c    | 1093 ++++++++++-------
 1 file changed, 651 insertions(+), 442 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index b334ced811..7951a109f5 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -6,23 +6,100 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <io.h>
 #include <of.h>
 #include <errno.h>
 #include <driver.h>
-#include <malloc.h>
 #include <linux/usb/phy.h>
 #include <linux/phy/phy.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/reset.h>
 #include <linux/regmap.h>
+#include <linux/units.h>
 #include <mfd/syscon.h>
 #include <linux/iopoll.h>
 #include <dt-bindings/phy/phy.h>
 
 #define BIT_WRITEABLE_SHIFT		16
+#define REF_CLOCK_24MHz			(24 * HZ_PER_MHZ)
+#define REF_CLOCK_25MHz			(25 * HZ_PER_MHZ)
+#define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
+
+/* COMBO PHY REG */
+#define PHYREG6				0x14
+#define PHYREG6_PLL_DIV_MASK		GENMASK(7, 6)
+#define PHYREG6_PLL_DIV_SHIFT		6
+#define PHYREG6_PLL_DIV_2		1
+
+#define PHYREG7				0x18
+#define PHYREG7_TX_RTERM_MASK		GENMASK(7, 4)
+#define PHYREG7_TX_RTERM_SHIFT		4
+#define PHYREG7_TX_RTERM_50OHM		8
+#define PHYREG7_RX_RTERM_MASK		GENMASK(3, 0)
+#define PHYREG7_RX_RTERM_SHIFT		0
+#define PHYREG7_RX_RTERM_44OHM		15
+
+#define PHYREG8				0x1C
+#define PHYREG8_SSC_EN			BIT(4)
+
+#define PHYREG10			0x24
+#define PHYREG10_SSC_PCM_MASK		GENMASK(3, 0)
+#define PHYREG10_SSC_PCM_3500PPM	7
+
+#define PHYREG11			0x28
+#define PHYREG11_SU_TRIM_0_7		0xF0
+
+#define PHYREG12			0x2C
+#define PHYREG12_PLL_LPF_ADJ_VALUE	4
+
+#define PHYREG13			0x30
+#define PHYREG13_RESISTER_MASK		GENMASK(5, 4)
+#define PHYREG13_RESISTER_SHIFT		0x4
+#define PHYREG13_RESISTER_HIGH_Z	3
+#define PHYREG13_CKRCV_AMP0		BIT(7)
+
+#define PHYREG14			0x34
+#define PHYREG14_CKRCV_AMP1		BIT(0)
+
+#define PHYREG15			0x38
+#define PHYREG15_CTLE_EN		BIT(0)
+#define PHYREG15_SSC_CNT_MASK		GENMASK(7, 6)
+#define PHYREG15_SSC_CNT_SHIFT		6
+#define PHYREG15_SSC_CNT_VALUE		1
+
+#define PHYREG16			0x3C
+#define PHYREG16_SSC_CNT_VALUE		0x5f
+
+#define PHYREG17			0x40
+
+#define PHYREG18			0x44
+#define PHYREG18_PLL_LOOP		0x32
+
+#define PHYREG21			0x50
+#define PHYREG21_RX_SQUELCH_VAL		0x0D
+
+#define PHYREG27			0x6C
+#define PHYREG27_RX_TRIM_RK3588		0x4C
+
+#define PHYREG30			0x74
+
+#define PHYREG32			0x7C
+#define PHYREG32_SSC_MASK		GENMASK(7, 4)
+#define PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
+#define PHYREG32_SSC_DIR_SHIFT		4
+#define PHYREG32_SSC_UPWARD		0
+#define PHYREG32_SSC_DOWNWARD		1
+#define PHYREG32_SSC_OFFSET_MASK	GENMASK(7, 6)
+#define PHYREG32_SSC_OFFSET_SHIFT	6
+#define PHYREG32_SSC_OFFSET_500PPM	1
+
+#define PHYREG33			0x80
+#define PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
+#define PHYREG33_PLL_KVCO_SHIFT		2
+#define PHYREG33_PLL_KVCO_VALUE		2
+#define PHYREG33_PLL_KVCO_VALUE_RK3576	4
 
 struct rockchip_combphy_priv;
 
@@ -64,22 +141,21 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg con3_for_sata;
 	struct combphy_reg pipe_con0_for_sata;
 	struct combphy_reg pipe_con1_for_sata;
-	struct combphy_reg pipe_sgmii_mac_sel;
 	struct combphy_reg pipe_xpcs_phy_ready;
-	struct combphy_reg u3otg0_port_en;
-	struct combphy_reg u3otg1_port_en;
+	struct combphy_reg pipe_pcie1l0_sel;
+	struct combphy_reg pipe_pcie1l1_sel;
 };
 
 struct rockchip_combphy_cfg {
-	const int num_clks;
-	const struct clk_bulk_data *clks;
+	unsigned int num_phys;
+	unsigned int phy_ids[3];
 	const struct rockchip_combphy_grfcfg *grfcfg;
-	bool force_det_out; /* Tx detect Rx errata */
 	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
 };
 
 struct rockchip_combphy_priv {
-	u8 mode;
+	u8 type;
+	int id;
 	void __iomem *mmio;
 	int num_clks;
 	struct clk_bulk_data *clks;
@@ -89,26 +165,23 @@ struct rockchip_combphy_priv {
 	struct phy *phy;
 	struct reset_control *phy_rst;
 	const struct rockchip_combphy_cfg *cfg;
+	bool enable_ssc;
+	bool ext_refclk;
+	struct clk *refclk;
 };
 
-static inline bool param_read(struct regmap *base,
-			      const struct combphy_reg *reg, u32 val)
+static void rockchip_combphy_updatel(struct rockchip_combphy_priv *priv,
+				     int mask, int val, int reg)
 {
-	int ret;
-	u32 mask, orig, tmp;
-
-	ret = regmap_read(base, reg->offset, &orig);
-	if (ret)
-		return false;
+	unsigned int temp;
 
-	mask = GENMASK(reg->bitend, reg->bitstart);
-	tmp = (orig & mask) >> reg->bitstart;
-
-	return tmp == val;
+	temp = readl(priv->mmio + reg);
+	temp = (temp & ~(mask)) | val;
+	writel(temp, priv->mmio + reg);
 }
 
-static int param_write(struct regmap *base,
-		       const struct combphy_reg *reg, bool en)
+static int rockchip_combphy_param_write(struct regmap *base,
+					const struct combphy_reg *reg, bool en)
 {
 	u32 val, mask, tmp;
 
@@ -133,115 +206,47 @@ static u32 rockchip_combphy_is_ready(struct rockchip_combphy_priv *priv)
 	return val;
 }
 
-static int rockchip_combphy_pcie_init(struct rockchip_combphy_priv *priv)
-{
-	int ret = 0;
-
-	if (priv->cfg->combphy_cfg) {
-		ret = priv->cfg->combphy_cfg(priv);
-		if (ret) {
-			dev_err(priv->dev, "failed to init phy for pcie\n");
-			return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int rockchip_combphy_usb3_init(struct rockchip_combphy_priv *priv)
-{
-	int ret = 0;
-
-	if (priv->cfg->combphy_cfg) {
-		ret = priv->cfg->combphy_cfg(priv);
-		if (ret) {
-			dev_err(priv->dev, "failed to init phy for usb3\n");
-			return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int rockchip_combphy_sata_init(struct rockchip_combphy_priv *priv)
-{
-	int ret = 0;
-
-	if (priv->cfg->combphy_cfg) {
-		ret = priv->cfg->combphy_cfg(priv);
-		if (ret) {
-			dev_err(priv->dev, "failed to init phy for sata\n");
-			return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int rockchip_combphy_sgmii_init(struct rockchip_combphy_priv *priv)
+static int rockchip_combphy_init(struct phy *phy)
 {
-	int ret = 0;
+	struct rockchip_combphy_priv *priv = phy_get_drvdata(phy);
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	u32 val;
+	int ret;
 
-	if (priv->cfg->combphy_cfg) {
-		ret = priv->cfg->combphy_cfg(priv);
-		if (ret) {
-			dev_err(priv->dev, "failed to init phy for sgmii\n");
-			return ret;
-		}
+	ret = clk_bulk_prepare_enable(priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(priv->dev, "failed to enable clks\n");
+		return ret;
 	}
 
-	return ret;
-}
-
-static int rockchip_combphy_set_mode(struct rockchip_combphy_priv *priv)
-{
-	switch (priv->mode) {
+	switch (priv->type) {
 	case PHY_TYPE_PCIE:
-		rockchip_combphy_pcie_init(priv);
-		break;
 	case PHY_TYPE_USB3:
-		rockchip_combphy_usb3_init(priv);
-		break;
 	case PHY_TYPE_SATA:
-		rockchip_combphy_sata_init(priv);
-		break;
 	case PHY_TYPE_SGMII:
 	case PHY_TYPE_QSGMII:
-		return rockchip_combphy_sgmii_init(priv);
+		if (priv->cfg->combphy_cfg)
+			ret = priv->cfg->combphy_cfg(priv);
+		break;
 	default:
 		dev_err(priv->dev, "incompatible PHY type\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		break;
 	}
 
-	return 0;
-}
-
-static int rockchip_combphy_init(struct phy *phy)
-{
-	struct rockchip_combphy_priv *priv = phy_get_drvdata(phy);
-	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
-	u32 val;
-	int ret;
-
-	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret) {
-		dev_err(priv->dev, "failed to enable clks\n");
-		return ret;
-	}
-
-	ret = rockchip_combphy_set_mode(priv);
-	if (ret)
+		dev_err(priv->dev, "failed to init phy for phy type %x\n", priv->type);
 		goto err_clk;
+	}
 
 	ret = reset_control_deassert(priv->phy_rst);
 	if (ret)
 		goto err_clk;
 
-	if (priv->mode == PHY_TYPE_USB3) {
-		ret = readx_poll_timeout(rockchip_combphy_is_ready,
-						priv, val,
-						val == cfg->pipe_phy_status.enable,
-						1000);
+	if (priv->type == PHY_TYPE_USB3) {
+		ret = readx_poll_timeout(rockchip_combphy_is_ready, priv, val,
+					 val == cfg->pipe_phy_status.enable,
+					 1000);
 		if (ret)
 			dev_warn(priv->dev, "wait phy status ready timeout\n");
 	}
@@ -249,7 +254,7 @@ static int rockchip_combphy_init(struct phy *phy)
 	return 0;
 
 err_clk:
-	clk_bulk_disable(priv->num_clks, priv->clks);
+	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
 
 	return ret;
 }
@@ -258,19 +263,18 @@ static int rockchip_combphy_exit(struct phy *phy)
 {
 	struct rockchip_combphy_priv *priv = phy_get_drvdata(phy);
 
-	clk_bulk_disable(priv->num_clks, priv->clks);
+	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
 	reset_control_assert(priv->phy_rst);
 
 	return 0;
 }
 
-static const struct phy_ops rochchip_combphy_ops = {
+static const struct phy_ops rockchip_combphy_ops = {
 	.init = rockchip_combphy_init,
 	.exit = rockchip_combphy_exit,
 };
 
-static struct phy *rockchip_combphy_xlate(struct device *dev,
-					  const struct of_phandle_args *args)
+static struct phy *rockchip_combphy_xlate(struct device *dev, const struct of_phandle_args *args)
 {
 	struct rockchip_combphy_priv *priv = dev->priv;
 
@@ -279,52 +283,60 @@ static struct phy *rockchip_combphy_xlate(struct device *dev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (priv->mode != PHY_NONE && priv->mode != args->args[0])
+	if (priv->type != PHY_NONE && priv->type != args->args[0])
 		dev_warn(dev, "phy type select %d overwriting type %d\n",
-			 args->args[0], priv->mode);
+			 args->args[0], priv->type);
 
-	priv->mode = args->args[0];
+	priv->type = args->args[0];
 
 	return priv->phy;
 }
 
-static int rockchip_combphy_parse_dt(struct device *dev,
-				     struct rockchip_combphy_priv *priv)
+static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy_priv *priv)
 {
-	struct device_node *np = dev->of_node;
-	const struct rockchip_combphy_cfg *phy_cfg = priv->cfg;
-	int ret, mac_id;
+	int i;
 
-	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
-	if (ret == -EPROBE_DEFER)
-		return -EPROBE_DEFER;
-	if (ret)
-		priv->num_clks = 0;
+	priv->num_clks = clk_bulk_get_all(dev, &priv->clks);
+	if (priv->num_clks < 1)
+		return -EINVAL;
 
-	priv->pipe_grf = syscon_regmap_lookup_by_phandle(np,
-							 "rockchip,pipe-grf");
+	priv->refclk = NULL;
+	for (i = 0; i < priv->num_clks; i++) {
+		if (!strncmp(priv->clks[i].id, "ref", 3)) {
+			priv->refclk = priv->clks[i].clk;
+			break;
+		}
+	}
+
+	if (!priv->refclk) {
+		dev_err(dev, "no refclk found\n");
+		return -EINVAL;
+	}
+
+	priv->pipe_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pipe-grf");
 	if (IS_ERR(priv->pipe_grf)) {
 		dev_err(dev, "failed to find peri_ctrl pipe-grf regmap\n");
 		return PTR_ERR(priv->pipe_grf);
 	}
 
-	priv->phy_grf = syscon_regmap_lookup_by_phandle(np,
-							"rockchip,pipe-phy-grf");
+	priv->phy_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pipe-phy-grf");
 	if (IS_ERR(priv->phy_grf)) {
 		dev_err(dev, "failed to find peri_ctrl pipe-phy-grf regmap\n");
 		return PTR_ERR(priv->phy_grf);
 	}
 
-	if (!of_property_read_u32(np, "rockchip,sgmii-mac-sel", &mac_id) &&
-	    (mac_id > 0))
-		param_write(priv->pipe_grf, &phy_cfg->grfcfg->pipe_sgmii_mac_sel,
-			    true);
+	priv->enable_ssc = of_property_read_bool(dev->of_node, "rockchip,enable-ssc");
+
+	priv->ext_refclk = of_property_read_bool(dev->of_node, "rockchip,ext-refclk");
 
-	priv->phy_rst = reset_control_get(dev, NULL);
+	priv->phy_rst = reset_control_get(dev, "phy");
+	/* fallback to old behaviour */
+	if (PTR_ERR(priv->phy_rst) == -ENOENT)
+		priv->phy_rst = reset_control_get(dev, NULL);
 	if (IS_ERR(priv->phy_rst))
-		return dev_errp_probe(dev, priv->phy_rst, "getting phy reset\n");
+		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
 
-	return reset_control_assert(priv->phy_rst);
+	return 0;
 }
 
 static int rockchip_combphy_probe(struct device *dev)
@@ -333,11 +345,11 @@ static int rockchip_combphy_probe(struct device *dev)
 	struct rockchip_combphy_priv *priv;
 	const struct rockchip_combphy_cfg *phy_cfg;
 	struct resource *res;
-	int ret;
+	int ret, id;
 
 	phy_cfg = device_get_match_data(dev);
 	if (!phy_cfg) {
-		dev_err(dev, "No OF match data provided\n");
+		dev_err(dev, "no OF match data provided\n");
 		return -EINVAL;
 	}
 
@@ -353,22 +365,30 @@ static int rockchip_combphy_probe(struct device *dev)
 
 	priv->mmio = IOMEM(res->start);
 
-	priv->num_clks = phy_cfg->num_clks;
-
-	priv->clks = memdup(phy_cfg->clks,
-			    phy_cfg->num_clks * sizeof(struct clk_bulk_data));
-	if (!priv->clks)
-		return -ENOMEM;
+	/* find the phy-id from the io address */
+	priv->id = -ENODEV;
+	for (id = 0; id < phy_cfg->num_phys; id++) {
+		if (res->start == phy_cfg->phy_ids[id]) {
+			priv->id = id;
+			break;
+		}
+	}
 
 	priv->dev = dev;
-	priv->mode = PHY_NONE;
+	priv->type = PHY_NONE;
 	priv->cfg = phy_cfg;
 
 	ret = rockchip_combphy_parse_dt(dev, priv);
 	if (ret)
 		return ret;
 
-	priv->phy = phy_create(dev, NULL, &rochchip_combphy_ops);
+	ret = reset_control_assert(priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to reset phy\n");
+		return ret;
+	}
+
+	priv->phy = phy_create(dev, NULL, &rockchip_combphy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
 		return PTR_ERR(priv->phy);
@@ -384,146 +404,161 @@ static int rockchip_combphy_probe(struct device *dev)
 
 static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
-	struct device_node *np = priv->dev->of_node;
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
-	struct clk *refclk = NULL;
 	unsigned long rate;
 	u32 val;
 
-	/* Configure PHY reference clock frequency */
-	refclk = priv->clks[0].clk;
-	if (!refclk) {
-		dev_err(priv->dev, "No refclk found\n");
-		return -EINVAL;
-	}
-
-	switch (priv->mode) {
+	switch (priv->type) {
 	case PHY_TYPE_PCIE:
-		/* Set SSC downward spread spectrum */
-		val = readl(priv->mmio + (0x1f << 2));
-		val &= ~GENMASK(5, 4);
-		val |= 0x01 << 4;
-		writel(val, priv->mmio + 0x7c);
-
-		param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		/* Set SSC downward spread spectrum. */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
 		break;
-	case PHY_TYPE_USB3:
-		/* Set SSC downward spread spectrum */
-		val = readl(priv->mmio + (0x1f << 2));
-		val &= ~GENMASK(5, 4);
-		val |= 0x01 << 4;
-		writel(val, priv->mmio + 0x7c);
 
-		/* Enable adaptive CTLE for USB3.0 Rx */
-		val = readl(priv->mmio + (0x0e << 2));
-		val &= ~GENMASK(0, 0);
-		val |= 0x01;
-		writel(val, priv->mmio + (0x0e << 2));
-
-		param_write(priv->phy_grf, &cfg->pipe_sel_usb, true);
-		param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
-		param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
-		param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum. */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		/* Enable adaptive CTLE for USB3.0 Rx. */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+
+		/* Set PLL KVCO fine tuning signals. */
+		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+					 PHYREG33_PLL_KVCO_VALUE << PHYREG33_PLL_KVCO_SHIFT,
+					 PHYREG33);
+
+		/* Enable controlling random jitter. */
+		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+		/* Set PLL input clock divider 1/2. */
+		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
+					 PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT,
+					 PHYREG6);
+
+		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_usb, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
 		break;
+
 	case PHY_TYPE_SATA:
-		writel(0x41, priv->mmio + 0x38);
-		writel(0x8F, priv->mmio + 0x18);
-		param_write(priv->phy_grf, &cfg->con0_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con1_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con2_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con3_for_sata, true);
-		param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		/* Enable adaptive CTLE for SATA Rx. */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+		/*
+		 * Set tx_rterm=50ohm and rx_rterm=44ohm for SATA.
+		 * 0: 60ohm, 8: 50ohm 15: 44ohm (by step abort 1ohm)
+		 */
+		val = PHYREG7_TX_RTERM_50OHM << PHYREG7_TX_RTERM_SHIFT;
+		val |= PHYREG7_RX_RTERM_44OHM << PHYREG7_RX_RTERM_SHIFT;
+		writel(val, priv->mmio + PHYREG7);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
 		break;
+
 	case PHY_TYPE_SGMII:
-		param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
-		param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
-		param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
-		param_write(priv->phy_grf, &cfg->sgmii_mode_set, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->sgmii_mode_set, true);
 		break;
+
 	case PHY_TYPE_QSGMII:
-		param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
-		param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
-		param_write(priv->phy_grf, &cfg->pipe_rate_sel, true);
-		param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
-		param_write(priv->phy_grf, &cfg->qsgmii_mode_set, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_rate_sel, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->qsgmii_mode_set, true);
 		break;
+
 	default:
 		dev_err(priv->dev, "incompatible PHY type\n");
 		return -EINVAL;
 	}
 
-	rate = clk_get_rate(refclk);
+	rate = clk_get_rate(priv->refclk);
 
 	switch (rate) {
-	case 24000000:
-		if (priv->mode == PHY_TYPE_USB3 || priv->mode == PHY_TYPE_SATA) {
-			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
-			val = readl(priv->mmio + (0x0e << 2));
-			val &= ~GENMASK(7, 6);
-			val |= 0x01 << 6;
-			writel(val, priv->mmio + (0x0e << 2));
-
-			val = readl(priv->mmio + (0x0f << 2));
-			val &= ~GENMASK(7, 0);
-			val |= 0x5f;
-			writel(val, priv->mmio + (0x0f << 2));
+	case REF_CLOCK_24MHz:
+		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz. */
+			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
+						 val, PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
 		}
 		break;
-	case 25000000:
-		param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
 		break;
-	case 100000000:
-		param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
-		if (priv->mode == PHY_TYPE_PCIE) {
-			/* PLL KVCO tuning fine */
-			val = readl(priv->mmio + (0x20 << 2));
-			val &= ~(0x7 << 2);
-			val |= 0x2 << 2;
-			writel(val, priv->mmio + (0x20 << 2));
-
-			/* Enable controlling random jitter, aka RMJ */
-			writel(0x4, priv->mmio + (0xb << 2));
-
-			val = readl(priv->mmio + (0x5 << 2));
-			val &= ~(0x3 << 6);
-			val |= 0x1 << 6;
-			writel(val, priv->mmio + (0x5 << 2));
-
-			writel(0x32, priv->mmio + (0x11 << 2));
-			writel(0xf0, priv->mmio + (0xa << 2));
-		} else if (priv->mode == PHY_TYPE_SATA) {
+
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
+			/* PLL KVCO  fine tuning. */
+			val = PHYREG33_PLL_KVCO_VALUE << PHYREG33_PLL_KVCO_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Enable controlling random jitter. */
+			writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+			val = PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
+						 val, PHYREG6);
+
+			writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+			writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+		} else if (priv->type == PHY_TYPE_SATA) {
 			/* downward spread spectrum +500ppm */
-			val = readl(priv->mmio + (0x1f << 2));
-			val &= ~GENMASK(7, 4);
-			val |= 0x50;
-			writel(val, priv->mmio + (0x1f << 2));
+			val = PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT;
+			val |= PHYREG32_SSC_OFFSET_500PPM << PHYREG32_SSC_OFFSET_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
 		}
 		break;
+
 	default:
-		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
+		dev_err(priv->dev, "unsupported rate: %lu\n", rate);
 		return -EINVAL;
 	}
 
-	if (of_property_read_bool(np, "rockchip,ext-refclk")) {
-		param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
-		if (priv->mode == PHY_TYPE_PCIE && rate == 100000000) {
-			val = readl(priv->mmio + (0xc << 2));
-			val |= 0x3 << 4 | 0x1 << 7;
-			writel(val, priv->mmio + (0xc << 2));
+	if (priv->ext_refclk) {
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
+			val = PHYREG13_RESISTER_HIGH_Z << PHYREG13_RESISTER_SHIFT;
+			val |= PHYREG13_CKRCV_AMP0;
+			rockchip_combphy_updatel(priv, PHYREG13_RESISTER_MASK, val, PHYREG13);
 
-			val = readl(priv->mmio + (0xd << 2));
-			val |= 0x1;
-			writel(val, priv->mmio + (0xd << 2));
+			val = readl(priv->mmio + PHYREG14);
+			val |= PHYREG14_CKRCV_AMP1;
+			writel(val, priv->mmio + PHYREG14);
 		}
 	}
 
-	if (of_property_read_bool(np, "rockchip,enable-ssc")) {
-		val = readl(priv->mmio + (0x7 << 2));
-		val |= BIT(4);
-		writel(val, priv->mmio + (0x7 << 2));
+	if (priv->enable_ssc) {
+		val = readl(priv->mmio + PHYREG8);
+		val |= PHYREG8_SSC_EN;
+		writel(val, priv->mmio + PHYREG8);
 	}
 
 	return 0;
@@ -559,255 +594,241 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x4407 },
 	/* pipe-grf */
 	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
-	.pipe_sgmii_mac_sel	= { 0x0040, 1, 1, 0x00, 0x01 },
 	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
-	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
-	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
-};
-
-static const struct clk_bulk_data rk3568_clks[] = {
-	{ .id = "ref" },
-	{ .id = "apb" },
-	{ .id = "pipe" },
 };
 
 static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
-	.num_clks	= ARRAY_SIZE(rk3568_clks),
-	.clks		= rk3568_clks,
+	.num_phys = 3,
+	.phy_ids = {
+		0xfe820000,
+		0xfe830000,
+		0xfe840000,
+	},
 	.grfcfg		= &rk3568_combphy_grfcfgs,
 	.combphy_cfg	= rk3568_combphy_cfg,
 };
 
-static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
+static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
-	struct clk *refclk = NULL;
 	unsigned long rate;
-	int i;
 	u32 val;
 
-	/* Configure PHY reference clock frequency */
-	for (i = 0; i < priv->num_clks; i++) {
-		if (!strncmp(priv->clks[i].id, "ref", 6)) {
-			refclk = priv->clks[i].clk;
-			break;
-		}
-	}
-
-	if (!refclk) {
-		dev_err(priv->dev, "No refclk found\n");
-		return -EINVAL;
-	}
-
-	switch (priv->mode) {
+	switch (priv->type) {
 	case PHY_TYPE_PCIE:
 		/* Set SSC downward spread spectrum */
-		val = readl(priv->mmio + (0x1f << 2));
-		val &= ~GENMASK(5, 4);
-		val |= 0x01 << 4;
-		writel(val, priv->mmio + 0x7c);
-
-		param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
-		param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		val = FIELD_PREP(PHYREG32_SSC_MASK, PHYREG32_SSC_DOWNWARD);
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
 		break;
+
 	case PHY_TYPE_USB3:
 		/* Set SSC downward spread spectrum */
-		val = readl(priv->mmio + (0x1f << 2));
-		val &= ~GENMASK(5, 4);
-		val |= 0x01 << 4;
-		writel(val, priv->mmio + 0x7c);
+		val = FIELD_PREP(PHYREG32_SSC_MASK, PHYREG32_SSC_DOWNWARD);
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
 
 		/* Enable adaptive CTLE for USB3.0 Rx */
-		val = readl(priv->mmio + (0x0e << 2));
-		val &= ~GENMASK(0, 0);
-		val |= 0x01;
-		writel(val, priv->mmio + (0x0e << 2));
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
 
 		/* Set PLL KVCO fine tuning signals */
-		val = readl(priv->mmio + (0x20 << 2));
-		val &= ~(0x7 << 2);
-		val |= 0x2 << 2;
-		writel(val, priv->mmio + (0x20 << 2));
+		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK, BIT(3), PHYREG33);
 
 		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
-		writel(0x4, priv->mmio + (0xb << 2));
+		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
 
 		/* Set PLL input clock divider 1/2 */
-		val = readl(priv->mmio + (0x5 << 2));
-		val &= ~(0x3 << 6);
-		val |= 0x1 << 6;
-		writel(val, priv->mmio + (0x5 << 2));
+		val = FIELD_PREP(PHYREG6_PLL_DIV_MASK, PHYREG6_PLL_DIV_2);
+		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK, val, PHYREG6);
 
 		/* Set PLL loop divider */
-		writel(0x32, priv->mmio + (0x11 << 2));
+		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
 
 		/* Set PLL KVCO to min and set PLL charge pump current to max */
-		writel(0xf0, priv->mmio + (0xa << 2));
+		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
 
 		/* Set Rx squelch input filler bandwidth */
-		writel(0x0d, priv->mmio + (0x14 << 2));
+		writel(PHYREG21_RX_SQUELCH_VAL, priv->mmio + PHYREG21);
 
-		param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
-		param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
-		param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
 		break;
+
 	case PHY_TYPE_SATA:
 		/* Enable adaptive CTLE for SATA Rx */
-		val = readl(priv->mmio + (0x0e << 2));
-		val &= ~GENMASK(0, 0);
-		val |= 0x01;
-		writel(val, priv->mmio + (0x0e << 2));
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+
 		/* Set tx_rterm = 50 ohm and rx_rterm = 43.5 ohm */
-		writel(0x8F, priv->mmio + (0x06 << 2));
-
-		param_write(priv->phy_grf, &cfg->con0_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con1_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con2_for_sata, true);
-		param_write(priv->phy_grf, &cfg->con3_for_sata, true);
-		param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
-		param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
+		val = PHYREG7_TX_RTERM_50OHM << PHYREG7_TX_RTERM_SHIFT;
+		val |= PHYREG7_RX_RTERM_44OHM << PHYREG7_RX_RTERM_SHIFT;
+		writel(val, priv->mmio + PHYREG7);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
 		break;
-	case PHY_TYPE_SGMII:
-	case PHY_TYPE_QSGMII:
+
 	default:
 		dev_err(priv->dev, "incompatible PHY type\n");
 		return -EINVAL;
 	}
 
-	rate = clk_get_rate(refclk);
+	rate = clk_get_rate(priv->refclk);
 
 	switch (rate) {
-	case 24000000:
-		param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
-		if (priv->mode == PHY_TYPE_USB3 || priv->mode == PHY_TYPE_SATA) {
+	case REF_CLOCK_24MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
+		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
 			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
-			val = readl(priv->mmio + (0x0e << 2));
-			val &= ~GENMASK(7, 6);
-			val |= 0x01 << 6;
-			writel(val, priv->mmio + (0x0e << 2));
-
-			val = readl(priv->mmio + (0x0f << 2));
-			val &= ~GENMASK(7, 0);
-			val |= 0x5f;
-			writel(val, priv->mmio + (0x0f << 2));
-		} else if (priv->mode == PHY_TYPE_PCIE) {
+			val = FIELD_PREP(PHYREG15_SSC_CNT_MASK, PHYREG15_SSC_CNT_VALUE);
+			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
+						 val, PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+		} else if (priv->type == PHY_TYPE_PCIE) {
 			/* PLL KVCO tuning fine */
-			val = readl(priv->mmio + (0x20 << 2));
-			val &= ~GENMASK(4, 2);
-			val |= 0x4 << 2;
-			writel(val, priv->mmio + (0x20 << 2));
-
-			/* Set up rx_trim */
-			val = 0x0;
-			writel(val, priv->mmio + (0x1b << 2));
-
-			/* Set up su_trim: T0_1 */
-			val = 0x90;
-			writel(val, priv->mmio + (0xa << 2));
-			val = 0x02;
-			writel(val, priv->mmio + (0xb << 2));
-			val = 0x57;
-			writel(val, priv->mmio + (0xd << 2));
-
-			val = 0x5f;
-			writel(val, priv->mmio + (0xf << 2));
+			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK, PHYREG33_PLL_KVCO_VALUE_RK3576);
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Set up rx_pck invert and rx msb to disable */
+			writel(0x00, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b011
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x02, priv->mmio + PHYREG12);
+			writel(0x57, priv->mmio + PHYREG14);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
 		}
 		break;
-	case 25000000:
-		param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
 		break;
-	case 100000000:
-		param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
-		if (priv->mode == PHY_TYPE_PCIE) {
+
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
 			/* gate_tx_pck_sel length select work for L1SS */
-			val = 0xc0;
-			writel(val, priv->mmio + 0x74);
+			writel(0xc0, priv->mmio + PHYREG30);
 
 			/* PLL KVCO tuning fine */
-			val = readl(priv->mmio + (0x20 << 2));
-			val &= ~GENMASK(4, 2);
-			val |= 0x4 << 2;
-			writel(val, priv->mmio + (0x20 << 2));
+			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK, PHYREG33_PLL_KVCO_VALUE_RK3576);
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
 
 			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
-			val = 0x4c;
-			writel(val, priv->mmio + (0x1b << 2));
-
-			/* Set up su_trim: T3_P1 650mv */
-			val = 0x90;
-			writel(val, priv->mmio + (0xa << 2));
-			val = 0x43;
-			writel(val, priv->mmio + (0xb << 2));
-			val = 0x88;
-			writel(val, priv->mmio + (0xc << 2));
-			val = 0x56;
-			writel(val, priv->mmio + (0xd << 2));
-		} else if (priv->mode == PHY_TYPE_SATA) {
+			writel(0x4c, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  bypass PLL loop divider code, and
+			 *                 PLL LPF R1 adujst bits[9:7]=3'b101
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x43, priv->mmio + PHYREG12);
+			writel(0x88, priv->mmio + PHYREG13);
+			writel(0x56, priv->mmio + PHYREG14);
+		} else if (priv->type == PHY_TYPE_SATA) {
 			/* downward spread spectrum +500ppm */
-			val = readl(priv->mmio + (0x1f << 2));
-			val &= ~GENMASK(7, 4);
-			val |= 0x50;
-			writel(val, priv->mmio + (0x1f << 2));
+			val = FIELD_PREP(PHYREG32_SSC_DIR_MASK, PHYREG32_SSC_DOWNWARD);
+			val |= FIELD_PREP(PHYREG32_SSC_OFFSET_MASK, PHYREG32_SSC_OFFSET_500PPM);
+			rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
 
 			/* ssc ppm adjust to 3500ppm */
-			val = readl(priv->mmio + (0x9 << 2));
-			val &= ~GENMASK(3, 0);
-			val |= 0x7;
-			writel(val, priv->mmio + (0x9 << 2));
+			rockchip_combphy_updatel(priv, PHYREG10_SSC_PCM_MASK,
+						 PHYREG10_SSC_PCM_3500PPM,
+						 PHYREG10);
 		}
 		break;
+
 	default:
 		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
 		return -EINVAL;
 	}
 
-	if (of_property_read_bool(priv->dev->of_node, "rockchip,ext-refclk")) {
-		param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
-		if (priv->mode == PHY_TYPE_PCIE && rate == 100000000) {
-			val = 0x10;
-			writel(val, priv->mmio + (0x20 << 2));
-
-			val = 0x0c;
-			writel(val, priv->mmio + (0x1b << 2));
-
-			/* Set up su_trim: T3_P1 650mv */
-			val = 0x90;
-			writel(val, priv->mmio + (0xa << 2));
-			val = 0x43;
-			writel(val, priv->mmio + (0xb << 2));
-			val = 0x88;
-			writel(val, priv->mmio + (0xc << 2));
-			val = 0x56;
-			writel(val, priv->mmio + (0xd << 2));
+	if (priv->ext_refclk) {
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
+			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK, PHYREG33_PLL_KVCO_VALUE_RK3576);
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 2.5kohm */
+			writel(0x0c, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  bypass PLL loop divider code, and
+			 *                 PLL LPF R1 adujst bits[9:7]=3'b101.
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x43, priv->mmio + PHYREG12);
+			writel(0x88, priv->mmio + PHYREG13);
+			writel(0x56, priv->mmio + PHYREG14);
 		}
 	}
 
-	if (of_property_read_bool(priv->dev->of_node, "rockchip,enable-ssc")) {
-		val = readl(priv->mmio + (0x7 << 2));
-		val |= BIT(4);
-		writel(val, priv->mmio + (0x7 << 2));
-
-		if (priv->mode == PHY_TYPE_PCIE && rate == 24000000) {
-			/* Xin24M T0_1 650mV */
-			writel(0x00, priv->mmio + (0x10 << 2));
-			writel(0x32, priv->mmio + (0x11 << 2));
-			writel(0x00, priv->mmio + (0x1b << 2));
-			writel(0x90, priv->mmio + (0x0a << 2));
-			writel(0x02, priv->mmio + (0x0b << 2));
-			writel(0x08, priv->mmio + (0x0c << 2));
-			writel(0x57, priv->mmio + (0x0d << 2));
-			writel(0x40, priv->mmio + (0x0e << 2));
-			writel(0x5f, priv->mmio + (0x0f << 2));
-			writel(0x10, priv->mmio + (0x20 << 2));
+	if (priv->enable_ssc) {
+		val = readl(priv->mmio + PHYREG8);
+		val |= PHYREG8_SSC_EN;
+		writel(val, priv->mmio + PHYREG8);
+
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
+			/* Set PLL loop divider */
+			writel(0x00, priv->mmio + PHYREG17);
+			writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+
+			/* Set up rx_pck invert and rx msb to disable */
+			writel(0x00, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x02, priv->mmio + PHYREG12);
+			writel(0x08, priv->mmio + PHYREG13);
+			writel(0x57, priv->mmio + PHYREG14);
+			writel(0x40, priv->mmio + PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+
+			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK, PHYREG33_PLL_KVCO_VALUE_RK3576);
+			writel(val, priv->mmio + PHYREG33);
 		}
 	}
 
 	return 0;
 }
 
-static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
+static const struct rockchip_combphy_grfcfg rk3576_combphy_grfcfgs = {
 	/* pipe-phy-grf */
 	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
 	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
@@ -817,6 +838,8 @@ static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
 	.pipe_clk_24m		= { 0x0004, 14, 13, 0x00, 0x00 },
 	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
 	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
+	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
 	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
 	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
 	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
@@ -830,31 +853,217 @@ static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
 	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0000 },
 	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c1 },
 	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x0407 },
-	/* pipe-grf */
-	.pipe_con0_for_sata	= { 0x0000, 11, 5, 0x00, 0x22 },
-	.pipe_con1_for_sata	= { 0x0004, 2, 0, 0x00, 0x2 },
+	/* php-grf */
+	.pipe_con0_for_sata	= { 0x001C, 2, 0, 0x00, 0x2 },
+	.pipe_con1_for_sata	= { 0x0020, 2, 0, 0x00, 0x2 },
 };
 
+static const struct rockchip_combphy_cfg rk3576_combphy_cfgs = {
+	.num_phys = 2,
+	.phy_ids = {
+		0x2b050000,
+		0x2b060000
+	},
+	.grfcfg		= &rk3576_combphy_grfcfgs,
+	.combphy_cfg	= rk3576_combphy_cfg,
+};
+
+static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	unsigned long rate;
+	u32 val;
 
-static const struct clk_bulk_data rk3588_clks[] = {
-	{ .id = "ref" },
-	{ .id = "apb" },
-	{ .id = "pipe" },
+	switch (priv->type) {
+	case PHY_TYPE_PCIE:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		switch (priv->id) {
+		case 1:
+			rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l0_sel, true);
+			break;
+		case 2:
+			rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l1_sel, true);
+			break;
+		}
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		/* Enable adaptive CTLE for USB3.0 Rx. */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+
+		/* Set PLL KVCO fine tuning signals. */
+		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+					 PHYREG33_PLL_KVCO_VALUE << PHYREG33_PLL_KVCO_SHIFT,
+					 PHYREG33);
+
+		/* Enable controlling random jitter. */
+		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+		/* Set PLL input clock divider 1/2. */
+		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
+					 PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT,
+					 PHYREG6);
+
+		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	case PHY_TYPE_SATA:
+		/* Enable adaptive CTLE for SATA Rx. */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+		/*
+		 * Set tx_rterm=50ohm and rx_rterm=44ohm for SATA.
+		 * 0: 60ohm, 8: 50ohm 15: 44ohm (by step abort 1ohm)
+		 */
+		val = PHYREG7_TX_RTERM_50OHM << PHYREG7_TX_RTERM_SHIFT;
+		val |= PHYREG7_RX_RTERM_44OHM << PHYREG7_RX_RTERM_SHIFT;
+		writel(val, priv->mmio + PHYREG7);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
+		break;
+	case PHY_TYPE_SGMII:
+	case PHY_TYPE_QSGMII:
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	rate = clk_get_rate(priv->refclk);
+
+	switch (rate) {
+	case REF_CLOCK_24MHz:
+		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz. */
+			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
+						 val, PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+		}
+		break;
+
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
+			/* PLL KVCO fine tuning. */
+			val = 4 << PHYREG33_PLL_KVCO_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Enable controlling random jitter. */
+			writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
+			writel(PHYREG27_RX_TRIM_RK3588, priv->mmio + PHYREG27);
+
+			/* Set up su_trim:  */
+			writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+		} else if (priv->type == PHY_TYPE_SATA) {
+			/* downward spread spectrum +500ppm */
+			val = PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT;
+			val |= PHYREG32_SSC_OFFSET_500PPM << PHYREG32_SSC_OFFSET_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
+		}
+		break;
+	default:
+		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
+		return -EINVAL;
+	}
+
+	if (priv->ext_refclk) {
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
+			val = PHYREG13_RESISTER_HIGH_Z << PHYREG13_RESISTER_SHIFT;
+			val |= PHYREG13_CKRCV_AMP0;
+			rockchip_combphy_updatel(priv, PHYREG13_RESISTER_MASK, val, PHYREG13);
+
+			val = readl(priv->mmio + PHYREG14);
+			val |= PHYREG14_CKRCV_AMP1;
+			writel(val, priv->mmio + PHYREG14);
+		}
+	}
+
+	if (priv->enable_ssc) {
+		val = readl(priv->mmio + PHYREG8);
+		val |= PHYREG8_SSC_EN;
+		writel(val, priv->mmio + PHYREG8);
+	}
+
+	return 0;
+}
+
+static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
+	/* pipe-phy-grf */
+	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
+	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
+	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
+	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
+	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
+	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
+	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
+	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
+	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
+	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
+	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
+	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
+	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
+	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
+	.con0_for_sata		= { 0x0000, 15, 0, 0x00, 0x0129 },
+	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c1 },
+	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x0407 },
+	/* pipe-grf */
+	.pipe_con0_for_sata	= { 0x0000, 11, 5, 0x00, 0x22 },
+	.pipe_con1_for_sata	= { 0x0000, 2, 0, 0x00, 0x2 },
+	.pipe_pcie1l0_sel	= { 0x0100, 0, 0, 0x01, 0x0 },
+	.pipe_pcie1l1_sel	= { 0x0100, 1, 1, 0x01, 0x0 },
 };
 
 static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
-	.num_clks	= ARRAY_SIZE(rk3588_clks),
-	.clks		= rk3588_clks,
+	.num_phys = 3,
+	.phy_ids = {
+		0xfee00000,
+		0xfee10000,
+		0xfee20000,
+	},
 	.grfcfg		= &rk3588_combphy_grfcfgs,
 	.combphy_cfg	= rk3588_combphy_cfg,
-	.force_det_out	= true,
 };
 
 static const struct of_device_id rockchip_combphy_of_match[] = {
 	{
 		.compatible = "rockchip,rk3568-naneng-combphy",
 		.data = &rk3568_combphy_cfgs,
-	}, {
+	},
+	{
+		.compatible = "rockchip,rk3576-naneng-combphy",
+		.data = &rk3576_combphy_cfgs,
+	},
+	{
 		.compatible = "rockchip,rk3588-naneng-combphy",
 		.data = &rk3588_combphy_cfgs,
 	},
-- 
2.38.2



