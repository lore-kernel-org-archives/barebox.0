Delivery-date: Thu, 27 Mar 2025 06:39:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txfxK-004k1p-0v
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 06:39:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txfxJ-0003nu-Ly
	for lore@pengutronix.de; Thu, 27 Mar 2025 06:39:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=72JYa5bUnuwAbW/rcXElmJq9HwiQS3ee+WAyaTTq2DM=; b=doUyi5MX0M8jDxbwBNc4g6emT/
	dDTTEnGAl0wKJDkiP/SbtPoSKwFoFnS+UyLVn/pi9ae7JE1Md7Axi6FR4BdcNf8lcE8JiP1mXrATB
	uhNpkZngFobJvWcGSFlUihqfYmbPbu0odQ+S4MOWQ+Rut3h5/N2QGTeqS/bDVK/UP3I+DJsfz1ed7
	lphtw52Qd8da49I8k+Azu2uLYtyvsUtSMaSZ8Vb2nQzb5lk7A2qzfuh23G5Sw+JLTllzHjv3jB53O
	DoMuhSl8ma+b7q60Qau16u734jY4alNhwB/YXM51jxxj+UPvohAeZx3XkN/b5lMiqdWQ5lgZVVAte
	gntTmmaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txfwb-0000000AEAv-05AE;
	Thu, 27 Mar 2025 05:38:21 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txfwX-0000000AEAM-3Dgo
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 05:38:18 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-548430564d9so708014e87.2
        for <barebox@lists.infradead.org>; Wed, 26 Mar 2025 22:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743053895; x=1743658695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=72JYa5bUnuwAbW/rcXElmJq9HwiQS3ee+WAyaTTq2DM=;
        b=G45dH+ZN4DxPNMs0IFyV6K8D29ULKN3WtUiU/eOPheKNkFx7pW9ZwhlqMtTc+1ZVZ9
         RD4EZ0Dt5DBeFgTfHQMmjtT/zfcKnxw9g2LmJ2FnajMxey7z5ki1oMaiJFtWUIQhrikm
         hBqAGSM/NkkpUCoF1xrCOdca68xKr9uuJEIH6jhNnRrPgp40izwh1JGMKyMTCDrL7FwC
         mVxt/xYg+f8xbYMg2Gpp1XUylY+a5apHzqe3wpDY0PJTKWftTGrkrhvj04qopXX57eNp
         dM3MPjxxWAFY52KPUJlls95kuDVLLNV0Gi7aCPgkcMjBlsHYJmljUmW6bdM1LkQ4iyq7
         HpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743053895; x=1743658695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72JYa5bUnuwAbW/rcXElmJq9HwiQS3ee+WAyaTTq2DM=;
        b=FaVGCY0Qwvj+OEi2pK8UW4OKfzehoz57mgjTOBUM6k23mx6W2X/jaTn0IlbRm+BYJD
         umo8j6YjUD0jz/ivxBOLAwBP767ZD6Ob/Cb9RYr0ekSUusJfU8pj9VKkeuLk88/v/DId
         dUro1CJNbZJIeksnb8160i3bFnOD3th7YObUE6TKldEAQQZzLyrqJQZmt6D9evGFLIII
         kRE6uO/J1U2YYZPiYFcpoi+a19s0QIv+fdKYzGB9og//BUQt93FFGbhKzrvPmq6VIlIs
         OFZbOFKAaDClIBAxqtk2V2N6WhX4llEqWfiQPJ9HLBGMAuufbOEoeRXAPTAu9rvmK2t7
         EI8Q==
X-Gm-Message-State: AOJu0YwMB9cXl5G0/yj1G0tZ99KDUnT+zN7/myvESfr9E8RwWMu5edeQ
	3vP4zlOlQSLR2gj/TJP5iBIc+ksjH6hvYGAF+KtmXPIKqzDuyEFsofQRdw==
