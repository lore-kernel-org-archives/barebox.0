Delivery-date: Sat, 20 Sep 2025 05:04:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznth-0054yo-1m
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntf-000562-6U
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xV6Hgr4ZctsNeYE+f+yliexCvm8pvNkCH5gNWeDUWwY=; b=NzUFqVwRtjQla+6alc3H6LVYr/
	RVMj/UD0zTfCdu7kzpR3imMd6/CGTM3WKcytKBf3/ESzdhagN0AbV4xl0uNETQcAb51mxv16J8JPI
	noSHnVZF8pk+OjHMkoH9Gvx4FNXUSTR3JLwZujFiY6WeAbypioGop20l0v4fdfx8vsXwQKSY7BnlX
	Aq2rX/RiznyGyUfs3+vmICxPYVn877Nsy2tiWwmWFFqigr0ZV/MVtK5kssQEkwqqR16D1EXDdTVyP
	/a/fwhCV9aJ3bhEl1nMPrJU569y4JinyAKxgA1+j4ECET5Ojjf5YFmOo0qqi0sFTMWYPP8+BOObgK
	k83FOIMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt6-00000004bwX-0wle;
	Sat, 20 Sep 2025 03:03:48 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt3-00000004bsN-17zp
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:46 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45f2313dd86so23794695e9.2
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337423; x=1758942223; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xV6Hgr4ZctsNeYE+f+yliexCvm8pvNkCH5gNWeDUWwY=;
        b=S0R/vPvx5PhSg6lEYqMvm0q3WzmJbTMqY6UjJlrsKsi0ygVfyAh0ehAPFtLf3gP7Xm
         NkIlf2R1Af3zHhdz2ET7yQrtP/C6GnucxtLij5oXvhclfm50u6sLc4wDEIDoj71Q6M+4
         qOK+9UnuOwst7KYBVz7z4xUfXT8BJ9JBfl0p/J+gI/ccwN2RApcqnQ1ljEBXFnd8SOqo
         hd5ewQ8YEs5e1rajl7A+GYInGl5yWw9y4241BcX/+W7tBNAxJIAOZZwTCjwDptgaaNtw
         2zod25ZrlNMJSHw1ZUZIh85HKZo5Jirc2jrqJOOwdARalpe3Pk9QeqDC9RY6DnQvpTTI
         lerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337423; x=1758942223;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xV6Hgr4ZctsNeYE+f+yliexCvm8pvNkCH5gNWeDUWwY=;
        b=ARZVfg+eMJvBB0V9yUeAS3ESwlOMGr1fLI7LXi5o6nGom5IkILbscy2v04VMy19siO
         c+yv9jxBkImMA67ZmNWoBk5kf/xhs0qtEA4EPhRV78873OH0ENM05yj2RPkpPzCkgk/3
         WdTKAfoxnDAusP4/+3DRlN430kPWqFh5Ix9q0ire0G86Ioc4BK5jDn4p+0th3Hgs1RR4
         fEqABP4Vii3Mhd2Si7H/ud9hyg7TbFHhs4ZNPUEiCxEdVu8weLtQd3s9fXPh1ABO0w5B
         tW++SEM0mSY57ITwuCcMZmzpPOAkdQIv7AERbWWhcNHg7c7irY3kDGWtAnILheOMHD7D
         uW3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUl20XDm8SqWUn1C4IEGSgWKgW0x8UtRJMSPBqicadUyIkuFK0DVsCK5LHtjr0HilU4c8b/bB42@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz6/aNUCzyHf3R6DRVwKNFAqH0betX9ZibUkCX1LojwSROJKoq
	SyGuwVBOUJ6IoxiJn6raSEyBWPoJg4WC/vdQQAXt0UqY1n4KCPkjIWCwds8zvMvi
X-Gm-Gg: ASbGnctpVq2XT30Bfu/dm39GoCykH0YktqDaPvecjY0G2XJgp0bQLh2FuKNZTkMqSGx
	6z/lXxfHPkRsJRawfSctscJ+qcT4CXDKUQ+AsNJRezIclLwdtBkFB2xSfy3Rnt8Ex3zrDuNdbo3
	g/KvSZj+plOHawXQBkhjNPm7bOWrfGR3kxlZ59HQvMEO9FotFhh0VAqIM5t7h/glnWAEhC0xyAg
	Ra8ka4ZyZLzTPe9aDX91EtjwWZCRnrGyVGdbt7DQnsLtg+e5Kat0dzvEwGq2pAtQYDZBmS0+rOV
	Ud//zJ1OF9kbLEvy+/UWQTMGcRNgh2NR80YwdgdlPlukglz+abiVgJws3xQvcW2PKCrFTVkkjSC
	rGsU5ak7H207TZw0lCccl2kILoTLK9LGy02/HRWpPCrAm3PuQQH0wV3Gj6Rw6/UuFwIPw5jMkCc
	c15Met6cApLJg+c0oZAzY=
X-Google-Smtp-Source: AGHT+IH/SU0rnMgEkdNyTvfAFKdPFCpklsF5vun5L5gnltRYu/3XYx+Hkn7ajGtJ2gKx8yZsymHNUg==
X-Received: by 2002:a05:600c:a41:b0:45b:72a9:28ba with SMTP id 5b1f17b1804b1-467eaa86e35mr49243005e9.28.1758337423376;
        Fri, 19 Sep 2025 20:03:43 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:42 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:19 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-10-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200345_400062_994AB818 
X-CRM114-Status: UNSURE (   8.55  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/15] efi: payload: x86: enable the possibility to efi
 stub bootm for x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

this permits to select one of efi stub bootm or efi handover protocol
tested on dell latitude and qemu.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 8f76b00744e7453ddde4ac19c1ce9a4db377e0b2..47238208c527e8a6ab0e7f18a86dfb9a8ab79716 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -1,7 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 config EFI_HANDOVER_PROTOCOL
+	bool "EFI Handover protocol"
 	def_bool X86
 
 config EFI_PAYLOAD_BOOTM
-	def_bool !EFI_HANDOVER_PROTOCOL
+	bool "EFI bootm protocol"
+	depends on !EFI_HANDOVER_PROTOCOL
+	select BOOTM_FITIMAGE

-- 
2.34.1



