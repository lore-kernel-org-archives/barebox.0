Delivery-date: Fri, 30 Jan 2026 06:18:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtS-006s1q-1G
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtO-0002QA-0H
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=; b=gepjdjEchUYQuQkpmnb/67fL1y
	Etp/pXfUYoDPT2CrDD80zXd8QAeE5tmPuHHBAUjReodF4yoKI+/brMsx/ssYKrglEDGV+ZmbzC9FU
	yjBMnwAeb4vVGag9eIydye0zfW5FgnCMNfuDGYl0cOVsK+TV5mHyNYlcv25IUEla7Jdp51oAHZ2Gi
	YEADN6+h8E1UjyQl4nB5xa54C30vJNPxFThGIqAriCUQDD4oxy0w4P4JJntQUne9/rDF8nDVQW9w+
	BISkK52iiCFirRT1omxNLP2f/UhG+PKip/XdsmHXNYnsr+yPjSNkV61JLgHOY3ub7oOjg0Cn6tIlX
	uBxepq5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsm-000000012Ay-00LW;
	Fri, 30 Jan 2026 05:17:24 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsg-0000000123W-1Qoy
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:19 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42fb2314f52so1025420f8f.0
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750236; x=1770355036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=;
        b=W9D9GFvmY4rsBuv2kwnOsmzi46K+KXuUfGWj1oYB1Eh4i4eBrqpi0hT6JMVyagtodY
         7u1P3nSCvBpsONs1jWNjiNrH5Hwf0DuLjqOJt3T90iEG8XcrXB+nEugyvXlXpTzJDP6f
         +qwuJr/b7Qyio+oWYv+AvobV2eNye2pNm0AaG8mai8YuDHUMQ0+jYVJc+DW5zDPmaqOA
         wghv6vcc2+mq/GbtecOdBOqmA/xjYxB1rCHRNjappcQ2dUQo7hyA25mj8HCvLkLsj4ra
         om3L0q0+f/J0wUPORsaDR3XbDdlAcX2038UTXYiXWDu5ssYAwqOKA6KuBDrk4ALXqrWm
         BkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750236; x=1770355036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=;
        b=Kc3D3CZ8wPxvCzm7GMd/QPvZF1y5QCvvIERLKnlop2BSjX3FKqlnVydp1i2aRrfCFv
         PwCZ+HIoHArCJchCvhXSGhhKShIKXtiuje3QNlmt0Y0CGSZRFC/UXYi0GEIlcIWWb0QJ
         7ClJfvTAD7bwa0lMWqRLfcfHsybi9/UPP0ltaZJkz57OH3Wf7FCADflN2Hd3IU3MCNqP
         GpUotbFQJG6ycjOT4MlGSsvbp0suakHqqW1FAT+Y5eKQceLimH9Zi1v6Ej2z/GJI4NnQ
         z7ZyRX231hFYVdfRfI+8d7gOco3xMxAwdamaUbUXEwl88dN8Ljh3SFLyVIIv52Zf4U09
         kTlg==
X-Forwarded-Encrypted: i=1; AJvYcCX29ceqw4jDIdspmBx4kUi8GSEest72bBsFU8qm7AGnsJmZr2C9bEB5tV/kju4XoqgCEKsbfEpt@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8wAGkOZSaibUPiVZ4gzzhSMECzpzjvCYPj/2rdJzlHlE37ZNl
	QWDW5xBfTUZuYu1p4CA0wxw4mVWr10QUsd7txVxHFuz76LsvtUAxp3ao
X-Gm-Gg: AZuq6aLtbaEcLVUKELoGNKGuinouOdld/iUGyR6qi4AjqoFU9+PwS1OcZrXnBadZJvZ
	yCzShCeW79je5Msjhih2OlWyR8Iw0Fc1UHQzDLnqO0xCTYsSOm6prRth+85Ep31SXQneyf/yhPR
	++2cAraoXrELx89UdXrFeo60yUCMzF38La8CaA+QtxM3eW4vv+dPZ2rHn7Sf63ler65FfZMSvxj
	7AX+R9ZiS3Nq9NRjMsv1OGgRyY9gwnKGnuAzMtYNRu3plWVqwOq1LIXHrSh/PD4ycRadl4ERgke
	pxmvcFw0RKUds6DmoLswXj9LV9t8W7MlRdAI2Zio7J1EWAmoFP3PKLhZySoNRU9EMClPTdBSXoL
	6quKw/M3u9Y8J2gvzOEVhoQw5Sk5Hvqk7l5xgMv/WGkG1h7E6UidkwZrgzfVSt9kI88tb3zFgYe
	aDNky1X2x/h54BWb6mkskxJqEb6STL5g3ZDK0/tym2Ujk0bMdCMoMtpsLXWuB05FtQjCUG1S5jb
	zgIQgMXdqmiU8YziIk4B2OXAXyPjup6xLUe41bnE1dTp+U41d7OqzY82reaxJN+Hk8mv6+RsV3L
	a5XG8haB+nBotLa3Z+Iy2AfQ5eautsl50W/b67y6XQ==
X-Received: by 2002:a05:6000:220c:b0:435:8f18:9539 with SMTP id ffacd0b85a97d-435f3a6cd84mr2597511f8f.9.1769750236316;
        Thu, 29 Jan 2026 21:17:16 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:15 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-8-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=1257;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=WskhJIAbrX+kmHNRkv/HERBUF0Toh90TRf4JNlrnw40=;
 b=E2n/td7HXisDi8dxkZ/SyMm5vzntI/qQGBQOtT8eT8O84erS3lNebXP7s0KYihUehfNIjFLSi
 lMhhTQ2HAtBB+N+XKBiPVCyKcxjgwqRFhMeTAx/8YWthNrGxeUpIp0h
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211718_408729_6E755F9F 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 08/14] aiodev: rockchip_saradc: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3562 has a SARADC v2 with 8 channels and 12 bit resolution.
compile-tested Only.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index f1efab5233..d4cb1f4fbe 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -256,6 +256,12 @@ static int rockchip_saradc_probe(struct device *dev)
 	return ret;
 }
 
+static const struct rockchip_saradc_cfg rk3562_saradc_cfg = {
+	.num_bits = 12,
+	.num_channels = 8,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.num_bits = 10,
 	.num_channels = 8,
@@ -276,6 +282,7 @@ static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
 };
 
 static const struct of_device_id of_rockchip_saradc_match[] = {
+	{ .compatible = "rockchip,rk3562-saradc", .data = &rk3562_saradc_cfg },
 	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
 	{ .compatible = "rockchip,rk3576-saradc", .data = &rk3576_saradc_cfg },
 	{ .compatible = "rockchip,rk3588-saradc", .data = &rk3588_saradc_cfg },

-- 
2.43.0