X-Gm-Gg: ASbGncs7MMjPRdA4VjWv1MHqqO0grFu1h7XJ8CyoBRdKuxt5fG8Jp1Gzzj04NLsjL1L
	njLdSrvwZ6/MQRow0mXhkgMvJ//QDZLxZ2fiI7t0mCVDOzlJySaEH9JbmmG/aMqBQY8m23k+vJB
	FmYKFZGbjmrtuCauUFjFYam1mYZYYP1lQPCLcfb51KI70aSL7Qz9XqMtiszMORpEZghLgBbN5Y4
	WgnNwmmfIyIYACvSgicWAjVrfu06AGSdj/buFWODl5wtG3zy2dhXuas0KkVMTuaE+96OxqWwyzf
	qMFB+EiGLMRdsnTzRRKQhahTfq6jpPNwMhf8ox1wHlElTnkkROq0F5u6rR+pfniqBAY=
X-Google-Smtp-Source: AGHT+IEKoKfc+DxWapGAy8SfPpkX8YUp1lvUzAedScnyCGmOSJzWUrdwhCGSfk8PY1cp4kxA1uYF3w==
X-Received: by 2002:a05:6512:694:b0:549:7c13:e88a with SMTP id 2adb3069b0e04-54b011d7e21mr850313e87.17.1743053894557;
        Wed, 26 Mar 2025 22:38:14 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64806a1sm1958904e87.100.2025.03.26.22.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 22:38:12 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 27 Mar 2025 08:38:00 +0300
Message-Id: <20250327053801.52356-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_223817_807094_E3B0A007 
X-CRM114-Status: GOOD (  14.20  )
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
Subject: [PATCH] mci: atmel_mci: Merge at91_mci_bio_set_highcapacity() with at91_mci_bio_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The high-capacity parameter is always set to one of the possible values
at initialization, so there is no need to have a separate function to
configure it.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/at91sam9_xload_mmc.c |  5 +----
 arch/arm/mach-at91/xload.c              |  2 +-
 drivers/mci/atmel_mci_pbl.c             | 10 +++-------
 include/mach/at91/xload.h               |  4 ++--
 4 files changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
index 26f268ae91..e8cd72bd56 100644
--- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
+++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
@@ -94,15 +94,12 @@ void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
 		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI1);
 	}
 
-	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b);
+	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b, false);
 	if (ret) {
 		pr_err("atmci_start_image: bio init faild: %d\n", ret);
 		goto out_panic;
 	}
 
-	/* at91sam9x do not support high capacity */
-	at91_mci_bio_set_highcapacity(false);
-
 	ret = pbl_fat_load(&bio, "barebox.bin", buf, SZ_16M);
 	if (ret < 0) {
 		pr_err("pbl_fat_load: error %d\n", ret);
diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 5d8105f07f..effe8802ee 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -228,7 +228,7 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 
 	sama5d3_pmc_enable_periph_clock(instance->id);
 
-	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
+	ret = at91_mci_bio_init(&bio, instance->base, clock, slot, true);
 	if (ret)
 		goto out_panic;
 
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index bd4faa4de5..c94a4240db 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -83,7 +83,8 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
 }
 
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
-		      unsigned int clock, unsigned int slot)
+		      unsigned int clock, unsigned int slot,
+		      bool highcapacity_card)
 {
 	struct atmel_mci_priv *priv = &atmci_sdcard;
 	struct atmel_mci *host = &priv->host;
@@ -111,12 +112,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 
 	atmci_common_set_ios(host, &ios);
 
-	priv->highcapacity_card = 1;
+	priv->highcapacity_card = highcapacity_card;
 
 	return 0;
 }
-
-void at91_mci_bio_set_highcapacity(bool highcapacity_card)
-{
-	atmci_sdcard.highcapacity_card = highcapacity_card;
-}
diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
index d5fc7596fd..329ccc98eb 100644
--- a/include/mach/at91/xload.h
+++ b/include/mach/at91/xload.h
@@ -12,8 +12,8 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
-		      unsigned int clock, unsigned int slot);
-void at91_mci_bio_set_highcapacity(bool highcapacity_card);
+		      unsigned int clock, unsigned int slot,
+		      bool highcapacity_card);
 
 void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
 					  bool slot_b);
-- 
2.39.1



