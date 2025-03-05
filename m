Delivery-date: Wed, 05 Mar 2025 07:22:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi8w-00A4sj-0J
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 07:22:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpi8u-0000OH-Pg
	for lore@pengutronix.de; Wed, 05 Mar 2025 07:22:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y5n4dgo4zX9jQh0tjeKyDW/n+308lMK5ez4c87E4ebI=; b=ILuk9OWByPlYSBj5lpG0Yp5e28
	7x32zbwvwZV90HUUkJrhZhZW7iECkoG5JAa3Z+WOcUIGIHRfZH7q+IbpivGLVMxS7vakrOCRrALFt
	PlImEWOzkfLLDI5WDO5K6CpMXJoVGPaSfjfy1IQ7lskQfpbjF6RRcQenYNUlx28LQi7Gb1UDcOZAn
	u2evj4lhSpTxQqcdU75bglTS+J7RQxswWJAZbJ3OHhqdvhn14ryPDJZ0SFur6VQJjpceW8k20SzJ4
	IlQ7a5ialpqc2Y1QxQzCuWW1XpObwOd5M6ehW3CBfxSMWDZvHf3hZeQeVfBqrk+GR/oRzIV9NXfFN
	zoYHWRTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8H-000000076p9-0X0X;
	Wed, 05 Mar 2025 06:21:29 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi88-000000076nn-3UXx
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 06:21:22 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-549681574e0so3232163e87.2
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 22:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741155678; x=1741760478; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5n4dgo4zX9jQh0tjeKyDW/n+308lMK5ez4c87E4ebI=;
        b=JIsihEtWrQwCE5wZyJ4fuiiFQfcTI2pYzQm1YoOGmFQiowMeJBk30K/NjuCWvVX29y
         SeyoPmfCzFX9BXzAQV7HAzQdkQSuSbfadIZF51a8FnFTVW5LiNSX268XXWAlSPIm1VK/
         nwomVpNr/6FP451gCLpd1JSLJEuLaGeEbdFsMTOAkm/fgwMw78sTQIB1ItNHLqTPxck4
         4SGRMNby1WtsX3Tvfs5327B9a+ApUdjlXT+uYhjugPbWgq3uqIsKVvAHoqfer4Ns0hkx
         fyYxIbZg4Mhfn2Bbwj/zz0GoNeuaWuta+DkxI+fEbqo8FOBgT+7x9BWM40np8FTWLDd/
         zBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741155678; x=1741760478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y5n4dgo4zX9jQh0tjeKyDW/n+308lMK5ez4c87E4ebI=;
        b=MnrPOMdObNblxK6w4a+KhlijQBd0OzrA7N/9sLUmheOxfoJ/p2JGiW4VY/pPGWazaH
         JwcBqfAgya04DThWEWsoy91cyYkrx3aqK0uFDXcZzPZR2BRbmy+ibkAMfa11SHtX6g3E
         oxCvqX60bDnuGsrpaLpJDVifri/jb0sDyb+BANs/V7BOPUxYPMAG9TySX8qLt9zFrmwH
         oLcaLIaBbu9IuWZM9CDe0IieXYbKmPEhzCINp8qsbJ+D+rLpbipK3nlwhD3V49N7zYH7
         4U6Wz5tb7FsP1tApk+ufZ7aoh6Is79KcrDL5nFbaZz/HdLR9CEQa4xYK13tOziaZf2Hn
         GGvQ==
X-Gm-Message-State: AOJu0YwU9BmJM48dTDRt2d+UqZsA/0zSGwpsRN4OfVXaqoH8cBppD5BW
	EBK4jt4RvZ79w7HbPE18+r95sm/+PxiJftk7hNO6EWX5rtkD9bGltCzpod7osUI=
