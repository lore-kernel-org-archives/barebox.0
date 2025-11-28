Delivery-date: Fri, 28 Nov 2025 01:52:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmim-005bmJ-3A
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 01:52:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmim-0007mm-EL
	for lore@pengutronix.de; Fri, 28 Nov 2025 01:52:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lX7SrLtUm0TtzKn81n6BgOhpwdYUjQZBgbKwRSVJUAI=; b=zFzBp4gEHScEBn
	9KmJCten+TJywwlk0Bs6KsPdma3cNjoqNrWyE27GrQsRIWdvARkA/CDwV7a1xxXM0r4w4HsO5SKOK
	cRMEzAK3jHyeNI7Fh62Y5fYk+YomJAf4tU6eo7VTiSGNxDdIeFsZleO9rCAEs71WFT71KTt9ogn4m
	gt7AaOfQmzfd0+gwEvwjXIow+dGW53Uv/T8+Ex9IrHtaVXXRwPzaZL239DlWzkDVYWLYlr4Ycz2wL
	0H8KUxJ+f6JkPyvMRuAIDX5LMuzC3Pp3jbb4W6XvbsFlSGp7XIRZv0P0P/jtqhiniOKbLIKaB0rfh
	B4oDnZ0ugac827BNZuFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmiA-0000000HMVx-3kBb;
	Fri, 28 Nov 2025 00:51:46 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmi8-0000000HMUf-01LZ
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 00:51:45 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-477aa218f20so8062655e9.0
        for <barebox@lists.infradead.org>; Thu, 27 Nov 2025 16:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764291102; x=1764895902; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lX7SrLtUm0TtzKn81n6BgOhpwdYUjQZBgbKwRSVJUAI=;
        b=B6AXzWS8VmzUcvwXkEAEwtim+mIxc23mV9xPprcvuTYQEnyQ10OqbzxfAe88xZRVcK
         Er4xPcKnhWA+9SobC7co8XpAQTH/nCexopLZnheR/cjeQN7pJA8bZpSRskBcM0eIIkSW
         Vwp4sr2CSDr4FtrHfHM1Ca0BQxXRVAavG/kgfimA2iveQVFepOr3iR20B/ocZkvLRHrR
         emxQ5n/EplZrfCC5zOciN7tuEFgy5CR0GPuLqNHo0N4UxVs//49xhc7m3R6kxfHfwz4L
         oksJ/QPe9Ly2lVjE8Hm9zrWYYTFaD3VF+caSg3L6feDHeAVqbLDdFCLyV0CNIdAhii73
         SI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764291102; x=1764895902;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lX7SrLtUm0TtzKn81n6BgOhpwdYUjQZBgbKwRSVJUAI=;
        b=B/kPpvZ3Z1V/aD1Ch91VgCnkXKzRdvV6Qe4jyPGYwYJh2U1UeBmNUZwIk9grui4Ja3
         kEyJ4bwlMjROQm/sYo8hLzRQXe7UhLhhKY6PDkTwpo0EcTAovh+9PstVCglioF10qSnD
         JdQEaWp11Vnr56rJTjVG7YQQeWn9wx99HR6nhalgn1Hk9MCL1uWjArVKDOzxbEd84jXL
         1BQSXHQYXkxaqN4mjmOJT1WhCWP2D8nfQHe71b3s9GXGYW51D6ZywFNUC5heOjiTjpgJ
         129WsXZ5T1a6w9yDdKlm5bzrp6Qrfx5q2b2AmktCdRnWN4nZhX5NbJgDkbgxuHK0QHeY
         xptA==
X-Forwarded-Encrypted: i=1; AJvYcCVkSnfYKzH0hugneXlPH+DfiS0jgx/rHVVVuibAbSznxJkjzuzWYNdcgcPdhRpx9OwKikkZHdp2@lists.infradead.org
X-Gm-Message-State: AOJu0YwnfXracTHRM3NHe1sGg+oLOH76lKIblEskDww0Ui7R8X8672e4
	tDQlNO4ohF7wmkD4ulXPbI5q+W13BPeZaFPE2ubSO6d9Dh/YarGXeXRafkw7hw==
