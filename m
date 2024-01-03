Delivery-date: Wed, 03 Jan 2024 18:09:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4kD-002GUm-2M
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 18:09:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL4kC-00052B-Oh
	for lore@pengutronix.de; Wed, 03 Jan 2024 18:09:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3MMw8QpAl/PgzAlT7s9PGr7TUtibic0xV0t2w6J8zg=; b=bUN6P84TO9s1Fp
	9eb5BbtZ7FpSIxPXz55pa5lYWSK2WTVmtjzDh9rVlIc4Pp/KnNs+OUStlCIu+19Z0LWhRW3z9SbyZ
	7eGEHAM6UIay8CLaXN6iFHVJ8FPJwuVM4Lh7ahQAFPi95GMLQZbEgia76pv+0m1Nt7Rn1xSSQdPbS
	dhUJedqC9b0oVYI1um1rCOMtt2Aj3ZpTdjF4ClIw3yRP7RSjpjLI1vWMdMF/5XIQM4kb1Rs8zduBF
	zBU3gHtGrZ8NtyGC822UPFpcYATo1EHLqRdnyEV9vZ1c1wYXSue/WXQPYTH+wRKcRekmRJUUiIMZX
	X5kP8Yxun5KXWeZodQ1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4i2-00BUVF-2t;
	Wed, 03 Jan 2024 17:07:14 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL4hz-00BUTE-2e
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 17:07:13 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2cd0c151cdcso22696831fa.2
        for <barebox@lists.infradead.org>; Wed, 03 Jan 2024 09:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704301629; x=1704906429; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F3MMw8QpAl/PgzAlT7s9PGr7TUtibic0xV0t2w6J8zg=;
        b=QP7vz+hQiBjg0/YTkULfJ9rPHHP18UE6b82d0+Yf4CmTAwEQt0F76zggu+Nhvnx4Lx
         rKW5i+Ug4eTnxsGXIuqkaGlC898hz4IuL0rT1wGpvCFPSsSxKP0NBsJWr4dcdR6UDgF8
         /4HeS4s9OZVaO/R1rAKSiRoKxtNWOb0pMdORls8wAGBOzWvxMpYtrmV5YNAH0C8cpzAG
         jqRm2eIy+MVG1H7vsdrr5l8GBXGpSEJO7BI+9VWdvjZ1D0HfRU8ko/iCmtJSNXCtT5sI
         tQSXpdX8VOSnWJxiBHY5MV/PAdh6ttJTRppQh/wxYPN0hV0u2ohsJYkS2uMLPkSi/aPj
         zL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704301629; x=1704906429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F3MMw8QpAl/PgzAlT7s9PGr7TUtibic0xV0t2w6J8zg=;
        b=ZCGbE+AOyIh0KLaGJx02wZu3LZQekDqaB+5So3ktsav64powz3G8LUlG3Lqs6JXiTB
         3rKPAK9Gkg82x83iGNLF4xhVWVTFUH8PBMkH9s6owreVPk8l8xsp5BQB1t3g1n3F5cHJ
         2x844Qm1WhTRr2GAGtTaDso6O7zONoneF9ti4hZ+uTOYMYmmq+AaEOJEU+Wh76DeGxg5
         K2O7QQzckPy9+XHWiI5WYJJJVM7LMR9LjxcEHbH4Djef6bFZLkFB95EOUPfmLAuNVbXG
         DcvtsyKh9R39PYtAgt4ydK1TlSJwqEIjPOxfsmOSsXe/6qt39Bpc5+Mlh3BbPpDlsOzL
         KVYw==
X-Gm-Message-State: AOJu0Yxq5USk9RqEUJrUe2TXRY2dYZxWvRq2UnEJGO00kCjim1CzKScs
	oq7MZewoaPfRO526kaZB9F/QJ0F/bM0=
X-Google-Smtp-Source: AGHT+IGgZm/AWyjLVBf/s55TDjYmPgVVa4m9S0pARm03DXMNet6v++xinvnBk0yNPuq0/kq5qAsq/A==
X-Received: by 2002:a05:6512:b25:b0:50e:81e0:a8b8 with SMTP id w37-20020a0565120b2500b0050e81e0a8b8mr7006738lfu.2.1704301629125;
        Wed, 03 Jan 2024 09:07:09 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id d25-20020a0565123d1900b0050e743b0b2csm3313364lfv.34.2024.01.03.09.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 09:07:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 20:07:25 +0300
Message-Id: <20240103170725.846378-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240103170725.846378-1-antonynpavlov@gmail.com>
References: <20240103170725.846378-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_090711_869697_0240B7A9 
X-CRM114-Status: UNSURE (   9.24  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] common: Kconfig: TIMESTAMP: fix help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At the moment CONFIG_TIMESTAMP help text is inherited from U-Boot.
Fix it in accordance with barebox realities.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index c8c23a8e03a..3efa8402b9b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -533,12 +533,11 @@ config TIMESTAMP
 	bool
 	default y
 	select GREGORIAN_CALENDER
-	prompt "print timestamp information from images"
+	prompt "print timestamp information from uImages"
 	help
 	  When CONFIG_TIMESTAMP is selected, the timestamp
-	  (date and time) of an image is printed by image
-	  commands like bootm or iminfo. This option is
-	  automatically enabled when you select CFG_CMD_DATE .
+	  (date and time) of an uImage is printed by image
+	  commands like bootm or uimage.
 
 menuconfig BOOTM
 	select UIMAGE
-- 
2.39.0



