Delivery-date: Thu, 22 May 2025 10:37:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI1QL-001Sbb-0n
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 10:37:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI1QK-00054u-LY
	for lore@pengutronix.de; Thu, 22 May 2025 10:37:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B2U07dxQr9K2LgSK8OYU55Q4RD8Ze4FnQzE1NAF7z6A=; b=m+xwSBjaMYkYdhr+iMNVwRrnZP
	rEEKPphLcYt9USSjdGbgo2qwQ7zVH/tlx3Y6mvf2ymElvqCFnHM1syQkG3iJRZWoEr6zQmHfvrWG4
	nnQHme4zyCNbiBMOfHDFDGZS3/N7NpveMStmzSk7hQ2qnMbEIzKU7O7Zox80Tf/VStI9Zc5I2uuam
	5xoQjt7xybJgyxYjd7vT4av+LE3CCvZNpRKnNYuKp5HeK9Qsfw/H8/tupdOOifXqRkQbSJwyd4SkF
	YYaqHWyQmkSAUvZVyXgPy4pJZdBG/1VwPD8wFzRqjUncStJuUJo2me47dGNFWNb7Uxvj04H9o8qKl
	qTO/AvgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1PX-00000000IsW-30fj;
	Thu, 22 May 2025 08:36:19 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI17I-00000000G0x-2aYV
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 08:17:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-550ee1cb0a3so9038397e87.3
        for <barebox@lists.infradead.org>; Thu, 22 May 2025 01:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747901846; x=1748506646; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B2U07dxQr9K2LgSK8OYU55Q4RD8Ze4FnQzE1NAF7z6A=;
        b=gpza7HK0g41OrD9ef3+i+qQt++Yiwvmhkm47aH4yhT39Fa8yHzRZhpK73CH9SS22v6
         r/BvHghzhJ+jZBZouEXH3LpmZNcd4BzJ1AinA6Ix3FTVDvZBgLrgm+mfB+k/H7WxrjeD
         UIz4Lbl/7fi7mKgOdIQornsjNpo5J0UkTKKJqSDzSKRBhs0WGodVCwIlhCUMtPASEGgu
         t1pNSPEVI5YgrENqyHZqdmeqC2ywAXyAd983O9Bl9p7o9kTvfIWIxRaZm/+RubbIDEFu
         waAmQmIc6tlvrjhCNGAk30LHkHEvK/YXcIbzW/LVIjsz7p508I6y/ngrRS2qY3GJwQbb
         TvBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747901846; x=1748506646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B2U07dxQr9K2LgSK8OYU55Q4RD8Ze4FnQzE1NAF7z6A=;
        b=Mr7Jgq6cp6U+fjJl912/2YHKaN6ywCEFPvPVHk5AKXj9JO1SdxyzvtZWl6iqzcal2L
         4GfqZBVUsD6KEkERE5bKyeEqr94i0gw5jEHLiw7/dMUPCrp4eOwBDD01TyATBLP71lsa
         1nG/YfrAi6Ferlkgj0gOLSFBWYLu+aELN6GsTW4EbYODfvRUc3o2YWQuxXSnXzkVinFl
         3C+WE2Aj34+5Fmc5oc8yWnNCKNY1vyWEStTS9JboYLBMiZgbECIJbzXTlNbjr2JtHFe8
         xBfh1M88aNBRiB7QVJTPII1Yu6DJRmJTANClXhBcz7TgzeZLSqwdjyqGY2Qd4TBanzfP
         bVlA==
X-Gm-Message-State: AOJu0YzYMvlkOaipgkAgH6CVO+qm+X98Vb9TWs4J4qZjgL2Qp1R4h1oZ
	ACHBc/Mp7GC7IbEzR6u/tRCp+2eLUbPvq/F+6x6LCWCObTJ50BQA1mYRC5a0wWsd
