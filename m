Delivery-date: Fri, 30 Jan 2026 06:18:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtW-006s4T-1n
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtS-0002TD-9K
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=; b=nBugVha2pYze5zW5Y96lWYPyEi
	pkoKGDB25J/abPteINQUI5nKLK9HjNqbkC4BoY73DxluNdoRvbCBflxZ64Wxmi7gES8cJvvgKZNyU
	8mptYWaUf8DESspcv9hkwB3G3TN3fdINcxH4FiQ9wOJEIcM6nVFCNhFnQep4vPPLdfTuT50kqWQmC
	cfy5tdIbvOyfRI7AFyuPKrzFnZFzbS/Fh7dTrQwLAKTDKhzbunkXNMQPkJKBCOBzwBIBqkx9o/Ym2
	gGrtX96oLNDsoCE8H+IxdZ4Kwb/TH5cHpnF+BYIqRj7yRo7TVJHRvkh/XeaWj6V5uGaF9xc1zQItu
	t3VpO9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsq-000000012IK-3cUR;
	Fri, 30 Jan 2026 05:17:28 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsl-0000000128Q-1Hvi
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:24 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so13354785e9.1
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750241; x=1770355041; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=;
        b=mgszbrWA+zr6WBI/Wm65OanMPdTk/IV/wn+2T0ct2TrgLBiupcSu1kJMm+nBLZipTB
         TBpJRhatcnwbD3L6RVBPRgp8rXBKDZfcp8e6SuRFU3Ot9ym82FoouLEu4a5k8sn4AcQN
         btFTBsicQmbcQ39fLVB40jlKSPT4OF54F3oPQfYCoAyL5NohMYPan7csKuyGFUV3kISq
         IelVfRQOA1qUN3JmbSuuPIehFFHe1igcJ7NBvjNSXu70VT/wKuHwpzezlEG54AOmjLZf
         xSMQZWBxgeD/1QajeL/6HH3Ab74zzzRsAyZ+m1KDunuazH/wgUWFlUsEIB2tL5OpcZM1
         nfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750241; x=1770355041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+hrY+utJNHtEoRg4Y8+a5Q6mTvLnyJVpIqVwibKGt7M=;
        b=FKWHyzZLsrMC39AYOOf/Ys6q8FVaPXfZe/ufjD3PKk/eGRjASiaAB+rHF2hUnfpsVO
         mWq+ZON8aBUbLK71zNMSwvbQObx8EvQI9NUJfYE3b6ET66zzGqYBe2XKilcU611PTFRf
         f+e+vzjla4kaLc3M5D7gOgg98az+xsQ2ybcjEtKtSv1m+IhU7EflBTEyPwD4G2EbHmGb
         lkoELdpznPlUd6tihsvUmnHhcsov4jpKswByg8feY47uiqMoUk78fTTwrDgAzPKETMlT
         vTYgKsBtKqldzJyqCHWvrsvPtVnJlyc+TN6BocBNyfKg4VCt3oQYT9X26aJxbGcFVPVe
         MfKw==
X-Forwarded-Encrypted: i=1; AJvYcCWMvtWdFvaJu8SvL2wq4PQ9tEirC+ib0jM7NGz9VAiOUxlqDQInQY9cq3LY9ogQ1RxZpR892uiX@lists.infradead.org
X-Gm-Message-State: AOJu0YxdfWZ3rykwwqBX5pMGBb4IHR2LLP3qKI6wv3xHO6jAf2fdaQEK
	dzN+S+ewvGnGijiNc7XgbmbMH5jCu3JwW7+ogH4dlZ3ZAQYl+f80z7nVlobvSw==
X-Gm-Gg: AZuq6aJNXWS+/w3BYwyycrh9+KZO5QgVpzmFmQEZ7j3MHF8ENsrEQocJD0Y2xMKw4mi
	r4teoJ7ZFrjJOUuYwGJVVy1TcSNbTgeL9QdDWsO6JSbWWVu6CPz1IDuzZ/AXbpeKgaHkZG9rFCj
	o2ZYa8kUfTrQwNL2PN6VfasNfyCcD0/V4n0b7ADFjjE8uwESTkRi6fjkM2s10qvs158EQBfplwC
	UfigxW/rUx7d8r3+MLgmWauYEIsgBeba2ZKmMnVqCG6IxECObDa7+buTgtgQX805vZUKenNxsWt
	IvLnqh8nTx2aoi4boi/79/9Zxj8IM2N/tcCeLtidkgLwRLAp+yZbT9asS8GnzTYkHdbVdp5rg8u
	rGHU+hCQo6Tr3gA7+Hip5IXre+I/g2m3Kq/hoQEfTHahWFIfnw0ALM6Bv0h5zUX388DfY+4J+D6
	NmG6kI390o2G1ztioTdPBSl0pQx0E8GNMYBlYh38n+o+qPkgadaR43tAyYFhedd9O8IuxVTSG6E
	zF0CDiw0u1DtgsurVVRktU1hVDSZbSRPt3y7WG6WIwbb8fz+WbukjDe5k5xTR2vJKI+PgcjM5Oh
	DUGMOxvQWgGTKDGiEU4WCtVIE3CFAyTpGlOMZ1flgg==
X-Received: by 2002:a05:600c:8207:b0:47f:b737:5ce0 with SMTP id 5b1f17b1804b1-482db49239emr16314585e9.23.1769750241289;
        Thu, 29 Jan 2026 21:17:21 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:20 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-14-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=6823;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=CAk1wLBgWgbvFNIWuD4ZD1T6ejRWVUU/OejQB5ZdcyQ=;
 b=PpbMmLdxcyY87v61L+/lF4ptGnjdEpIav0DxZocgJzG67MMuzj27ain/UBmn5J+3TQlXBwQoI
 UoiMcgV0gJkB3Kpef+ZIoRyZuLgpI3UE2Wavau4Ki3XJqBdqzXajxvR
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211723_406261_63A95E85 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 14/14] phy: rockchip: naneng-combphy: Add RK3562 support
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



