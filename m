Delivery-date: Fri, 27 Dec 2024 08:16:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tR4a6-00DEnW-3D
	for lore@lore.pengutronix.de;
	Fri, 27 Dec 2024 08:16:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tR4a6-0008Lg-Un
	for lore@pengutronix.de; Fri, 27 Dec 2024 08:16:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6YD/Y5bdi9Pu/KeGaF9Wna2uS3hhFkldiOuGg0cO8Hg=; b=3oNdGVcgl4FCXMClJBaQdzXR/g
	Y8UKSuVYdZdfdygWW/tIM8aduLGcgk8LxBvTBWHCxhDcv7tiujR+hMmQ76MRFwv8Xo3EicUvWIiQg
	wmQl+kvEX1Hu4zwPbL31ojhlRG9ctBVmICAJhWMxxV+R+l/NJs5qDcVmo59ijSY5NySzKadHUvMSR
	fOhhhayS/NvGoZsL9BdblweTsEfUNWrtyB3iN1KycLq312FTzAMRKU1DZqvur5OUdg9GaYx9g92rs
	/27rhY7lyKmYvvUYklH57EjPDWAGbbOyy7mZTEs8x/zRAe7enmhaNFcsYEmrdeVWOcDO6LfAes6d3
	Ds0DdA2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4ZS-0000000HDpv-2z2T;
	Fri, 27 Dec 2024 07:15:42 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4Z5-0000000HDn7-2P1u
	for barebox@lists.infradead.org;
	Fri, 27 Dec 2024 07:15:20 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-30225b2586cso86745401fa.0
        for <barebox@lists.infradead.org>; Thu, 26 Dec 2024 23:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735283717; x=1735888517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6YD/Y5bdi9Pu/KeGaF9Wna2uS3hhFkldiOuGg0cO8Hg=;
        b=cOwuGlaOJ8mIiUkrC1wUYEKrM2xS1hYkre0d26m5QJOd+yqbg5BeHf8PqrXxybYfUp
         yPq0q3hvrS+iAvAxl2xxFjtgZ0AqXahFkKA/+4FbcRL+HPFNz6RXj4Nknw2Rd+cnzKin
         BYXn7aFv0Gcb9k7xA7MzBbnISe/D/rbiu/GJGwmf4DRxp8nEVpvVO4Xt/nyHX5Db8CTg
         vHDPSN0JzSAeZXYkBhKAcypn+gwLZOjvjhrxTWxqe04CxUJfBrgAHqlgd05W0+0Z1R+B
         g4n+N2HgExQ/+k+jyr2LL1sEEkwVuiAAATZkqAy3c75wqrwGv6OKwhkvmp44cWy27mAO
         tcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735283717; x=1735888517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6YD/Y5bdi9Pu/KeGaF9Wna2uS3hhFkldiOuGg0cO8Hg=;
        b=Rqen9epT5cvmRjdLmHtfbFLuaj8m5kfMN8492HVk+GLi6JNFfcvUTBR0X8GLKRH54j
         jPFylQSw8Lx8ZZ8ESnrzEX8hPvVhPqC2Iog+kCbT6Nyxnn79Xhk+OZSiDJJteonpGDuq
         mdr6pVfWphPRTPxEqORkDtpG5jT8m9Goz1iq73jH4RMDCLVP66N3SIXWtA4eoF1xpRQe
         41TEYWRkU55JksN468q2vbgJiDAA0YjeWNtAipZQauGzC5dRFSZ5q2ZEGXEZHlwdM2gK
         DM6Rmfxt1NjEVflDeeyb6LqQ2yB/3BN9f51Q3JfWb5jCXktj/Jk2A4TAqr3ar8gJrDDa
         Go4Q==
X-Gm-Message-State: AOJu0YzVbNMdJjkvl1YYswzhinE/UjdKKbEZ2FmqqrsaZlGY9sGFNtaH
	hP97FAis1HmwPeGyCmqg6tKmyZLxphXY5WniTtb+F/ij0AVb96ScoE7+6VA6J4g=
X-Gm-Gg: ASbGncvidfOVGHmV68q3kJsgAdf++WbfQFwqh8noiE/TSLWIXjWI0X78MXEAajSWnNv
	iBk6iH6GfUNXPq2FwQLtqQbtjb2buz8U3sqjSXJgv3KM9NkQTWlLRNA30ZoBmxFS3HPH+qsnJtj
	ytLWbc0UeCOJiRp0VQ1HmFHD9Xd6HRD2trrdBVseYujTPy5XvC67YaZY06le/BzPxLX+D1yRv0t
	7ziHMLCfDSLZboL0dKK3hfuchG41S6T7TmDDluWQJDzMJf+YaaTpKzuuCeTMgJFMKD/wiD5mhuS
	D3Q=
X-Google-Smtp-Source: AGHT+IHMd2iQoNdCZDR3XKNmnS9qnXfGfLclOFX6oX90cQ+uSLHLxL/myeN0WyE71WJWLenwkIaECQ==
X-Received: by 2002:a2e:b887:0:b0:300:1f5f:e24f with SMTP id 38308e7fff4ca-30469bfda0cmr76856471fa.15.1735283716602;
        Thu, 26 Dec 2024 23:15:16 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b083b4asm24472001fa.112.2024.12.26.23.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 23:15:14 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 27 Dec 2024 10:15:02 +0300
Message-Id: <20241227071502.18967-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_231519_614979_9FB5D702 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: Remove AT91SAM9_SMC dependency for SAMA5D2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

AT91SAM9_SMC driver is not used for the Atmel/Microchip SAMA5D2 SOC family.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2cc64d72c5..8e0529dce7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -92,7 +92,6 @@ config SOC_SAMA5_MULTI
 config SOC_SAMA5D2
 	bool
 	select SOC_SAMA5
-	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 	select HAVE_AT91_H32MX
 	select HAVE_AT91_UTMI
-- 
2.39.1



