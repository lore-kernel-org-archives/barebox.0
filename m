Delivery-date: Mon, 22 Nov 2021 09:49:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51D-0003OW-Py
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51B-00009r-Oe
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGQ2RnwG45t2kGozg33rYhNt9QUEEIAs6dvHujx83Q0=; b=GQ1JS1WMH9g/td
	7ZjM8OZdlp3iCuF5Gi+V4/3MVhZf5UAUPJnbLczZUvalP0SEcOWSJ2R6251+OUCIXjaaxY9jfEPpd
	IFXfPSWlmdI0ZdDq9QqSwIyz8QZpa7/5AtvqZWG+A39mshnKVCPkhj01b87LXj+9K3PUUX0rkI0y2
	guRhvO5J3p3BqG1zM3Lmrkok7w1VCPZ2XkGFcT9HNbeY9X55hVQtTyLISPFM6+U9Bk5xUx+WfzVPH
	sF3opbNIVcaTo646RMwj4Bxmw2JPaMhn0BCHQwQGZZnsL10QpOrsIZ9pwVEDUT+qvw4T2xDlZOV47
	Kh0Q+8vTEsuXPnKAgnfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zj-00FLGW-Rm; Mon, 22 Nov 2021 08:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyy-Ts
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wI-KR; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Aten-Bb; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:09 +0100
Message-Id: <20211122084732.2597109-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_998411_A90A4149 
X-CRM114-Status: GOOD (  15.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/30] asm-generic: move sync_caches_for_execution declaration
 to <asm/cache.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have three architectures defining sync_caches_for_execution(). Have
them all do so in a header of the same name to allow using it in common
code later on, like in an EFI image loading routine.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/cache.h                     | 3 +++
 arch/kvx/include/asm/cache.h                     | 3 +++
 arch/riscv/include/asm/barebox-riscv.h           | 3 +--
 arch/riscv/include/asm/{cacheflush.h => cache.h} | 9 +++++++--
 arch/riscv/lib/reloc.c                           | 2 +-
 include/asm-generic/cache.h                      | 9 +++++++++
 6 files changed, 24 insertions(+), 5 deletions(-)
 rename arch/riscv/include/asm/{cacheflush.h => cache.h} (59%)
 create mode 100644 include/asm-generic/cache.h

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index bf3a1a0ed291..9ebe80dc89bc 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -21,6 +21,9 @@ int arm_set_cache_functions(void);
 void arm_early_mmu_cache_flush(void);
 void arm_early_mmu_cache_invalidate(void);
 
+#define sync_caches_for_execution sync_caches_for_execution
 void sync_caches_for_execution(void);
 
+#include <asm-generic/cache.h>
+
 #endif
diff --git a/arch/kvx/include/asm/cache.h b/arch/kvx/include/asm/cache.h
index 0bf3c8f06ef5..72de5d804faa 100644
--- a/arch/kvx/include/asm/cache.h
+++ b/arch/kvx/include/asm/cache.h
@@ -10,6 +10,7 @@
 
 void invalidate_dcache_range(unsigned long addr, unsigned long stop);
 
+#define sync_caches_for_execution sync_caches_for_execution
 static inline void sync_caches_for_execution(void)
 {
 	__builtin_kvx_fence();
@@ -28,4 +29,6 @@ static inline void dcache_inval(void)
 	__builtin_kvx_dinval();
 }
 
+#include <asm-generic/cache.h>
+
 #endif /* __KVX_CACHE_H */
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index abb320242769..5c87d37c9eb8 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -20,6 +20,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-riscv-head.h>
 #include <asm/system.h>
+#include <asm/cache.h>
 
 unsigned long get_runtime_offset(void);
 
@@ -27,8 +28,6 @@ void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 
-void sync_caches_for_execution(void);
-
 void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
 					    void *boarddata, unsigned int flags);
 
diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cache.h
similarity index 59%
rename from arch/riscv/include/asm/cacheflush.h
rename to arch/riscv/include/asm/cache.h
index 9ff25740c66b..9a0b9326b22d 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cache.h
@@ -3,8 +3,8 @@
  * Copyright (C) 2015 Regents of the University of California
  */
 
-#ifndef _ASM_RISCV_CACHEFLUSH_H
-#define _ASM_RISCV_CACHEFLUSH_H
+#ifndef _ASM_RISCV_CACHE_H
+#define _ASM_RISCV_CACHE_H
 
 static inline void local_flush_icache_all(void)
 {
@@ -13,4 +13,9 @@ static inline void local_flush_icache_all(void)
 #endif
 }
 
+#define sync_caches_for_execution sync_caches_for_execution
+void sync_caches_for_execution(void);
+
+#include <asm-generic/cache.h>
+
 #endif /* _ASM_RISCV_CACHEFLUSH_H */
diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 479d586afdee..da53c50448d7 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -5,7 +5,7 @@
 #include <linux/linkage.h>
 #include <asm/sections.h>
 #include <asm/barebox-riscv.h>
-#include <asm/cacheflush.h>
+#include <asm/cache.h>
 #include <debug_ll.h>
 #include <asm-generic/module.h>
 
diff --git a/include/asm-generic/cache.h b/include/asm-generic/cache.h
new file mode 100644
index 000000000000..a766d835fdd7
--- /dev/null
+++ b/include/asm-generic/cache.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_GENERIC_CACHE_H_
+
+#ifndef sync_caches_for_execution
+#define sync_caches_for_execution() (void)0
+#endif
+
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

