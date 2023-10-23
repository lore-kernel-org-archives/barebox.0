Delivery-date: Mon, 23 Oct 2023 10:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quqZF-0012Xp-Oq
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 10:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quqZE-0003Io-D2
	for lore@pengutronix.de; Mon, 23 Oct 2023 10:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=46ik8IYo4Yu9nQhTxb4Ha3uSXumq726FnhoIW6qtpW4=; b=wQxox6sJSFPbi9xKxIOnu4PIpW
	wZEwQQAsM7p3T9BqVGkDIyUXsbkBAbUV+5EEdl63xRVvch0dOSAUbXnCDXyUUO7NSwI8XL5ESogTV
	m1qAUXLQ1OaphDLzPvWR9QdTNBUg1BJhUxS9sDsmbZ5e8+HpNV+GTwhIg7nD+ZcUhNGAStTAinD6f
	PzkNV9RYN9G5fZopkONxuR8MRrdE0d+YlVkqCtvIyEpjV8gGauCW8su7tr9zWiseRS3vNFwkN7CKB
	r4ZKuJGeOsExVkKdo6C8qwFIG2CbI5yJs4vL0FUYPGz5JkYiszLvHn6afpihCclJftLLjd9MTZPtM
	aOrexLtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quqY4-006nzQ-0C;
	Mon, 23 Oct 2023 08:44:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quqY0-006nyz-2Q
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 08:44:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1quqXz-00034z-86; Mon, 23 Oct 2023 10:44:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1quqXy-003fO0-Rz; Mon, 23 Oct 2023 10:44:26 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1quqXy-0004aD-2b;
	Mon, 23 Oct 2023 10:44:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 23 Oct 2023 10:44:26 +0200
Message-Id: <20231023084426.17581-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_014428_810029_985D58EB 
X-CRM114-Status: GOOD (  16.11  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] memory: remap immediately in reserve_sdram_region()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reserve_sdram_region() has the purpose of reserving SDRAM regions from
being accessed by the CPU. Right now this remaps the reserved region
during MMU setup. Instead of doing this, remap the region immediately.

The MMU may be enabled already by early code. This means that when
reserve_sdram_region() is called with MMU enabled, we can't rely on
the region being mapped non-executable right after the call, but only
when __mmu_init() is executed. This patch relaxes this constraint.

Also, reserve_sdram_region() may now be called after __mmu_init() is
executed.

So far we silently aligned the remapped region to page boundaries, but
really calling reserve_sdram_region() with non page aligned boundaries
has undesired effects on the regions between the reserved region and
the page boundaries. Stay with this behaviour, but warn the user when
the to be reserved region is not page aligned as this really shouldn't
happen.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c |  2 +-
 arch/arm/cpu/mmu_64.c |  3 +--
 common/memory.c       | 26 ++++++++++++++++++++++++++
 include/memory.h      |  9 ++-------
 4 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 07b2250677..d0ada5866f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -558,8 +558,8 @@ void __mmu_init(bool mmu_on)
 
 		pos = bank->start;
 
+		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)rsv->start, resource_size(rsv), MAP_UNCACHED);
 			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index fb57260c90..b718cb1efa 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -243,9 +243,8 @@ void __mmu_init(bool mmu_on)
 
 		pos = bank->start;
 
+		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)resource_first_page(rsv),
-				    resource_count_pages(rsv), MAP_UNCACHED);
 			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
diff --git a/common/memory.c b/common/memory.c
index 0ae9e7383c..d560d444b0 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -15,6 +15,7 @@
 #include <asm/sections.h>
 #include <malloc.h>
 #include <of.h>
+#include <mmu.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -211,6 +212,31 @@ struct resource *__request_sdram_region(const char *name, unsigned flags,
 	return NULL;
 }
 
+/* use for secure firmware to inhibit speculation */
+struct resource *reserve_sdram_region(const char *name, resource_size_t start,
+				      resource_size_t size)
+{
+	struct resource *res;
+
+	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
+	if (IS_ERR(res))
+		return ERR_CAST(res);
+
+	if (!IS_ALIGNED(start, PAGE_SIZE)) {
+		pr_err("%s: %s start is not page aligned\n", __func__, name);
+		start = ALIGN_DOWN(start, PAGE_SIZE);
+	}
+
+	if (!IS_ALIGNED(size, PAGE_SIZE)) {
+		pr_err("%s: %s size is not page aligned\n", __func__, name);
+		size = ALIGN(size, PAGE_SIZE);
+	}
+
+	remap_range((void *)start, size, MAP_UNCACHED);
+
+	return res;
+}
+
 int release_sdram_region(struct resource *res)
 {
 	return release_region(res);
diff --git a/include/memory.h b/include/memory.h
index 9c2a037610..d8691972ec 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -43,13 +43,8 @@ static inline struct resource *request_sdram_region(const char *name,
 	return __request_sdram_region(name, 0, start, size);
 }
 
-/* use for secure firmware to inhibit speculation */
-static inline struct resource *reserve_sdram_region(const char *name,
-						    resource_size_t start,
-						    resource_size_t size)
-{
-	return __request_sdram_region(name, IORESOURCE_BUSY, start, size);
-}
+struct resource *reserve_sdram_region(const char *name, resource_size_t start,
+				      resource_size_t size);
 
 int release_sdram_region(struct resource *res);
 
-- 
2.39.2



