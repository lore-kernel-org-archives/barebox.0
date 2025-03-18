Delivery-date: Tue, 18 Mar 2025 08:44:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcl-000wze-2i
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 08:44:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRck-0007NE-HE
	for lore@pengutronix.de; Tue, 18 Mar 2025 08:44:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YrYyY3ZI8nev2s8JogqjAq2Pv1I66wel30VV0uPxyPE=; b=YRvrQy43TBvkue+qQu3TSWsHmN
	z3BkNQK1IoSCDAj/IaqqpGMcvRjRJRF0Su2cgWUd9xInsd9e7n0USocHtFdgEDY+4VvjN1C6U5s5l
	JiGH07fKGRIq5NWLeSl8PHkqKL93KCeVZc/mXr9fpMoUm3QfcZA2f9VwGQDlCfMtHE00J58YOH/n5
	+U5G1aYmpG1/KXn6fWlaP5nMpq64RUUI9qHBJkaO0UNOnmIbdOPbpUK5bspEaKJO2lZDSkd/16WA7
	qVcDNPewiecLlGgV3oVEnLRstLdH19RPJ6Jf9Z60y2rPugJCht/U5vzHE9YCz3adf6Qm2oo1BGRdK
	2G8YRb2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRcC-00000004z11-2ugM;
	Tue, 18 Mar 2025 07:43:56 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc8-00000004yxj-1XKK
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 07:43:53 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-549644ae382so6021488e87.1
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 00:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742283830; x=1742888630; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrYyY3ZI8nev2s8JogqjAq2Pv1I66wel30VV0uPxyPE=;
        b=dJRbzdNspPKbIzEHKr7ZAVSS4wkDQS2esS6hTwUTik9EOPT+HVXyMJ5t1gKM9MtGw9
         pgnyePmHFndIINYNfmM6rlKEzZb3VJw1ncTzyl5J0hajXDE6Hxy/5kG84NsxRGOXvd3X
         7I5KuDpsbqE/NDHnZoWOdFEK3K56fpZU7A2/TcVs7lkabsQzFRmKfx33eSX7Jk9CfOCH
         hNo212ZJHWiX5hrX/ZC/gn2TLo3YmmLt86c7fhFDZ6rBZjLvde4hrstGrmCsLs2mQTTp
         YUT/sWJ0Otb2WFjgeGmI+v855fHOaq1rOWAJ3oqnGoWO/LP74CP7GVNJV/7RBbRDSVQO
         NG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283830; x=1742888630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrYyY3ZI8nev2s8JogqjAq2Pv1I66wel30VV0uPxyPE=;
        b=FyxuwxfsrGIdM7zjRKo1ZpJ1WRe5XLPn091Czcg6U577kS0o6gZ8A2Kw8jRgdMbRlB
         XOpIVy98N6fPK6npaWfRsY1pzdLgcdO581P66FzS5p1QfpNn24onsD8bSghNkBimPzKq
         KUgCszVW2l/3BI6gXHEwxTrXZx+JluheBssJkI2tRM4j/yOYJhhPd9Wq8IoJQD+guU9j
         GJ0p5odigMscyKbp4gUBF+rRNY2Xn9tze6STiM+u7SKNlKwCCt9nwUX1xbDmhlJj0HC/
         0Z395AANFA61v8JFTi4X0nBkEjz/Uf2ks2hIJ1B4L73HTNces4CsIXyTnU+ZiAVm2xQ/
         sziA==
X-Gm-Message-State: AOJu0YzANkIGaGEW7vS07EXUQxApVMJ0HQnoQwR8seOYY0MyagHNw6Ch
	bfSesqTm7zGixkiWTPV1ATkInxE9DGkEhVIEFdYo3nFA0TTa3R0cU5yk6Q==
X-Gm-Gg: ASbGnctdbuUWoha+kEbHq5iE70LfDVVrG+tJuo2sm5QLao6V3DdrGTfBSHQ0t/J/LGe
	A9vN6KRFA6KrYhLCekG9yxT4J92SAbcb21jfoSPvxwrleW9lQOKchpD/LqyZdgzfir36oRjkwdV
	tF3/aLquPKg+OLx0fp1VputA8MyyHlu4BM5xGCS1iTkpWrncUvxN7E9oJheB4f5EiBTsnHMTLtR
	Y0DTf6SyImhl4yOlsXLWjR/NmrJ4Pvth5bwVe+tAiTD9BVe5n3PwAMysE2JmJLaV22UKixtjiZ0
	hbr3Qc1YhPXDgeIKwWL2qcGTvOD9vJq0nKMwjl47+hL0EN5AAL8hRSV0M/vmxvqrebBy
