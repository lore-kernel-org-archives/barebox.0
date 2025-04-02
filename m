Delivery-date: Wed, 02 Apr 2025 15:01:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzxie-007POA-0W
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 15:01:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzxid-0003Dj-K5
	for lore@pengutronix.de; Wed, 02 Apr 2025 15:01:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fCDpTanGF83TiViAqzDRz2oRwMvH2oqXvNrWvAxxHO8=; b=jCq64Y6tCg/befIa5a6fcym16z
	S4ITRp1DNVwGFeHKnIEF96WUVIKkFggRcrwX7iZj4KJvlXmshFfZq+Fdmp0he/h+58t7SAxytS74Y
	mbKbNYTR4diYLhcIoJVVV+h6zr9saFstkp4LUdNzb4hK6tCupfWERrIsOXVw3+u6QTwECE/4x2Zcj
	q/1pdrqM0k2cCkvPHJSzsqZmtNwN37/Ko5i/KkjkzKYI0G91PN5GesAO+1OxgHQVz8D2jrCzpOsFJ
	JvNdC1u4YwBKTD2e252lQR5nSyLIqljGRZOTkJNvIKiol28EVzZ+aZ/Hwp0fEOz9LQa/MDHUS7bvC
	aYwIi16g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzxhs-00000006AnW-07Wj;
	Wed, 02 Apr 2025 13:00:36 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzxfM-00000006ANa-29ap
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 12:58:01 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-54c090fc7adso2446010e87.2
        for <barebox@lists.infradead.org>; Wed, 02 Apr 2025 05:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743598678; x=1744203478; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fCDpTanGF83TiViAqzDRz2oRwMvH2oqXvNrWvAxxHO8=;
        b=ODetWdDJpjOp+NumDf1P82ZcAJa3EQXYsYlFfL0Ok1tPQK8ykA4hdBqgWgBoKfbavG
         BuaFHKHdM3mb2zwCwXE6uikBVZZR0dNNR02uwd9K1wsRjIGveFQphzST+sgjUf2hN9ZL
         8BLj147NnD4/ZmXtCjoQyhdlyQoSrYQEanVp3gvNsZeRk6LaPLoIK9qVDLl9G+oyQInM
         3tPHbUd6F/3ZqUEjVFQZLGcqMKAZANquHfQxGiF/Fx4Temnm1CAt5tKyTMudjgpko+Bu
         h0ONnAqFH0rpo70XVAqCHzt3USg4MXpf3xqxogsn9avZDq3t0OE0QD8XUNdl3I4W7c8T
         LtyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743598678; x=1744203478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fCDpTanGF83TiViAqzDRz2oRwMvH2oqXvNrWvAxxHO8=;
        b=uPZVCRebHbHlAoNmcIkPOJ8ShZxYpPNMZbMwnjinv6KyS2epc5JZSqDG2Lk57owXs8
         BTJHl9PdKMspqq8uUuCVdOWWLZZs87Y+i6JlygVXv7WNJ7MSAcQb8HnAeVdKFu9bRvHL
         arrKYFFhhoOqRX/v84s2EFP6J4c8G7Cv/6koNSfjs10kH8n+RxnwpuAhIWjkItIp4w/v
         9niBhODla2VoAr7hRgKtpI2AkeHehrsEaUe0RLoR7msHvq3nng2iwMTmuIYbTu7KesWK
         nGByWv2lh30z6zJRdED5VWfTUuRseNtO/dDUAPUZjU+LUhnX6239dYK5yzsmHHZjr0C4
         dJ4g==
X-Gm-Message-State: AOJu0YyL0lyDJGdxiALyq83z9bjxmCt7nre5o4mdaY+1+vjWf3gr2HMs
	Lc9Vo3l/ijJWds2nJQy49gnANMU+QBMIN/LXVlP0pU/sKwVnw3Idw+vHIw==
X-Gm-Gg: ASbGncvcky0aKywuC3a4AB8xG8Qs4KDoOVEHW4ML9LAdrUbX1Q/ufEcP+LqsbA89Lp8
	JeW2nZmRyL1edqHTrIRdAjaTiIPdW3pFxRmQD7aPL+YaJe2yMezMr7lFrEAXbOuPST5avZRXU5x
	A/aB1JR52GKhca0o7yIR/Fqp0F4DWgs6abaaDq57Ib4GrP/fIjjimAfIhufeTBOQurQkOTi5P4F
	WW0gVuXeJSnCWO8WYgdRFZvjv7hyKx+XJRPhMgPqGF46wKF8ElXHNXYdwsq2d0+7zYR95JC+WS3
	nBdf0dX8h7ONCCeZfvPaf9Ng5V7crT0LV2mhEzLOlDFup6iW5r3kty2P+7NswzhMlnbuEQ==
X-Google-Smtp-Source: AGHT+IGBHMZt8YQJxgqVMKGCYGl4YZj9y/+gD1fVOchVOrmIqOjbKo8dSlZOISpyzmSPm42teycJNg==
X-Received: by 2002:a05:6512:1105:b0:549:b0f3:4391 with SMTP id 2adb3069b0e04-54b11112631mr4811683e87.38.1743598677790;
        Wed, 02 Apr 2025 05:57:57 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094c1d7csm1636599e87.91.2025.04.02.05.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 05:57:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  2 Apr 2025 15:57:47 +0300
Message-Id: <20250402125747.3677858-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_055800_558906_1EA843D0 
X-CRM114-Status: GOOD (  13.28  )
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
Subject: [PATCH] i2c: muxes: pca954x: Switch to gpiod api
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch the driver to gpiod API, this should help with
different polarity of RESET signal.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 4a926fb92b..9807d915a3 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -41,8 +41,7 @@
 #include <i2c/i2c.h>
 #include <i2c/i2c-algo-bit.h>
 #include <i2c/i2c-mux.h>
-#include <gpio.h>
-#include <of_gpio.h>
+#include <linux/gpio/consumer.h>
 
 #define PCA954X_MAX_NCHANS 8
 
@@ -187,7 +186,7 @@ static int pca954x_probe(struct device *dev)
 	int num;
 	struct pca954x *data;
 	int ret = -ENODEV;
-	int gpio;
+	struct gpio_desc *gpio;
 	bool idle_disconnect;
 
 	data = kzalloc(sizeof(struct pca954x), GFP_KERNEL);
@@ -198,9 +197,11 @@ static int pca954x_probe(struct device *dev)
 
 	i2c_set_clientdata(client, data);
 
-	gpio = of_get_named_gpio(dev->of_node, "reset-gpios", 0);
-	if (gpio_is_valid(gpio))
-		gpio_direction_output(gpio, 1);
+	gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(gpio))
+		return PTR_ERR(gpio);
+
+	gpiod_set_value(gpio, 0);
 
 	/* Write the mux register at addr to verify
 	 * that the mux is in fact present. This also
-- 
2.38.2



