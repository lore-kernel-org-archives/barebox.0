Delivery-date: Thu, 26 Sep 2024 15:41:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stojy-0031Il-2f
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:41:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stojz-0007a7-7p
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:41:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IvurFUvrOXk4jL/kW1ExGjg5BhjXx4ZMsTI/FBSvYyI=; b=f5AkmBlSUvQEcB92sz98lVPINM
	4j+Zvr7Ijj/kJ0YgOLLIHuaMHAqHXCp94HWpRovxHi5Cxyd9++K+FAOlIKU7Y7nVVNdSUwd2FS1Cv
	1xMOwxGtw6GHWJKyVxcr80LBua4jU/3xdq8EdiuE3hXMMpiAbZKkLMFQR/Lxc3SNhwTnRS25Q7oNW
	+ohDpxVmyZDV/rNccyl9iE+Z0d1b706xL3BaLqShbbGW6o6j6WYtuc7curHjZ58oIY875m0tOCC5X
	tc+5vYAxrMRmRXK6qYOpic390RyIxeoxMbwCwb8xncSDNvx8UzbGbxkA7nX9Hb175IlWqzoacL8Az
	0ITt3pBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stojV-00000008Txs-3djJ;
	Thu, 26 Sep 2024 13:40:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stojR-00000008TwA-2Hf6
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojQ-000787-9Q; Thu, 26 Sep 2024 15:40:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojP-001hMF-SY; Thu, 26 Sep 2024 15:40:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1n;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-12-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356503; l=2216;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rYG1qfjQmQuOQnBrqA2wzjViAwSll10hfnVfuXBE9WQ=;
 b=b/gnBUGGc3/jAU4oYRf4JL852kdT0Gi4SMVEm24t5JjZBq1NSkcPrrPyR5Gxnv3IL3oIIJUUN
 lEX7EmU8Nt7BLDvfBQViDZWVJFXI6jpRArju8wsri/JfHzS3/SQ6Kyp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_064033_623498_81AC57F1 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] ARM: ARM64: implement dma_alloc_writecombine()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently only have dma_alloc_writecombine() for aarch32. Implement
it for aarch64 as it is useful for mapping framebuffer memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 11 ++++++++++-
 arch/arm/cpu/mmu_64.h | 15 ++++++---------
 2 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7c7834201b..7854f71f4c 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -24,6 +24,8 @@
 
 #include "mmu_64.h"
 
+#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
+
 static uint64_t *get_ttb(void)
 {
 	return (uint64_t *)get_ttbr(current_el());
@@ -172,9 +174,11 @@ static unsigned long get_pte_attrs(unsigned flags)
 	case MAP_CACHED:
 		return CACHED_MEM;
 	case MAP_UNCACHED:
-		return attrs_uncached_mem();
+		return attrs_xn() | UNCACHED_MEM;
 	case MAP_FAULT:
 		return 0x0;
+	case ARCH_MAP_WRITECOMBINE:
+		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
 	default:
 		return ~0UL;
 	}
@@ -295,6 +299,11 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
+void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
+}
+
 static void init_range(size_t total_level0_tables)
 {
 	uint64_t *ttb = get_ttb();
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index e3959e4407..d3c39dabb5 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -8,22 +8,19 @@
 #define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
 			 PTE_BLOCK_OUTER_SHARE | \
 			 PTE_BLOCK_AF)
+#define MEM_ALLOC_WRITECOMBINE	(PTE_BLOCK_MEMTYPE(MT_NORMAL_NC) | \
+				 PTE_BLOCK_OUTER_SHARE | \
+				 PTE_BLOCK_AF)
 
-static inline unsigned long attrs_uncached_mem(void)
+static inline unsigned long attrs_xn(void)
 {
-	unsigned long attrs = UNCACHED_MEM;
-
 	switch (current_el()) {
 	case 3:
 	case 2:
-		attrs |= PTE_BLOCK_UXN;
-		break;
+		return PTE_BLOCK_UXN;
 	default:
-		attrs |= PTE_BLOCK_UXN | PTE_BLOCK_PXN;
-		break;
+		return PTE_BLOCK_UXN | PTE_BLOCK_PXN;
 	}
-
-	return attrs;
 }
 
 /*

-- 
2.39.5



