Delivery-date: Thu, 20 Mar 2025 10:15:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBze-001pan-2z
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzd-0007sQ-FZ
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Isv+zIXYBGEL/1IVCD/SvcUDis5JmSA+7sV8JYTd1KQ=; b=jZ9cmy8M9p8aNOyPeM86Z6fydw
	FWAlXNhLQF0Sgvb/KXdcJsiT606XIXVBSopgb4bwJqEg+7D1tJ45rmx9pjgL+HAUXBiED1f4Qdg+n
	jue2U0VBhX+Q0A2W5mpRzeZwPsbOzGyxlEqQa8K8IZa4kp2YcE+TFiZBmBCw5CWUHLKWwptlVcJLa
	pCD2zb98bkYYAKhVPOyvosG4XKXD9bUVJKBHxwM2A2P24YG0Z6OmXL0p4XBYvBdLUgqfrajVaGO1Q
	+HCbX+YAhvRJl0Gdv/tNZOxz4NLGmoU/+FWRpJ/GR4flJkgftVQ/4A1IfM46j5xIvLtYNr0xUZii1
	6XiUaROg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz8-0000000BetS-0wni;
	Thu, 20 Mar 2025 09:14:42 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz5-0000000Beqx-3kGp
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:41 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-307c13298eeso6587241fa.0
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462078; x=1743066878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Isv+zIXYBGEL/1IVCD/SvcUDis5JmSA+7sV8JYTd1KQ=;
        b=HeqE+0/Hg7aRZlImRhnqnP7JaylNMlT1FYIbWkvJcrwblLk+raX40zvnxvfrumZXw2
         Tp7qSSh2qxr8nxzppzg1obdbYMviNVQFsSuqtFIIY1tAi3TAvJYxHPdPDmxqdKrQzTAn
         0uPnpDjAbAR23axDKOm0Vk3zs6HvWpuVVE1Lf/5rsZ0QPFMQLZMrdBj1EeOFQuYZHuGa
         4cx/72ZTpQtTebicqvhkZtaDjtXc9+dIf2sJmD34hmSZeA+e621+80m9QJaBYrotmPNo
         k5V8U4c19KMDF6nIIbDVQdIMcdsDOGZ9xJeUkAmlLZn0/CS8NY8MW1YWACkcshgDIqpN
         oy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462078; x=1743066878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Isv+zIXYBGEL/1IVCD/SvcUDis5JmSA+7sV8JYTd1KQ=;
        b=SqO48+qqzGj/02oO01vs/XUkl30FXb6rcjpyeIpKRYvNy66rRFOBbS5ontga+Pk+7t
         sDkM89Tj8PjfI9r9QYs15i2UOn/6YOlBaKVvOZ3FggIFpEgwnXnNXQRTbsAuYmNlt1Ld
         cydDo4Xk/Q2B2Zs2Feo8ekplqKZnUfvcLlfaCqmjHPhfZIYAZ3kSaGnuzIHlUTUxTirn
         fYgtXHYbp+rCZHNivsVhpsA2OkMM0zX+DUSmJRL6QEQQxNjt4yJBR9xmQSUC/C4CHgtL
         kmn4r1DnAu4vdFmehr2URFHPmEgRzaFKC5w79RPNORBezMn/8EQu/CnZDE8KIn+xd0OW
         Tuaw==
X-Gm-Message-State: AOJu0Yy0wVhBQI284PQ2M99fUaWgSJwhhTkjcVQti8gegoh7CA8dcIlI
	1xzx2OmM7Fks8Fu2KETBkS5oIht/lAO2oIMb5BAxila7+0KnOmaRZagsnQ==
X-Gm-Gg: ASbGnctpDqNR+8BvedUhfcWPOLGj9kw36r5HnWJeXMk9BTJaAME70pQVBMK/Pvfgvle
	vOJPil9KniGJZtlgv3yXirTgOygDLZRo0ZOI3GiX5OcIJTw9BguVkPWas0jY1gCFek8xR95qItQ
	TG95zIsWIdoinw7XE6Ivs9QE/dF0BlZFEUonHF6D7rIGWMudzLxa3iXpoWziaDn6qk75zCi+kw9
	fIFUOm1ZfkyB54YM1P2lha+FGS3LljXLW3HzbcB5CC2KgqNdBU6LQ+5q1GDHQsNdTGhUTtf39ft
	nzS4Ray126QmL+IftJWL5FVpi6AIoHrzwzfCDnkMXcvFWTWza0Xkt7a1nBusl9BgZXw=
