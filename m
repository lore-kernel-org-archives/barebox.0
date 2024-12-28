Delivery-date: Sat, 28 Dec 2024 07:38:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tRQTB-00De6X-0c
	for lore@lore.pengutronix.de;
	Sat, 28 Dec 2024 07:38:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tRQTB-00047l-3E
	for lore@pengutronix.de; Sat, 28 Dec 2024 07:38:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9WhpZmbS9fvoo7fTDk6I+oWxtjYwwKkPO09jwv0rZzM=; b=po3c1yn0cmxQbGCPWkth7z+Hyr
	V5y7WsaxQa2TUXhWWQ7RyqBdkJS2viRfZm94UjVRAvQ8veWg9CtH+DgdamM25+NXYqwKvg6EKbs2J
	nPDkLfkwQIbJw+1IQ8DxfRYBmxzwxPgyszx3W5uK8veN32nhMyRTNptiwlxZfjkOy159qb9s/oqA/
	FG5fYu7mq50N3NltlDo838X70VUYB76t/CwRUbvocTar5rmLEY6OGjMl8dekGtNktNl48lhEd89nf
	XViqj/jLBg9mHldXxzEeXjT3jT8MQKAbKI8UhPzFVi+d/T5TRXJVC8S3+BcGn6xXueDB1MspGN2M0
	HBQiZ/1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRQSP-00000001Ug2-062H;
	Sat, 28 Dec 2024 06:37:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRQRg-00000001UdD-3lCZ
	for barebox@lists.infradead.org;
	Sat, 28 Dec 2024 06:37:10 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3003d7ca01cso84388851fa.0
        for <barebox@lists.infradead.org>; Fri, 27 Dec 2024 22:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735367826; x=1735972626; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9WhpZmbS9fvoo7fTDk6I+oWxtjYwwKkPO09jwv0rZzM=;
        b=nPs1ioCI0A+2nQ7KhMMdEdNEfPAxcepLMk/1W6Eb7u6KVIF5ORCgvJqAt+F93SSewT
         RPIaorkeiQYtQq3IXL0Ocfo6WxOYq4c/52immW6H9zmX4RvfPt8ktZMrI3pPcfAeNfU5
         1FJBOjVeSHO+tFF9ECa03q7D+CB/s8tq4fOyYG5ffaoV7oF1cQtFUbyRwl5GIb2zcUNG
         Fk0ljxFlYb38IyKSiGmMgYUYR1hWyZAnKhIKv6g6ZjukkoIYh3cBKZxMZ9S4bHu0oCGq
         jRBSF3F9VTbLyJMxxPltDyUD2pJA8cn7rZKVE6lKQR+GL3qLW63Mic56FA8ElWHeor7x
         86jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735367826; x=1735972626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9WhpZmbS9fvoo7fTDk6I+oWxtjYwwKkPO09jwv0rZzM=;
        b=CU5trUNkz4K2FGAifvg4t7yDarhs7EEVwjiCtbznpJlut8pmAtftJ3xtK1alza3ieO
         IRe1dGmIywsX10YfgiJckKy/Jv132bAtoK+wbEieUcg19mSRgpt+g0aXpMAFaXmTMlLU
         SwW6hSUl7672gnImc8Zp5LHNFMAx/FqHe4QIdFwnnNEXY0jECflP/8cN9G2km4aSyv+H
         9LrDVS5iNxZxNTRFzQ6p8XHmcfNmM5aMDBQIuGjBNAXTwo3eWjVPvgYKXScHwFQTSFsy
         Wy48MKmzHk+gvIckQ8OcqMt3mRf1P9jNb10QGS7YF7GyHoCAr9J50uEJ8xUF46ZCCFMj
         T6Jg==
X-Gm-Message-State: AOJu0YyhWrSbrYNYBDvHxvOwW+asavwFHNyW5skNIvdbx3Z4TUAzXCvb
	+cvVj98BgdplIc1QsTlGg4gh29yq3TIL2mYq4o1fVphkQqh0YvaPZzghZr9n
X-Gm-Gg: ASbGncuMA7noYnmQozE3pPZ1a12qyPrMjfQ3YLvmcgbO/21kmCa3pK6dyjOhnyzbMgu
	dc2tgI7yk9nI/cwId1MVwDjlcZM2jfYD+enWx/rvP8wk9QbAABoh4hGFLBSW/4/Wvf/52w9Uqpw
	X3jRlGvGjVXcopHVaGdoLyLVoP/eicXImpxea3nh++dvEtTVVMC4Rfb/jLmmKYY8/MLb1gQXo1s
	O/jL8p+yr9FwtomOEQKIpyBw5M2Ls8if9TZcnMuDKeEcsjKSz386LnpVOaoK9hrRIIrn8o7T7kM
	llcDgQ==
X-Google-Smtp-Source: AGHT+IHP4dNHQzj8nCvW8mtv9tMN1bJJUynhtKusuvWMQwmhI0rd4rRqrzcVWScDFyvU315WW4giiQ==
X-Received: by 2002:a05:6512:4024:b0:540:3581:64d8 with SMTP id 2adb3069b0e04-542295246d2mr7016877e87.9.1735367826198;
        Fri, 27 Dec 2024 22:37:06 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600724sm2605251e87.90.2024.12.27.22.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 22:37:04 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sat, 28 Dec 2024 09:36:51 +0300
Message-Id: <20241228063651.3487846-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_223708_957355_71752D78 
X-CRM114-Status: UNSURE (   7.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: Compile at91sam9g45_reset handler only for affected SOCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Makefile | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 7d7f27749f..b7389579b8 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -12,7 +12,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 obj-$(CONFIG_BOOTM) += bootm-barebox.o
 
 obj-y += at91sam9_reset.o
-obj-y += at91sam9g45_reset.o
 obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
 obj-pbl-$(CONFIG_HAVE_AT91_SDRAMC) += sdramc.o
 pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
@@ -35,8 +34,10 @@ lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
 obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
 lwl-$(CONFIG_SOC_SAMA5D3)	+= sama5d3_ll.o
-obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
-obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
-obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
-obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
+obj-$(CONFIG_SOC_SAMA5D3)	+= at91sam9g45_reset.o
+obj-$(CONFIG_SOC_SAMA5D4)	+= at91sam9g45_reset.o
+obj-$(CONFIG_SOC_AT91SAM9G20)	+= at91sam9260.o at91sam9260_devices.o
+obj-$(CONFIG_SOC_AT91SAM9G45)	+= at91sam9g45.o at91sam9g45_devices.o at91sam9g45_reset.o
+obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o at91sam9g45_reset.o
+obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o at91sam9g45_reset.o
 obj-$(CONFIG_SOC_SAMA5_MULTI)	+= sama5_bootsource.o
-- 
2.38.2



