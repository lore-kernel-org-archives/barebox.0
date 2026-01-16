Delivery-date: Fri, 16 Jan 2026 20:44:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjm-0024V4-0C
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjf-0001oQ-Ji
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:44:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=84epClX3sB7jGmdAU8rw6PK1xsDHv2/YBXpNNAHuncQ=; b=D9Cl9lZJrDelEDIPP96gnovxsu
	Dusxw3TN2ANZHSewKaPQq3vZnpBxJvz2w1AHmLQY3d+iI3K31gDSv23gPrPq/H8bI/ANSqms3AujM
	TC34pFGV8w2PrkRFfER91jUSoeM/SfDGjThmtMrZikJIpO3V1eXOqmsYwLqCKjWqn43ZYj6ytZhPH
	HathkbLbkhDu1dfM5rEjjHJIYveJcBHdOOJnO5i3lqc+KMLN6DOYsvzsJIYdfE1iqNHt00eHvEivZ
	aepp7CoKw9vPirlTTKKoJgC1Auei3D3CIWC6T+q+NgHdfjZnK1MBHRtyWTcQ1DYtzaeiH7iPgWgDb
	+hTaKVuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpif-0000000Ehlm-2sHZ;
	Fri, 16 Jan 2026 19:42:53 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpic-0000000Ehij-10ki
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:51 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-65378ba2ff7so4201524a12.2
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592568; x=1769197368; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84epClX3sB7jGmdAU8rw6PK1xsDHv2/YBXpNNAHuncQ=;
        b=fGZMZlQoGKfO4nxFTLXDHO4kmlmMNRBTT8dRMGjBLRFIbunZrzeEUP53j+rf803egI
         6eZJ9LWaHBUjbZYMCKYwl3f8Hv4xJ4fd0Rhz64uYyNAvEU8f4+gLa6NZ2tzawqk90bnO
         n9TJifWEkMuQi9iUAt5SQmEcRDOjbonvdC74u1PofWrHsRu3rLVJygeD5L+CfJrGeHRc
         q9opUgZEemOROESAMbJm9XDHPAtRcCKU8fQneUkzUBcrGMK3LnFZLD51znrUnfuPwnqj
         18BPHYwGy+1OpuVlX00XcGlNGMqjAHAruaVwtV20yBSxDyIaCGuJuWgbkbiYAL3x4gpM
         JNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592568; x=1769197368;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=84epClX3sB7jGmdAU8rw6PK1xsDHv2/YBXpNNAHuncQ=;
        b=izoHS23KROWWpVy90q3Xb6ixqWES/6dkt0c2vKgMtY+a/jXxuax0rv+xqW0DP6Qjqu
         s1ufJEITEEg5sqLS6K3Hr/Sv5yt9SGm+W2rWq+31tE4NdZSFgaedsMCPB9V2emF6GfDr
         Xa2/iUssJFZIpSIr1hE4EKJmAMyfwpNvAuk+6Ag1K4Y4fX+62aISZ6NcOZpTsxyzWQIj
         HISP3zcsw0/vWXBweZO+AgwtelgcQRd9cGoxsz/miVQnyeDQwRWnT5nP+9XW+EELLcn1
         jxVKK2xsNh3/UbB4amujcIZRBpNFW38ACD2OJssWNRYAqJYf9uNZEW53vu93JNsC6W2t
         ObeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSrJaujiIXVLoZe09L1WlyskKKnHxoojpAjJ9AT5h62IK/PB5aNBZikAykxabufdyNXj9QrMEf@lists.infradead.org
X-Gm-Message-State: AOJu0YwmA5S/MyUQGpgIWS1HLs7hVWSX2Wt4Pc1ZeeiSlSxvhYQ+GGT8
	hRDbnXp34y3OegoPoK1JciMNxdQtUR/yeWvqa3cRqn7aymsOx4/5wRl2eZuMQA==
