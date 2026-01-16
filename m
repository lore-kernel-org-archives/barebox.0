Delivery-date: Fri, 16 Jan 2026 20:43:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjd-0024UT-2S
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjZ-0001hr-9z
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=; b=Kx8b+jQo+nVHAXpbfcnPWRLOyu
	KnvM3500vFDxt/kVNh22gHv1PCZSsUKei7GXY1EA6/xtXlTYK+htRgu2Qhvp/pCfFJ1Hj6n43UWnr
	WM4WvypjHKOk7hEPOXV7u9nhqPvL7h2+WDowDLxcot8H05ywzI/0x/tl7AXM/Mb1gl6yv/CL387UR
	VnGG0E4egyVx+y3oeGr9JxraxPO3UzHTLphZo0FW77HzEg+2PA6EL1/d8Xkow3dYZxvmnmBDbXiPw
	oeSOeArYlyiRsnLhFcgZhz/qR0XJgQBi6DSJ2Tlr+5lOFXVUtzAJSrm+29NR7124iWsj5fFXSlOKQ
	b2ACJNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpin-0000000EhwW-0N8b;
	Fri, 16 Jan 2026 19:43:01 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpij-0000000Ehoh-18dJ
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:58 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b87693c981fso433046866b.1
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592575; x=1769197375; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=;
        b=hApisMlZFNRVnu6ffHrv3WUqf8pBqqNWRa24AeVm9+Z1pFhUyS8TIkxtU0hm2R6/5O
         g+d1Z0Brb+Jp6Tt75S3aUtVyznq3nADiLVwwk9rzKTi/ANO1aPKhKxJ0JeRSvg0X0dPI
         1JGP6Nu7K+jr+Cmpn4AdvB1kGzUy4y43Plw/8Sv7OI0I+zZV92MihYbOFoC4+C9G2Ese
         9pzzu6PyaJGpVSfSaHf+mbSY4BMLTukTrjnuOc9hMK6UaUf5CVy44UspzcbzLT9GyxfE
         w0pm75XSQ+VcWvnjJlg+fzABYzNxdppPIxgqFQnhDeYgrB1L1ySmJo7UjSjBahn/wmFv
         ANDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592575; x=1769197375;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=;
        b=Mt0MPRQ5WJR8k575CQ2VoHJVXhefdwEQl57oD5UtFWUN6fOoxknamZHorcfZ3Fv4vq
         pczpzUUENN/GHaZQwOMVhhR5LzxImeOmo2lJ6bK8fVsdOSTUAY+ZVdRRe7YawhvCiMP1
         5mwPr4RV3ZDcVpFaGMJezyeUVcsH0nIyYxoE3jSgl8J1+GQmTnyqGOBNryqCrHcggpeN
         mHMJV/hopvZUn1oxJUp3IpeJvxuZeGdqELYgOksY0+ZWtnSaoK7nbLCTuRGyHYYxI0fE
         fRd3kpltMymsUfczl+5s+HENCY0DFXObM09R9hNA+OmUV/LVnRdqgem7jya6pFUJAqBN
         XLdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVggnOtB84fXHsDbKS2lMKwVb1W0ySivSdkuKyK3wOot1PzWfuvsaujix/+nKlDIc/AgnpyyHrO@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/zae8CI19ikqonwmoq7X7XQDuLdEn0RSz1LWCSHvwUFI2or5W
	LCxRbAM4jaUgCYzn+86VAjbA1e5LWD90hHPbDPpFdj5sWNboBHn51HiQ
X-Gm-Gg: AY/fxX4bHtEafdLnHwgPcah3ddPaoLXs2npb847tHSIy5PI0x7mhPULI4XnmwL9ILso
	ecX+RTBoCnVFeVKbS1m4UHcya1qvdVNKxnEmgXjRn9QqMBhA+Dhf9bFU6fqMSh0mAzJ5drWeWAE
	cKcbzcEXWBunwO+Lq2uH5wvIwfFogJZIkSajyeQ0XYmcQnO7jJI9RkSXuPNhzn2LleiC8SBiqwr
	+RjZyrSdrg+NvhaKvV9H+t8AgfC3jcufwpYhNNhUUj05l9xfzxeVauYV0OxlfrX0p2CxXOWFD3L
	S8h9f/1Qb4yU+rqxqrJwRPsX3UI46PUsi4cw1v22L5Gh8/wEjh/124zKWHHC/KFe34DkRbo6EZj
	fRdqmEh6+tgJNaKm0ms3c7nTtzq6xFAoRd6OxWp7Xub/u4snWLhG+V01slih7vWKLwZgtJvc484
	5T3aaqZ9KPkNtvIDL3oeCq5Yki2ZayzAB4Y1m/NCS3EayjMUyaXQNQdyIhwt6RvdMNkzV/OwLhT
	9KKEpIO1/rKpTOCEO1W3dHo4iG78Xd5SXxl/B7Dat7HPGrnrSa8KobwlYR77Vai+YDNE96Ayhpq
	fR9guqlDFushMj4p+rRgk/8C23YC1TD0h1uSWthxWg==
