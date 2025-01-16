Delivery-date: Thu, 16 Jan 2025 18:03:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH3-000fwM-0T
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 18:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH3-0004UH-1R
	for lore@pengutronix.de; Thu, 16 Jan 2025 18:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mNESJFLvNTsFer1tuEE/P255aNvCxHaB52Iw0empzBA=; b=ceBeZIhGB/3qW8LSbCcHayDC2k
	Fyfi6xTo15nDwZgjA4eeVqOjo+BFFLMIKaahZzGpKSFw50BmTXAKwrCCrvVI7PQ5AfHX7JWl9HJDv
	qFopiUyTMn6UTWSJCK+GHV9Zpf5dCaizyJLb9iVwteZ6HhVinuuj6taDP4xcgIToEjuNcwgAzeOSF
	TNQnxV1s7g4dPvGbjelnh+DwBQPOkagSyOaM/iT7VXRCu2I9ohgnntz4w2wFD1r7Xln8vn4vnddqd
	lhFGM/WGH2XEc/6e9B7IY3N7bJJDo0NijsulWR1xX8yEwIPGSWDgO+MpTg27ff1SxejtLBZQte9eF
	1891vehg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTGO-0000000Fbbm-2TAZ;
	Thu, 16 Jan 2025 17:02:36 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTG0-0000000FbXG-3OZh
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 17:02:13 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-54026562221so1254328e87.1
        for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 09:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737046930; x=1737651730; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mNESJFLvNTsFer1tuEE/P255aNvCxHaB52Iw0empzBA=;
        b=UcjiEw/WLkRw1eS/X7w1KtZOdlK7Hp/sc5CWH0hWl6/hlnZ1dGaEpctTd9ch8dw7VA
         8pxJyrnFAdOWsHtqRWzFXxcDMiTp943a5MSyqsGmj397VTJU8nYxQ94uzawWrbtHUuKw
         rYotiLwBgNsDKGTMmzjgBWjweffy1RC40+g8tT/haHfPrlTOYPwlZZpq1LfV1csYXxq5
         tDUWbeWT80B15AzwyiU2r2XxQ6/AYr6B/gpup8nCdI++4EpH3F3IBit999scB4IVjSn3
         ziZ10951TRTL6cVRbCQmkwq328a0eM9Sf3QDQyGSnmr5koR4n0CorefSwwe159NrMThk
         ALvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737046930; x=1737651730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mNESJFLvNTsFer1tuEE/P255aNvCxHaB52Iw0empzBA=;
        b=nTzND1eT3eZ3oBXGjE5OVKZX4PP87YCddarocL3vs9XJY7satW0GJV9rgXAJKT2V2o
         nVRAwKAHe4z34Ek6SRB1boXF6JnnNPofh09jhrWJKqz03K3si9mFYySn+Xy/jLC8YSpy
         FabIKGDyhkoHKRQtMIYIpQovFm9gmhTRaVko9waierYP+5XPdOsjB347KrbWyRpoaH76
         qry6XLn2I+lRD42idyVbwjnJUY4vjyKCXLERboUmYKdU6VIKneqHQ+28+obwjlsx6qHY
         1su72vsJpFlheiGAeK9V4o/BxS2sKvnBTSCJWUmlPnOqPcUlMcXvypR5rTwAecshGSqz
         zOtA==
X-Gm-Message-State: AOJu0Yz80DTC8KIfgBmcVNBQegEc21HqdWWI1O6mGpkqydCYEE+uzL2M
	G/gPnomlkVvadHd4hANiSb/X4Tr2UiedKZNVjN+ownQC2A9ly3rxjyZFyA==
X-Gm-Gg: ASbGncsp1cM4D1cPX+qK9grQdfXaNQWoz82oXXmi3raKqZnboNFhCinfsvvf+Nf091t
	9RVKYeBEm92xVxshyXn33lINl1eX59Cos6zBqNSOaGZNsj2vzcDCqzcv5jkgZgF0lF4DRbtTvSt
	zxLOEZhgEW/v+P7s2TEazGNlleYrAVlJtR2sVqla7QGI7nqg7EiR+mNjLXED9aHO2gqSiTpwD/O
	o2g4wKNgNfXXh1+PQc4L/mJDZnLgDpyrYKWvo1AsI49gNN/SKogWfiYddtsecJpkfoRljpxvmXB
	Oh+eFg==
X-Google-Smtp-Source: AGHT+IFJoOo/bvG9t/k567l+pXBClgNVEubEDGCKVUxUz3oSoQ45ninhfZMxDbBh/2U3iK2YEnbgNQ==
X-Received: by 2002:a05:6512:b87:b0:53e:395c:688b with SMTP id 2adb3069b0e04-542845bf66emr11389272e87.47.1737046928572;
        Thu, 16 Jan 2025 09:02:08 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7390dsm41795e87.200.2025.01.16.09.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 09:02:07 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Jan 2025 20:01:52 +0300
Message-Id: <20250116170154.104253-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_090212_849175_5964F319 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [PATCH 1/3] aiodev: rockchip_saradc: Add reset control support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds reset control support for the Rockchip ADC driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 3c5c0e94da..b31804fc39 100644
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
@@ -163,14 +172,20 @@ static int rockchip_saradc_probe(struct device *dev)
 
 	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
 
+	data->reset = reset_control_get(dev, "saradc-apb");
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



