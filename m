Delivery-date: Tue, 21 Jan 2025 13:18:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDU-002dwi-26
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 13:18:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDU-0005ZC-PF
	for lore@pengutronix.de; Tue, 21 Jan 2025 13:18:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aPdC/qdxtKCp8PHvsuH0g9oWVVeWUZG1lkxeB7wQIeo=; b=yMej1nWSc39TUhTwIoZ6cWI14m
	XGncuw/VW160IacQoGU3+6bd392rmAL+HkQww7L0WJrpHF0ZH1wqUMirzstK1qq5j2Eq8MiKHy4KG
	iw+TA3s/MFqnd/3bQonOdnAXfYCXNcSED7B97OeeoP7qs2ceXsCa2Ktv2qoBBzDewyf9q/AuvP0zW
	Wf4fD8SMDiDW0JVR4OZibc2/GTMCi8REddnEIUW/plyIoX9XVrEMURyGq8zb8Dpcrbl8aF2doPPXw
	GduJdgN4ZVsw+08g83m3/E2vY75mVLCFbTZaJG3htyJusXTGvVpJa2hORkp0PhwtBlb/zWCXuFjOT
	AUVz1hZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taDD1-00000007qPO-3JIj;
	Tue, 21 Jan 2025 12:18:19 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taDCy-00000007qOw-1d6S
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 12:18:17 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-54024ecc33dso5571585e87.0
        for <barebox@lists.infradead.org>; Tue, 21 Jan 2025 04:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737461894; x=1738066694; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aPdC/qdxtKCp8PHvsuH0g9oWVVeWUZG1lkxeB7wQIeo=;
        b=ccvH9EwIG96CtBWCSvRDqppTCR07CFzfoySyhm5U4up/HipgUH/FcSmOpg5aI0BfSG
         ejGH9CuLN7e+vE6h8500864DTqXa09QMgFNxqP7cYaMJhqFd/8AtHdhXZi4wSXYlDc3c
         v3YY2AXKLxL+imXilmyeiZdflbn8o1yO7GyORuzMU5Uf6QEPN9wn5NUpksFQOHS0y84y
         QTBTE1YF+zKvNi1/vJOzEpUJ0c9UGW+L0Gq6rPzPKc/oJrpapvbUDLineqxXIsfXRZtL
         O0j98op4Mgx3+Vo07TPwTADRZFpPwMhe0uipoQsN92U1ERLho1AKbN+GRUPi9emdRyyD
         9XmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737461894; x=1738066694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aPdC/qdxtKCp8PHvsuH0g9oWVVeWUZG1lkxeB7wQIeo=;
        b=s3k1Xco8epMnnAiKNEeY8rmrpkGadG2u8+0j8p4vMeFG7UBex/QohefUbtgqBrSgHJ
         x4LrLzQuPnCqUgk7pPlkOPZc3qx83sbHzJC0Tuxmx7H1lHf05r+EVlz9uHta8KUS0bZZ
         6f32z/gx5rBZRT2PZFeMazPQh93xbERjpfDqob0VBNDh39fjhf61VD5e5RHxCcP3AEUA
         0TAZAdisPJe98gPaopzKs5+abQIcxzwVPXHJD6suTWTUy6ayrYH88yTRHvhAGMRj+dcP
         8+K+XccFNWrCwfhahqj/0U7B11uyDW2gcFU5RU7XsChMqI4GQRHgiJjjznhWxQoJYpJe
         ZsVg==
X-Gm-Message-State: AOJu0YzRqvURr4Sm4mzBwIzKuR1T2twKhBEiTZjtDtFfVnzm+CddVVoG
	ZZ8L9VYBksiasXvoSQ47Giw3pKbpVzK4NIvh7gpzX7clvJGC8R3fSwCjkA==
X-Gm-Gg: ASbGnctSZVO3ZkpU5bz1EEM35sOf2Ckiqs/ooiphR2ZfOYpA6xSA6QNnUwAowMh7RrB
	soVgyuRoGkPD9LSfopbcNSTLTpmBBqs0TttGkdbWm21h3dEBwZQWtIlaqAS/V59D5zCb6ZmDdLD
	sxPA/IGdHHg6t+Rm56mxAWniZYY20O38Ssyj9FAFYuyZcLXg6BAgTaBUKV8sv8UK8shlrAzUjIK
	isOlouCqZDESUjprczAKRYZKrhAdD2oSpJHYcuBKSq4Z5at8wk0sI6YnVG00AVWYEVwOOezAFhI
	NYvrDAvzhZ8h3UzymMn+qXyOI/jUeQ==
X-Google-Smtp-Source: AGHT+IFK7xJwtqkWpDc9cT+XysJwZe2ObhkXEn85NBJ/uT6WM+vpGVoqgGxnG7Sfv30cm2AAS1m+yw==
X-Received: by 2002:a05:6512:224a:b0:53e:395c:688d with SMTP id 2adb3069b0e04-5439c285391mr7769911e87.43.1737461893454;
        Tue, 21 Jan 2025 04:18:13 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af074b1sm1815419e87.16.2025.01.21.04.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:18:12 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 21 Jan 2025 15:17:58 +0300
Message-Id: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_041816_428018_0A79E5AB 
X-CRM114-Status: GOOD (  13.40  )
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
Subject: [PATCH v2 1/3] aiodev: rockchip_saradc: Add reset control support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds reset control support for the Rockchip ADC driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 3c5c0e94da..2e77d79290 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -8,8 +8,9 @@
 
 #include <common.h>
 #include <aiodev.h>
-#include <linux/clk.h>
 #include <regulator.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
 
 #define SARADC_DATA	       0x00
 
@@ -37,6 +38,7 @@ struct rockchip_saradc_data {
 	struct clk *pclk;
 	struct aiodevice aiodev;
 	struct aiochannel *channels;
+	struct reset_control *reset;
 };
 
 static inline void rockchip_saradc_reg_wr(struct rockchip_saradc_data *data,
@@ -51,6 +53,13 @@ static inline u32 rockchip_saradc_reg_rd(struct rockchip_saradc_data *data,
 	return readl(data->base + reg);
 }
 
+static void rockchip_saradc_reset_controller(struct reset_control *reset)
+{
+	reset_control_assert(reset);
+	udelay(20);
+	reset_control_deassert(reset);
+}
+
 static int rockchip_saradc_read(struct aiochannel *chan, int *val)
 {
 	struct rockchip_saradc_data *data;
@@ -163,14 +172,22 @@ static int rockchip_saradc_probe(struct device *dev)
 
 	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
 
+	data->reset = reset_control_get(dev, "saradc-apb");
+	if (IS_ERR(data->reset))
+		data->reset = NULL;
+
 	ret = aiodevice_register(&data->aiodev);
 	if (ret)
 		goto fail_channels;
 
+	rockchip_saradc_reset_controller(data->reset);
+
 	dev_info(dev, "registered as %s\n", dev_name(&data->aiodev.dev));
+
 	return 0;
 
 fail_channels:
+	reset_control_put(data->reset);
 	kfree(data->channels);
 	kfree(data->aiodev.channels);
 
-- 
2.38.2



