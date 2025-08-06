Delivery-date: Wed, 06 Aug 2025 15:06:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqF-007dza-1y
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqD-0005Ly-Sy
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VamtVwwnFWBbNNO+YG//+PkSnn38ZyQC+HqxzRGK7is=; b=VV9aqOzGDsjwiQoLJ/yHhPimzI
	5bx5ZT2cN6ILkCn69cGyFbwn5sqP7G2rRRwoz3IcMtMUmANTqep7/5JKrVfooUvTZkbvIwB3vojz3
	5on3CdCtSMarCp9zM0t8ilhFt9lKgwIPumYFhVBgf89N+N/fEtfydsCFMKxbEThm5LH5i6tjtz00B
	gGfmRF+xU70tAhUFIUM0kX//qxVYB8BkfpiKdwk/rrSSUMsEfTH5BhIGZfEzgN1DYZfFn6GLZaiAQ
	NCxIydmljv5HNmERh7ELsQKLC5+KO+QyyqDEsZrDzI7Wai42WvGkkvn7WNXFz1AL8lSXrA8f3UA93
	mlxalVRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpi-0000000FFrr-3fQm;
	Wed, 06 Aug 2025 13:05:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpf-0000000FFo1-0oIg
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpe-0004kv-10; Wed, 06 Aug 2025 15:05:26 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTZ-2g;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdOO-009YOP-0H;
	Wed, 06 Aug 2025 14:37:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:14 +0200
Message-Id: <20250806123714.2092620-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060527_229855_A3B674A3 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 22/22] ARM: mmu: define dma_alloc_writecombine in common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The two functions are equivalent as the arm32/64 specific bits are
handled in remap_range.

Combine them to reduce the duplication.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 5 +++++
 arch/arm/cpu/mmu_32.c     | 5 -----
 arch/arm/cpu/mmu_64.c     | 5 -----
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 1770c56b6eea..46982b00b7c5 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -74,6 +74,11 @@ void dma_free_coherent(struct device *dev,
 	free(mem);
 }
 
+void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
+}
+
 void zero_page_access(void)
 {
 	remap_range(0x0, PAGE_SIZE, MAP_CACHED);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 7cf04ea9412a..63c412873ec8 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -684,11 +684,6 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
-{
-	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
-}
-
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index edb1b34aca7f..f32cd9a0ac1a 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -373,11 +373,6 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
-void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
-{
-	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
-}
-
 static void early_init_range(size_t total_level0_tables)
 {
 	uint64_t *ttb = get_ttb();
-- 
2.39.5