X-Gm-Gg: ASbGnctION1l5BT8rpXUMfBITXwd8KYj4txGwn9p0C+EbLihLFC92CzJZUhR35QnzoI
	shtmZOWvKFD3lamgf84crXxmfw6gX99ipmAmA3Cqec9wKy8d9ac7QuQLIGdzn5A0zNefKLNHAoK
	ekruN3Omfi0mdPC4argW7wAKy+nIKSjGSpwqOLVRa8lOD71ICQ4noIlz054QS1x8JMYwlQz3rp/
	nUjuB4UlHtp+c/cEJCgqGBQiZLX3Y8MsrfbvuAvVdnZrAy63Lxtzha8V/4l/e/gKTXT7XRfEXz4
	ojkXkyQL0fvwCKUshfM2BXqLbh5huH6gMtqy02L4BJ4n6Q9lzZhbcYADlEP3OBD8upvWd+PnZg=
	=
X-Google-Smtp-Source: AGHT+IGHrGSBnE6yTatJDeVVilYLk8epdvsFQuE20yTl81gQzTJkxLoCtpYWDMztllEro+AAOQJt+w==
X-Received: by 2002:a05:6512:4508:b0:54f:ca9a:5267 with SMTP id 2adb3069b0e04-550e7222369mr7736211e87.37.1747901845683;
        Thu, 22 May 2025 01:17:25 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f161ecsm3272610e87.43.2025.05.22.01.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 01:17:24 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 22 May 2025 11:17:14 +0300
Message-Id: <20250522081715.22546-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_011728_663434_DBAEEE19 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: at91: Using "clock-frequency" property from devicetree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch allows the I2C bus frequency to be configured from
devicetree. This improves compatibility with AT91-based systems
with different I2C device clock requirements.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/busses/i2c-at91.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 75113706f8..596ca04e45 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -24,9 +24,8 @@
 #include <driver.h>
 #include <init.h>
 
-#define DEFAULT_TWI_CLK_HZ		100000		/* max 400 Kbits/s */
-#define AT91_I2C_TIMEOUT		(100 * MSECOND)	/* transfer timeout */
-#define AT91_I2C_DMA_THRESHOLD	8			/* enable DMA if transfer size is bigger than this threshold */
+#define AT91_I2C_TIMEOUT	(100 * MSECOND)	/* transfer timeout */
+#define AT91_I2C_DMA_THRESHOLD	8		/* enable DMA if transfer size is bigger than this threshold */
 
 /* AT91 TWI register definitions */
 #define	AT91_TWI_CR		0x0000	/* Control Register */
@@ -149,7 +148,7 @@ static void at91_init_twi_bus(struct at91_twi_dev *dev)
  * Calculate symmetric clock as stated in datasheet:
  * twi_clk = F_MAIN / (2 * (cdiv * (1 << ckdiv) + offset))
  */
-static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
+static void at91_calc_twi_clock(struct at91_twi_dev *dev)
 {
 	int ckdiv, cdiv, div, hold = 0, filter_width = 0;
 	const struct at91_twi_pdata *pdata = dev->pdata;
@@ -160,7 +159,7 @@ static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
 	i2c_parse_fw_timings(dev->dev, t, true);
 
 	div = max(0, (int)DIV_ROUND_UP(clk_get_rate(dev->clk),
-				       2 * twi_clk) - offset);
+				       2 * t->bus_freq_hz) - offset);
 	ckdiv = fls(div >> 8);
 	cdiv = div >> ckdiv;
 
@@ -519,7 +518,6 @@ static int at91_twi_probe(struct device *dev)
 	struct at91_twi_dev *i2c_at91;
 	const struct at91_twi_pdata *i2c_data;
 	int rc = 0;
-	u32 bus_clk_rate;
 
 	i2c_data = device_get_match_data(dev);
 	if (!i2c_data)
@@ -549,9 +547,7 @@ static int at91_twi_probe(struct device *dev)
 
 	clk_enable(i2c_at91->clk);
 
-	bus_clk_rate = DEFAULT_TWI_CLK_HZ;
-
-	at91_calc_twi_clock(i2c_at91, bus_clk_rate);
+	at91_calc_twi_clock(i2c_at91);
 	at91_init_twi_bus(i2c_at91);
 
 	i2c_at91->adapter.master_xfer = at91_twi_xfer;
-- 
2.39.1



