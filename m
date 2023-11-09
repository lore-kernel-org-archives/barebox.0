Delivery-date: Thu, 09 Nov 2023 12:39:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Na-0048DI-2g
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:39:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Na-0008Lx-PY
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:39:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=smafZJpffw7OPpQUmc9b34Ai1cnknOFEwebM/MLJA84=; b=o1uKLmzqrLEF6VPL7HzHOZ1c91
	SI+fV4XLNfxK39deP0WBaEk4IOGGGXZBbBqxiaylJfVnnItmjdvyE/wrmNtZ/rPiVjpwMrrv0cvwc
	emrJ1OUGmIO/kDMtvFQy5IDi9j490a3TPwAhLNj4J+pws7CMRyJoRhtW2sMu3z8R/6wbxOZTvLp64
	qpe1NrR6H8PTHwFOML3dCEX7tg+NztktOYlLJ5eCxuOVsf6pkeBHjXo0kpWWpfJaEGivUnobZyAgP
	s28+svZtgXw6hDhEEAvvIo1Ow+1HYWDApZaPkiIf6++PMKXDn7vYK4/YpfxVjNae4ichrRQ/OLjQG
	u0zHnjFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13MU-0065kK-2Q;
	Thu, 09 Nov 2023 11:38:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13MQ-0065jI-2T
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:38:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MP-0007y5-Dj; Thu, 09 Nov 2023 12:38:09 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MP-007lWA-12; Thu, 09 Nov 2023 12:38:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13MO-0050zG-33;
	Thu, 09 Nov 2023 12:38:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:38:07 +0100
Message-Id: <20231109113807.1193935-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109113807.1193935-1-a.fatoum@pengutronix.de>
References: <20231109113807.1193935-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033810_805339_305BAA2C 
X-CRM114-Status: GOOD (  14.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] malloc: use __attribute((alloc_size)) for dynamic memory allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adorning functions allocating dynamic memory with __alloc_size allows
GCC to warn about heap overflows it notices during normal compilation.

Import the definitions from Linux and switch over barebox <malloc.h>
to make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/compiler-gcc.h   |  8 ++++++++
 include/linux/compiler_types.h | 24 ++++++++++++++++++++++++
 include/malloc.h               |  9 +++++----
 3 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 4d36b27214fd..2534386d040f 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -234,3 +234,11 @@
 #else
 #define __diag_GCC_8(s)
 #endif
+
+/*
+ * Prior to 9.1, -Wno-alloc-size-larger-than (and therefore the "alloc_size"
+ * attribute) do not work, and must be disabled.
+ */
+#if GCC_VERSION < 90100
+#undef __alloc_size__
+#endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 800bc518feea..9ef8115a396f 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -56,6 +56,16 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 
 #ifdef __KERNEL__
 
+/*
+ * Note: do not use this directly. Instead, use __alloc_size() since it is conditionally
+ * available and includes other attributes. For GCC < 9.1, __alloc_size__ gets undefined
+ * in compiler-gcc.h, due to misbehaviors.
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-alloc_005fsize-function-attribute
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#alloc-size
+ */
+#define __alloc_size__(x, ...)		__attribute__((__alloc_size__(x, ## __VA_ARGS__)))
+
 /* Compiler specific macros. */
 #ifdef __clang__
 #include <linux/compiler-clang.h>
@@ -188,6 +198,20 @@ struct ftrace_likely_data {
 #define __assume_aligned(a, ...)
 #endif
 
+/*
+ * Any place that could be marked with the "alloc_size" attribute is also
+ * a place to be marked with the "malloc" attribute, except those that may
+ * be performing a _reallocation_, as that may alias the existing pointer.
+ * For these, use __realloc_size().
+ */
+#ifdef __alloc_size__
+# define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
+# define __realloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__)
+#else
+# define __alloc_size(x, ...)	__malloc
+# define __realloc_size(x, ...)
+#endif
+
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
 
diff --git a/include/malloc.h b/include/malloc.h
index 971fc4058bc6..d63853b91e91 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -2,13 +2,14 @@
 #ifndef __MALLOC_H
 #define __MALLOC_H
 
+#include <linux/compiler.h>
 #include <types.h>
 
-void *malloc(size_t);
+void *malloc(size_t) __alloc_size(1);
 void free(void *);
-void *realloc(void *, size_t);
-void *memalign(size_t, size_t);
-void *calloc(size_t, size_t);
+void *realloc(void *, size_t) __realloc_size(2);
+void *memalign(size_t, size_t) __alloc_size(2);
+void *calloc(size_t, size_t) __alloc_size(1, 2);
 void malloc_stats(void);
 void *sbrk(ptrdiff_t increment);
 
-- 
2.39.2