X-Gm-Gg: AY/fxX6OUzplcwk0CDl0D/RpuiUGMeF6CRYyzSsPG6XR3gg9d54XM/Rp7FemnObdygI
	F1w9AkMqKM+kGBJvOCqnIvac3SGT7D04vPkdQOk8XMdeOztjErp9nGXegpq/CenlbEgl2fC28RA
	B8uI4eLGfe9NM5X8MsSzpQ0+6fh/T0BGg/UY4ftZTtoujhJvABMd1Gjojkd4TL1wRlDP2MDAXyU
	iZ5Wkt+xw93wbo4L/qdwuy6mAgm8OUs6YCD/4nCBlQfYcRr4CizpJRENJWrYOUr8Ld2cNRlMBQT
	GfG1i5DOoJsFLbfz9P7XMJS3SzwYyKkh5a8PUfJuDGKDyMy74sOsY+vu1B0r/hBCppvFAFzvkKv
	EqNmDNvFycFPX7VKStH4vjvJ5mC06wvwpX2t+wXKL3SW9Pcp//apieYvVK8cnPlySfnNkdXFiJy
	V7UcJNITyJ6OiGyFaj8fRI1uDNz5eZQ8OSkjc1SSX7bbWbCuJWWNLuFg3nCJQVPugBKUsLNVZcL
	CqV0j3z6gpF1k+8IkdokA6XHf8JPc51G1IFb/7DxFqVrLNBO+Hx6X3cwjutx8LmhSjvShTQHbC6
	wHKshXPXRd4xtBZJiSf84JjHdrk18TgO6zEiue6ARA==
X-Received: by 2002:a17:907:2d9f:b0:b76:49ae:6ee6 with SMTP id a640c23a62f3a-b87968e2ff6mr329429166b.15.1768592567582;
        Fri, 16 Jan 2026 11:42:47 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:47 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-3-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=28838;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=NTcRFelM2jD4i0L9zfA/qRmNmrq1rNItts3are3cJq8=;
 b=adM00tlwwyTDc7cNAWoNVy04HRi6F4frTb5iMeLp1k2ZpOAE/xyq0GxrCFB+Bwt2nPFPhUtfx
 cEcaNI6a1BNBtwFPEJqLBv/gYx71GZ6XD4A0oj/oBeY5usdiSeuGLdR
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114250_496680_88137BA7 
X-CRM114-Status: GOOD (  18.23  )
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
Subject: [PATCH 03/14] pinctrl: rockchip: sync driver with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

To add RK3562 support, sync the driver with Linux and while at it, add
also support for other new 64-bit Rockchip SoCs.
And remove rockchip_gpio_regs unused struct.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/mfd/syscon.c               |  18 +
 drivers/pinctrl/pinctrl-rockchip.c | 768 ++++++++++++++++++++++++++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h |  52 +--
 include/mfd/syscon.h               |   8 +
 4 files changed, 803 insertions(+), 43 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 3c2e1241fd..bd6626029d 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -217,6 +217,24 @@ struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
 	return regmap;
 }
 
+/*
+ * It behaves the same as syscon_regmap_lookup_by_phandle() except where
+ * there is no regmap phandle. In this case, instead of returning -ENODEV,
+ * the function returns NULL.
+ */
+struct regmap *syscon_regmap_lookup_by_phandle_optional(struct device_node *np,
+					const char *property)
+{
+	struct regmap *regmap;
+
+	regmap = syscon_regmap_lookup_by_phandle(np, property);
+	if (IS_ERR(regmap) && PTR_ERR(regmap) == -ENODEV)
+		return NULL;
+
+	return regmap;
+}
+EXPORT_SYMBOL_GPL(syscon_regmap_lookup_by_phandle_optional);
+
 static int syscon_probe(struct device *dev)
 {
 	struct syscon *syscon;
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 58e9153bd6..f2a6c0266b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -94,6 +94,29 @@
 		.pull_type[3] = pull3,					\
 	}
 
