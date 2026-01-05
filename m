Delivery-date: Mon, 05 Jan 2026 12:32:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciof-001VI6-0D
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciod-00079n-Vz
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7xnP6vkys5hoXnjG1qpmvHLofhBl1EtMESWR7eHJoco=; b=SK7WvxhOlMO2PXf2j5eouTdeue
	Dypi5eerfXUGR7tTJ8zuYBR1lJbuwhbZIq235HNc19zOfNrc9euzn2Oemf9uoKAh4nBX5FBFRmyt6
	S2HXivYjWqdJHXcltw/3T/gUFb5cmALsqrleROxBm6NPDSgNgDZRaA3s32qwM2ffX11bmYj1Ziila
	LMhyhNgyB3fGR3k8FhYcapLVHHfABzA5tylj6G+XaUgdYSTH6SFkupH9463gODamDG69QN2dHmpdB
	5U95rEPG0WgwnseuE/zuhKspvCaC4V3SlQauxNlgfhK2h0tBXCdVojJ4cz0bGAnjm6v153KEdvvoI
	A5Lm6LMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioC-0000000BCGE-3aTx;
	Mon, 05 Jan 2026 11:31:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB8-3d5X
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006kc-FK; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0099zr-0u;
	Mon, 05 Jan 2026 12:31:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-115w;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-10-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=3846;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Of9kLeuE7y5CDcluSzDfOlaP+vOOIsUzM5YgIO55wpY=;
 b=dLV/728RZEU8t7meKeiVmN5SBiPi3oxkgKKTc0Jga4pMTsuh2rJFVWvAFCvrMj1Wf7yll1Vpm
 N3zR/DsVHbWBvDgtMThx3ybm8J1/7r4Y0+q/2Eja5aobnZ85O4NmTWf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_946419_8F2D6B0E 
X-CRM114-Status: GOOD (  13.33  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH 10/19] mmu: add MAP_CACHED_RO mapping type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM32 and ARM64 have ARCH_MAP_CACHED_RO. We'll move parts of the MMU
initialization to generic code later, so add a new mapping type to
include/mmu.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 4 ++--
 arch/arm/cpu/mmu-common.h | 3 +--
 arch/arm/cpu/mmu_32.c     | 4 ++--
 arch/arm/cpu/mmu_64.c     | 2 +-
 include/mmu.h             | 3 ++-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index b3d9e9579686c0612068c6281420cb6ccaaf4ee8..3208139fdd24e89cf4c76e27477da23da169f164 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -22,7 +22,7 @@ const char *map_type_tostr(maptype_t map_type)
 
 	switch (map_type) {
 	case ARCH_MAP_CACHED_RWX:	return "RWX";
-	case ARCH_MAP_CACHED_RO:	return "RO";
+	case MAP_CACHED_RO:		return "RO";
 	case MAP_CACHED:		return "CACHED";
 	case MAP_UNCACHED:		return "UNCACHED";
 	case MAP_CODE:			return "CODE";
@@ -161,7 +161,7 @@ static void mmu_remap_memory_banks(void)
 	setup_trap_pages();
 
 	remap_range((void *)code_start, code_size, MAP_CODE);
-	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);
 }
 
 static int mmu_init(void)
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index a111e15a21b479b5ffa2ea8973e2ad189e531925..b42c421ffde8ebba84b17c6311b735f7759dc69b 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -12,7 +12,6 @@
 #include <linux/bits.h>
 
 #define ARCH_MAP_CACHED_RWX	MAP_ARCH(2)
-#define ARCH_MAP_CACHED_RO	MAP_ARCH(3)
 
 #define ARCH_MAP_FLAG_PAGEWISE	BIT(31)
 
@@ -32,7 +31,7 @@ static inline maptype_t arm_mmu_maybe_skip_permissions(maptype_t map_type)
 	switch (map_type & MAP_TYPE_MASK) {
 	case MAP_CODE:
 	case MAP_CACHED:
-	case ARCH_MAP_CACHED_RO:
+	case MAP_CACHED_RO:
 		return ARCH_MAP_CACHED_RWX;
 	default:
 		return map_type;
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 63c412873ec8fdb047a3323e773648cb03d5757b..97c7107290ce95ddb21a322a5d0e74f3d324c528 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -304,7 +304,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
 		switch (map_type & MAP_TYPE_MASK) {
 		case ARCH_MAP_CACHED_RWX:
 			return PTE_FLAGS_CACHED_V7_RWX;
-		case ARCH_MAP_CACHED_RO:
+		case MAP_CACHED_RO:
 			return PTE_FLAGS_CACHED_RO_V7;
 		case MAP_CACHED:
 			return PTE_FLAGS_CACHED_V7;
@@ -320,7 +320,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
 		}
 	} else {
 		switch (map_type & MAP_TYPE_MASK) {
-		case ARCH_MAP_CACHED_RO:
+		case MAP_CACHED_RO:
 		case MAP_CODE:
 			return PTE_FLAGS_CACHED_RO_V4;
 		case ARCH_MAP_CACHED_RWX:
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f22fcb5f8ea4db9843c8447ac5bf4f8cf29bb59c..afb3d2d7efd0bc7ecde1177d1544f54d751b5dc1 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -159,7 +159,7 @@ static unsigned long get_pte_attrs(maptype_t map_type)
 		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
 	case MAP_CODE:
 		return CACHED_MEM | PTE_BLOCK_RO;
-	case ARCH_MAP_CACHED_RO:
+	case MAP_CACHED_RO:
 		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
 	case ARCH_MAP_CACHED_RWX:
 		return CACHED_MEM;
diff --git a/include/mmu.h b/include/mmu.h
index 29992ae1d6c644f4eaa6519dae2b57055333bff6..53603b7956c229b4c715c57b19d0398931eb2d6b 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -9,9 +9,10 @@
 #define MAP_CACHED		1
 #define MAP_FAULT		2
 #define MAP_CODE		3
+#define MAP_CACHED_RO		4
 
 #ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
-#define MAP_WRITECOMBINE	4
+#define MAP_WRITECOMBINE	5
 #else
 #define MAP_WRITECOMBINE	MAP_UNCACHED
 #endif

-- 
2.47.3