X-Received: by 2002:a17:907:a41:b0:b86:f558:ecaa with SMTP id a640c23a62f3a-b8792dc7e5amr410002766b.27.1768592575124;
        Fri, 16 Jan 2026 11:42:55 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:54 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-14-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=6823;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=CAk1wLBgWgbvFNIWuD4ZD1T6ejRWVUU/OejQB5ZdcyQ=;
 b=V8WmBOVE40o8Q3lp+L8g4U8iKev2r41WEY/zJTEHwL3tiXEBfmjQU8bP3JGfAoxJsYr+89NbV
 52uOzhVWHkJBrqlSVbbaRVROk4UW8wANLFUw3mXcXevXWV+i+5LmUbv
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114257_473396_43779984 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/14] phy: rockchip: naneng-combphy: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add RK3562 naneng combphy support for PCIe and USB3 modes with SSC,
CTLE, PLL configuration, and support for 24MHz/25MHz/100MHz reference
clocks.
NOTE: this commit is compile-tested Only. I tested only USB 2.0.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 161 +++++++++++++++++++++
 1 file changed, 161 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 7951a109f5..4a2e5f11ee 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -402,6 +402,163 @@ static int rockchip_combphy_probe(struct device *dev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	unsigned long rate;
+	u32 val;
+
+	switch (priv->type) {
+	case PHY_TYPE_PCIE:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		/* Enable adaptive CTLE for USB3.0 Rx */
+		rockchip_combphy_updatel(priv, PHYREG15_CTLE_EN,
+					 PHYREG15_CTLE_EN, PHYREG15);
+
+		/* Set PLL KVCO fine tuning signals */
+		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+					 BIT(3), PHYREG33);
+
+		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
+		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+		/* Set PLL input clock divider 1/2 */
+		val = FIELD_PREP(PHYREG6_PLL_DIV_MASK, PHYREG6_PLL_DIV_2);
+		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK, val, PHYREG6);
+
+		/* Set PLL loop divider */
+		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+
+		/* Set PLL KVCO to min and set PLL charge pump current to max */
+		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_usb, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	rate = clk_get_rate(priv->refclk);
+
+	switch (rate) {
+	case REF_CLOCK_24MHz:
+		if (priv->type == PHY_TYPE_USB3) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
+			val = FIELD_PREP(PHYREG15_SSC_CNT_MASK,
+					 PHYREG15_SSC_CNT_VALUE);
+			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
+						 val, PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+		}
+		break;
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
+			/* Gate_tx_pck_sel length select for L1ss support */
+			rockchip_combphy_updatel(priv, PHYREG13_CKRCV_AMP0,
+						 PHYREG13_CKRCV_AMP0,
+						 PHYREG30);
+			/* PLL KVCO tuning fine */
+			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK,
+					 PHYREG33_PLL_KVCO_VALUE);
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Enable controlling random jitter, aka RMJ */
+			writel(0x4, priv->mmio + PHYREG12);
+
+			val = PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
+						 val, PHYREG6);
+
+			writel(0x32, priv->mmio + PHYREG18);
+			writel(0xf0, priv->mmio + PHYREG11);
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
+			rockchip_combphy_updatel(priv, PHYREG13_RESISTER_MASK, val,
+						 PHYREG13);
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
+static const struct rockchip_combphy_grfcfg rk3562_combphy_grfcfgs = {
+	/* pipe-phy-grf */
+	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
+	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
+	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
+	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
+	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
+	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
+	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
+	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
+	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
+	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
+	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
+	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
+	.pipe_sel_usb		= { 0x000c, 14, 13, 0x00, 0x01 },
+	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
+	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
+	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
+	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
+};
+
+static const struct rockchip_combphy_cfg rk3562_combphy_cfgs = {
+	.num_phys = 2,
+	.phy_ids = {
+		0xff750000
+	},
+	.grfcfg		= &rk3562_combphy_grfcfgs,
+	.combphy_cfg	= rk3562_combphy_cfg,
+};
+
+
 static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
@@ -1055,6 +1212,10 @@ static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
 };
 
 static const struct of_device_id rockchip_combphy_of_match[] = {
+	{
+		.compatible = "rockchip,rk3562-naneng-combphy",
+		.data = &rk3562_combphy_cfgs,
+	},
 	{
 		.compatible = "rockchip,rk3568-naneng-combphy",
 		.data = &rk3568_combphy_cfgs,

-- 
2.43.0



