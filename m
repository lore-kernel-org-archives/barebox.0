Delivery-date: Thu, 16 Jan 2025 18:03:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH2-000fwB-3C
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 18:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYTH3-0004UG-0D
	for lore@pengutronix.de; Thu, 16 Jan 2025 18:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQKdj4PVgOqtVkCn5KqKUnkwobi4xFsSHF2lMg93HbU=; b=RfDlC/wVO8R8HEfFVZH9lR18y/
	kbErf3d7Gm5L0JmH847/6hsQTmEM0JuPeLUKhJwdQFCAJNhPcWUjck6UHisf3pVAt5TfEDVGJcTFz
	EexSU3ofHXzWhLJHodM2erWsXox1DPgZv0VoRanmrcQWuMaJBOmNZYq+zUGfpU2hkD9rlvMPb4YjU
	d2Dq5gSH01RnsyahWwg31faFlKdQfEZ7vzewlw17QOJG3d80Kvq64n5EYzIV3b+33bar8LYU7LLHx
	0zydfyPCCFA9jUL2uA809Ar9RKIvWqyKC+xenv3ITVJ92zIsuy3b/qQ44j97Mom4MMfcx9/e854Lv
	r4EuwguQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTGP-0000000Fbbv-0DNT;
	Thu, 16 Jan 2025 17:02:37 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYTG4-0000000FbXs-29xM
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 17:02:17 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-54298ec925bso1335790e87.3
        for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 09:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737046934; x=1737651734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQKdj4PVgOqtVkCn5KqKUnkwobi4xFsSHF2lMg93HbU=;
        b=efZAofcFFoBFGNXIAXD+sdMwgZi/iyN2GFZtFOZ0nwYIMLJ6GcbLcBcsGrQ4ICohkY
         YNcLJI+Z9oiVdsxWRKIOGmCcg1iAt1t+RSdxkdTm8eXwOB3ZOwGSIupvwBz7EJsPNnEm
         IcU71poM3Z7Hon44Nma3oVagJ0nwsmfWlmGAasn8+h6E+Bzb1SMGWzpV1T08gEbWCkD3
         QFiWA7Yr7N66LmpjQ5L/uLUpi8Fs9yp04nSPZFEOGwbtlOoIiq/MBAdCIqhY1teo46Da
         xeWoFdc0acK5EhcJD7TZqOLrUV1zZDj9ipjVzK9GpjXndFsUWHfMmhBKRv1t02P5jKc0
         KX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737046934; x=1737651734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQKdj4PVgOqtVkCn5KqKUnkwobi4xFsSHF2lMg93HbU=;
        b=plX3YR2vQ5+HFDpMcrQ6bUsnVr6+/oTspfBsNb2tXI9YcAE67R+6L+PauDunM4q6M2
         wNDRBNVsmb/CIV62KC4bQAZD9zs2UnzULDkMrxGxZvlceIklkCbx713hx6qGzzg1zZo+
         5RZiQpLoDAJwUfxLvGjq2131gLb4Btn/Bc8nvLXsR2Fp3VY76k4qwEZtmU2sdwgy+WvG
         Y4Yt48wBhBxJ/1Swbwqcx1HJi09MqF0Z7IBAYh1zCuxWlE2a3nRHUeeNbIqDRGqHzIzc
         H1LG+IsgiiSthcw4KdXaWaKQYOyfck/avFpglR5OZ3rrVKTfjEVClfDsO8KHm2fk1mgC
         xQ7g==
X-Gm-Message-State: AOJu0YyF5+Rqr/V6+PPw5Z/M3X1JhhC2Ealxi/0k/MiSA8Q0jCLHhNBr
	rpUJQrczHzfDEF2TsKgub5o+isoWojaSpaG7dZEyYdEzebRQLbIc7Mx+3g==
X-Gm-Gg: ASbGncsfy2kmGNkxeG1nPGPiaAqVihp/ajhzEbj7Bk/zy9BRtnDsE/l6Zn9a3V7/Q5Q
	zMjAcDXUhgC9BXGPXhtGt3SMMeta4MSygkueaiKjDOzi4HaL6lYnwaqAI21cVlw3NtlilrIdZtv
	8PHQiQzrX56RRvAt7qEiIVhHh44LdeJYK9b+P8eHiTOo9ux4Qfg2oek8jSYe3RQxbATngTz8555
	N5wgSKTmx2xv8qFB6F6gD5MCmaVwnew1/ed9NlwSIP60P+/uYJdTEnxLeRUVzz5R166DADHI3pt
	qa0q6Q==
X-Google-Smtp-Source: AGHT+IGdeQQtxjOfrFa8ZhPPV4yy2P5n5GAkgNUO3xkjkteEB6kTTBW7MF37p2CbpjVjUUBqVi8Log==
X-Received: by 2002:a05:6512:1281:b0:540:30df:b3ea with SMTP id 2adb3069b0e04-542845b972emr10562751e87.15.1737046933810;
        Thu, 16 Jan 2025 09:02:13 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7390dsm41795e87.200.2025.01.16.09.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 09:02:12 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Jan 2025 20:01:53 +0300
Message-Id: <20250116170154.104253-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250116170154.104253-1-eagle.alexander923@gmail.com>
References: <20250116170154.104253-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_090216_550502_C79909BC 
X-CRM114-Status: GOOD (  12.44  )
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
Subject: [PATCH 2/3] aiodev: rockchip_saradc: Prepare driver to add support for other SARADC variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's make separate hardware-dependent calls to allow adding
different SARADC variants.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index b31804fc39..d7a67bc97c 100644
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
 
@@ -197,6 +207,8 @@ static int rockchip_saradc_probe(struct device *dev)
 static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.num_bits = 10,
 	.num_channels = 8,
+	.init = rockchip_saradc_init_v1,
+	.read = rockchip_saradc_read_v1,
 };
 
 static const struct of_device_id of_rockchip_saradc_match[] = {
-- 
2.38.2



