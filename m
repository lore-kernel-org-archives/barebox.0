Delivery-date: Fri, 27 Sep 2024 12:43:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Rp-003N69-2W
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RY-0005zP-U2
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CTfd82jZH0k3cb6qzrJ6Y+JVfPQQYOzLAqTJ9l8XKW0=; b=Ql7LJJSZLn0nIKZTK1x4XEBJ4c
	OFZio/rlAjjKdQZ+r3Yw1KZbPHIz+xKH2T5EzrOy3pELDTjZKXeMNwrDp6qcWrT+cY7SFnwETHsWz
	YBmK7BjNnS+m0OGVk3zsNW1/mvqAVWdpSLC6tYj6cUREtWHvh/f9Lp8PvpWqeK6PwvUoWgnzQDEf7
	7krkVafw2phCcreIuBhLkUzMmX7kvsCAVgoE2oqKgNdycBMpKkJ9T4je3NbJ3H7uiZwf5bEn4QkGv
	tf+PBGlhiv5qjcbSScOgkd1byBqpKf706LRkL+JDPyvlmZP+4LawCbKALg059WJlZZuTFUbxIyMsU
	i3EXVwaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QT-0000000Aqvb-0srN;
	Fri, 27 Sep 2024 10:42:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ox-0000000AqVu-0YE7
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CTfd82jZH0k3cb6qzrJ6Y+JVfPQQYOzLAqTJ9l8XKW0=; b=ModXR4RpxoAp74JD+4/TzG6y2K
	bgolrRGX15fuL4EmlkTzzYjzlFNND8zdvpEFRBJ4Vc5xw6FwcpwdGLwfW7GR72gUfKGDaJyUH/E/3
	uVTb8zoE8qwTMyQMRQHD3PbMDjTgpRBvVoaVYeumhFDLkw1zqFmzDnbNWJq+bVSRxZcpt19TBwUVE
	eDNQh3nqKjkJgbCBWX9/JtjQxlhRigGX2ZA0ekMcB41NT5dIUj6bX+yfm2FaxVy1CxnLXr8rd9byj
	n1+jZHHHvKW4PnjhNo/4cKPojWnAE7r8989vALcL7cbFG80YU07bXOkloKKJ1sxMCF9MHJ/HBiZbl
	DnCg4ySA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-00000002Kd2-1dcQ
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043u-VH; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u4N-In; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1W;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-13-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=2269;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IIFEHQnmFJ8k6Bu5dGY7KlbcIvRhS3ZkQWYtQADAnwI=;
 b=PSe/hhqZHafo5CeAgKTlnvQpl040r1ATvXxuEX3FEK6V/cRo+8k86TDdIkn0bbKG6zHFmUXdM
 LutGkm0RHKYAN55HogRoapfkvJmfNA6rpzRBX4C513xi1lVW++MdQ01
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114039_218994_97097D28 
X-CRM114-Status: GOOD (  11.60  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/15] ARM: ARM64: implement dma_alloc_writecombine()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently only have dma_alloc_writecombine() for aarch32. Implement
it for aarch64 as it is useful for mapping framebuffer memory.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



