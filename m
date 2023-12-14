Delivery-date: Thu, 14 Dec 2023 17:36:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDohe-0033Og-31
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 17:36:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDohf-0003Mx-6V
	for lore@pengutronix.de; Thu, 14 Dec 2023 17:36:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NqtNLcPZ4/mZOWfPA64MdCQr7KzJJgXAP/owE7iIJ7U=; b=M9/bz6ysKeIJPihGZdFFT9TNS7
	0j7+deimrMzjVMtmyn+job81Goi85oXr2HXG13WderRLdsvQ+vzcyP+e+qmPZ3KKSms8rtRU8OAfQ
	WL6EbUdKmCDYAtWPgK8M5FwLna4LTSKEOlPfrcTh9mlhFRTo8hJn6wqYAQRPQ+KDD51ae8DLLoMgC
	6bb+xgXl8ZFj9oIpJ3m4/WFDITp7u+f3epP++rwTg+D0y8+ZSVFFEVPgLmEE5Dfw4OUnT6h3d6nxX
	6AN7fnevNoW0pDUqwbIRXZyYLhHdCkI/07GMYiKJajHcLUX9mz3zS9bkIw+UESWddqazzsMFJ2wJk
	IloiVTEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDogR-000oy8-30;
	Thu, 14 Dec 2023 16:35:35 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDogP-000oxb-0s
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 16:35:34 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3364b049467so485376f8f.1
        for <barebox@lists.infradead.org>; Thu, 14 Dec 2023 08:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702571731; x=1703176531; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NqtNLcPZ4/mZOWfPA64MdCQr7KzJJgXAP/owE7iIJ7U=;
        b=PL3HBAW3B4mQOiIFMGZinQPLMWOms6ejVcH+CEJ6gekvfbOfi1AfqoVms97lSKsRbd
         OHMquteVkC/zohaNDuD2qkL9aamO36cr9VQa3vUO+en8p26gyW0MRoxtKOmgDSicezws
         +DijGhy9xJAHSKYmwNdOHDny5GWourSsFf0SAyeTMO6l7AeXXsdets+92LhndpbK9R13
         qZ6pKfg3v52HGz/GW9g9LijsZJsQtU80vjKPA2pSUJt0UJUP7p1m52W6ZX8oOEL1097q
         Pl6AcEmHKnnpaw99xNMyIn/eHAwK/DHX5nyGAVBx6gMMB+LOX/AatGPMMgwUFaA3PEdm
         pVng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702571731; x=1703176531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NqtNLcPZ4/mZOWfPA64MdCQr7KzJJgXAP/owE7iIJ7U=;
        b=DyMcrLpVM/252wKJoJn2qrGwwL1vfvEviIN6sOZWwJ7lu5V2HG17OWIQYXA3bEUdb+
         yHYy8h8jRNdq4kM4xm/z/6Bd95CBnNRwBySVBE7asg9E/Z+9N+umIWpXWRLRTn8R3yxh
         cbzsVwQNSTzLDHFQgAS1ApkQvyPncrQLX0WYg2ysTYxExtET7gt2cLMWH64bPQDbG+mK
         XjselOLumnVSnWiZekNLMnD6DJzfD1dmoYU+TJJVR727ubW5zmaffxisqCVc9RTBFOTb
         /j2dCXp71aCXa5OfSuQMgERFFoHHwSdYNbzV8/nAYP30hYqRw8+99wJiTnOmxDS0y4ao
         K9vA==
X-Gm-Message-State: AOJu0YxZSy0LyUviLWDwlx9cdYtznfCoATWud3NQTGwjgE1EpQYOB0q3
	vMmh9daBhRPi16MjRfSDIEDvDyH74NQ=
X-Google-Smtp-Source: AGHT+IHZCfpQK0bmr/scddlijpib+mmj9fyU1fnW3750k0XbaJecCB52YDLw5Z4F8lymkb8Y3fPkog==
X-Received: by 2002:adf:ef52:0:b0:336:4a06:42f6 with SMTP id c18-20020adfef52000000b003364a0642f6mr548908wrp.82.1702571730795;
        Thu, 14 Dec 2023 08:35:30 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1b8:9000:35e4:6034:77c6:2307])
        by smtp.gmail.com with ESMTPSA id w6-20020a5d6806000000b00336103442d2sm15103694wru.76.2023.12.14.08.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 08:35:30 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 14 Dec 2023 17:35:20 +0100
Message-ID: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_083533_307531_113D1B84 
X-CRM114-Status: GOOD (  10.29  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rpi: add CM4S device id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce the device id for the raspberry CM4S accordingly to [1].

 [1]: https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#raspberry-pi-revision-codes

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++++
 include/mach/bcm283x/mbox.h               | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index c2b273c5c3..597e2d2d0e 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -650,6 +650,9 @@ static const struct rpi_machine_data rpi_4_ids[] = {
 	}, {
 		.hw_id = BCM2711_BOARD_REV_CM4,
 		.init = rpi_eth_init,
+	}, {
+		.hw_id = BCM2711_BOARD_REV_CM4_S,
+		.init = rpi_eth_init,
 	}, {
 		.hw_id = U8_MAX
 	},
@@ -682,6 +685,7 @@ static const struct of_device_id rpi_of_match[] = {
 	/* BCM2711 based Boards */
 	{ .compatible = "raspberrypi,4-model-b", .data = rpi_4_ids },
 	{ .compatible = "raspberrypi,4-compute-module", .data = rpi_4_ids },
+	{ .compatible = "raspberrypi,4-compute-module-s", .data = rpi_4_ids },
 	{ .compatible = "raspberrypi,400", .data = rpi_4_ids },
 
 	{ /* sentinel */ },
diff --git a/include/mach/bcm283x/mbox.h b/include/mach/bcm283x/mbox.h
index 908ba17dba..cf5143673a 100644
--- a/include/mach/bcm283x/mbox.h
+++ b/include/mach/bcm283x/mbox.h
@@ -175,6 +175,7 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2837B0_BOARD_REV_ZERO_2	0x12
 #define BCM2711_BOARD_REV_400		0x13
 #define BCM2711_BOARD_REV_CM4		0x14
+#define BCM2711_BOARD_REV_CM4_S		0x15
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
-- 
2.42.0