X-Gm-Gg: ASbGncsSk1JbMhkf7JMQPm1EanDPNdZ6ymbN7JySBpGv7UtMc5sbLEGnJT75ZwcxlAP
	oEYzDIdxvVEuZSVGKvj0k4npFZX4ww+Q7u/lpapTXSwXSHR47TgmyTej3+wYTqxmlCJZJtxvloi
	KHug9J2GcsZsRdyppATLPrLeR7f4p8Ar50RJ2Ygu+S6x4iVGqxhW7qcutjoP0fjDxUiR0HPP5cr
	UkuF/vchRFfvo3/dYzdVf5KO63+2ssqBGylUWJIU+smxZlWyVr8/lO0vSDdJkD/1lqMbpINn8g2
	asAtloYqf5itwENe8HKMouybyGpDbYwlBjBFyQvCGyZOVRbf0WoqcdD0bh6Mh68LLXJ5kVszz6B
	QfJLtXsMIYHpEHoM+qTSuK39aOW1gBLfOxsyiDUnnFCxZwpVJx0AuD25PxforjPN3+4VErBBKTX
	RXkRpJBFqjF3U/k58oFXwc3oDVhCwxAk8/4ZuYuLsfLyTlnWNiQtF4nT5TIW2HjpxBuZ83JvyuL
	qnC6dNsZw2R6AuBdsZ5Ov4i3AbT0esQOFlwSaZpxdozs4cpMLefE80J6ja4Sw/fG3EUU9o9bnGD
	ymwK4UqO2kXGRz3By+qjmGc5NtcPUMCqIYY8BCYRWg==
X-Google-Smtp-Source: AGHT+IHdwo9TjZrC24yQNNy4r20YJUIX3kD8j62uaMHX3j56JQibz8EO0uWnzPupkHsIdssQ1GEPHw==
X-Received: by 2002:a05:600c:1f0f:b0:471:14af:c715 with SMTP id 5b1f17b1804b1-477c0165bb8mr243816855e9.3.1764291101487;
        Thu, 27 Nov 2025 16:51:41 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-7d9f-531a-c313-37e5.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:7d9f:531a:c313:37e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0e21e8sm123791475e9.15.2025.11.27.16.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:51:41 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 28 Nov 2025 01:51:16 +0100
Message-Id: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAATyKGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3cSyVKBokaWZrlGSuYGRuXlySop5ohJQfUFRalpmBdis6NjaWgC
 tivqpWwAAAA==
X-Change-ID: 20251128-avenger96-2b70277cdd7a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764291100; l=1299;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=XH5Z4mBhg2+iaaPn7NrxObmbVeII9S0BaPgN6yMawQ4=;
 b=hDm7AQPtxxDN+BvQFTkqGEc2LHWWRZIH0dXoVv+lzQfGLiwj2C+Ek+IWhyuP1nu0UVj56RtD5
 0fHLtnp7+pqDzBN2aFNWFdO4nx1KWcUO+Ny4ppcnnzGTexGNMx4Z//x
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_165144_069861_C3ADE181 
X-CRM114-Status: UNSURE (   7.44  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for Arrow STM32MP157A Avenger96 board with bootloader
update handlers for MMC and NOR flash.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
Sohaib Mohamed (3):
      common: bbu: refactor flash operations into separate function
      ARM: stm32mp: bbu: add NOR flash FIP update handler
      ARM: stm32mp: add support for STM32MP157A Avenger96 board

 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 +
 arch/arm/boards/dhcor-stm32mp1/board.c      | 47 ++++++++++++++++++
 arch/arm/configs/multi_v7_defconfig         |  2 +
 arch/arm/configs/stm32mp_defconfig          |  2 +
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 ++
 arch/arm/mach-stm32mp/Kconfig               |  4 ++
 arch/arm/mach-stm32mp/bbu.c                 | 77 +++++++++++++++++++++++++++++
 common/bbu.c                                | 17 ++++---
 include/bbu.h                               |  2 +
 include/mach/stm32mp/bbu.h                  | 10 ++++
 12 files changed, 163 insertions(+), 6 deletions(-)
---
base-commit: a831f32782a5ce216301ccb52e4d27e3462632f3
change-id: 20251128-avenger96-2b70277cdd7a

Best regards,
-- 
Sohaib Mohamed <sohaib.amhmd@gmail.com>



