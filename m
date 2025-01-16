Delivery-date: Thu, 16 Jan 2025 18:03:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH2-000fw1-2h
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 18:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH2-0004UA-QH
	for lore@pengutronix.de; Thu, 16 Jan 2025 18:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q6I7pt9AB6kf/4uOcQCvSQNT+YWu13CHhuVq21XIwvs=; b=HnawAJT8V3eQRNbOV0URtvZDXc
	0aLG8l1qUo78fbK0oyoxUWwPDnx2JzQXRJYkalR9iA4jOfP8WghsWA6FHbaHPAQ70WZPfcdXv9lYo
	0WmCMKm8/XLyFsGmNJ4L+XQHJZjwHlbsW4kSBVA2JhIbd2OVYEDWQXAJyfkyKWGxnftgRI/uNZzrg
	RON5ODaPqPhoLsRVcMJNeOQjeZqZQhnS3eTIkIC/LnEosqniNiKtuiT7AV4So6LTV0fwI2fwgzpVe
	7BYY5Uv0/xSMW08nz3smiNL6UXv64plj8hdaEfkL1t7xT0VqHpwQUbhY+MrZjaDmSbFuvQizhlvTr
	UqJHogag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTGP-0000000Fbc1-2Mip;
	Thu, 16 Jan 2025 17:02:37 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTGE-0000000FbYv-38pd
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 17:02:28 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-3061513d353so12319201fa.2
        for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 09:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737046944; x=1737651744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6I7pt9AB6kf/4uOcQCvSQNT+YWu13CHhuVq21XIwvs=;
        b=CWtVSJeJ0UZwvsZRp7ysS2BicqiuwBXuf6GrPK1DSR6BaJ73sXlwXkBIp9VcuCj3HY
         D1ZhHxsEM3hR2tlOn8QsARLcXyiYI3eD2E5sJ0YOB9EwvCFvKzVsLPQAPXHwuP3pp8XE
         V4tDK22fpDwAYdr4gL5Wt8+ZKajyoMUn/0WxwyC5jEcT3G5GBK2KQNnCRpEXJ5Atg75R
         ybY7/3M9AOKEvRD8uhy2qbtnWWbkDzJj0vnnwNu88HyC1e1hEEDSa8loNdMPJfiXyzxl
         ekI62B4/eKS11d7IQjOYnw5rH2BGiGrJu6FvXZYBmyNDQr8Bb2JSo+dGpg98StH0HPnt
         h6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737046944; x=1737651744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6I7pt9AB6kf/4uOcQCvSQNT+YWu13CHhuVq21XIwvs=;
        b=uK2TX1PrvoAkI157pjDJZ6YfbXR3/zGQ3tATwsKcwMZIoR5UptgMfeYB/8G49jvJC1
         SJvP1ZUchutVawmJwZey7KTl4bLHetbxdtxjgHOOUkWzwv+pRmfagXciU4wdKh4D1Fto
         g0nBGAINgdHtFsgmLraffbUksLc3QjEMbgMErsJxI5qQxl+gVhDYNn/ZpcW2egnp2qM4
         QbwNIolbkGNQawiYAALR3uSasOaaqrEUgYP+F51dAA6T/2tqcw42q8JvAzwpEAbD6kMY
         o+JECqB4qojbwtBGzg3b+9FoqgCfEN/ZnkA8XGf8Qf2EMO/TpMIio2ErHMZ6fqHCw9nL
         p3nQ==
X-Gm-Message-State: AOJu0YzW/tSMipmeUwscUANYGYwAw4mnF3I/uqk5KdqBGbbQ8LD0Afr6
	hbAOd08DZAFxysfobHJBJCh3fSHnhthELfQVNAHjHF9OajJjJVJCB5Je0Q==
X-Gm-Gg: ASbGncuw/MtvAle78teLO9fZz0f5MQckhjXDJMK/ylG3napizDF2SOq1rBSJXeAq8iE
	wwQ0Q51zJJgMuj9MHhEWVL7oXLeKyQHw9s0Br0y/6rgmtkPO6sfGaJCjYzKln7c0zcr83+Kq8ZV
	N3Dh3Mek/hdGZwVzJDkgf3wyjcwwoiA/s+j1MjZSawivj74yBndJ1J9DL8/dBWqSUBAGbDlyn2b
	u9phAIxnu6OSuAs5Vbxs4nxYbuS+9v3AqjKuSSXvP5djGzIjivMhLBa2hFAY7j1X92/Whg++giS
	A0KWKg==
X-Google-Smtp-Source: AGHT+IG+yrH/zRFvWYAEbDt2UkiCTDjS6QR/UOEPdoBpK8JE6MRgoevpInPS6ffDjvZ8VjDgMBeCkg==
X-Received: by 2002:a05:6512:3e28:b0:53e:3aaa:5c7c with SMTP id 2adb3069b0e04-542845d1687mr12260683e87.51.1737046942324;
        Thu, 16 Jan 2025 09:02:22 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7390dsm41795e87.200.2025.01.16.09.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 09:02:20 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Jan 2025 20:01:54 +0300
