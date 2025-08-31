Delivery-date: Sun, 31 Aug 2025 05:56:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBF-006Q3b-2M
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 05:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBE-0007Uj-9i
	for lore@pengutronix.de; Sun, 31 Aug 2025 05:56:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JnMjIBCPHrmXv7NyIw0jsQ2GgeXvlmDk6x8aOsYDjG0=; b=5FCSZdaFBKPZ4uaPhehToIUBR+
	mekD9hUFONHtltWV3sTy21COaM6heLu9kSuvH/LR7XTn262bokRaN9ByBSJD1fvlWYqQC9ClATLaq
	32ZJw0u3dIcSWGKwILgvWPNDS8lCSMvHvI9Euly6gWXb/tF8tFwLZK/cKhXkUa5IAj42rkOMqF6fG
	n9kIj38o5jmpL30f8CKAspSO3p1Fc24YneHjpaNSg+2Ev6y1t8ZUTwae54NdevcBfZ2sIR2ADYn1n
	ryfBXxPy0M8zXYiX/1M+1ec89HUGf8bxzALyWUwwp3HiNv8HpReHuMAH096ZHz9QdHxrRM+KLqGAP
	NvXIUktw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAa-000000092HU-2P2I;
	Sun, 31 Aug 2025 03:55:56 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAV-000000092Dq-3ctk
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 03:55:52 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7e86faa158fso348107085a.1
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 20:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756612551; x=1757217351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnMjIBCPHrmXv7NyIw0jsQ2GgeXvlmDk6x8aOsYDjG0=;
        b=Yypm9j2NDCofFbLiZQ2dBgakXCorI8nCKkoKO75TrsoPG7Ls4nywI+ba6+IKJEfGt2
         y13QPVRwyjLvSfCpz6f+lVJ5d++cihH1sHpFCGmXz/HUWvoYO+G+6DankkV25dQXIdlG
         1l+bF0smLNo4s72baemzxLhreoObzG5cVBiEWI3SbiV4ASVQ31B7o3kqjf4Gp7wh9ax6
         GfE80gaTUW9qnTogTk1DC6zPwhayrmt4jeMQtdlYk6kqvg8zmX+WyDICwJfKHRrSFZR2
         2JUIYJAFkTYNfJJ07BiJP1khhjr9WyQ58g76qtos1QjtVFRI6ndbcZ7zTg42wiF0XoKz
         rtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756612551; x=1757217351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JnMjIBCPHrmXv7NyIw0jsQ2GgeXvlmDk6x8aOsYDjG0=;
        b=d8arS7AmlbiAU9Kr4rJV/XzqQaOlRSf91MW2M05b53tNUp0iQyDiV9DYlOArPnsdsZ
         l3G5PeHW+MsNmhiq5PhF/RWDatqWoN3MdKCIYwZIYVofEc8Tq+3Wh7BmUnL5HuiKiwSd
         RqxyGf4QZSRMbK7R1v2PM4x+E0Bat/NtKivTigWUT74aLlk2lqCWBtCOzCVdsuHvhz0u
         4AhhF7/4xxjEQBYn3TREgBiy0oW3wBueRYJWXb4domZO7dev4Xw74gFrndMEve+sOaeS
         LNuOL1QaQk1elftrS+LpL6QPSjfXPxA+iSvalF1GMm0r4gQt5Fjgx/ZktVInW2nlUE28
         mf2Q==
X-Gm-Message-State: AOJu0Yz6T/S3zXk50UsCSlEYkHUdV7ZWvy2k4OtnWBKsJFKqydH2PppI
	66c3dztCHPtfuaLqcqjBZixcof7wY48BsB7ZkqFJR2FunKQzPinf3294
X-Gm-Gg: ASbGncuRwgfUQsxLbka/8BEQhqgW7f1Y6okmc5NYlSsLyMHwHZb2NMnmrgPruRMGcmn
	W1Gxusf7KVJS1orWYPJppfeNjVOY1IeCrJzPtdSbuZtHgBW3BmmfkUKZo0YqTZhtPZi0xfgcUEn
	JNGdRb4ABwsZvXzeKuzeJlO7XiyJeILrLCxejX1Et8mVrcbl8QmITeEZwJLCgwtqvF6+bOdSGbC
	dLqGrn+yFgMs1p5qQg1fG6oqczplzby/YOoMBOTtyy8FEc2BHBxQ+3dbtClWn9pi9n45BbFpGmm
	qug0lqBtM7OLtgC1wUjAPHow/uPxBqN6vufXFwpxMc0Z0gcLDztdy8ARuk47ASFHjCBM5qu+UTL
	ldOTufg+VAYERRph9ST3KQYYuh1lEoKKpQSj0O+tg9B0LP0GIRbFddAZR7XfsZuJ3CfRMUzEFzh
	iiN3jVW1BEqAACjb4pW1tmzRdtBF/ZwvZnahBN
X-Google-Smtp-Source: AGHT+IFkSi6ynHdtQ1oCR1xzYtHoYAkysk00Uso9x/bb+WbCYwswRh047zgzltk4M88XdKLuxgFo0g==
X-Received: by 2002:a05:620a:4103:b0:7d5:e374:e2bb with SMTP id af79cd13be357-7fed6028185mr423280085a.27.1756612550886;
        Sat, 30 Aug 2025 20:55:50 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:10aa:d623:fe15:9cbf])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc0f097401sm433366985a.30.2025.08.30.20.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 20:55:50 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 23:55:39 -0400
Message-Id: <20250831035542.1623695-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250831035542.1623695-1-chalianis1@gmail.com>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_205551_902494_705483AC 
X-CRM114-Status: GOOD (  10.20  )
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
Subject: [PATCH 4/7] arm: efi: add a generic efi machine.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

add a generic arm64 machine that can select the CPU_V8 and the
required efi payload minimal configs. this machine permits to have
a clean arm64 efi payload, idealy we don't need the other machine
that comes from multi arch since they execute code that is specific
for the correspondig hardware. with this generic efi machine the
barebox log shell is more clean. to get a pure clean efi payload
you need to unselect all the other arch machines and keep only the
EFI ARM64.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/Kconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cce71b50eb04..0a098440ddde 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -254,6 +254,18 @@ config ARCH_ZYNQMP
 	select GPIOLIB
 	select HAS_MACB
 
+config EFI_ARM64
+	bool "EFI on ARM64"
+	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select HAVE_EFI_PAYLOAD
+	select EFI_PAYLOAD
+	select BOOTM_FITIMAGE
+    select CLOCKSOURCE_EFI
+    select DRIVER_VIDEO_EFI_GOP
+	depends on 64BIT
+	default y if ARCH_MULTIARCH
+
 source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
-- 
2.34.1



