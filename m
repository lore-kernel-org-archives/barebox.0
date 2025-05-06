Delivery-date: Tue, 06 May 2025 16:55:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCJhp-002pBE-0s
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 16:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCJho-00069K-K3
	for lore@pengutronix.de; Tue, 06 May 2025 16:55:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SvPmPZqdiLGmtk4E+h21xDKNrAWAr6Hy9AIAv/nXhkk=; b=rdoiUWkVC24kWHuJukwgipdLPR
	boqsXkd/98MK6PrN2iXtgJgikIB1hcR5VTgk4uc5hcIv8mUuyBCNqvhOlpU2g9jLMCYfxuZ7Irp6f
	vtjoiHuijH12pyQdDaT0wOqKUrvFIpLoTr5BzFgVD0NDEELQhrZvDKmXV2vj7DzZVF7/ccojJIm8B
	I3C4bKQI9cYH2+s1/C/MUpc6C6x8nZq0Qo9KiNtc3vUKmeBMk5SHw6woGTz0g0Ux89Kg1pNCVHiew
	+Eft3Cb6PBDnmRECHNqhpHIxHVjs+VdLxfmQvkLqGXHUkdqMCPl4c9EgY6BACEBtV8202cJn7Wc6O
	jRDaD+wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCJhE-0000000CP9Q-18md;
	Tue, 06 May 2025 14:55:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGut-0000000Bovw-2M2V
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 11:56:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-0000I0-Ch; Tue, 06 May 2025 13:56:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-001O4j-0b;
	Tue, 06 May 2025 13:56:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-004l62-1q;
	Tue, 06 May 2025 13:56:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 13:56:51 +0200
Message-Id: <20250506115652.1134337-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_045655_596767_217F65FE 
X-CRM114-Status: GOOD (  13.52  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: at91: xload: make capacity an argument to at91_mci_bio_set_highcapacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for a switch to the common mci-pbl support, merge
at91_mci_bio_init & at91_mci_bio_set_highcapacity, because
pbl_mci_bio_init() expects these parameters to be already set.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9_xload_mmc.c |  5 +----
 arch/arm/mach-at91/xload.c              |  3 ++-
 drivers/mci/atmel_mci_pbl.c             | 13 ++++++-------
 include/mach/at91/xload.h               |  6 +++---
 4 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
index 26f268ae91dc..b84c4b275d4e 100644
--- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
+++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
@@ -94,15 +94,12 @@ void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
 		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI1);
 	}
 
-	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b);
+	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b, PBL_MCI_STANDARD_CAPACITY);
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
index 5d8105f07fe4..709bf054874a 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -228,7 +228,8 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 
 	sama5d3_pmc_enable_periph_clock(instance->id);
 
-	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
+	ret = at91_mci_bio_init(&bio, instance->base, clock, slot,
+				PBL_MCI_UNKNOWN_CAPACITY);
 	if (ret)
 		goto out_panic;
 
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index bd4faa4de5f0..d7343246abbb 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -83,7 +83,8 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
 }
 
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
-		      unsigned int clock, unsigned int slot)
+		      unsigned int clock, unsigned int slot,
+		      enum pbl_mci_capacity capacity)
 {
 	struct atmel_mci_priv *priv = &atmci_sdcard;
 	struct atmel_mci *host = &priv->host;
@@ -111,12 +112,10 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 
 	atmci_common_set_ios(host, &ios);
 
-	priv->highcapacity_card = 1;
+	if (capacity == PBL_MCI_STANDARD_CAPACITY)
+		atmci_sdcard.highcapacity_card = false;
+	else
+		atmci_sdcard.highcapacity_card = true;
 
 	return 0;
 }
-
-void at91_mci_bio_set_highcapacity(bool highcapacity_card)
-{
-	atmci_sdcard.highcapacity_card = highcapacity_card;
-}
diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
index d5fc7596fda6..21840fecbd08 100644
--- a/include/mach/at91/xload.h
+++ b/include/mach/at91/xload.h
@@ -4,7 +4,7 @@
 #define __MACH_AT91_XLOAD_H
 
 #include <linux/compiler.h>
-#include <pbl/bio.h>
+#include <pbl/mci.h>
 
 void __noreturn sama5d2_start_image(u32 r4);
 void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
@@ -12,8 +12,8 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
-		      unsigned int clock, unsigned int slot);
-void at91_mci_bio_set_highcapacity(bool highcapacity_card);
+		      unsigned int clock, unsigned int slot,
+		      enum pbl_mci_capacity capacity);
 
 void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
 					  bool slot_b);
-- 
2.39.5