+#define PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(id, pins, label, iom0,	\
+					       iom1, iom2, iom3,	\
+					       offset0, offset1,	\
+					       offset2, offset3, drv0,	\
+					       drv1, drv2, drv3)	\
+	{								\
+		.bank_num	= id,					\
+		.nr_pins	= pins,					\
+		.name		= label,				\
+		.iomux		= {					\
+			{ .type = iom0, .offset = offset0 },		\
+			{ .type = iom1, .offset = offset1 },		\
+			{ .type = iom2, .offset = offset2 },		\
+			{ .type = iom3, .offset = offset3 },		\
+		},							\
+		.drv		= {					\
+			{ .drv_type = drv0, .offset = -1 },		\
+			{ .drv_type = drv1, .offset = -1 },		\
+			{ .drv_type = drv2, .offset = -1 },		\
+			{ .drv_type = drv3, .offset = -1 },		\
+		},							\
+	}
+
 #define PIN_BANK_DRV_FLAGS(id, pins, label, type0, type1, type2, type3) \
 	{								\
 		.bank_num	= id,					\
@@ -222,6 +245,35 @@
 		.pull_type[3] = pull3,					\
 	}
 
+#define PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS_PULL_FLAGS(id, pins,	\
+						label, iom0, iom1,	\
+						iom2, iom3, offset0,	\
+						offset1, offset2,	\
+						offset3, drv0, drv1,	\
+						drv2, drv3, pull0,	\
+						pull1, pull2, pull3)	\
+	{								\
+		.bank_num	= id,					\
+		.nr_pins	= pins,					\
+		.name		= label,				\
+		.iomux		= {					\
+			{ .type = iom0, .offset = offset0 },		\
+			{ .type = iom1, .offset = offset1 },		\
+			{ .type = iom2, .offset = offset2 },		\
+			{ .type = iom3, .offset = offset3 },		\
+		},							\
+		.drv		= {					\
+			{ .drv_type = drv0, .offset = -1 },		\
+			{ .drv_type = drv1, .offset = -1 },		\
+			{ .drv_type = drv2, .offset = -1 },		\
+			{ .drv_type = drv3, .offset = -1 },		\
+		},							\
+		.pull_type[0] = pull0,					\
+		.pull_type[1] = pull1,					\
+		.pull_type[2] = pull2,					\
+		.pull_type[3] = pull3,					\
+	}
+
 #define PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, FLAG)		\
 	{								\
 		.bank_num	= ID,					\
@@ -1010,6 +1062,13 @@ static int rockchip_set_mux(struct rockchip_pin_bank *bank, int pin, int mux)
 	else
 		regmap = info->regmap_base;
 
+	if (ctrl->type == RK3506) {
+		if (bank->bank_num == 1)
+			regmap = info->regmap_ioc1;
+		else if (bank->bank_num == 4)
+			return 0;
+	}
+
 	/* get basic quadrupel of mux registers and the correct reg inside */
 	mux_type = bank->iomux[iomux_num].type;
 	reg = bank->iomux[iomux_num].offset;
@@ -1774,6 +1833,516 @@ static int rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+#define RK3506_DRV_BITS_PER_PIN		8
+#define RK3506_DRV_PINS_PER_REG		2
+#define RK3506_DRV_GPIO0_A_OFFSET	0x100
+#define RK3506_DRV_GPIO0_D_OFFSET	0x830
+#define RK3506_DRV_GPIO1_OFFSET		0x140
+#define RK3506_DRV_GPIO2_OFFSET		0x180
+#define RK3506_DRV_GPIO3_OFFSET		0x1c0
+#define RK3506_DRV_GPIO4_OFFSET		0x840
+
+static int rk3506_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	switch (bank->bank_num) {
+	case 0:
+		*regmap = info->regmap_pmu;
+		if (pin_num > 24) {
+			ret = -EINVAL;
+		} else if (pin_num < 24) {
+			*reg = RK3506_DRV_GPIO0_A_OFFSET;
+		} else {
+			*reg = RK3506_DRV_GPIO0_D_OFFSET;
+			*bit = 3;
+
+			return 0;
+		}
+		break;
+
+	case 1:
+		*regmap = info->regmap_ioc1;
+		if (pin_num < 28)
+			*reg = RK3506_DRV_GPIO1_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		*regmap = info->regmap_base;
+		if (pin_num < 17)
+			*reg = RK3506_DRV_GPIO2_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 3:
+		*regmap = info->regmap_base;
+		if (pin_num < 15)
+			*reg = RK3506_DRV_GPIO3_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 4:
+		*regmap = info->regmap_base;
+		if (pin_num < 8 || pin_num > 11) {
+			ret = -EINVAL;
+		} else {
+			*reg = RK3506_DRV_GPIO4_OFFSET;
+			*bit = 10;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RK3506_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3506_DRV_PINS_PER_REG;
+	*bit *= RK3506_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3506_PULL_BITS_PER_PIN	2
+#define RK3506_PULL_PINS_PER_REG	8
+#define RK3506_PULL_GPIO0_A_OFFSET	0x200
+#define RK3506_PULL_GPIO0_D_OFFSET	0x830
+#define RK3506_PULL_GPIO1_OFFSET	0x210
+#define RK3506_PULL_GPIO2_OFFSET	0x220
+#define RK3506_PULL_GPIO3_OFFSET	0x230
+#define RK3506_PULL_GPIO4_OFFSET	0x840
+
+static int rk3506_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					 int pin_num, struct regmap **regmap,
+					 int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	switch (bank->bank_num) {
+	case 0:
+		*regmap = info->regmap_pmu;
+		if (pin_num > 24) {
+			ret = -EINVAL;
+		} else if (pin_num < 24) {
+			*reg = RK3506_PULL_GPIO0_A_OFFSET;
+		} else {
+			*reg = RK3506_PULL_GPIO0_D_OFFSET;
+			*bit = 5;
+
+			return 0;
+		}
+		break;
+
+	case 1:
+		*regmap = info->regmap_ioc1;
+		if (pin_num < 28)
+			*reg = RK3506_PULL_GPIO1_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		*regmap = info->regmap_base;
+		if (pin_num < 17)
+			*reg = RK3506_PULL_GPIO2_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 3:
+		*regmap = info->regmap_base;
+		if (pin_num < 15)
+			*reg = RK3506_PULL_GPIO3_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 4:
+		*regmap = info->regmap_base;
+		if (pin_num < 8 || pin_num > 11) {
+			ret = -EINVAL;
+		} else {
+			*reg = RK3506_PULL_GPIO4_OFFSET;
+			*bit = 13;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RK3506_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3506_PULL_PINS_PER_REG;
+	*bit *= RK3506_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3506_SMT_BITS_PER_PIN		1
+#define RK3506_SMT_PINS_PER_REG		8
+#define RK3506_SMT_GPIO0_A_OFFSET	0x400
+#define RK3506_SMT_GPIO0_D_OFFSET	0x830
+#define RK3506_SMT_GPIO1_OFFSET		0x410
+#define RK3506_SMT_GPIO2_OFFSET		0x420
+#define RK3506_SMT_GPIO3_OFFSET		0x430
+#define RK3506_SMT_GPIO4_OFFSET		0x840
+
+static int rk3506_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	switch (bank->bank_num) {
+	case 0:
+		*regmap = info->regmap_pmu;
+		if (pin_num > 24) {
+			ret = -EINVAL;
+		} else if (pin_num < 24) {
+			*reg = RK3506_SMT_GPIO0_A_OFFSET;
+		} else {
+			*reg = RK3506_SMT_GPIO0_D_OFFSET;
+			*bit = 9;
+
+			return 0;
+		}
+		break;
+
+	case 1:
+		*regmap = info->regmap_ioc1;
+		if (pin_num < 28)
+			*reg = RK3506_SMT_GPIO1_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		*regmap = info->regmap_base;
+		if (pin_num < 17)
+			*reg = RK3506_SMT_GPIO2_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 3:
+		*regmap = info->regmap_base;
+		if (pin_num < 15)
+			*reg = RK3506_SMT_GPIO3_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 4:
+		*regmap = info->regmap_base;
+		if (pin_num < 8 || pin_num > 11) {
+			ret = -EINVAL;
+		} else {
+			*reg = RK3506_SMT_GPIO4_OFFSET;
+			*bit = 8;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RK3506_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3506_SMT_PINS_PER_REG;
+	*bit *= RK3506_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3528_DRV_BITS_PER_PIN		8
+#define RK3528_DRV_PINS_PER_REG		2
+#define RK3528_DRV_GPIO0_OFFSET		0x100
+#define RK3528_DRV_GPIO1_OFFSET		0x20120
+#define RK3528_DRV_GPIO2_OFFSET		0x30160
+#define RK3528_DRV_GPIO3_OFFSET		0x20190
+#define RK3528_DRV_GPIO4_OFFSET		0x101C0
+
+static int rk3528_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_DRV_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_DRV_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_DRV_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_DRV_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_DRV_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_DRV_PINS_PER_REG;
+	*bit *= RK3528_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3528_PULL_BITS_PER_PIN		2
+#define RK3528_PULL_PINS_PER_REG		8
+#define RK3528_PULL_GPIO0_OFFSET		0x200
+#define RK3528_PULL_GPIO1_OFFSET		0x20210
+#define RK3528_PULL_GPIO2_OFFSET		0x30220
+#define RK3528_PULL_GPIO3_OFFSET		0x20230
+#define RK3528_PULL_GPIO4_OFFSET		0x10240
+
+static int rk3528_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_PULL_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_PULL_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_PULL_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_PULL_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_PULL_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_PULL_PINS_PER_REG;
+	*bit *= RK3528_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3528_SMT_BITS_PER_PIN		1
+#define RK3528_SMT_PINS_PER_REG		8
+#define RK3528_SMT_GPIO0_OFFSET		0x400
+#define RK3528_SMT_GPIO1_OFFSET		0x20410
+#define RK3528_SMT_GPIO2_OFFSET		0x30420
+#define RK3528_SMT_GPIO3_OFFSET		0x20430
+#define RK3528_SMT_GPIO4_OFFSET		0x10440
+
+static int rk3528_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_SMT_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_SMT_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_SMT_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_SMT_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_SMT_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_SMT_PINS_PER_REG;
+	*bit *= RK3528_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3562_DRV_BITS_PER_PIN		8
+#define RK3562_DRV_PINS_PER_REG		2
+#define RK3562_DRV_GPIO0_OFFSET		0x20070
+#define RK3562_DRV_GPIO1_OFFSET		0x200
+#define RK3562_DRV_GPIO2_OFFSET		0x240
+#define RK3562_DRV_GPIO3_OFFSET		0x10280
+#define RK3562_DRV_GPIO4_OFFSET		0x102C0
+
+static int rk3562_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_DRV_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_DRV_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_DRV_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_DRV_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_DRV_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_DRV_PINS_PER_REG;
+	*bit *= RK3562_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3562_PULL_BITS_PER_PIN		2
+#define RK3562_PULL_PINS_PER_REG		8
+#define RK3562_PULL_GPIO0_OFFSET		0x20020
+#define RK3562_PULL_GPIO1_OFFSET		0x80
+#define RK3562_PULL_GPIO2_OFFSET		0x90
+#define RK3562_PULL_GPIO3_OFFSET		0x100A0
+#define RK3562_PULL_GPIO4_OFFSET		0x100B0
+
+static int rk3562_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_PULL_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_PULL_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_PULL_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_PULL_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_PULL_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_PULL_PINS_PER_REG;
+	*bit *= RK3562_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3562_SMT_BITS_PER_PIN		2
+#define RK3562_SMT_PINS_PER_REG		8
+#define RK3562_SMT_GPIO0_OFFSET		0x20030
+#define RK3562_SMT_GPIO1_OFFSET		0xC0
+#define RK3562_SMT_GPIO2_OFFSET		0xD0
+#define RK3562_SMT_GPIO3_OFFSET		0x100E0
+#define RK3562_SMT_GPIO4_OFFSET		0x100F0
+
+static int rk3562_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_SMT_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_SMT_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_SMT_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_SMT_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_SMT_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_SMT_PINS_PER_REG;
+	*bit *= RK3562_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
 #define RK3568_PULL_PMU_OFFSET		0x20
 #define RK3568_PULL_GRF_OFFSET		0x80
 #define RK3568_PULL_BITS_PER_PIN	2
@@ -2187,7 +2756,10 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 		rmask_bits = RK3588_DRV_BITS_PER_PIN;
 		ret = strength;
 		goto config;
-	} else if (ctrl->type == RK3568) {
+	} else if (ctrl->type == RK3506 ||
+		   ctrl->type == RK3528 ||
+		   ctrl->type == RK3562 ||
+		   ctrl->type == RK3568) {
 		rmask_bits = RK3568_DRV_BITS_PER_PIN;
 		ret = (1 << (strength + 1)) - 1;
 		goto config;
@@ -2264,12 +2836,37 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	case DRV_TYPE_IO_1V8_ONLY:
 		rmask_bits = RK3288_DRV_BITS_PER_PIN;
 		break;
+	case DRV_TYPE_IO_LEVEL_2_BIT:
+		ret = regmap_read(regmap, reg, &data);
+		if (ret)
+			return ret;
+		data >>= bit;
+
+		return data & 0x3;
+	case DRV_TYPE_IO_LEVEL_8_BIT:
+		ret = regmap_read(regmap, reg, &data);
+		if (ret)
+			return ret;
+		data >>= bit;
+		data &= (1 << 8) - 1;
+
+		ret = hweight8(data);
+		if (ret > 0)
+			return ret - 1;
+		else
+			return -EINVAL;
 	default:
 		dev_err(dev, "unsupported pinctrl drive type: %d\n", drv_type);
 		return -EINVAL;
 	}
 
 config:
+	if (ctrl->type == RK3506) {
+		if ((bank->bank_num == 0 && pin_num == 24) || bank->bank_num == 4) {
+			rmask_bits = 2;
+			ret = strength;
+		}
+	}
 	/* enable the write to the equivalent lower bits */
 	data = ((1 << rmask_bits) - 1) << (bit + 16);
 	rmask = data | (data >> 16);
@@ -2332,6 +2929,9 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3308:
 	case RK3368:
 	case RK3399:
+	case RK3506:
+	case RK3528:
+	case RK3562:
 	case RK3568:
 	case RK3576:
 	case RK3588:
@@ -2711,6 +3311,9 @@ static int rockchip_pinctrl_probe(struct device *dev)
 
 	dev->priv = info;
 
+	/* try to find the optional reference to the ioc1 syscon */
+	info->regmap_ioc1 = syscon_regmap_lookup_by_phandle_optional(np, "rockchip,ioc1");
+
 	ret = of_platform_populate(np, NULL, dev);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register gpio device\n");
@@ -3120,6 +3723,157 @@ static __maybe_unused struct rockchip_pin_ctrl rk3399_pin_ctrl = {
 		.drv_calc_reg		= rk3399_calc_drv_reg_and_bit,
 };
 
+static struct rockchip_pin_bank rk3506_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS_PULL_FLAGS(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
+				    IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
+				    IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
+				    IOMUX_WIDTH_2BIT | IOMUX_SOURCE_PMU,
+				    0x0, 0x8, 0x10, 0x830,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_2_BIT,
+				    0, 0, 0, 1),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20, 0x28, 0x30, 0x38,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x40, 0x48, 0x50, 0x58,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(3, 32, "gpio3",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x60, 0x68, 0x70, 0x78,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS_PULL_FLAGS(4, 32, "gpio4",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x80, 0x88, 0x90, 0x98,
+				    DRV_TYPE_IO_LEVEL_2_BIT,
+				    DRV_TYPE_IO_LEVEL_2_BIT,
+				    DRV_TYPE_IO_LEVEL_2_BIT,
+				    DRV_TYPE_IO_LEVEL_2_BIT,
+				    1, 1, 1, 1),
+};
+
+static struct rockchip_pin_ctrl rk3506_pin_ctrl __maybe_unused = {
+	.pin_banks		= rk3506_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rk3506_pin_banks),
+	.label			= "RK3506-GPIO",
+	.type			= RK3506,
+	.pull_calc_reg		= rk3506_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rk3506_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rk3506_calc_schmitt_reg_and_bit,
+};
+
+static struct rockchip_pin_bank rk3528_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20020, 0x20028, 0x20030, 0x20038),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x30040, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(3, 32, "gpio3",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20060, 0x20068, 0x20070, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(4, 32, "gpio4",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x10080, 0x10088, 0x10090, 0x10098),
+};
+
+static struct rockchip_pin_ctrl rk3528_pin_ctrl __maybe_unused = {
+	.pin_banks		= rk3528_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rk3528_pin_banks),
+	.label			= "RK3528-GPIO",
+	.type			= RK3528,
+	.pull_calc_reg		= rk3528_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rk3528_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rk3528_calc_schmitt_reg_and_bit,
+};
+
+static struct rockchip_pin_bank rk3562_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20000, 0x20008, 0x20010, 0x20018),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0, 0x08, 0x10, 0x18),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(3, 32, "gpio3",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x10040, 0x10048, 0x10050, 0x10058),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(4, 16, "gpio4",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0,
+				    0,
+				    0x10060, 0x10068, 0, 0),
+};
+
+static struct rockchip_pin_ctrl rk3562_pin_ctrl __maybe_unused = {
+	.pin_banks		= rk3562_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rk3562_pin_banks),
+	.label			= "RK3562-GPIO",
+	.type			= RK3562,
+	.pull_calc_reg		= rk3562_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rk3562_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rk3562_calc_schmitt_reg_and_bit,
+};
+
 static __maybe_unused struct rockchip_pin_bank rk3568_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
 					     IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
