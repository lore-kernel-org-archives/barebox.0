Delivery-date: Tue, 07 Feb 2023 02:07:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSS-00GWFp-HJ
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 02:07:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSP-0007Fo-Ri
	for lore@pengutronix.de; Tue, 07 Feb 2023 02:07:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QnMOJz2F//gbKfg9wdmult0vDQsWwHQBuZkLYZ9GBQY=; b=kjKoizektWORuaNKTHfd7kCgS9
	0JhA5hPudKQXbw5fgP8VJtNhh1zCOPP1gzZG16JBvHKUmbHsKrGhkl3ddPVkApSCh3cr7SWDVW8YD
	kc46YZsJNFL4u4pHH7FYSc3m4+x7aT8+Hcwayq1lMLd25a/79Jqu2clA3XrbJj6kUDWqzUuyoLHH4
	4xk3mulp9tvq0OYtzKSiV7VjqFZodHzqClpPv21KeiltRhVnjIpBCKeiOBHqLEIQjTBujaj5cE2qJ
	Dih8zGAPELU3nmgKjrWY83Ky8TfljD/IaOwfPKmPTcZRITXWE4u4Ve4TMacfAgcrludC7OSiVe7j5
	rx0h0nIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRF-00AKIm-Af; Tue, 07 Feb 2023 01:06:25 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRB-00AKF7-2l
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 01:06:22 +0000
Received: by mail-ej1-x630.google.com with SMTP id p26so39196700ejx.13
        for <barebox@lists.infradead.org>; Mon, 06 Feb 2023 17:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnMOJz2F//gbKfg9wdmult0vDQsWwHQBuZkLYZ9GBQY=;
        b=hRKrQE/fNKMrBkx+dVHHlRl5lrjbA9pBmpXDUdlHcISSt4vuLvGcIAmb7X6/9d6YCf
         vXzEGqQtDDOkcU4PQ7FW+npGI/m8+E3wGlIB7zB0Yjm8p1uKxdv6Iby0Nnd00c0nIEmN
         xQrYtzIInTgEzGLWFX8Kbl+ZPlHeqRgoRUTmGa8RZ690dEx7Fd4hMOTVQ/0g7kH/ZGYn
         M1rR7eGLstFKQOd4Gx6H3kUOAHvtm+Q4heGuGxfq/36i9hKtro7jl7oR6e/3hSvvdSAF
         wGd9aFhbGy/tgZR0qpN/a31gf9QzntHkP6tTbBGK5yPuFfbfcUCqlunV5SES+Gg7gy0W
         CAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnMOJz2F//gbKfg9wdmult0vDQsWwHQBuZkLYZ9GBQY=;
        b=8HuHF0NSa9uizrA1J/+o18vE9dREjvOBwDsashAxj+jqfyitnJQhQRc4QhriVcKvxL
         PSDMDeOoga56rKJOjAnmKozY0dbuvI99OoccO7mBN0O0LrUJe9vxG/Fn96YQ6fcxeGoo
         x8GBe/4Ls4maUIc1wvWe1x+jEkq12IVQew6TsUUfzf9WULxvKh5zdD7djNFfSomspHvL
         DwgyyIt8ryCCSKRFM5y5omb+98Y3wFGU4StL5hWuTADQU91ha395n+6hK3NJ/BnD4rIY
         c5U23IWOKOP/MmXR6vX152YPMQkHpRQV3/Q5rWiFZxSMQOey2KW/M1y6iLXYQT6DGlYH
         N9Mg==
X-Gm-Message-State: AO0yUKWOGTjvsTsPMbpAeFs/C5MLHuE/+UovLFt3HV2CR1SRYR1Hpjfj
	q16BRrqkV8t2SEisBWosYdXakGiIgto=
X-Google-Smtp-Source: AK7set8vboI7qmRPjq6hin1nHMxizWA6tgq/P4zsULMHIeYpaLT3AhoiQlA6RVDWwVhYf5pBA2CoFQ==
X-Received: by 2002:a17:906:b5a:b0:89f:aa50:22e with SMTP id v26-20020a1709060b5a00b0089faa50022emr1492845ejg.64.1675731980457;
        Mon, 06 Feb 2023 17:06:20 -0800 (PST)
Received: from localhost.localdomain (ip-78-45-34-87.bb.vodafone.cz. [78.45.34.87])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906391200b0088a9e083318sm6078754eje.168.2023.02.06.17.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:06:20 -0800 (PST)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Feb 2023 02:05:21 +0100
Message-Id: <20230207010525.2693-2-danek.brat@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207010525.2693-1-danek.brat@gmail.com>
References: <20230207010525.2693-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_170621_145719_CA7D872F 
X-CRM114-Status: GOOD (  13.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: rpi: rename function getting mac address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename 'rpi_set_usbethaddr' and 'rpi_get_usbethaddr' to more generic
'rpi_set_ethaddr' and 'rpi_get_ethaddr', since they can also be used
to obtain factory assigned mac address on bcm2711 (rpi4), which uses
bcmgenet nic instead of usb ethernet nic.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/boards/raspberry-pi/lowlevel.h     | 2 +-
 arch/arm/boards/raspberry-pi/mbox-helpers.c | 2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c   | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
index a29860d607..260f96c714 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.h
+++ b/arch/arm/boards/raspberry-pi/lowlevel.h
@@ -10,7 +10,7 @@
 #define VIDEOCORE_FDT_ERROR 0xdeadfeed
 
 ssize_t rpi_get_arm_mem(void);
-int rpi_get_usbethaddr(u8 mac[6]);
+int rpi_get_ethaddr(u8 mac[6]);
 int rpi_get_board_rev(void);
 
 #endif /* __ARCH_ARM_BOARDS_LOWLEVEL_H__ */
diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
index 9f252c68ff..50fc1c5b45 100644
--- a/arch/arm/boards/raspberry-pi/mbox-helpers.c
+++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
@@ -37,7 +37,7 @@ ssize_t rpi_get_arm_mem(void)
 	return msg->get_arm_mem.body.resp.mem_size;
 }
 
-int rpi_get_usbethaddr(u8 mac[6])
+int rpi_get_ethaddr(u8 mac[6])
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
 	int ret;
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 13df6a140c..8d1e74acab 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -60,11 +60,11 @@ struct rpi_priv {
 	const char *name;
 };
 
-static void rpi_set_usbethaddr(void)
+static void rpi_set_ethaddr(void)
 {
 	u8 mac[ETH_ALEN];
 
-	if (rpi_get_usbethaddr(mac))
+	if (rpi_get_ethaddr(mac))
 		return; /* Ignore error; not critical */
 
 	eth_register_ethaddr(0, mac);
@@ -114,7 +114,7 @@ static int rpi_b_init(struct rpi_priv *priv)
 {
 	rpi_leds[0].gpio = 16;
 	rpi_leds[0].active_low = 1;
-	rpi_set_usbethaddr();
+	rpi_set_ethaddr();
 
 	return 0;
 }
@@ -123,7 +123,7 @@ static int rpi_b_plus_init(struct rpi_priv *priv)
 {
 	rpi_leds[0].gpio = 47;
 	rpi_leds[1].gpio = 35;
-	rpi_set_usbethaddr();
+	rpi_set_ethaddr();
 
 	return 0;
 }
-- 
2.34.1



