Delivery-date: Wed, 17 May 2023 11:05:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD64-0048aF-3K
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5y-0004ms-27
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knd2RYC9e0NCa3HuzhvxvbMGHMgr6jycConTvEBR7T0=; b=SbTpqiCdXUWqq0
	Fx+9BKBVXyUiwUMcdObnElWvEh0eJ+hT8pfQ8qt0qaDuiL8cuaN8jicgGlpE7l5eeEg0DaCOIgQ+1
	nje+NY5WqoeKzvDGTfFGle5HDjeoXuw2T6CndgKZKRVVONtzZ4bG7VmGU6uYpwnzrBLwGrzBNQXY4
	zybQacr5B3bl/UxX3+CKudYIHC3GL1JTS0AipneI7OG1DC51wwZERM54CrECJYK51MNhl9wZZH+PV
	6epw0DBxkXlAVUvukJUS1jgw2tKzhSOxk2m+TRM1sA4c24mtOwmJTECtWME/m78a7RF0N19CBwYKU
	pbkqJkfYhZT5+7PL/z+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4i-008yUN-0z;
	Wed, 17 May 2023 09:04:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yME-2R
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003wl-It; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4R-000o6U-Mx; Wed, 17 May 2023 11:03:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Garo-QM; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:21 +0200
Message-Id: <20230517090340.3954615-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_844356_D167D519 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/34] ARM: mmu64: Use arch_remap_range where possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a22e0c81ab..0639d0f1ce 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -174,12 +174,12 @@ static void mmu_enable(void)
 
 void zero_page_access(void)
 {
-	create_sections(0x0, 0x0, PAGE_SIZE, CACHED_MEM);
+	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
 }
 
 void zero_page_faulting(void)
 {
-	create_sections(0x0, 0x0, PAGE_SIZE, 0x0);
+	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
 /*
@@ -201,17 +201,17 @@ void __mmu_init(bool mmu_on)
 	pr_debug("ttb: 0x%p\n", ttb);
 
 	/* create a flat mapping */
-	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), attrs_uncached_mem());
+	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
 
 	/* Map sdram cached. */
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
 
-		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
+		arch_remap_range((void *)bank->start, bank->size, MAP_CACHED);
 
 		for_each_reserved_region(bank, rsv) {
-			create_sections(resource_first_page(rsv), resource_first_page(rsv),
-					resource_count_pages(rsv), attrs_uncached_mem());
+			arch_remap_range((void *)resource_first_page(rsv),
+					 resource_count_pages(rsv), MAP_UNCACHED);
 		}
 	}
 
-- 
2.39.2



