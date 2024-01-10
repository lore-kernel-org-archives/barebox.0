Delivery-date: Wed, 10 Jan 2024 17:02:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2b-00BoLn-1Q
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2a-0002ri-QH
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N+6ny+oDeue02O7hYRDbCl1flcGFz32+PH3MXvMkzbk=; b=w0WN0Be19P2BS/NM7tBIvsI5gd
	fVUB2Q/Cjtsev7rM2kKv0CCk7946juYWlgAB5N2LhaKB3p+xi+YR6MOT77DNZ+RhVbkrSgE3cDH0E
	KZcNdFjZxnDmwh2isUAO/LxbScub31uB904/gnOarqYQKG1etKz/KfnSGogEVkXvGLjO9xtjLUmpM
	h4TkW0udRTEhIDMshPzArfU4BDpdW3Q2GYS+TDKBudobe/yZLKmPoPSDDPV2wWCrqQ9agfRj0OTKY
	7KDtc0/yQ4s+WtuGKOH3tuNwYK55Ni6QwUJEnvBmv0FtPD+hV5VCL7Yxmxq324p6BCGDJS4+3MJV3
	8euBmVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1S-00Ckob-2t;
	Wed, 10 Jan 2024 16:01:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckaw-1u
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002CN-Ex; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-001jv4-1Q; Wed, 10 Jan 2024 17:01:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-34;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:10 +0100
Message-Id: <20240110160112.4134162-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_688971_5F1D7567 
X-CRM114-Status: GOOD (  11.88  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 08/11] dma: fix dma_sync when not all device DMA is equally coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LS1046A features a cache-coherent interconnect and the drivers
configure the hardware appropriately, e.g. setting the FMan PRAM_MODE_GLOBAL
bit, so the existing Ethernet Controllers snoop caches.

Yet, we use the standard arm64 cache maintenance routines when the MMU
is enabled and thus risk memory corruption if CPU prefetches receive buffers
in the time window between dma_map_single() cleaning them to
Point-of-Coherency and dma_unmap_single() invalidating them[1].

To properly solve this issue, we need to consult the newly added per-device
dma coherent attribute to decide whether to do manual cache maintenance.

[1]: https://lore.kernel.org/all/a5d6cc26-cd23-7c31-f56e-f6d535ea39b0@arm.com/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - switch to boolean comparisons instead of comparison <= or >= to zero
---
 drivers/dma/map.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index e320f6aad4ac..ab86a8c7b139 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -9,7 +9,8 @@ void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 
 	debug_dma_sync_single_for_cpu(dev, address, size, dir);
 
-	arch_sync_dma_for_cpu(ptr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		arch_sync_dma_for_cpu(ptr, size, dir);
 }
 
 void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
@@ -19,7 +20,8 @@ void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
 
 	debug_dma_sync_single_for_device(dev, address, size, dir);
 
-	arch_sync_dma_for_device(ptr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		arch_sync_dma_for_device(ptr, size, dir);
 }
 
 dma_addr_t dma_map_single(struct device *dev, void *ptr,
@@ -29,7 +31,8 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr,
 
 	debug_dma_map(dev, ptr, size, dir, dma_addr);
 
-	arch_sync_dma_for_device(ptr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		arch_sync_dma_for_device(ptr, size, dir);
 
 	return dma_addr;
 }
@@ -37,7 +40,8 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr,
 void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 				    size_t size, enum dma_data_direction dir)
 {
-	dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		dma_sync_single_for_cpu(dev, dma_addr, size, dir);
 
 	debug_dma_unmap(dev, dma_addr, size, dir);
 }
-- 
2.39.2



