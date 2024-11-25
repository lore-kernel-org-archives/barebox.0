Delivery-date: Mon, 25 Nov 2024 16:20:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatW-000Fln-2M
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:20:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatW-0001nk-CS
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:20:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DcH3FXe86lzfElRmQlmNXH2HthtnY4TlRCMvTMNiV+o=; b=fEgmixPbRUQwlX5/uVJVIMU4zL
	44bDASaaBBTEtbvV55BPl4FHU1ePMExvu/hgVXJB4eqxGNbkI4ubsPXx2RBbBWx+ULACL2XsqSLsZ
	3MbLjqWhRIkee7HiBFFzIeL/3lSFydcBPLQ+Iveanyh+VfY8m8SUnQP/AnqQffXfR6ouY3NYW+oCe
	krvqauJsWE9bIC7IjffzPyNkqzZEtgPpGaBwjQ7UBWtKz29JvOsO4W/EslIEDm2nkjlpaaqBx2CF/
	q2R3PsOW3sUQamiGn75Gw2NlMSWFBia6Ja7iaO2+8+rH90mXhDLk/lZwnTeSE+hsANWaD5151BQE2
	GdprjiZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat6-00000008S8A-1DTn;
	Mon, 25 Nov 2024 15:20:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat0-00000008S4J-3dSW
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:20:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasz-0001VM-IV; Mon, 25 Nov 2024 16:20:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0006Oo-1x;
	Mon, 25 Nov 2024 16:20:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0020Cn-29;
	Mon, 25 Nov 2024 16:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:20:21 +0100
Message-Id: <20241125152024.477375-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152024.477375-1-a.fatoum@pengutronix.de>
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072026_908330_BAB36145 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] hardening: support zeroing all malloc buffers by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dummy malloc doesn't free and all allocations are in freshly sbrk()'d
memory, which already zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/calloc.c       |  7 +++----
 common/dlmalloc.c     |  7 +++++++
 common/tlsf.c         |  6 ++++++
 include/malloc.h      | 10 ++++++++++
 lib/Kconfig.hardening | 35 +++++++++++++++++++++++++++++++++++
 5 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/common/calloc.c b/common/calloc.c
index 12f18474a4c8..17cbd9beefee 100644
--- a/common/calloc.c
+++ b/common/calloc.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <malloc.h>
+#include <memory.h>
 #include <linux/overflow.h>
 
 /*
@@ -12,10 +13,8 @@ void *calloc(size_t n, size_t elem_size)
 	size_t size = size_mul(elem_size, n);
 	void *r = malloc(size);
 
-	if (!r)
-		return r;
-
-	memset(r, 0x0, size);
+	if (r && !want_init_on_alloc())
+		memset(r, 0x0, size);
 
 	return r;
 }
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 7993a20e0bd4..e6ea65e0f6e1 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -7,6 +7,7 @@
 #include <dlmalloc.h>
 #include <linux/overflow.h>
 #include <linux/build_bug.h>
+#include <linux/compiler.h>
 
 #include <stdio.h>
 #include <module.h>
@@ -1368,6 +1369,8 @@ void dlfree(void *mem)
 	p = mem2chunk(mem);
 	hd = p->size;
 
+	if (want_init_on_free())
+		memzero_explicit(mem, chunksize(p));
 
 	sz = hd & ~PREV_INUSE;
 	next = chunk_at_offset(p, sz);
@@ -1952,7 +1955,11 @@ void malloc_stats(void)
 */
 
 #ifdef CONFIG_MALLOC_DLMALLOC
+#ifdef CONFIG_INIT_ON_ALLOC_DEFAULT_ON
+void *malloc(size_t bytes) { return dlcalloc(1, bytes); }
+#else
 void *malloc(size_t) __alias(dlmalloc);
+#endif
 EXPORT_SYMBOL(malloc);
 void *calloc(size_t, size_t) __alias(dlcalloc);
 EXPORT_SYMBOL(calloc);
