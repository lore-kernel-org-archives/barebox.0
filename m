Delivery-date: Tue, 23 Apr 2024 08:05:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9HB-00CVpz-05
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:05:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9HA-0000Ky-CK
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:05:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X8S8UmVkH7TTy8CejWXkm7APFMRCROBD7sSdBjSaV44=; b=4mpq0E9aYpFwt3RuODD6cInqPu
	U47lhUPt4EaF8CJsqeRoZjfTQ6VO/P0GJFJ5b4THoK6Nn3lwEN2jIJRf5Xfp563dTfALG+YkInFhn
	Q6gShWHoOSqkohNxvxL4epEQ6hHTxwQ4e2ThD4l1SyrhOVZLe+IPocB2SYva+CuRHHxoToGGOtv4U
	qUqPX4CRS8RT4pGZevZ8eoHdD4+hxcDD2odpgUP0eBmceB6Cmqv+yJvMb4qQbW0DKSQZYJYDxzcqE
	JCqNjCAw4I6jO2F/tzX9fyDx/kiMmKaZ/ox4VfoS7RnQ4ndsLrmFlaklGWF1jdBETL/RwYRT3gUAN
	5NYzvnzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9Gl-0000000G5l5-1IZA;
	Tue, 23 Apr 2024 06:04:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9Gh-0000000G5kY-1Sce
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:04:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Gg-0000D7-1U; Tue, 23 Apr 2024 08:04:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Gf-00Dp4k-D8; Tue, 23 Apr 2024 08:04:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rz9Gf-006M5U-11;
	Tue, 23 Apr 2024 08:04:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2024 08:04:35 +0200
Message-Id: <20240423060435.1514644-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_230439_418064_45A8315A 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] mci: core: allocate memory used for DMA with dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Memory allocated by normal malloc may not fulfill the alignment
requirements for DMA.

This fixes memory corruption observed on the i.MX8MP when the
DMA-enabled eSDHC driver attempts to probe an eMMC.

This issues always existed, but only after commit 65ef5d885263
("ARM64: let 'end' point after the range in cache functions"), the whole
512 bytes were getting invalidated, which corrupted the TLSF malloc
header of the block after it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mmc.c         |  9 +++++----
 drivers/mci/mci-core.c | 12 ++++++------
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index fa01b89cdf42..041a721d3661 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -5,6 +5,7 @@
 #include <stdio.h>
 #include <string.h>
 #include <getopt.h>
+#include <dma.h>
 
 static int mmc_enh_area_setmax(struct mci *mci, u8 *ext_csd)
 {
@@ -115,7 +116,7 @@ static int do_mmc_enh_area(int argc, char *argv[])
 	if (ret)
 		goto error;
 
-	free(ext_csd);
+	dma_free(ext_csd);
 
 	if (set_completed) {
 		ret = mmc_partitioning_complete(mci);
@@ -127,7 +128,7 @@ static int do_mmc_enh_area(int argc, char *argv[])
 	return COMMAND_SUCCESS;
 
 error:
-	free(ext_csd);
+	dma_free(ext_csd);
 	return COMMAND_ERROR;
 }
 
@@ -183,12 +184,12 @@ static int do_mmc_write_reliability(int argc, char *argv[])
 		}
 	}
 
-	free(ext_csd);
+	dma_free(ext_csd);
 
 	return COMMAND_SUCCESS;
 
 error:
-	free(ext_csd);
+	dma_free(ext_csd);
 	return COMMAND_ERROR;
 }
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d4abe321bfa..1d383e6449e9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -545,12 +545,12 @@ u8 *mci_get_ext_csd(struct mci *mci)
 	u8 *ext_csd;
 	int ret;
 
-	ext_csd = xmalloc(512);
+	ext_csd = dma_alloc(512);
 
 	ret = mci_send_ext_csd(mci, ext_csd);
 	if (ret) {
 		printf("Failure to read EXT_CSD register\n");
-		free(ext_csd);
+		dma_free(ext_csd);
 		return ERR_PTR(-EIO);
 	}
 
@@ -666,7 +666,7 @@ static int mmc_change_freq(struct mci *mci)
 	char cardtype;
 	int err;
 
-	mci->ext_csd = xmalloc(512);
+	mci->ext_csd = dma_alloc(512);
 	mci->card_caps = 0;
 
 	/* Only version 4 supports high-speed */
@@ -1124,7 +1124,7 @@ static int mmc_compare_ext_csds(struct mci *mci, enum mci_bus_width bus_width)
 	if (bus_width == MMC_BUS_WIDTH_1)
 		return 0;
 
-	bw_ext_csd = xmalloc(512);
+	bw_ext_csd = dma_alloc(512);
 	err = mci_send_ext_csd(mci, bw_ext_csd);
 	if (err) {
 		dev_info(&mci->dev, "mci_send_ext_csd failed with %d\n", err);
@@ -1173,7 +1173,7 @@ static int mmc_compare_ext_csds(struct mci *mci, enum mci_bus_width bus_width)
 				0 : -EINVAL;
 
 out:
-	free(bw_ext_csd);
+	dma_free(bw_ext_csd);
 	return err;
 }
 
@@ -2220,7 +2220,7 @@ static int mci_get_partition_setting_completed(struct mci *mci)
 
 	ret = ext_csd[EXT_CSD_PARTITION_SETTING_COMPLETED];
 
-	free(ext_csd);
+	dma_free(ext_csd);
 
 	return ret;
 }
-- 
2.39.2



