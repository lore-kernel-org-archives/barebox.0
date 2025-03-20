Delivery-date: Thu, 20 Mar 2025 10:15:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzb-001pZL-1Y
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBza-0007pJ-6D
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u99niQem0+ZFXoFBSfEfcmNSykILaguU6ntgUGrcRvU=; b=yc2wT7Ck6pfb26lszExvYAVJKe
	zTSBPmBRk6TvWWLxdG+16MJgKK3mqWJ1PnCn9wqX6r1RRtYpRMQZafRUtRwbrXDFDzDu3mKhX/QmA
	pHu33/MK9xN7UNd5YdO295xTTKEMQTZbdIScXWeInwEoPhdApNA1AFam1K7LfBY+i3HXwtpzuwVB8
	AuG37WhpQU0Ux0nS/qezHr1avBpMjCxUgVm3J5fE5e2VcnkKGD1FrPG5/2N5S4cLiDe45PAgF1TBi
	HA4sBnvjPvK2YOWiLVxTmSKNoVyMTcU4+7FK5Ii59HuYNAP9pwJso3OqGOoajucoc8RMk14EHt1Y8
	TpbuP+cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz1-0000000Bep5-4AQi;
	Thu, 20 Mar 2025 09:14:35 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvByz-0000000Beo7-0tRJ
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:34 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-30c05fd126cso5545971fa.3
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462070; x=1743066870; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u99niQem0+ZFXoFBSfEfcmNSykILaguU6ntgUGrcRvU=;
        b=dDEmKcawWTZI1zNRtnEGwjR0dJGPHkItR1wN2rv0JsZAYgAOrEfq3/WW4yTixutEvb
         bfCUzD3K9mryIvaNMZ34uV6caINAbAyTB9Migx/Jtq+RERG2uokcVddSSAPHnbRHRXYa
         AiCdkrcN0nRuNyJVDi5g/RwHBjKQ+Cgjn6PT36U1Wnl8zS0w5rnjndfzgtm+ITKj2OrJ
         1QfVJ3vpNAo3pdjQoy5ybQ7Mxin0Xf1QtqdDPd7tVQ8pcRqnT6wBERnLtsHmUgFrJiZS
         CPddAByjUli7JCPTCFLv2yARfeDJvu4mwN/7k9auKEa/Lj4hyJVDuoiUMBozuwIw6t/S
         F7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462070; x=1743066870;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u99niQem0+ZFXoFBSfEfcmNSykILaguU6ntgUGrcRvU=;
        b=dSVyaGEDTwLSStI6UPbO56QFa0D4l3Vkk3sfBonNFzKDJk/mjPqKUyGxQ/7d2FAfAQ
         RcqP66aBHxZy3iZGJpZufyOem+nRcnohuSMlctuYnZ+6vSybvrkeZEAKW+fNlkEPmSUk
         zKiV6/3jN/HYOCTW/zAfOX1M4J1HcTR2YENkGbUQZXDqEFmOU6V6MPgo/Px/Yuq0TV/C
         DthTyx0HGIp32a7/qDcXq7fFv01GUigr/rC7Jb6/YYsxttamYZR2pfOZ3xbnHiF/cgf9
         ObPiR6w2nzFaVmaiK8402HxOm+MLkX9UR9o6nJOOdxRW8BQVtJOdCktsSwDbzPz4gUcI
         rXgw==
X-Gm-Message-State: AOJu0YzT/rDZfmw2ngSUf7Lx/wwKqZ9LQdtmYNRAEPgS/OPtrIv0oy18
	0S/3mmhg7GIktkj8QMy3tY5MCuC7rLBFoO22H8Ayx773ufX6ibhRE+2smw==
X-Gm-Gg: ASbGncuL+oNnMILwn6ibivK7CQbL6B9H1mWiLxMyzyFV5dqQ8AWY9wctKdAcI5cQ5WB
	qGv7ZOjuTOPFqht95emUjivfGTXqCYQu0RSfWqx7olRBE3VHHTU9RLCaFg07Ss2r89vt8kDVSeG
	bv+PkJvB9r+HyLg0I4DYRlrEV50r6YCKx4bTgeUkzyLHRtIDSaBU8uHUZqvsBI86j52WvHCON/0
	QyOYwxFkSM7OSBK7KUaf9qOHU8o7RmOtdgn7oImpJflHbfePro521vb32s3PFpmjGAZ+S9M3qLx
	WpBx1DyTEhybbc8ioZiTz7gfpBNCBi22WHkga29yoFolZdIICG6IXs+dThYUlLQh3jc=
