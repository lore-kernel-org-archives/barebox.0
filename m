Delivery-date: Tue, 21 Jan 2025 13:18:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDU-002dwN-0d
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 13:18:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taDDU-0005Ys-78
	for lore@pengutronix.de; Tue, 21 Jan 2025 13:18:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kZu9h1ZTMnmFWSiBxFI41RmF5KaE42prOuPtdI6Cwc=; b=YonmOxh2KxIN9lUcEXOWtrsff7
	bcexcLlq20joGtiSWh1pg5e5T/emz76zLm1e67zZuDFMvUPuEYmFD6yQ3rBqMjC6OAlTNFMvieXbV
	OdbWhnFiU7a0ZGQz9vb7dXhP1yaux+sstczC2ofjG7k4Zzx+saL9/2l6U40WnIUUtfboRRfZMmAFF
	hp+PVX4C6jBvg4dRfrk70tUGmKa08EQFANk0ZGU8dghXnoYpIVPUPOdIWFx33PysQyzPsg/UQZDIa
	moYszWF0h8CU3IN3RM6CcRBWMhmwaQWqDvfcb/u6uvY8gZ5pwjbh/6+JuDyAxeedJ72gbq4na3pt+
	E4RtQsRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taDD4-00000007qQA-1J0G;
	Tue, 21 Jan 2025 12:18:22 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taDD1-00000007qPK-1vto
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 12:18:20 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53e3c47434eso5641605e87.3
        for <barebox@lists.infradead.org>; Tue, 21 Jan 2025 04:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737461897; x=1738066697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kZu9h1ZTMnmFWSiBxFI41RmF5KaE42prOuPtdI6Cwc=;
        b=H3kOsEjkXszywbQLZ7xCYopNupBrFVqdrPiw/xMtgzadRFAvlnT1hXDqF2Lpe0zNrA
         IWXzfieUb3wUA+ms0DDI0UPDHtHua1B4dJPiB9K2VdJTR6zqc3mPxi/HO5Ujl9l5V6FO
         82L5JrOOCD96giqyk57rbLKk7GcfQmfeg6HDaki41wIqe1AhC605hiv5bXoQh3IRFICM
         i4qfsZn3i3/y7jXZgjwK7l8+zYC0C2pWX9wj2zdRXeq8bFkf934tM8Wj8BZlJLwRsl3h
         5ixfzXGWo1/wDMR2nl0XK45s6nBq/++38uaVn1+nQ/+cVRsYQVGXzIA7cTBakNiL8i0x
         OHkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737461897; x=1738066697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3kZu9h1ZTMnmFWSiBxFI41RmF5KaE42prOuPtdI6Cwc=;
        b=pRkDD/1AR7aLsd/JFjq4RtvEhbtBFe3AnuYKFyWRFwAxUyFxpxWSAS3Wnl9+wYQvGv
         kKx5fj5xwnEThbplGMe7dTDj90JK8x8hXyd6RtqUGGqFTwbMzi3YLTAiNpPUH/SCwo5W
         eHB/1tG0/XjdrWzNWzCIKM7FTsuY+8ok/foNNN7u5n/bSpKnMGdz5F1T57tHCUcUabUN
         ki+Jc5EFCLAFqSxct8HiJMAsDZTGEgBGn6h30aZ6iuECOoLI824vvIrjYPz/X7myFvuL
         e22Vk/4qBWEp4maxW8HWqM7lHWMVoSftCP6+LlOK+XDcqeX7qchoN2GPdxVwC/gJCQNV
         e0xg==
X-Gm-Message-State: AOJu0YxBXyZlwexRGMgz99RKGhc0UUNczFOfa+0iCeXmyHLclYXLXphH
	KuylijUegVyD8cuLVJrmRsMuomzGv8huZ38PvJBjRb1uh9CTKzo3udv5/Q==
X-Gm-Gg: ASbGncuYlxlfMQTNz35BZeEM2lECsW3AFjaibVzrzB7P36+boDeYjabBeDIfcX9psCz
	wflAcn08IHVhfmwLlLKV1hZInHeugOcv/it+Td2Z6+nQ4v60F0hZHnvBKLPMEtJx5MeGamhULw1
	dPk3p3l28Vmw4AdD6a/LSsY7K8JaiEe2Scy3fw+0jt56PpgKaLipA+MkMQ/BBd0hOqr/3T0WFEb
	fbotVmC+53lTRrTiHIn3qr+9NZ5EOD+22sL11UECDHFmYedzpsznhdVqXCqvH81lH1HARJJnD+t
	TRukWda2oYTncjD2m9c=
X-Google-Smtp-Source: AGHT+IFVC2Dj7NnLuLqaTmDzPiPYCzzp4kWcPE3Sj04am2KHL1qwhqawWwKlrgG/EtZP9eIeaoTFGQ==
X-Received: by 2002:ac2:490a:0:b0:540:25a6:c342 with SMTP id 2adb3069b0e04-5439c216c3emr4949016e87.4.1737461896868;
        Tue, 21 Jan 2025 04:18:16 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af074b1sm1815419e87.16.2025.01.21.04.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:18:14 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 21 Jan 2025 15:17:59 +0300
Message-Id: <20250121121800.2806881-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
References: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_041819_498664_F8C35E62 
X-CRM114-Status: GOOD (  12.95  )
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
Subject: [PATCH v2 2/3] aiodev: rockchip_saradc: Prepare driver to add support for other SARADC variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's make separate hardware-dependent calls to allow adding
different SARADC variants.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 2e77d79290..aac4a65218 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -24,9 +24,13 @@
 
 #define SARADC_TIMEOUT_NS      (100 * MSECOND)
 
+struct rockchip_saradc_data;
+
 struct rockchip_saradc_cfg {
 	unsigned int num_bits;
 	unsigned int num_channels;
+	void (*init)(struct rockchip_saradc_data *data);
+	int (*read)(struct aiochannel *chan, int *val);
 };
 
 struct rockchip_saradc_data {
@@ -60,7 +64,12 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
 	reset_control_deassert(reset);
 }
 
-static int rockchip_saradc_read(struct aiochannel *chan, int *val)
+static void rockchip_saradc_init_v1(struct rockchip_saradc_data *data)
+{
+	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
+};
+
+static int rockchip_saradc_read_v1(struct aiochannel *chan, int *val)
 {
 	struct rockchip_saradc_data *data;
 	u32 value = 0;
@@ -103,7 +112,7 @@ static int rockchip_saradc_probe(struct device *dev)
 
 	data->config = device_get_match_data(dev);
 	data->aiodev.hwdev = dev;
-	data->aiodev.read = rockchip_saradc_read;
+	data->aiodev.read = data->config->read;
 
 	data->base = dev_request_mem_region(dev, 0);
 	if (IS_ERR(data->base)) {
@@ -170,7 +179,8 @@ static int rockchip_saradc_probe(struct device *dev)
 		data->channels[i].unit = "mV";
 	}
 
-	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
+	if (data->config->init)
+		 data->config->init(data);
 
 	data->reset = reset_control_get(dev, "saradc-apb");
 	if (IS_ERR(data->reset))
@@ -199,6 +209,8 @@ static int rockchip_saradc_probe(struct device *dev)
 static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.num_bits = 10,
 	.num_channels = 8,
+	.init = rockchip_saradc_init_v1,
+	.read = rockchip_saradc_read_v1,
 };
 
 static const struct of_device_id of_rockchip_saradc_match[] = {
-- 
2.38.2



