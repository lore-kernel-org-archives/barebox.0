Delivery-date: Tue, 06 Aug 2024 12:55:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHqO-006nfn-0P
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 12:55:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHqN-0004EQ-Fu
	for lore@pengutronix.de; Tue, 06 Aug 2024 12:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h42OkwZTzEpdtQdjASWGkpFNM6vLPj6eqC5+hjpR56E=; b=Wu2rS+VBz7GXTCwyefRyYjRozl
	NkzYlwKiviT71ArxGsYwjJhUqiHYSD1F5PL2K2IBZJaUYMxXh3OJOwth5cYff96HvmHJzt5jc6lCO
	Wx/Kh5QvrJB3Ot1Vjy/m4k+6F7Sptm06Mbvc76FoqNk1pa3oFbT0m0wMUUqXBDyvd7xTCO3MW/Kjz
	vb6xy0WZWS7CgIkh4jc/f2XXh7YB4+twG3i3mAKAa+fD9XZ4/gKsPxTH/IsCyCR10kHApS/pMfbrZ
	CfF6HjEsxHOrGUfSP89rCyvg+pYWuPmEfx92KTvZxyGfmytCyTpjJMK8nEOV/q3q81chmXaq4Q709
	VLAAZpXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHpt-00000001HYC-31VU;
	Tue, 06 Aug 2024 10:54:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHpo-00000001HWm-2EEw
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 10:54:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpn-00049K-9K; Tue, 06 Aug 2024 12:54:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpm-004w1i-Si; Tue, 06 Aug 2024 12:54:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpm-009Ytv-2V;
	Tue, 06 Aug 2024 12:54:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  6 Aug 2024 12:54:29 +0200
Message-Id: <20240806105429.2278660-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240806105429.2278660-1-s.hauer@pengutronix.de>
References: <20240806105429.2278660-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_035432_598586_9613B68E 
X-CRM114-Status: GOOD (  15.11  )
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
Subject: [PATCH 2/2] malloc: implement free_sensitive()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox sometimes stores sensitive data in memory. Add a
(k)free_sensitive() function which zeroes out the memory before freeing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile      |  1 +
 common/malloc.c      | 14 ++++++++++++++
 include/dma.h        |  5 +++++
 include/linux/slab.h |  5 +++++
 include/malloc.h     |  1 +
 5 files changed, 26 insertions(+)
 create mode 100644 common/malloc.c

diff --git a/common/Makefile b/common/Makefile
index 96498790b3..e88f60b6d7 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
 obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
 KASAN_SANITIZE_tlsf.o := n
 obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
+obj-y				+= malloc.o
 obj-$(CONFIG_MEMINFO)		+= meminfo.o
 obj-$(CONFIG_MENU)		+= menu.o
 obj-$(CONFIG_MODULES)		+= module.o
diff --git a/common/malloc.c b/common/malloc.c
new file mode 100644
index 0000000000..9dbad98701
--- /dev/null
+++ b/common/malloc.c
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <malloc.h>
+#include <string.h>
+
+void free_sensitive(void *mem)
+{
+	size_t size = malloc_usable_size(mem);
+
+	if (size)
+		memzero_explicit(mem, size);
+
+	free(mem);
+}
diff --git a/include/dma.h b/include/dma.h
index 4fcd114bb6..c2b1bee358 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -41,6 +41,11 @@ static inline void dma_free(void *mem)
 	free(mem);
 }
 
+static inline void dma_free_sensitive(void *mem)
+{
+	free_sensitive(mem);
+}
+
 #define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
 
 #define DMA_MASK_NONE	0x0ULL
diff --git a/include/linux/slab.h b/include/linux/slab.h
index a63aad1c34..5e08c7697d 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -62,6 +62,11 @@ static inline void kfree(const void *mem)
 	dma_free((void *)mem);
 }
 
+static inline void kfree_sensitive(const void *objp)
+{
+	dma_free_sensitive((void *)objp);
+}
+
 static inline void *kmem_cache_alloc(struct kmem_cache *cache, gfp_t flags)
 {
 	void *mem = kmalloc(cache->size, flags);
diff --git a/include/malloc.h b/include/malloc.h
index 5cdff0a4f9..fc0c94855e 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -8,6 +8,7 @@
 void *malloc(size_t) __alloc_size(1);
 size_t malloc_usable_size(void *);
 void free(void *);
+void free_sensitive(void *);
 void *realloc(void *, size_t) __realloc_size(2);
 void *memalign(size_t, size_t) __alloc_size(2);
 void *calloc(size_t, size_t) __alloc_size(1, 2);
-- 
2.39.2