X-Google-Smtp-Source: AGHT+IGniLiSIvOYUf1jMVyMkN9Qnncyqfdox/aLOy5tY9dZGdptpx2Vgjz7GjK/VLaD9SIEIR4vlA==
X-Received: by 2002:a05:651c:2119:b0:30c:2e22:c893 with SMTP id 38308e7fff4ca-30d72aff93amr11175181fa.23.1742462070203;
        Thu, 20 Mar 2025 02:14:30 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:29 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:13 +0300
Message-Id: <20250320091419.42095-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021433_252218_3B956184 
X-CRM114-Status: GOOD (  12.47  )
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
Subject: [PATCH 1/7] ARM: at91: xload: Unify loader functions to use a single xload_instance structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loader function structures use the same members,
so they can be rewritten to use a single xload_instance structure.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 9c03d2119c..4e7e80379f 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -11,6 +11,13 @@
 #include <asm/cache.h>
 #include <pbl/bio.h>
 
+struct xload_instance {
+	void __iomem *base;
+	unsigned id;
+	u8 periph;
+	s8 pins[15];
+};
+
 static void at91_fat_start_image(struct pbl_bio *bio,
 				 void *buf, unsigned int len,
 				 u32 r4)
@@ -31,12 +38,7 @@ static void at91_fat_start_image(struct pbl_bio *bio,
 	sama5_boot_xload(bb, r4);
 }
 
-static const struct sdhci_instance {
-	void __iomem *base;
-	unsigned id;
-	u8 periph;
-	s8 pins[15];
-} sdhci_instances[] = {
+static const struct xload_instance sama5d2_mci_instances[] = {
 	[0] = {
 		.base = SAMA5D2_BASE_SDHC0, .id = SAMA5D2_ID_SDMMC0, .periph = AT91_MUX_PERIPH_A,
 		.pins = { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 }
@@ -54,16 +56,16 @@ static const struct sdhci_instance {
 void __noreturn sama5d2_sdhci_start_image(u32 r4)
 {
 	void *buf = (void *)SAMA5_DDRCS;
-	const struct sdhci_instance *instance;
+	const struct xload_instance *instance;
 	struct pbl_bio bio;
 	const s8 *pin;
 	int ret;
 
 	ret = sama5_bootsource_instance(r4);
-	if (ret > 1)
+	if (ret > ARRAY_SIZE(sama5d2_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sdhci_instances[ret];
+	instance = &sama5d2_mci_instances[ret];
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
 	for (pin = instance->pins; *pin >= 0; pin++) {
@@ -86,12 +88,7 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	panic("FAT chainloading failed\n");
 }
 
-static const struct atmci_instance {
-	void __iomem *base;
-	unsigned id;
-	u8 periph;
-	s8 pins[15];
-} sama5d3_atmci_instances[] = {
+static const struct xload_instance sama5d3_mci_instances[] = {
 	[0] = {
 		.base = IOMEM(SAMA5D3_BASE_HSMCI0),
 		.id = SAMA5D3_ID_HSMCI0,
@@ -107,16 +104,16 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 					  unsigned int slot)
 {
 	void *buf = (void *)SAMA5_DDRCS;
-	const struct atmci_instance *instance;
+	const struct xload_instance *instance;
 	struct pbl_bio bio;
 	const s8 *pin;
 	int ret;
 
 	ret = sama5_bootsource_instance(boot_src);
-	if (ret > ARRAY_SIZE(sama5d3_atmci_instances) - 1)
+	if (ret > ARRAY_SIZE(sama5d3_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sama5d3_atmci_instances[boot_src];
+	instance = &sama5d3_mci_instances[boot_src];
 
 	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
 	for (pin = instance->pins; *pin >= 0; pin++) {
-- 
2.39.1



