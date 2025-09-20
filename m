Delivery-date: Sat, 20 Sep 2025 05:04:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntl-005507-0f
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntk-0005B0-JB
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z53cMhAgoqOGgsi3lPDM6JZ0wLhkjcrlORY9N1iCSi4=; b=LURkC8u1DqVxBH8Cbq4CyG4sL6
	Lu6wzMDtq4m/uCT8w8r755DhsLNZVwNqkSSjmk66VPstB9QMltKLfK6lbN0m09hFw888lk2UH8gvY
	D/8xxoj1IMY2lcgBqzHseLk7BPZGjYHB42iq4QiCYyHTFA4Z0KeWBEcv2ZsZi5lY3ix53njz/4oPj
	mdAQj7oJXwj6mRNKxaRxOGLylbvebd2CY2+/QPPRK9FiQuGqz5bU3nTKcLiR2c01IirJZCxkaNmpp
	NqzqWPsGfxjGVed5xPXvFglchR4dH3dN+dl4QM85NgtdMDQQfFE/skxKGhBJOtHuoLzy4xWJag154
	XXJnefFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt9-00000004c1F-26e5;
	Sat, 20 Sep 2025 03:03:51 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt6-00000004bvt-2Pgj
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:49 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso3231312f8f.1
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337427; x=1758942227; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z53cMhAgoqOGgsi3lPDM6JZ0wLhkjcrlORY9N1iCSi4=;
        b=LRm6PezF+Skp/jiG+z/LSBFal2OpHutLNYqZIINFNF1Mg1/1s1Bmwapu4tJhip88Bf
         0+MT05/z0bdpq14UYPsmaGQRCQu2hQyapzL0VB5aN+lkOnjMWhL5TWqZ5rp1u7mPDpJ9
         CB+dUbPKBKmDZCNDz56TbwFFhH2yFxamJiZMV5QeVGT56ysPZSXxYIN9fOGzLe41LSm7
         5+ZvEV0cp0+iMFj2FUbiMfMuLmBJioZza8nsS5/8Jsr8ReCTdDZOQIn+6siHEVSxEglc
         dhVZO6xYTpEkam0u5o128gQLL4g4GK4I/NZe9WHE5dds2vYYbBtoButPc4FcWxVlhRaC
         nC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337427; x=1758942227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z53cMhAgoqOGgsi3lPDM6JZ0wLhkjcrlORY9N1iCSi4=;
        b=ZQr9yNH/cZSET3gGF6c5OaljsXViGsflBhHd8LYsZs5uvZGS44sx+nEsk4JpvK/2lZ
         brWJin1Cr9pwaTmH9d72S/jI/3u+sVvRUYkNMFUyjlLfN0zey7j5oSSYANI6tbxdj2x6
         XLwA43Du6YZSK12cev/Mo4N1tyI2yt7n0QipBgTCDvSxSiGjCUdP67pKke81NTSYpRvw
         hSsl7LfGc/SA6YoBlsC/QafX7RaCRivkIwHtVLzXoLdHjwCBxpUaEcCM6P5NlKoPxTnT
         zCQrhjPnlbo1RouV0UiVe8dZIwh4QEwEgwYW3oQN4s+1zU3zvGerKu0z92SMsSKa70Au
         xIbA==
X-Forwarded-Encrypted: i=1; AJvYcCXbJwS6yVYQq/lFbadgfJjrK0CXMfhBbjO/U36Xntz2SgnTWoOKs7Cl2Yv0up5fukoT/RVTi06Y@lists.infradead.org
X-Gm-Message-State: AOJu0YyxV8fZZkN15JZB7WdgnXonTzmETalg7qpYiL+6blpDVFHPahbG
	qhlOTwJgD1QIZAV33ckt5pxIVHdVXXImBNYP0hzPa7Feaq8q2KYOzdRzx3lFJGAT
X-Gm-Gg: ASbGncsz6Eh1Qmolw/XFN8FNP0dZrotjhi0z31Rt1GXObZIHJo7c+cAS8k84tphAFN1
	1aflx0/SVJ5jV64ZxKmG7GUgnsM6vDGW7JRNFTq79ThVtEyey9FodREMPABpUWNXwd6ULMMxxR6
	7gQQfik4Jzy2vODEIWTXlyaMd91MGAXKaRXgF8WOdDAVL2jWCv43gZBeLsgG9bf6jMfdGLXwV/T
	MSgNNOoj3pOZREXIvZwiHcPyGysiHSYINhvIjY+seQHufQ6YM+s7lGl/YWtczM2Z4B4MgLk0WNu
	YzSQz5+P+m1cWs/PrZ2JHfDvHRxV7j0xgqJJ1X4v9KO9teS1Xch52WDFSbV4e39jZ16b1AyoEz4
	c2xVoG47zRdJWaxOwp3/LzC+6OCUoS538ooZeX3yYEU2GmYM/elJOlUf3KDNiLV0t1oEd/KmKTS
	TzpRt3zVaq
X-Google-Smtp-Source: AGHT+IG83eIm9ni1cJa2S4xhre7qbGHrTLvk1LEXRv/50Q4rvu1Qazx26AvnuhKZc7riXIJXK+CV7g==
X-Received: by 2002:a05:6000:2509:b0:3e7:46bf:f89d with SMTP id ffacd0b85a97d-3ee87ac9a0bmr4934426f8f.44.1758337426592;
        Fri, 19 Sep 2025 20:03:46 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:45 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:21 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-12-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200348_664406_B3787238 
X-CRM114-Status: UNSURE (   9.32  )
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
Subject: [PATCH 12/15] configs: efi: arm64: x86: enable the use of efi
 malloc fallback.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the efi malloc fallback on all efi based systems.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/efi_v8_defconfig | 1 +
 arch/x86/configs/efi_defconfig    | 1 +
 efi/payload/Kconfig               | 5 +++--
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
index 607ab44e473f6ad910c1944f2828b6255e5ade10..3afcdd6ed7f5cc711f2a1f7cbe1a6e84de902817 100644
--- a/arch/arm/configs/efi_v8_defconfig
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -263,4 +263,5 @@ CONFIG_FS_RATP=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_DIGEST_SHA1_ARM64_CE=y
 CONFIG_DIGEST_SHA256_ARM64_CE=y
+CONFIG_MALLOC_EFI=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 1dd823af40ea6c27a6b4409edb4f3bea2bf896f0..884a6de0d41a20e47497ce170404150fbf787382 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -97,3 +97,4 @@ CONFIG_FS_EFIVARFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_MALLOC_EFI=y
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 47238208c527e8a6ab0e7f18a86dfb9a8ab79716..b1e4c373a17776a40f218ebc104fa7e23ec1c57a 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -2,9 +2,10 @@
 
 config EFI_HANDOVER_PROTOCOL
 	bool "EFI Handover protocol"
-	def_bool X86
+	def_bool !EFI_PAYLOAD_BOOTM
 
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
-	depends on !EFI_HANDOVER_PROTOCOL
+	def_bool EFI_PAYLOAD
 	select BOOTM_FITIMAGE
+	select MALLOC_EFI

-- 
2.34.1



