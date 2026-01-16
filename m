Delivery-date: Fri, 16 Jan 2026 09:36:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJS-001trh-2y
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:36:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJR-00089w-3r
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:36:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=joSLTv6d1ymzkBbvGFf2Y2bjqB94a4Kssu8Iucn89q0=; b=0yZhIR/9xytN1nsSHu3eh9YlFr
	v4PHL0ZChIVk+XKAmFYIwb7VpS0CJYV6jdAVd+eYcje5i2BDcP9VubiODAkugu9G84WR1DfHFA0BY
	4i8e4U9mNZtW5sR4fhegmUX26Hoag+Qj5bW81UfbR4rbpOnuzaw0MLCaTIAXMaNTnzU/yiXpDtqia
	P23id57//CXzHdYPphivHFK4LrYpHOs4jH7tvaSR9XI+UAjubkjGh0Y6pG4C1Cmj8ydYDRN4HBnMm
	s5SpWeLFiCBjw8M0K/usRTh1C3zWdfm22R7/bVDN2HG37kK0CTXhyxSkGK8aU7PDimnz14tzDEItW
	iEQpWi5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIl-0000000DltR-2gR2;
	Fri, 16 Jan 2026 08:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfId-0000000Dlh5-12jN
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007Sm-NH; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIc-000tE9-0W;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1hSv;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-13-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=3576;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=V2FksO4KTrNxERLL4JuExDG2THc4S+Gph6mAUPZOH+c=;
 b=PHpdDKAklZSrGF4MuM6FI3XmsKVgwDSD4vfULcut+aQ2hSqZiroCrWnyQLGrSbF75pTcuCoLn
 h8up4uosdRvAzz+rw3kFiK/UujKk2+odiZgSVqgoOuq26FjvDbnOETI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003519_290170_EC0BA1B8 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 13/22] mmu: add MAP_CACHED_RO mapping type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM32 and ARM64 have ARCH_MAP_CACHED_RO. We'll move parts of the MMU
initialization to generic code later, so add a new mapping type to
include/mmu.h.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 4 ++--
 arch/arm/cpu/mmu-common.h | 3 +--
 arch/arm/cpu/mmu_32.c     | 4 ++--
 arch/arm/cpu/mmu_64.c     | 2 +-
 include/mmu.h             | 3 ++-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index a1431c0ff4..67317f127c 100644
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
@@ -158,7 +158,7 @@ static void mmu_remap_memory_banks(void)
 	}
 
 	remap_range((void *)code_start, code_size, MAP_CODE);
-	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);
 
 	setup_trap_pages();
 }
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index a111e15a21..b42c421ffd 100644
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
index caa41e1beb..eee1385a8f 100644
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
index 56c6a21f2b..ddf1373ec0 100644
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
index f796198088..9f582f25e1 100644
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



