Delivery-date: Mon, 22 May 2023 07:30:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7a-009JD3-Qy
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7W-0002zB-HN
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG16kDJ1UiDB578RxID0gS+GrdSU4ijCm7EtTRSjtaQ=; b=quRKYnS6ORQc2D
	jRVVeW8nUIl78SnHYcO/q/BU29neogDWWSEJnv003f1i1eIGB7Ea4A7f9viZaNTJbJxRSPjnIw9ZT
	W+qJbEHmFhViKoLRiVLjEdMAep90v7AUbjRpaBZ+1/Y4uU2OrCEHgemqlRDXkEqeKkGH/fTDyKxYr
	t1d8GFzYOASr3uHbAjSKtceba2OGlzAFLJz6uZhHTdckoFNg2TOayqsISVqHhsngGs4UfT5bHKOIw
	7XjvP17j/AYScG9JiLqVc0ApdoROR7I9X1ObEFknxPclS3dUNgv4lDQesOKtTvS5zgl0ub4v2B4Z8
	h1N2QsWj4le+Ccl3sK7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6H-005Oa5-0S;
	Mon, 22 May 2023 05:28:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y67-005OUp-06
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-0002MX-Qq; Mon, 22 May 2023 07:28:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vvr-2Q; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004ML6-Jp; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:25 +0200
Message-Id: <20230522052835.1039143-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_418226_98537C76 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/11] treewide: use remap_range instead of arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The remapping in arch_remap_range is currently limited to attributes. In
a later commit, we'll start supporting non-1:1 remappings. We'll keep
remap_range as is for 1:1, so as preparation, let's switch all
arch_remap_range users that want 1:1 remappings to remap_range.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c |  8 ++++----
 arch/arm/cpu/mmu_32.c     | 10 +++++-----
 arch/arm/cpu/mmu_64.c     | 10 +++++-----
 drivers/hab/habv4.c       |  2 +-
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 02f512c2c6bd..5208db21ec90 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -36,7 +36,7 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 	memset(ret, 0, size);
 	dma_flush_range(ret, size);
 
-	arch_remap_range(ret, size, flags);
+	remap_range(ret, size, flags);
 
 	return ret;
 }
@@ -53,19 +53,19 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
-	arch_remap_range(mem, size, MAP_CACHED);
+	remap_range(mem, size, MAP_CACHED);
 
 	free(mem);
 }
 
 void zero_page_access(void)
 {
-	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
+	remap_range(0x0, PAGE_SIZE, MAP_CACHED);
 }
 
 void zero_page_faulting(void)
 {
-	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
+	remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
 static int mmu_init(void)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 852c5626dedd..e4607d99fd2a 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -534,11 +534,11 @@ void __mmu_init(bool mmu_on)
 		pos = bank->start;
 
 		for_each_reserved_region(bank, rsv) {
-			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 }
 
@@ -581,9 +581,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	create_flat_mapping();
 
 	/* maps main memory as cachable */
-	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
-	arch_remap_range((void *)PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
+	remap_range((void *)PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 3f9b52bbdb7b..478222cd991f 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -203,11 +203,11 @@ void __mmu_init(bool mmu_on)
 		pos = bank->start;
 
 		for_each_reserved_region(bank, rsv) {
-			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
 	/* Make zero page faulting to catch NULL pointer derefs */
@@ -257,9 +257,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
-	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
-	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+	remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
+	remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
 
 	mmu_enable();
 }
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index d2494db11486..a8745e8339e5 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -616,7 +616,7 @@ static int init_imx6_hab_get_status(void)
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
-	arch_remap_range(0x0, SZ_1M, MAP_CACHED);
+	remap_range(0x0, SZ_1M, MAP_CACHED);
 
 	/*
 	 * Nobody will check the return value if there were HAB errors, but the
-- 
2.39.2



