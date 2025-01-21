Delivery-date: Tue, 21 Jan 2025 13:18:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDV-002dwv-0P
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 13:18:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDV-0005Ze-3U
	for lore@pengutronix.de; Tue, 21 Jan 2025 13:18:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGs/Ne7zR7DdGhoFklDafd/AuMIXq6RgSdfEW0ClaTI=; b=sy0bS1rla0kdOTXT1XbBs6vAPL
	kIIQnpSZUjMENYIYGou+3AUlxgSVOxttXsX6n2Nr++IDmBnQMk2jC2Mrs01iZshg9YuRrFedsBlCx
	KIQjc2GQL4OQe3GeSF8PF0KrFwtGxe6E2oC/2vK0rDtR5wAs4bcNECze4E+8Lh3pAk0K3dTylSjLV
	/kLqy5odw8VS4JggHmqQ3lasIBfHIeJ/29h8Wfy3bNq3pLWSW4Y9OuXyUfxKv2+sJltNrPaCJotcQ
	MwJxWEyqRCzBMzh1DrlHWuabIhgIo4Djx6r35CgkiTDFGWmGVw9wHI/wwipWK+ftM+Gyo3x5eUv/E
	LkXulSWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taDD6-00000007qRS-3Uy2;
	Tue, 21 Jan 2025 12:18:24 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taDD4-00000007qPt-0sn0
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 12:18:23 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-540215984f0so5969914e87.1
        for <barebox@lists.infradead.org>; Tue, 21 Jan 2025 04:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737461900; x=1738066700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bGs/Ne7zR7DdGhoFklDafd/AuMIXq6RgSdfEW0ClaTI=;
        b=JRlBfBvBIh8JS9kF55Jm56l6v2/35jWUj99zFtBHe9TBec/jE1dr+zb7blOXA78X/Y
         XbIIZyp8HCwyXMzTl9hLU1ldGbu5a5Fbd2FkmkM86F/Mf7c/C2YOabSJktd9OC5z3FJp
         qLqWWhC4bFsG18EfkbTpqN0KeEhJEr3dlAFHlRXQ/M2YhIOK2Kmu2vvbH/Z0xLCLbNjp
         +9iRs+/zwuXxoSnFus3CbuqGuSpBy3Vo5sOuNHjNbdu9kleuN1nFi3ZTLNAYScMTs1uz
         C9V9IbjiBTH00hPeQhz1Hhkaxscyf8qFc6cBRvIcrK5zkeDHqN54X9EpCkKGK5haU1Jq
         0vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737461900; x=1738066700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bGs/Ne7zR7DdGhoFklDafd/AuMIXq6RgSdfEW0ClaTI=;
        b=vva4VF6VMXelSwVwPW6lmHHOEwQtdx1efAc5QfYucb/CAW/X9qQAlml0Mksrp6yM9e
         fVZewvIOp3pJag8VgnaX8WrMVPnTTQGkhdOKm0wdkI+RFnhjgCxql/bUNslLERkDvD8H
         6VSkbqk4+eteWhTbX5NbTd+RWB0qpKpIHZEfyBiv3aYlJMf4WV8BL9fw8mb2uEdp0TVZ
         xm74G/FjKSETYZJtFj0GwPU1lzHsL7d2u5xDqEXC4jNnV0BhOE6cNBRePg8m/Wh7znnv
         cagVSjLYzBJkv3QiTih/yzdZBZ+2RUBRLIfL0X+TzbrVDIBKlNCTBPiiEuJOzMZrP9Ar
         Dv/g==
X-Gm-Message-State: AOJu0YxHH1434Dh1p/rPgUPsRMDuTiuM2iOy+UfmCjm3qziQUWfAwKjK
	cNcPqMLRSdduuyVnNvr6B4B0pcpK+YcH1OhXh8Ol3YQnpU3UqWomoLLitQ==
X-Gm-Gg: ASbGncsIsQaIoMJqAEbgpqoOu71mc7nijj1v02tyFXF7snCxqh91CNXLyVtT+x3M+5p
	PLlRff+iTYnIHPFOvHu9r7p3AJMn+4KjVIX2CtdD5+xjaname17Qk5S5BvS9RpdYYZcHH4vqk0O
	V5RAkrw5Jr/7jujXEcUSL1EGs3OGb+5we3te2ETDhsVRotLYacHMyDcF0VEwLi7uqzruxfddPAu
	DHDNpyN3AV+8N/me3hC/BVWN/AXMIL3SELErl1+xicWfAvMx2X6WK75vGOluWgjIc52x2topk8E
	8ygY8ADURZ9aIFzsT02M+iQo73qzlg==
X-Google-Smtp-Source: AGHT+IFGqSDwQq1pkB5SoPPHyZp/2ftDiXRysEM9PlnLtswQ1aTHrJd01zCmiIZFHDwy0OKYRTM+kw==
X-Received: by 2002:a05:6512:3e1a:b0:540:2160:1f79 with SMTP id 2adb3069b0e04-5439c287f8cmr6571694e87.51.1737461899790;
        Tue, 21 Jan 2025 04:18:19 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af074b1sm1815419e87.16.2025.01.21.04.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:18:17 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 21 Jan 2025 15:18:00 +0300
Message-Id: <20250121121800.2806881-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
References: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_041822_263145_14E186D6 
X-CRM114-Status: GOOD (  15.94  )
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
Subject: [PATCH v2 3/3] aiodev: rockchip_saradc: Add support for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds RK3588 SARADC support to the driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 81 +++++++++++++++++++++++++++-----
 1 file changed, 69 insertions(+), 12 deletions(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index aac4a65218..152d38ecc5 100644
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
@@ -213,8 +263,15 @@ static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
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