diff --git a/common/tlsf.c b/common/tlsf.c
index ba2ed367c0b9..4cd90e150de2 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -3,6 +3,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
+#include <malloc.h>
 #include <tlsf.h>
 #include "tlsfbits.h"
 #include <linux/kasan.h>
@@ -615,6 +616,9 @@ static void* block_prepare_used(control_t* control, block_header_t* block,
 		kasan_poison_shadow(&block->size, size + 2 * sizeof(size_t),
 			    KASAN_KMALLOC_REDZONE);
 		kasan_unpoison_shadow(p, used);
+
+		if (want_init_on_alloc())
+			memzero_explicit(p, size);
 	}
 	return p;
 }
@@ -1023,6 +1027,8 @@ void tlsf_free(tlsf_t tlsf, void* ptr)
 		control_t* control = tlsf_cast(control_t*, tlsf);
 		block_header_t* block = block_from_ptr(ptr);
 		tlsf_assert(!block_is_free(block) && "block already marked as free");
+		if (want_init_on_free())
+			memzero_explicit(ptr, block_size(block));
 		kasan_poison_shadow(ptr, block_size(block), 0xff);
 		block_mark_as_free(block);
 		block = block_merge_prev(control, block);
diff --git a/include/malloc.h b/include/malloc.h
index a823ce8c8462..7bee03dab236 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -54,4 +54,14 @@ static inline int mem_malloc_is_initialized(void)
 }
 #endif
 
+static inline bool want_init_on_alloc(void)
+{
+	return IS_ENABLED(CONFIG_INIT_ON_ALLOC_DEFAULT_ON);
+}
+
+static inline bool want_init_on_free(void)
+{
+	return IS_ENABLED(CONFIG_INIT_ON_FREE_DEFAULT_ON);
+}
+
 #endif /* __MALLOC_H */
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 28be42a27465..95dd10085410 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -10,6 +10,41 @@ config BUG_ON_DATA_CORRUPTION
 
 	  If unsure, say N.
 
+menu "Memory initialization"
+
+config INIT_ON_ALLOC_DEFAULT_ON
+	bool "Enable heap memory zeroing on allocation by default"
+	depends on !MALLOC_LIBC
+	help
+	  This has the effect of setting "init_on_alloc=1" on the kernel
+	  command line. This can be disabled with "init_on_alloc=0".
+	  When "init_on_alloc" is enabled, all page allocator and slab
+	  allocator memory will be zeroed when allocated, eliminating
+	  many kinds of "uninitialized heap memory" flaws, especially
+	  heap content exposures. The performance impact varies by
+	  workload, but most cases see <1% impact. Some synthetic
+	  workloads have measured as high as 7%.
+
+config INIT_ON_FREE_DEFAULT_ON
+	bool "Enable heap memory zeroing on free by default"
+	depends on !MALLOC_DUMMY && !MALLOC_LIBC
+	help
+	  This has the effect of setting "init_on_free=1" on the kernel
+	  command line. This can be disabled with "init_on_free=0".
+	  Similar to "init_on_alloc", when "init_on_free" is enabled,
+	  all page allocator and slab allocator memory will be zeroed
+	  when freed, eliminating many kinds of "uninitialized heap memory"
+	  flaws, especially heap content exposures. The primary difference
+	  with "init_on_free" is that data lifetime in memory is reduced,
+	  as anything freed is wiped immediately, making live forensics or
+	  cold boot memory attacks unable to recover freed memory contents.
+	  The performance impact varies by workload, but is more expensive
+	  than "init_on_alloc" due to the negative cache effects of
+	  touching "cold" memory areas. Most cases see 3-5% impact. Some
+	  synthetic workloads have measured as high as 8%.
+
+endmenu
+
 config STACK_GUARD_PAGE
 	bool "Place guard page to catch stack overflows"
 	depends on ARM && MMU
-- 
2.39.5