Message-Id: <20250116170154.104253-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250116170154.104253-1-eagle.alexander923@gmail.com>
References: <20250116170154.104253-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_090226_784420_52E057EE 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] aiodev: rockchip_saradc: Add support for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds RK3588 SARADC support to the driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 81 +++++++++++++++++++++++++++-----
 1 file changed, 69 insertions(+), 12 deletions(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index d7a67bc97c..61079b8110 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -9,18 +9,30 @@
 #include <common.h>
 #include <aiodev.h>
 #include <regulator.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
 
-#define SARADC_DATA	       0x00
-
-#define SARADC_CTRL	       0x08
-#define SARADC_CTRL_IRQ_STATUS (1 << 6)
-#define SARADC_CTRL_IRQ_ENABLE (1 << 5)
-#define SARADC_CTRL_POWER_CTRL (1 << 3)
-#define SARADC_CTRL_CHN_MASK   0x07
-
-#define SARADC_DLY_PU_SOC      0x0c
+/* v1 registers */
+#define SARADC_DATA	    		0x00
+#define SARADC_CTRL			0x08
+#	define SARADC_CTRL_IRQ_STATUS	(1 << 6)
+#	define SARADC_CTRL_IRQ_ENABLE	(1 << 5)
+#	define SARADC_CTRL_POWER_CTRL	(1 << 3)
+#define SARADC_CTRL_CHN_MASK		0x07
+#define SARADC_DLY_PU_SOC		0x0c
+
+/* v2 registers */
+#define SARADC2_CONV_CON		0x000
+#	define SARADC2_CONV_CHANNELS	GENMASK(3, 0)
+#	define SARADC2_START		BIT(4)
+#	define SARADC2_SINGLE_MODE	BIT(5)
+#define SARADC_T_PD_SOC			0x004
+#define SARADC_T_DAS_SOC		0x00c
+#define SARADC2_END_INT_EN		0x104
+#	define SARADC2_EN_END_INT	BIT(0)
+#define SARADC2_END_INT_ST		0x110
+#define SARADC2_DATA_BASE		0x120
 
 #define SARADC_TIMEOUT_NS      (100 * MSECOND)
 
@@ -72,9 +84,7 @@ static void rockchip_saradc_init_v1(struct rockchip_saradc_data *data)
 static int rockchip_saradc_read_v1(struct aiochannel *chan, int *val)
 {
 	struct rockchip_saradc_data *data;
-	u32 value = 0;
-	u32 control = 0;
-	u32 mask;
+	u32 value, control, mask;
 	u64 start;
 
 	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
@@ -103,6 +113,46 @@ static int rockchip_saradc_read_v1(struct aiochannel *chan, int *val)
 	return 0;
 }
 
+static int rockchip_saradc_read_v2(struct aiochannel *chan, int *val)
+{
+	struct rockchip_saradc_data *data;
+	u32 value, status, mask;
+	u64 start;
+
+	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
+
+	rockchip_saradc_reset_controller(data->reset);
+
+	rockchip_saradc_reg_wr(data, 0xc, SARADC_T_DAS_SOC);
+	rockchip_saradc_reg_wr(data, 0x20, SARADC_T_PD_SOC);
+	value = FIELD_PREP(SARADC2_EN_END_INT, 1);
+	value |= SARADC2_EN_END_INT << 16;
+	rockchip_saradc_reg_wr(data, value, SARADC2_END_INT_EN);
+	value = FIELD_PREP(SARADC2_START, 1) |
+		FIELD_PREP(SARADC2_SINGLE_MODE, 1) |
+		FIELD_PREP(SARADC2_CONV_CHANNELS, chan->index);
+	value |= (SARADC2_START | SARADC2_SINGLE_MODE | SARADC2_CONV_CHANNELS) << 16;
+	rockchip_saradc_reg_wr(data, value, SARADC2_CONV_CON);
+
+	start = get_time_ns();
+	do {
+		status = rockchip_saradc_reg_rd(data, SARADC2_END_INT_ST);
+
+		if (is_timeout(start, SARADC_TIMEOUT_NS))
+			return -ETIMEDOUT;
+	} while (!(status & SARADC2_EN_END_INT));
+
+	mask = (1 << data->config->num_bits) - 1;
+	value = rockchip_saradc_reg_rd(data, SARADC2_DATA_BASE + chan->index * 4);
+	value &= mask;
+
+	rockchip_saradc_reg_wr(data, SARADC2_EN_END_INT, SARADC2_END_INT_ST);
+
+	*val = (value * data->ref_voltage_mv) / mask;
+
+	return 0;
+}
+
 static int rockchip_saradc_probe(struct device *dev)
 {
 	struct rockchip_saradc_data *data;
@@ -211,8 +261,15 @@ static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.read = rockchip_saradc_read_v1,
 };
 
+static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
+	.num_bits = 12,
+	.num_channels = 8,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct of_device_id of_rockchip_saradc_match[] = {
 	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
+	{ .compatible = "rockchip,rk3588-saradc", .data = &rk3588_saradc_cfg },
 	{ /* end */ }
 };
 MODULE_DEVICE_TABLE(of, of_rockchip_saradc_match);
-- 
2.38.2



