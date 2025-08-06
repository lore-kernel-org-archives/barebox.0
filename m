Delivery-date: Wed, 06 Aug 2025 14:39:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQc-007dc8-0O
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQa-00011p-OZ
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6OyPYYaodOn8KXrPQ4AH28zYlxKzDvt63mPXTk5lbFw=; b=Smycm53SBs7/HXcLjGQc3vV76d
	i5GLnhiLJ8DQwNXnZK1NIFE656gKd5tfSrCB73a4NrQmtAbTA1vMPI+YMQaj6zf4/sWqUa+lRzLcH
	o6J/4DqXiprWoPs0yfJAUcV4/TWMNKdG+/PvT5Zs2eSTGousjRc2mWMj9VAQzm9g6k3Qzx0ZTM5BO
	+dOCbJQZhi+jy3SIS/9wXXVdr2vzK4YYV7B0Dc25jguFtMTxnU3CzUMTwtzgPOPsG5lKn8UikzzIH
	Ih7UL9V0xxAIUqLaojNp6b84vSPlsOJv5ORSWH2GU5GKO8VD1NTiAtNxPUs28yN5p7gQpO4Wovw6G
	hhM0KojA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ5-0000000FALr-2gNC;
	Wed, 06 Aug 2025 12:39:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5Q-44GO
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000Mt-OA; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD97-1d;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-1I;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:59 +0200
Message-Id: <20250806123714.2092620-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053717_015481_3D4AAC0E 
X-CRM114-Status: GOOD (  12.44  )
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
Subject: [PATCH 07/22] ARM: mmu: print map type as string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make early debugging of the MMU easier, let's add support for
printing the MMU mapping type as a string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 14 ++++++++++++++
 arch/arm/cpu/mmu-common.h | 16 ++++++++++++++++
 arch/arm/cpu/mmu_32.c     |  2 +-
 3 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 2e61dc36b7cc..1770c56b6eea 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -16,6 +16,20 @@
 #include "mmu-common.h"
 #include <efi/efi-mode.h>
 
+const char *map_type_tostr(maptype_t map_type)
+{
+	switch (map_type) {
+	case ARCH_MAP_CACHED_RWX:	return "RWX";
+	case ARCH_MAP_CACHED_RO:	return "RO";
+	case MAP_CACHED:		return "CACHED";
+	case MAP_UNCACHED:		return "UNCACHED";
+	case MAP_CODE:			return "CODE";
+	case MAP_WRITECOMBINE:		return "WRITECOMBINE";
+	case MAP_FAULT:			return "FAULT";
+	default:			return "<unknown>";
+	}
+}
+
 void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 			   enum dma_data_direction dir)
 {
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index e9005dfae766..01d081db426e 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -57,4 +57,20 @@ static inline size_t resource_count_pages(const struct resource *res)
 	return ALIGN(resource_size(res), SZ_4K);
 }
 
+const char *map_type_tostr(maptype_t map_type);
+
+static inline void __pr_debug_remap(const char *func, ulong virt_addr, ulong phys_addr,
+				  size_t size, maptype_t map_type)
+{
+	if (phys_addr == virt_addr)
+		pr_debug("%s: 0x%08lx+0x%zx type %s\n",	func,
+			 virt_addr, size, map_type_tostr(map_type));
+	else
+		pr_debug("%s: 0x%08lx+0x%zx -> 0x%08lx type %s\n", func,
+			 virt_addr, size, phys_addr, map_type_tostr(map_type));
+}
+
+#define pr_debug_remap(virt_addr, phys_addr, size, map_type)	\
+	__pr_debug_remap(__func__, virt_addr, phys_addr, size, map_type)
+
 #endif
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index e631b741f107..4b7f370edaea 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -278,7 +278,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
-	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
+	pr_debug_remap(virt_addr, phys_addr, size, map_type);
 
 	size = PAGE_ALIGN(size);
 	if (!size)
-- 
2.39.5