X-Google-Smtp-Source: AGHT+IGqrDklkwhNYAXpIf0/g+WA9smi+zHISHcSToubu9NhKZ53NHaWBdu5EgN5mA7PydjVwwfGxg==
X-Received: by 2002:a05:651c:4104:20b0:30d:6a77:c498 with SMTP id 38308e7fff4ca-30d72713560mr7235651fa.4.1742462077273;
        Thu, 20 Mar 2025 02:14:37 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:36 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:18 +0300
Message-Id: <20250320091419.42095-6-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021439_935027_A5C766E9 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] ARM: at91: xload: Rename the sama5d2 output image names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's make the sama5d2_start_image() function dependent on the
bootsource rather than MMC-specific, so let's rename the calls
and output image names to reflect that.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/sama5d27-giantboard/lowlevel.c |  4 ++--
 arch/arm/boards/sama5d27-som1/lowlevel.c       |  4 ++--
 arch/arm/mach-at91/xload.c                     | 15 ++++++++++++++-
 images/Makefile.at91                           | 16 ++++++++--------
 include/mach/at91/xload.h                      |  2 +-
 5 files changed, 27 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 49540bede0..20042e649d 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -15,7 +15,7 @@
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload, r4)
 {
 	void __iomem *dbgu_base;
 
@@ -31,7 +31,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 
 	sama5d2_udelay_init(MASTER_CLOCK);
 	sama5d2_d1g_ddrconf();
-	sama5d2_sdhci_start_image(r4);
+	sama5d2_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 67300587fe..633e15898e 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -39,7 +39,7 @@ static void ek_turn_led(unsigned color)
 	}
 }
 
-SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload, r4)
 {
 	void __iomem *dbgu_base;
 	sama5d2_lowlevel_init();
@@ -55,7 +55,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 	ek_turn_led(RGB_LED_RED | RGB_LED_GREEN); /* Yellow */
 	sama5d2_udelay_init(MASTER_CLOCK);
 	sama5d2_d1g_ddrconf();
-	sama5d2_sdhci_start_image(r4);
+	sama5d2_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 7a990f35c8..d3bc6f2dc9 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -61,7 +61,7 @@ static const struct xload_instance sama5d2_mci_instances[] = {
  * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
  * @r4: value of r4 passed by BootROM
  */
-void __noreturn sama5d2_sdhci_start_image(u32 r4)
+static void __noreturn sama5d2_sdhci_start_image(u32 r4)
 {
 	void *buf = (void *)SAMA5_DDRCS;
 	const struct xload_instance *instance;
@@ -96,6 +96,19 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	panic("FAT chainloading failed\n");
 }
 
+void __noreturn sama5d2_start_image(u32 r4)
+{
+	switch (sama5_bootsource(r4)) {
+	case BOOTSOURCE_MMC:
+		sama5d2_sdhci_start_image(r4);
+		break;
+	default:
+		break;
+	}
+
+	panic("Unsupported boot configuration!\n");
+}
+
 static const struct xload_instance sama5d3_mci_instances[] = {
 	[0] = {
 		.base = IOMEM(SAMA5D3_BASE_HSMCI0),
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 81e7c22e8b..54f75624ed 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -42,19 +42,19 @@ pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
 
-pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek_xload_mmc
-MAX_PBL_IMAGE_SIZE_start_sama5d27_som1_ek_xload_mmc = 0x10000
-FILE_barebox-sama5d27-som1-ek-xload-mmc.img = start_sama5d27_som1_ek_xload_mmc.pblb
-image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload-mmc.img
+pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek_xload
+MAX_PBL_IMAGE_SIZE_start_sama5d27_som1_ek_xload = 0x10000
+FILE_barebox-sama5d27-som1-ek-xload.img = start_sama5d27_som1_ek_xload.pblb
+image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload.img
 
 pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard
 FILE_barebox-groboards-sama5d27-giantboard.img = start_sama5d27_giantboard.pblb
 image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard.img
 
-pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard_xload_mmc
-FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantboard_xload_mmc.pblb
-MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
-image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
+pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard_xload
+FILE_barebox-groboards-sama5d27-giantboard-xload.img = start_sama5d27_giantboard_xload.pblb
+MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload = 0x10000
+image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload.img
 
 pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
 FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
index 2886490246..d5fc7596fd 100644
--- a/include/mach/at91/xload.h
+++ b/include/mach/at91/xload.h
@@ -6,7 +6,7 @@
 #include <linux/compiler.h>
 #include <pbl/bio.h>
 
-void __noreturn sama5d2_sdhci_start_image(u32 r4);
+void __noreturn sama5d2_start_image(u32 r4);
 void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 					  unsigned int slot);
 
-- 
2.39.1



