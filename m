Delivery-date: Fri, 12 May 2023 13:11:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQge-00F2Qy-Bo
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgb-0004xk-NG
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQYLIKKXSkFlx/RnUgyrYQ2Vd/u6Ury8LDJ3HGCSLqU=; b=g2N+Kc/rMg+yt3kpZd/GFPQU4D
	RRb9oP/OlyGugvjvnQyFMIlJNN5JwKxyp67g5cgbRoGu+ua295ePjBnur+Oe0Z3QC0A3IKGm+f+eW
	FEAiwZAkJglPjN1nvffYeN8w1jRyq7PRFl7YMCvcNkDl1eyouHa0RD+/ztUydON7jLjzI4vxNxPsO
	PHl7FRGYGlPpO2Og5qLAN1LILGGO5EmorJeNrco94Tm1218sB8Phq54GOnfX2dHtt73gIniLYw3OT
	K/z0SbJebYzBeSVjaOIuPqJpqueshhoDxrag0zOumhAXCYNIIPQgBuh0gRdTQT+zdfUtDrFzLtiPM
	kZPH5GFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfJ-00Bjzq-0p;
	Fri, 12 May 2023 11:10:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00Bjti-1X
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003ds-8z; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjT-GZ; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055DW-0h; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:43 +0200
Message-Id: <20230512111008.1120833-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_513402_B45B7568 
X-CRM114-Status: GOOD (  17.16  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/27] ARM: drop cache function initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need a call to arm_set_cache_functions() before the cache maintenance
functions can be used. Drop this call and just pick the correct
functions on the first call.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache.c         | 83 +++++++++++++++++-------------------
 arch/arm/cpu/cache_64.c      |  5 ---
 arch/arm/cpu/mmu-early.c     |  2 -
 arch/arm/cpu/mmu.c           |  2 -
 arch/arm/cpu/start.c         |  4 +-
 arch/arm/include/asm/cache.h |  2 -
 6 files changed, 41 insertions(+), 57 deletions(-)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 24a02c68f3..4202406d0d 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -17,8 +17,6 @@ struct cache_fns {
 	void (*mmu_cache_flush)(void);
 };
 
-struct cache_fns *cache_fns;
-
 #define DEFINE_CPU_FNS(arch) \
 	void arch##_dma_clean_range(unsigned long start, unsigned long end);	\
 	void arch##_dma_flush_range(unsigned long start, unsigned long end);	\
@@ -41,50 +39,13 @@ DEFINE_CPU_FNS(v5)
 DEFINE_CPU_FNS(v6)
 DEFINE_CPU_FNS(v7)
 
-void __dma_clean_range(unsigned long start, unsigned long end)
-{
-	if (cache_fns)
-		cache_fns->dma_clean_range(start, end);
-}
-
-void __dma_flush_range(unsigned long start, unsigned long end)
-{
-	if (cache_fns)
-		cache_fns->dma_flush_range(start, end);
-}
-
-void __dma_inv_range(unsigned long start, unsigned long end)
-{
-	if (cache_fns)
-		cache_fns->dma_inv_range(start, end);
-}
-
-#ifdef CONFIG_MMU
-
-void __mmu_cache_on(void)
-{
-	if (cache_fns)
-		cache_fns->mmu_cache_on();
-}
-
-void __mmu_cache_off(void)
+static struct cache_fns *cache_functions(void)
 {
-	if (cache_fns)
-		cache_fns->mmu_cache_off();
-}
+	static struct cache_fns *cache_fns;
 
-void __mmu_cache_flush(void)
-{
 	if (cache_fns)
-		cache_fns->mmu_cache_flush();
-	if (outer_cache.flush_all)
-		outer_cache.flush_all();
-}
-
-#endif
+		return cache_fns;
 
-int arm_set_cache_functions(void)
-{
 	switch (cpu_architecture()) {
 #ifdef CONFIG_CPU_32v4T
 	case CPU_ARCH_ARMv4T:
@@ -113,9 +74,45 @@ int arm_set_cache_functions(void)
 		while(1);
 	}
 
-	return 0;
+	return cache_fns;
+}
+
+void __dma_clean_range(unsigned long start, unsigned long end)
+{
+	cache_functions()->dma_clean_range(start, end);
+}
+
+void __dma_flush_range(unsigned long start, unsigned long end)
+{
+	cache_functions()->dma_flush_range(start, end);
+}
+
+void __dma_inv_range(unsigned long start, unsigned long end)
+{
+	cache_functions()->dma_inv_range(start, end);
+}
+
+#ifdef CONFIG_MMU
+
+void __mmu_cache_on(void)
+{
+	cache_functions()->mmu_cache_on();
+}
+
+void __mmu_cache_off(void)
+{
+	cache_functions()->mmu_cache_off();
 }
 
+void __mmu_cache_flush(void)
+{
+	cache_functions()->mmu_cache_flush();
+	if (outer_cache.flush_all)
+		outer_cache.flush_all();
+}
+
+#endif
+
 /*
  * Early function to flush the caches. This is for use when the
  * C environment is not yet fully initialized.
diff --git a/arch/arm/cpu/cache_64.c b/arch/arm/cpu/cache_64.c
index cb7bc0945c..3a30296128 100644
--- a/arch/arm/cpu/cache_64.c
+++ b/arch/arm/cpu/cache_64.c
@@ -6,11 +6,6 @@
 #include <asm/cache.h>
 #include <asm/system_info.h>
 
-int arm_set_cache_functions(void)
-{
-	return 0;
-}
-
 /*
  * Early function to flush the caches. This is for use when the
  * C environment is not yet fully initialized.
diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 0d528b9b9c..4895911cdb 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -28,8 +28,6 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 {
 	ttb = (uint32_t *)_ttb;
 
-	arm_set_cache_functions();
-
 	set_ttbr(ttb);
 
 	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6388e1bf14..78dd05577a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -414,8 +414,6 @@ void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 
-	arm_set_cache_functions();
-
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		pte_flags_cached = PTE_FLAGS_CACHED_V7;
 		pte_flags_wc = PTE_FLAGS_WC_V7;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index be303514c2..bcfc630f3b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -170,9 +170,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
 
-		if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
-			arm_set_cache_functions();
-		} else {
+		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
 			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 			arm_early_mmu_cache_invalidate();
 			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index b63776a74a..261c30129a 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -18,8 +18,6 @@ static inline void icache_invalidate(void)
 #endif
 }
 
-int arm_set_cache_functions(void);
-
 void arm_early_mmu_cache_flush(void);
 void arm_early_mmu_cache_invalidate(void);
 
-- 
2.39.2



