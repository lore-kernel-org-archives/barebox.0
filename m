Delivery-date: Wed, 05 Mar 2025 07:22:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi8x-00A4t6-2p
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 07:22:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi8w-0000Os-Kc
	for lore@pengutronix.de; Wed, 05 Mar 2025 07:22:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dc2Ei7S8hDy4826zHmnCNrsPcoBGY+2cbJNpy4qb/Hw=; b=In88lioKatrq5I9PfWcc0E+RGG
	wWPCzSySAPotYX8eFSZJOi1YHSjNlR3bfhhVlDz9SACm2N4DvSuniba2BUvOVnsMIg4cJ7V2JmsfM
	n12QP+UDqPWK1apZ2y6z0JIITacxkXISXwmJx0H/95zsxx/5VTtz+uD84BvvepQOb3VF4CaxTvjJq
	36AaUuV5iMmLhaH9i2v8D1ISbah+cACjAKyZIwXAKHP++ifLYVPLJbjoLthE9I/WajIALUyEVr05l
	BJ+W+KxBFNuu+R0t+gh0nGAlwv8TjYtYVGI4Ct2O1hCwl1Q51IMgQg4Wy6ILvSnNWNhkzAT7ouPnd
	GPbrFdwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8G-000000076p1-2Zug;
	Wed, 05 Mar 2025 06:21:28 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi85-000000076nH-3AhU
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 06:21:19 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-547bcef2f96so7271972e87.1
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 22:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741155675; x=1741760475; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dc2Ei7S8hDy4826zHmnCNrsPcoBGY+2cbJNpy4qb/Hw=;
        b=HMZEvaGwUbUdoqnBL24yPDWjuL64u+toU1pYToSzz2LsUvYvPBG1mbvrPb381FTKFE
         RxrP1U+7qV0RKgmK1t0erkUTe5w4o8hfeRf084wEw8MivOVaMFjocQocD8kDnaYPHd8x
         zZyhEwbUc1RWLjYD2U19upoRIa5AqhQR1Kld0i4eVkAcYW4m2lnh7t90eX99dyJqzfSm
         62gP6jEP3k8K4ZlI3vWlGaABUe9Pn1mN/e7UQ1BkNxi285yEAh3ohwLyQgjEX0Ubo3Cx
         IlbeN5//mn7FPPMedmdRvyxU5Yy8dbbejh8ZIPMBi8aYH86HsUMr6HqnSn2BDRBYVBVw
         ZcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741155675; x=1741760475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dc2Ei7S8hDy4826zHmnCNrsPcoBGY+2cbJNpy4qb/Hw=;
        b=unG8E1AKWpViUbgcbIMnRgnq0eNvrsZq5u+DClEzScobqrlSqnkRZl+e4qEJ0rzuvF
         2g8DtPB3GduQjGeJIgdRDbBDrlDlYmUYn5HmwN9yooudJ6VXwn5OWpg2lfLbn6TT8F+p
         qgOJLnr/VEjDzZL44MEVGpDXG+C8IyQBtLzUdqu0viauyoPAjuLjzPxMd1mQURK0kzNf
         j/fB/y0Cnci30Lg19QU6xQT1A9KFguubxK3E2PShu50hrnO1BIqSYj5Ek8QvpXGkma8B
         UXf6itgVkvpeWeDr92vO1UvxFHxOjVpvZmwOeiK4eeO9YmNl/aZi8iqlUZKjP0LFE1/I
         pdjw==
X-Gm-Message-State: AOJu0YzHoizSYd1D3dNq0HwVx5/GHv/ogAxT11PGftA5n83NAA4wPjyW
	7Ago+SK36+dnUx0c2o8b/p9+3fDswJjATQJYBgpPguxaza/h9fqDnKajQRIlSjM=
X-Gm-Gg: ASbGncv0K4zSjGkqrn71fssjeL5L+kbIaoeBrHsNQsj/rcAwTh7qXiV958o8h4ik9N/
	Fmatg6HaTY1ALrbXkaJd23b9yOE6zVyRnoM9hht1CA5Qb14z/HB9DpxaqOBWVa1StX/iXl/ZZA2
	rKKFkQqnWlcPWLV1VRAPeKpFKO8OW0ZqdI4OPCTXsZQDPiFaJXKrsSSbOxmLOU93hVj284SVHOc
	HkJvkawcSqgf3OeknSDt5Qz7EP1ILFIY5RZoimEzySPvSmRmeXNZcaxPwa9XnNWGpYkV/jsxIAP
	Q/3gr1BwG+ijLoNcPtjetRVr1Jkc5cpNT45AUrKfqycG6LVKsMpFqxKdpxhSiqU7zQI=
X-Google-Smtp-Source: AGHT+IFaDzV46luUsyingdzJVDSUwaViXOQ9Alj77P3VVevEtT8KF/xzou9/UnfoSCTw5nm241NDPw==
X-Received: by 2002:a05:6512:1289:b0:549:7394:2cfa with SMTP id 2adb3069b0e04-5497d377287mr556567e87.38.1741155674794;
        Tue, 04 Mar 2025 22:21:14 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54973942f2esm526279e87.58.2025.03.04.22.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 22:21:13 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Mar 2025 09:20:58 +0300
Message-Id: <20250305062101.25588-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_222117_958564_132763C4 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] at91:: Remove dead definition of atmel_nand_load_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

atmel_nand_load_image() is not defined anywhere.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/mach/at91/board.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/mach/at91/board.h b/include/mach/at91/board.h
index 5f04f9c849..7edadeafba 100644
--- a/include/mach/at91/board.h
+++ b/include/mach/at91/board.h
@@ -31,8 +31,6 @@ struct at91_usbh_data {
 extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
 extern void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data);
 
-void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
-
  /* USB Device */
 struct at91_udc_data {
 	int	vbus_pin;		/* high == host powering us */
-- 
2.39.1