@@ -3266,6 +4020,18 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 	{ .compatible = "rockchip,rk3399-pinctrl",
 		.data = &rk3399_pin_ctrl },
 #endif
+#ifdef CONFIG_ARCH_RK3506
+	{ .compatible = "rockchip,rk3506-pinctrl",
+		.data = &rk3506_pin_ctrl },
+#endif
+#ifdef CONFIG_ARCH_RK3528
+	{ .compatible = "rockchip,rk3528-pinctrl",
+		.data = &rk3528_pin_ctrl },
+#endif
+#ifdef CONFIG_ARCH_RK3562
+	{ .compatible = "rockchip,rk3562-pinctrl",
+		.data = &rk3562_pin_ctrl },
+#endif
 #ifdef CONFIG_ARCH_RK3568
 	{ .compatible = "rockchip,rk3568-pinctrl",
 		.data = &rk3568_pin_ctrl },
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index f9c00f802b..62c542bc68 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (c) 2020-2021 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
  *
  * Copyright (c) 2013 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -18,6 +18,8 @@
 #ifndef _PINCTRL_ROCKCHIP_H
 #define _PINCTRL_ROCKCHIP_H
 
+#include <linux/types.h>
+
 #define RK_GPIO0_A0	0
 #define RK_GPIO0_A1	1
 #define RK_GPIO0_A2	2