X-Google-Smtp-Source: AGHT+IEH+ZH2hTvl3XYT33rH9MvRBDNQEEeZ1wiFKouz0aHA9PSx2I6hl3yZdIxw0vgr4oG7B0tKrA==
X-Received: by 2002:a05:6512:3994:b0:549:8bb2:8575 with SMTP id 2adb3069b0e04-549c38f5524mr10477727e87.10.1742283829746;
        Tue, 18 Mar 2025 00:43:49 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1571286e87.238.2025.03.18.00.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:43:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 10:43:27 +0300
Message-Id: <20250318074327.37730-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250318074327.37730-1-eagle.alexander923@gmail.com>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_004352_408554_7C056844 
X-CRM114-Status: GOOD (  15.46  )
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
Subject: [PATCH 5/5] ARM: at91: sama5d2: Add QSPI boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds QSPI NOR boot support for sama5d2 CPUs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 84 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index e417223b31..9f9945e96d 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <filetype.h>
 #include <mach/at91/xload.h>
 #include <mach/at91/sama5_bootsource.h>
 #include <mach/at91/hardware.h>
@@ -95,12 +96,95 @@ static void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	panic("FAT chainloading failed\n");
 }
 
+static const struct xload_instance sama5d2_qspi_ioset1_instances[] = {
+	[0] = {
+		.base = SAMA5D2_BASE_QSPI0,
+		.id = SAMA5D2_ID_QSPI0,
+		.periph = AT91_MUX_PERIPH_B,
+		.pins = {
+			AT91_PIN_PA0, AT91_PIN_PA1, AT91_PIN_PA2,
+			AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5, -1
+		}
+	},
+	[1] = {
+		.base = SAMA5D2_BASE_QSPI1,
+		.id = SAMA5D2_ID_QSPI1,
+		.periph = AT91_MUX_PERIPH_B,
+		.pins = {
+			AT91_PIN_PA6, AT91_PIN_PA7, AT91_PIN_PA8,
+			AT91_PIN_PA9, AT91_PIN_PA10, AT91_PIN_PA11, -1
+		}
+	},
+};
+
+/**
+ * sama5d2_qspi_start_image - Start an image from QSPI NOR flash
+ * @r4: value of r4 passed by BootROM
+ */
+static void __noreturn sama5d2_qspi_start_image(u32 r4)
+{
+	void __iomem *mem, *dest = IOMEM(SAMA5_DDRCS);
+	const struct xload_instance *instance;
+	const s8 *pin;
+	u32 offs;
+	int ret;
+
+	ret = sama5_bootsource_instance(r4);
+	if (ret == 0)
+		mem = SAMA5D2_BASE_QSPI0_MEM;
+	else if (ret == 1)
+		mem = SAMA5D2_BASE_QSPI1_MEM;
+	else
+		panic("Couldn't determine boot QSPI instance\n");
+
+	instance = &sama5d2_qspi_ioset1_instances[ret];
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
+	for (pin = instance->pins; *pin >= 0; pin++)
+		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
+					 BIT(*pin), instance->periph);
+
+	sama5d2_pmc_enable_periph_clock(instance->id);
+
+	/*
+	 * Since we booted from QSPI, we expect the QSPI registers to be
+	 * properly initialized already.
+	 * Let's just read the memory-mapped data.
+	 */
+
+	/* Find barebox pattern first */
+	for (offs = SZ_128K; offs <= SZ_1M; offs += SZ_128K) {
+		/* Fix cache coherency issue by reading each sector only once */
+		memcpy(dest, mem + offs, SZ_128K);
+
+		if (is_barebox_arm_head(dest)) {
+			u32 size = readl(dest + ARM_HEAD_SIZE_OFFSET);
+
+			pr_info("Image found at 0x%08x, size %u\n", offs, size);
+
+			/* Copy remaining barebox code */
+			if (size > SZ_128K)
+				memcpy(dest + SZ_128K, mem + offs + SZ_128K,
+				       size - SZ_128K);
+
+			sync_caches_for_execution();
+
+			sama5_boot_xload(dest, r4);
+		}
+	}
+
+	panic("No barebox image found!\n");
+}
+
 void __noreturn sama5d2_start_image(u32 r4)
 {
 	switch (sama5_bootsource(r4)) {
 	case BOOTSOURCE_MMC:
 		sama5d2_sdhci_start_image(r4);
 		break;
+	case BOOTSOURCE_SPI:
+		sama5d2_qspi_start_image(r4);
+		break;
 	default:
 		break;
 	}
-- 
2.39.1



