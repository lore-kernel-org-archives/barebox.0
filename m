Delivery-date: Thu, 20 Mar 2025 10:15:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzg-001pb9-1q
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzf-0007tw-CK
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pCJ4jwRvuMaAyqN5OXmi62f2PbON/0pDE5bChHIvyH4=; b=NlIUYuUrLxIAWyGvOoxdBfs2Xa
	15I/iz8tneEibQXz4uGkj45trYQdTFB3iIkq4Xvh1BMEPqKWzFUG7c2g4su+6amlotwOq+kH5lYhe
	0KYZPb4TCSpaGmJtOt9i9+3pbDLc4c0wNE1elwpuUc3yCbgRkygCCR9BupMW7jb4aEUpW4uVDXjY6
	LRKSvsIvM/4hyt6wokOtchZGOJ24JmEYBUjUWsXlJLwxqrKYnrEYYUVS3LDvv1OKakKh04g1UyZU/
	MRdPKliBC77dw//8s5+L1ZOwI7gS5zPwIu5VddHKaVjH1K9k9u1mvRYjS3RWkb4ZUZIaIEIoa7Ik5
	YkdwEd9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz9-0000000BeuS-17wg;
	Thu, 20 Mar 2025 09:14:43 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz6-0000000BerJ-25hf
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:41 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-30613802a04so6253721fa.2
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462078; x=1743066878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pCJ4jwRvuMaAyqN5OXmi62f2PbON/0pDE5bChHIvyH4=;
        b=PXcZNEyUGIAoY9+McAVXOwtTAD3MDNUpd1C7OaTfX7X1/UYcKckBCK5gu3xN1VeLwy
         0aeAHowkx8IzXo9vMLJFGx9p1v4qkNUbAnwB8+xnVXcmPaUIemLblex4/awtxZYzbOtu
         ELwnY4Gqb/WcIZf70S6MxZ3FiFJWb5wy7Qb0cfsDNyFTj32f0cFcmmjJEh2UvDmALBwY
         sDU/RHc4QRSolNa1oGyABeGHJVlCqXrdoc2QKQJ34c1BNtDHyxv9WEJkKtcJWz/GCW73
         uBsR8sgjNwYYS1Cq8KIhna3e155q6I5x4A+W0yOaeOL2tUjjV5/cWvO7Dy84gVOdcBq+
         wFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462078; x=1743066878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pCJ4jwRvuMaAyqN5OXmi62f2PbON/0pDE5bChHIvyH4=;
        b=jx/JrpltL3zsL59KRIXiLcbKhcyeisqWizKvy/5GTEXzwl0OfuYH1OTmaHk5cVr2sh
         oB2Ly7MdNdU3p6Qd3uo5vHHxFsmwiEhr4IR875Owz3cgo7yeE9USf0nr3VNpsdcJTi6q
         YPFf+hsdkvmEdimd5rAn5Wgp7wc1lraziR4nSdl82cBywK+rihxVKAn+LZhuVe+qBpCA
         x5W1LoXV6Sqet6YmiTVWCJIKDOSWeL1dBjqQZChENwDgJwiXgqmN+gufHPrNNhDwxrcM
         jJ9xhirD6ofAyYh51aCwgJmq4tWR8AgJ9RGiPdF6x/+QriKMEAND41HbE1WubY0UGM/l
         PYXg==
X-Gm-Message-State: AOJu0Yz1AKG3FC/MONtliFfcY/rIjDt8OEJx60V0OANcZRZqtjq66KYc
	YN1SL183ImRfJGCuSz5qjBJRhKf+4GlSryxYm9c/pCxpDvsBUAICCKB8Gg==
X-Gm-Gg: ASbGncuHn7OGjyBMWye3CC2yTvynsQmWaq/TYJQWOXM+7aZjUuaBSeMx7mKhkda2/ww
	RxJ/HrE1brn+/dMTTGvc6hE4jyozRJD1C4y1AeYKK1hrBikukgXn+ZEncsurcVNaqeUkB8cg01I
	tB5p6fRECjDAt3qxDItZ2qwYVsjw5ADyqHjrMwfa4xnHbaSabC5GbGJH5XEnvmt1V6VF6lJ2d5N
	EPEjkFcmwfF6QJqjFeMbWllI8R4UypIUwXqzNAfzjt0bmGDdNJpM/7IdOHIlVqJO1z0WGXRvOfy
	zH5/cdBaZ9CV1xf3npoT1AwK+jjCZj3KrVHRLxuNrxijIRQW3jrRQFNkyyZkRvasMpM=
X-Google-Smtp-Source: AGHT+IEXfbDAbGk88+EShvNNzm6F93ia6FpYoHoQ1iCErB6ws/k1ulzelD5NokhzTAklDSG+HisPMQ==
X-Received: by 2002:a2e:94d6:0:b0:30b:d073:9e7d with SMTP id 38308e7fff4ca-30d6a467d06mr23285001fa.37.1742462078095;
        Thu, 20 Mar 2025 02:14:38 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:37 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:19 +0300
Message-Id: <20250320091419.42095-7-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021440_542157_ADDFC867 
X-CRM114-Status: GOOD (  15.32  )
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
Subject: [PATCH 7/7] ARM: at91: xload: Add QSPI boot support for SAMA5D2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds QSPI NOR boot support for sama5d2 CPUs.
One first-stage (after ROMboot) xload image can now boot from
both MMC and QSPI.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 84 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index d3bc6f2dc9..5d8105f07f 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <filetype.h>
 #include <mach/at91/xload.h>
 #include <mach/at91/sama5_bootsource.h>
 #include <mach/at91/hardware.h>
@@ -96,12 +97,95 @@ static void __noreturn sama5d2_sdhci_start_image(u32 r4)
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