@@ -193,49 +195,17 @@ enum rockchip_pinctrl_type {
 	RK3188,
 	RK3288,
 	RK3308,
+	RK3328,
 	RK3368,
 	RK3399,
+	RK3506,
+	RK3528,
+	RK3562,
 	RK3568,
 	RK3576,
 	RK3588,
 };
 
-/**
- * struct rockchip_gpio_regs
- * @port_dr: data register
- * @port_ddr: data direction register
- * @int_en: interrupt enable
- * @int_mask: interrupt mask
- * @int_type: interrupt trigger type, such as high, low, edge trriger type.
- * @int_polarity: interrupt polarity enable register
- * @int_bothedge: interrupt bothedge enable register
- * @int_status: interrupt status register
- * @int_rawstatus: int_status = int_rawstatus & int_mask
- * @debounce: enable debounce for interrupt signal
- * @dbclk_div_en: enable divider for debounce clock
- * @dbclk_div_con: setting for divider of debounce clock
- * @port_eoi: end of interrupt of the port
- * @ext_port: port data from external
- * @version_id: controller version register
- */
-struct rockchip_gpio_regs {
-	u32 port_dr;
-	u32 port_ddr;
-	u32 int_en;
-	u32 int_mask;
-	u32 int_type;
-	u32 int_polarity;
-	u32 int_bothedge;
-	u32 int_status;
-	u32 int_rawstatus;
-	u32 debounce;
-	u32 dbclk_div_en;
-	u32 dbclk_div_con;
-	u32 port_eoi;
-	u32 ext_port;
-	u32 version_id;
-};
-
 /**
  * struct rockchip_iomux
  * @type: iomux variant using IOMUX_* constants
@@ -257,6 +227,8 @@ enum rockchip_pin_drv_type {
 	DRV_TYPE_IO_1V8_ONLY,
 	DRV_TYPE_IO_1V8_3V0_AUTO,
 	DRV_TYPE_IO_3V3_ONLY,
+	DRV_TYPE_IO_LEVEL_2_BIT,
+	DRV_TYPE_IO_LEVEL_8_BIT,
 	DRV_TYPE_MAX
 };
 
@@ -301,15 +273,10 @@ struct rockchip_drv {
  * @valid: is all necessary information present
  * @of_node: dt node of this bank
  * @drvdata: common pinctrl basedata
- * @domain: irqdomain of the gpio bank
- * @gpio_chip: gpiolib chip
- * @grange: gpio range
- * @slock: spinlock for the gpio bank
  * @toggle_edge_mode: bit mask to toggle (falling/rising) edge mode
  * @recalced_mask: bit mask to indicate a need to recalulate the mask
  * @route_mask: bits describing the routing pins of per bank
  * @deferred_output: gpio output settings to be done after gpio bank probed
- * @deferred_lock: mutex for the deferred_output shared btw gpio and pinctrl
  */
 struct rockchip_pin_bank {
 	struct device			*dev;
@@ -445,6 +412,7 @@ struct rockchip_pinctrl {
 	int				reg_size;
 	struct regmap			*regmap_pull;
 	struct regmap			*regmap_pmu;
+	struct regmap			*regmap_ioc1;
 	struct device			*dev;
 	struct rockchip_pin_ctrl	*ctrl;
 	struct pinctrl_device		pctl_dev;
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 288dd464b7..215b97ab3e 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -25,6 +25,8 @@ struct regmap *syscon_regmap_lookup_by_compatible(const char *s);
 extern struct regmap *syscon_regmap_lookup_by_phandle(
 					struct device_node *np,
 					const char *property);
+struct regmap *syscon_regmap_lookup_by_phandle_optional(struct device_node *np,
+							const char *property);
 #else
 static inline void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property)
@@ -50,6 +52,12 @@ static inline struct regmap *syscon_regmap_lookup_by_phandle(
 {
 	return ERR_PTR(-ENOSYS);
 }
+static inline struct regmap *syscon_regmap_lookup_by_phandle_optional(
+					struct device_node *np,
+					const char *property)
+{
+	return NULL;
+}
 #endif
 
 #endif

-- 
2.43.0