X-Gm-Gg: ASbGncsjkmP4oUpQ7Sg0iDN0ec9iYT3Mk1T1pPzbhjh84+MxXIo/UrI1I0maBboEKzi
	sC8sKfNPfnFWoDMT0lyzLNBos16F+k004h3RTr73CMtA5vdMgi0wL3Ayo+wiHJOqcL3WJ8KZh0J
	57SXNPMtJWxxfjOAOV12zH/VgDDI+ARr8mKkLQ1nDlH6ZnHucF8NjL6Yg3qXJppezfx/vdH8Sxu
	Fbtx2t+ZpQjHSKz64LYVQ3KuLsO5ZOxE9SXNGzP1yDkAqkBgpTJBiVe2Iog30gvD18mCsObmtah
	hPai2k4N7hMAfUtqUelV9fS4rXSUmi8ydfzDSDU1Md24p6rrPWN66Og/entbJu3tooQ=
X-Google-Smtp-Source: AGHT+IEJnC/IDrKprVDXdJvicqsdhZyCVlaPeElgJ5yM08H53t2HiApas/tkniW5pYYh+7ANmSkFbQ==
X-Received: by 2002:a05:6512:3ca8:b0:549:5769:6afd with SMTP id 2adb3069b0e04-5497d32f67emr659932e87.5.1741155678232;
        Tue, 04 Mar 2025 22:21:18 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54973942f2esm526279e87.58.2025.03.04.22.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 22:21:16 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Mar 2025 09:20:59 +0300
Message-Id: <20250305062101.25588-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250305062101.25588-1-eagle.alexander923@gmail.com>
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_222120_870252_A17EA14A 
X-CRM114-Status: GOOD (  12.75  )
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
Subject: [PATCH 2/4] at91: Use the ddramc driver for all boards whose architecture uses it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reuse ddramc driver for all SAMA5D2/3/4 boards.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/sama5d4_xplained/lowlevel.c |  4 ++--
 arch/arm/mach-at91/ddramc.c                 |  4 ++--
 arch/arm/mach-at91/sama5d3_devices.c        |  7 +++----
 arch/arm/mach-at91/sama5d4_devices.c        |  7 +++----
 include/mach/at91/at91_ddrsdrc.h            | 11 -----------
 5 files changed, 10 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 183bd9c5a9..5763333f39 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/ddramc.h>
 #include <mach/at91/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
@@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
+	sama5d4_barebox_entry(0, NULL);
 }
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 4d0637b487..ca77889ecc 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -30,14 +30,14 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
 {
 	__sama5d3_stashed_bootrom_r4 = r4;
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(),
+	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D3_BASE_MPDDRC)),
 			  boarddata);
 }
 void __noreturn sama5d4_barebox_entry(unsigned int r4, void *boarddata)
 {
 	__sama5d4_stashed_bootrom_r4 = r4;
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(),
+	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D4_BASE_MPDDRC)),
 			  boarddata);
 }
 
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index f6d5617e5f..4871c2bd69 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -21,10 +21,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	if (!size)
-		size = at91sama5d3_get_ddram_size();
-
-	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
+	add_generic_device("sama5-ddramc", DEVICE_ID_SINGLE, NULL,
+			   SAMA5D3_BASE_MPDDRC, SZ_512,
+			   IORESOURCE_MEM, NULL);
 	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
 			SAMA5D3_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 }
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index e438bd0d10..4a81e7cd40 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -21,10 +21,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	if (!size)
-		size = at91sama5d4_get_ddram_size();
-
-	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
+	add_generic_device("sama5-ddramc", DEVICE_ID_SINGLE, NULL,
+			   SAMA5D4_BASE_MPDDRC, SZ_512,
+			   IORESOURCE_MEM, NULL);
 	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
 		       SAMA5D4_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 }
diff --git a/include/mach/at91/at91_ddrsdrc.h b/include/mach/at91/at91_ddrsdrc.h
index b9b0eb20b3..d511e157b2 100644
--- a/include/mach/at91/at91_ddrsdrc.h
+++ b/include/mach/at91/at91_ddrsdrc.h
@@ -357,17 +357,6 @@ static inline u32 at91sam9n12_get_ddram_size(void)
 	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
 }
 
-static inline u32 at91sama5d3_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true);
-}
-
-static inline u32 at91sama5d4_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
-}
-
-
 #endif /* __ASSEMBLY__ */
 
 #endif	/* #ifndef __AT91_DDRSDRC_H__ */
-- 
2.39.1



