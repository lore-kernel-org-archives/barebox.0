Delivery-date: Thu, 05 Jun 2025 13:37:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uH-003zjc-1P
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uD-0000Wi-KW
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0RwelkFBKSZ4nE2RsBQjtaRIoqx9UkwaZKa+AUZcPpk=; b=oDpyRyVnN/rGS6gtlNIY7BhXEz
	62A4bZWL3W3eJOCAQSy+N87eEI3CvDsGWCXcRuk8i+73X1tJkWabQJAQVYu/0iRGXykHlnxKDB9zu
	/9rDdjNWBruZkK20PgIFqoefvH/VlCmIH4Zoa3THJcgmJHTlUCBnaCAN1nJ22l+ErNlOpW1fl32ZY
	7swKAqij+w+vloGt9vvr6UB7vcoOmYCz3Z5UoHqAzLKktF6RhHBQV/1u/NFaw69gjHUYD5aPhxczZ
	741Z0qrD6hmsze4yXDYj9yPPX0p8L0x8LRwsG/olY0K2wQ4bg8T6fZwtjooYJbVTlzNSbMmc2xOnH
	UFTIsJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tc-0000000FNNu-0JAj;
	Thu, 05 Jun 2025 11:36:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN7y-1Oz1
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007MT-3s; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-001wzV-2y;
	Thu, 05 Jun 2025 13:35:32 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-1U;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:12 +0200
Message-Id: <20250605113530.2076990-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_384918_AF6B6200 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/21] mci: sdhci: support compiling common SDHCI code for sandbox PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not link sandbox with --gc-sections, so having references to
non-existent functions would lead to errors, even if they are never
called. Fix this by providing stubs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 22 +++++++++++++++++-----
 include/mci.h |  9 +++++++++
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/include/dma.h b/include/dma.h
index cb44963cc02e..b8016c2e890e 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -105,6 +105,12 @@ void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 
 void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
 				size_t size, enum dma_data_direction dir);
+
+dma_addr_t dma_map_single(struct device *dev, void *ptr,
+			  size_t size, enum dma_data_direction dir);
+
+void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+		      size_t size, enum dma_data_direction dir);
 #else
 /*
  * assumes buffers are in coherent/uncached memory, e.g. because
@@ -121,13 +127,19 @@ static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t add
 {
 	barrier_data(address);
 }
+
+static inline dma_addr_t dma_map_single(struct device *dev, void *ptr,
+					size_t size, enum dma_data_direction dir)
+{
+	return virt_to_phys(ptr);
+}
+
+static inline void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
+				    size_t size, enum dma_data_direction dir)
+{
+}
 #endif
 
-dma_addr_t dma_map_single(struct device *dev, void *ptr,
-			  size_t size, enum dma_data_direction dir);
-
-void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
-		      size_t size, enum dma_data_direction dir);
 
 #ifndef dma_alloc_coherent
 void *dma_alloc_coherent(struct device *dev, size_t size, dma_addr_t *dma_handle);
diff --git a/include/mci.h b/include/mci.h
index 207fb9779a14..82099f118e65 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -767,6 +767,7 @@ static inline int mmc_card_hs(struct mci *mci)
 		mci->host->ios.timing == MMC_TIMING_MMC_HS;
 }
 
+#if IN_PROPER
 /*
  * Execute tuning sequence to seek the proper bus operating
  * conditions for HS200 and HS400, which sends CMD21 to the device.
@@ -775,6 +776,14 @@ int mmc_hs200_tuning(struct mci *mci);
 int mci_execute_tuning(struct mci *mci);
 int mmc_send_tuning(struct mci *mci, u32 opcode);
 int mci_send_abort_tuning(struct mci *mci, u32 opcode);
+
+#else
+static inline int mmc_hs200_tuning(struct mci *mci) { return -ENOSYS; }
+static inline int mci_execute_tuning(struct mci *mci) { return -ENOSYS; }
+static inline int mmc_send_tuning(struct mci *mci, u32 opcode) { return -ENOSYS; }
+static inline int mci_send_abort_tuning(struct mci *mci, u32 opcode) { return -ENOSYS; }
+#endif
+
 int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
 int mci_blk_part_switch(struct mci_part *part);
-- 
2.39.5



