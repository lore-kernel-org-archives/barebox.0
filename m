Delivery-date: Fri, 07 Mar 2025 06:52:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqQdW-00AtCI-2f
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 06:52:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqQdV-0001I1-IM
	for lore@pengutronix.de; Fri, 07 Mar 2025 06:52:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8/2Yw1iRrfLqDAgHQ9ERuvtKrr87cxF57nAltLtRs1o=; b=2njOKDByVlOj6ZFvJGg4CMJPtm
	LI2o7p8alIs9AI9SF7CI8WUJe8dutzLi8OaHWkBARVTM/YgKLHfpoemZ9KY5MBYC9cdhFFdptms9z
	xU2HQWHBgLXpGXHOPO31X5Vg7d0lz5wc3sT7GZSdbrjSaeW2j47xmhkXZ3T0wEcsL+XS1PXRjjzKf
	cbzqPBirGPAZJbKiqzgvuKK+igzLdsPPFIWJz1mUVEN319/XGPQeYUa6dv+0FnN0RqfnlX/CAvLhf
	DzFTd3vYImvhZOwHKudKVkyozSTIFCH3NFaAOsgNZum1TV8oICJotPvVxuFBlyzzoGzkKphS6vFJB
	Xh9wEhqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqQcm-0000000DFlS-1qsY;
	Fri, 07 Mar 2025 05:51:56 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqQcj-0000000DFl8-1XnG
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 05:51:54 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5495078cd59so1693315e87.1
        for <barebox@lists.infradead.org>; Thu, 06 Mar 2025 21:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741326710; x=1741931510; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/2Yw1iRrfLqDAgHQ9ERuvtKrr87cxF57nAltLtRs1o=;
        b=ibgAYdaVmsKvKVrB5BJ8vFFk52c7kQvE7ZQ1mkfJJ6cKhrTdGfVzUEUw6oIpoYKC5w
         fSvQOjfPgIhP8hWTUBBNEv5M7GLyQAp53dnRcr6iarkMxMjovQwRBHBJfz8FM5F7bFm8
         RNJ802xlXK/BNd3+6F/NAt996whyYi4eQvY+day/sU6AVJDoqpQ9gqrJqK5IxoM8pwzP
         wX2qDGU6yyXbbuuhf2EZi5iQD6+/L5eP0V/ho8zHe+PaXkjGChubw86XPdsqcvI7oxsz
         ikTTqC+aMk35ox/ubkjqUhNIvjfb7uGtuIDFGzPI6QEvKll/fXDNNPuGwo201Q8cpv67
         rC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326710; x=1741931510;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/2Yw1iRrfLqDAgHQ9ERuvtKrr87cxF57nAltLtRs1o=;
        b=wBgGIHNMytosQlZpgAnPbf8NP/YbSACLV+lAJvMcyrjoMB7DNUUNNzeANyw6oDvhjz
         Ru1vMhuUr98v+PCWUUpJVHIXcN2eesfWX4r3lt4EynC3WDt6AUAt5yIAQh+LIVCCv5cs
         YLJqL2oX2KOg8kiUsA7G0FoRThy4sWKO2dZxAotCfvb0xn6m4/XRmAN6+6w9Nu5pb6O8
         AR6SW8h2QxzMCcb0vamAWGC56qderQWaDxAZW+yquU+0GXa4OYf1PztGVG6M4O9EMh/w
         qNywh02u4BCf4wSvIc666tuH3cALP/hYzqpLgBpQanAo6qQPqo2bhgtjgg06U10Y9kkj
         ebfg==
X-Gm-Message-State: AOJu0Yz58NJ6Wzp/T3YdQaz3Ic5FQKeAxPLoQURciJQsy3DMgpsRpnbG
	7Ew+CPkyffHfyOc13jxAfTLAW2ZWndIJ4f0PmILxp6D5gDBe9fWvulsjtQ==
X-Gm-Gg: ASbGncvHhuqeBbF7O1FEiGJfB3RWqbEE0A0FTFiLP+XD+9Ivhos7CelDWkATooY8GOH
	fLEO+JMYQ49nMj53KD9EOs3hU0eCWMsR2SxWERO2n2xpBCNVe4AtNbFFcMebr9ToyJdNrCHEuNp
	vyivJ9fRoENHZFMLEnWlbXeKPlii6J3wSULCm+0uWmvTdog5S1NQgzPRoqz8gH5UwdKzKtC8GFy
	FNLFuAoNDp2Yo804fPg33DXP9lHVbYzBK0v3W59TFA4nK+A83qArN8JOg640TIviMFlJ2x1HL/X
	+jNfNOl8dz8TQGMbxKogJ94nM9eLhainVj/FrXWQHxvNqz9N5nvZ1FLW2U/P0KQe4Hs=
X-Google-Smtp-Source: AGHT+IG6k1FSg6D68szH9E8EtIoEDqGLYjo2AYJPSohg448cguSKQefb4b/LPMtNmag5aXE3Hl+H4w==
X-Received: by 2002:a05:6512:ad1:b0:549:8f47:e67d with SMTP id 2adb3069b0e04-54990eaaee5mr600082e87.34.1741326710041;
        Thu, 06 Mar 2025 21:51:50 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ae58bffsm385118e87.75.2025.03.06.21.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:51:49 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  7 Mar 2025 08:51:35 +0300
Message-Id: <20250307055135.26298-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_215153_404638_914A1615 
X-CRM114-Status: UNSURE (   9.64  )
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
Subject: [PATCH] at91: Remove non-devicetree board support for SAMA5D3 SOC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since all SAMA5D3 boards now do not use the devicetree,
we can safely remove the board support files for this SOC.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Kconfig           |   5 -
 arch/arm/mach-at91/Makefile          |   1 -
 arch/arm/mach-at91/sama5d3.c         | 410 ----------------------
 arch/arm/mach-at91/sama5d3_devices.c | 491 ---------------------------
 4 files changed, 907 deletions(-)
 delete mode 100644 arch/arm/mach-at91/sama5d3.c
 delete mode 100644 arch/arm/mach-at91/sama5d3_devices.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0b3a4ac44c..d63845437d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -269,10 +269,6 @@ config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
 	select SOC_AT91SAM9N12
 
-config ARCH_SAMA5D3
-	bool "SAMA5D3x"
-	select SOC_SAMA5D3
-
 config ARCH_SAMA5D4
 	bool "SAMA5D4"
 	select SOC_SAMA5D4
@@ -289,7 +285,6 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0xF000 if ARCH_AT91SAM9G45
 	default 0x6000 if ARCH_AT91SAM9X5
 	default 0x6000 if ARCH_AT91SAM9N12
-	default 0x6000 if ARCH_SAMA5D3
 	default 0xffffffff
 
 if ARCH_AT91RM9200
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 857f77ab49..556e46f181 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -27,7 +27,6 @@ obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 ifeq ($(CONFIG_AT91_MULTI_BOARDS),)
 obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
-obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
 endif
 lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
deleted file mode 100644
index 447ac711b4..0000000000
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
deleted file mode 100644
index f6d5617e5f..0000000000
-- 
2.39.1



