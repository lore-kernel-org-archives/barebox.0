Delivery-date: Tue, 18 Mar 2025 08:44:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcm-000x0Y-2y
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 08:44:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcl-0007OQ-PX
	for lore@pengutronix.de; Tue, 18 Mar 2025 08:44:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=85pV1LuB1xXwTZiTW+8O9LQpE9Hfppd60Cj7dzGFk+4=; b=3ol6nRDhUIlnPpdQ9NndPG27UH
	RiH/nCsmLyxVrtAOtT49Pyo450yqd5w7NMgApirNy4h3hIiQqPv28D+3G7KSzxZPAC+xH/2tG3SKX
	cut5k2YnRe8sLNVtaHtNHqkRW1Wvo4lzPsGko3SnzKR5tVbJsfEldamg9NfR6gx8OdjJgwdQxkjq6
	XDrwfC+QKEgurqutFR9jgBB/8anczAhXNbCNN37P4LoG4bomhOHV8cRWFW0/0HOxY0czo5g5jJsQt
	RmgPDhv4qrMaHqY+EfTF2e6kmMYJjin42iH/J8L5NVlUlw5VbwBy2yTHvn5UZJjvMyq30TsuLUi5d
	IZpXivwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc8-00000004yy7-0U9s;
	Tue, 18 Mar 2025 07:43:52 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc5-00000004ywV-14wj
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 07:43:50 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5498c742661so5828733e87.1
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 00:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742283827; x=1742888627; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85pV1LuB1xXwTZiTW+8O9LQpE9Hfppd60Cj7dzGFk+4=;
        b=KrFB5csijobCnnLrqbP1Dioci3AaMvZ3rXcsTmfGx9q+r3bPeriLCdxmipAaewcY91
         xMUDYN+1nlDhEVVfUuPNrrw8AYEuTSRmoFO7TtHeYvJNJ5Blx8tfqH1oUVJ74xECJge7
         L4ZyWa3V5gxxPiCCTcsF+0nC1rA7bTozuVGyBOJBtmZmACm2nFbs7ERyvNHu4CWS3LL9
         MXPPor0bxZ7i/26bO692dKGXWw002s13Fd4TxsdFgdmDt31j9bzt7eyF9ULxma9S0ZGr
         w5zo8QhLMXHhxdBhqdkW/q+ERkATC8f60XQZozT8m7zjf+3xhhZoUQRcaLS+FQacwx65
         nDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283827; x=1742888627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=85pV1LuB1xXwTZiTW+8O9LQpE9Hfppd60Cj7dzGFk+4=;
        b=Qxo6uH1xwVAE28kkBu8MH7zGYO5Zrc5UPMrIA98eQqIfyHMTB9z0eKOJTPn2iOvleG
         9a8etPDVZsgiy4cHjsTiolIgjyXU7RVqvqCGkoNPVOd2iSa48zYH4PBlAx2/pOziOvJQ
         qXVDZTARv5SXaT2jEjcXhCTTgaLKxD0CTHD+27TMNgryuWGdqDJPG4YQFnm4NBzkhC39
         HlhmSh+TmRNCC8Z5DKEX6hs+jkiV/1aXdfYf4xPUEoRsFiM00YQozL/ZgQxHW17Fr8Qt
         lLUNRYhrxciTOsU5NcTOSrX6Qg1giL8reML/ovVKlPeNnoPuPiH9IT8JJAMjLBOjrhGS
         p4fA==
X-Gm-Message-State: AOJu0Yyg5honvhJUhIxiRomhRC0xwk26byRs00C88eoSNdZJBc1LpSh3
	n76iJKz2ssk4EpxNfTjLN3rv0dwefRx0mn1E9EIMOjoVuoxOQHR/0MtjUQ==
X-Gm-Gg: ASbGncsk3kmtao4fs3Jr3hDxqMsFWejxQFvsrDG+ms0l0FGYTNRYVr6RhQdBKZSFEV5
	ORA5JcEiKXlPPwytZJN/oWjnVT79lroD2eUU+dW1vjA8dyAOVI0zCMM3TRWYbHEzB9IBem99j7Y
	QWfaqrri20nDv5hGueRpvlr1GVq+YDXIaKlGOr38mcaCsoJEoXxdcZENCvtf6/sUdji1pFb4G6n
	vhNnwHm3cT93O8Rq76t71vHbG4f4hcOzi+nXpTzRhpDSXdItzDWJBAs2BxmrBMspBSqFCTSy9kX
	Knj4n0R1RK+p8TDyDWjCgDJPt2PwVkUNE9GFlwPsiANzaUC/Jf7GQGnr/7ezMySy6Qco
X-Google-Smtp-Source: AGHT+IFPZEE9ry9y83nOiuOde4OhSWo+TSmXCtOpAqaTDETQ+7QehtGchhiL8gcubCYacvF5xr6PLw==
X-Received: by 2002:ac2:4f11:0:b0:54a:c517:9456 with SMTP id 2adb3069b0e04-54ac5179741mr410260e87.45.1742283826670;
        Tue, 18 Mar 2025 00:43:46 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1571286e87.238.2025.03.18.00.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:43:44 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 10:43:25 +0300
Message-Id: <20250318074327.37730-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250318074327.37730-1-eagle.alexander923@gmail.com>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_004349_295014_71A9ECDE 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [PATCH 3/5] ARM: at91: Rename xload-mmc.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will rename xload-mmc.c to the simpler name xload.c indicating
support for booting from more than just MMC for the first stage of
the bootloader.
Also rename the hidden helper configuration option for this.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Kconfig                  | 2 +-
 arch/arm/mach-at91/Makefile                 | 3 +--
 arch/arm/mach-at91/{xload-mmc.c => xload.c} | 0
 3 files changed, 2 insertions(+), 3 deletions(-)
 rename arch/arm/mach-at91/{xload-mmc.c => xload.c} (100%)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2f70e4aac3..bb04c1267e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -52,7 +52,7 @@ config HAVE_AT91_SDRAMC
 config HAVE_AT91_DDRAMC
 	bool
 
-config AT91_MCI_PBL
+config AT91_PBL
 	def_bool MCI_ATMEL_PBL || MCI_ATMEL_SDHCI_PBL
 
 # Select if board uses the common at91sam926x_board_init
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 556e46f181..1c87cab5bb 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -14,8 +14,7 @@ obj-$(CONFIG_BOOTM) += bootm-barebox.o
 obj-y += at91sam9_reset.o
 obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
 obj-pbl-$(CONFIG_HAVE_AT91_SDRAMC) += sdramc.o
-pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
-pbl-$(CONFIG_AT91_MCI_PBL) +=  at91sam9_xload_mmc.o
+pbl-$(CONFIG_AT91_PBL) += at91sam9_xload_mmc.o xload.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload.c
similarity index 100%
rename from arch/arm/mach-at91/xload-mmc.c
rename to arch/arm/mach-at91/xload.c
-- 
2.39.1



