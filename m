Delivery-date: Fri, 12 May 2023 13:11:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQge-00F2RE-O8
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgc-0004yB-Ck
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tC2wzX7JvSDX7x4igYagE26wHcBfc+xFPpG2ePQicEI=; b=D6gTzlU3O2B0zoaA7UaltAmVxS
	j2haPobEJi0zHRFzZRXgCDvmGqEZwq1UJf2J19ENrLhxmYcas5KB6JeY90wqjPAz7W3t2u1yd50wH
	jPVWqLfw6WUVKhjbP/6I6sEYaA96ONeAAv4gtc8Q6qcnG4XYBlRAFKd4R0RP+UgreWvgJkHqk3G0a
	2smRHc61ovQHUDxaAW0to1ipXSgDkJHXlm3gUMAgiSEHfMLt5oR09td9htdYVStRhiaKATbXnC5oR
	pK7aLJgoz0wLkiDzAK5OxXOkfQyPHc2oRW0oBr6WJCGm87kKrkIXS/MiAx0cfNRvVaa7yFT0+Gw9e
	AQYW9lEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfQ-00Bk5U-1q;
	Fri, 12 May 2023 11:10:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00BjtK-2h
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-0003b7-3o; Fri, 12 May 2023 13:10:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-002wj8-A8; Fri, 12 May 2023 13:10:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Ed-CO; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:00 +0200
Message-Id: <20230512111008.1120833-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_911959_38D2C120 
X-CRM114-Status: GOOD (  15.58  )
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
Subject: [PATCH 19/27] ARM: mmu32: Assume MMU is on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As we now always enable the MMU during early initialization we can
safely assume that the MMU is already enabled in __mmu_init() and
drop the code path which enables the MMU.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 41 ++++++++++-------------------------------
 1 file changed, 10 insertions(+), 31 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index bef4a01670..63e1acdcfa 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -457,38 +457,19 @@ void __mmu_init(bool mmu_on)
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
-	if (mmu_on) {
+	/* Clear unpredictable bits [13:0] */
+	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
+
+	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 		/*
-		 * Early MMU code has already enabled the MMU. We assume a
-		 * flat 1:1 section mapping in this case.
+		 * This can mean that:
+		 * - the early MMU code has put the ttb into a place
+		 *   which we don't have inside our available memory
+		 * - Somebody else has occupied the ttb region which means
+		 *   the ttb will get corrupted.
 		 */
-		/* Clear unpredictable bits [13:0] */
-		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
-
-		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			/*
-			 * This can mean that:
-			 * - the early MMU code has put the ttb into a place
-			 *   which we don't have inside our available memory
-			 * - Somebody else has occupied the ttb region which means
-			 *   the ttb will get corrupted.
-			 */
-			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
+		pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
 					ttb);
-	} else {
-		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
-
-		set_ttbr(ttb);
-
-		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-		if (cpu_architecture() >= CPU_ARCH_ARMv7)
-			set_domain(DOMAIN_CLIENT);
-		else
-			set_domain(DOMAIN_MANAGER);
-
-		create_flat_mapping(ttb);
-		__mmu_cache_flush();
-	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
@@ -499,8 +480,6 @@ void __mmu_init(bool mmu_on)
 				PMD_SECT_DEF_CACHED);
 		__mmu_cache_flush();
 	}
-
-	__mmu_cache_on();
 }
 
 /*
-- 
2.39.2



