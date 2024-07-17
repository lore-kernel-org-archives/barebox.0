Delivery-date: Wed, 17 Jul 2024 09:29:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6P-0006Sh-2l
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:29:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6P-0007Mv-1T
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:29:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EAr+UxbGZph/r0yVNZfCW/z55A2iJQhrB8lFu7iZ3E4=; b=VbmwBfU97ETLSKIkRYBdVGIZ9w
	I+HG6giplfWI2JgGRifxYGhlNV/eQYUoonuT6T+ODt0Q7wKA8zGj3jwkgVqdjs7P4gwprYBvpepRt
	2i2YldxWuwvT7k35Jhrx5j/ovFa6+eKtzDqxPy/oagMVv2mQnkSrXXn1I4V9COV0kbcEGTzCu29pt
	wiv9VmZwnYI8Imj0/N/Pccig9rFGrYeHpZyWnIL/oDMY3Jfu3nbEbrYYB8zGlI0uaqTK58YEYM6GH
	TKujgvk8G7Hnm3HmEsUstyv6xLfmQEpToqVxW5aPLpTLI4Fa+P3UmAfdsuZTcl86qCfi87zO33ou+
	3NyglQzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz5n-0000000Cyf0-0fWm;
	Wed, 17 Jul 2024 07:28:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz5j-0000000CydJ-0o47
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5h-0007FM-Ew
	for barebox@lists.infradead.org; Wed, 17 Jul 2024 09:28:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5h-000A1e-2C
	for barebox@lists.infradead.org; Wed, 17 Jul 2024 09:28:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5g-00BruL-3A
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 09:28:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 17 Jul 2024 09:28:43 +0200
Message-Id: <20240717072843.2828788-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717072843.2828788-1-a.fatoum@pengutronix.de>
References: <20240717072843.2828788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_002847_260455_D50F2A03 
X-CRM114-Status: GOOD (  11.49  )
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
Subject: [PATCH v2 2/2] include: xfuncs: employ compiler attributes to aid GCC warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

We already use __alloc_size and __realloc_size in <malloc.h>, so GCC can
warn about some types of memory safety issues at build-time.

Let's have the same for xfuncs.h as well and additionally specify
__returns_nonnull, so the compiler could provide better diagnostics.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - spell attribute the same in __has_attribute and __attribute__
  - drop __returns_nonnull from strdup style functions that return
    NULL if the argument is NULL
---
 include/linux/compiler_types.h   |  9 +++++++++
 include/xfuncs.h                 | 17 +++++++++--------
 scripts/include/linux/compiler.h |  9 +++++++++
 3 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d925b3da296d..a713459f6e47 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -157,6 +157,12 @@ struct ftrace_likely_data {
 # define __no_stack_protector
 #endif
 
+#if __has_attribute(__returns_nonnull__)
+#define __returns_nonnull		__attribute__((__returns_nonnull__))
+#else
+#define __returns_nonnull
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
@@ -212,6 +218,9 @@ struct ftrace_likely_data {
 # define __realloc_size(x, ...)
 #endif
 
+# define __xalloc_size(args...)		__returns_nonnull __alloc_size(args)
+# define __xrealloc_size(args...)	__returns_nonnull __realloc_size(args)
+
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
 
diff --git a/include/xfuncs.h b/include/xfuncs.h
index a9132d378722..60ec220bd9b8 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -3,18 +3,19 @@
 #define __XFUNCS_H
 
 #include <linux/types.h>
+#include <linux/compiler.h>
 #include <stdarg.h>
 #include <wchar.h>
 
-void *xmalloc(size_t size);
-void *xrealloc(void *ptr, size_t size);
-void *xzalloc(size_t size);
+void *xmalloc(size_t size) __xalloc_size(1);
+void *xrealloc(void *ptr, size_t size) __xrealloc_size(2);
+void *xzalloc(size_t size) __xalloc_size(1);
 char *xstrdup(const char *s);
-char *xstrndup(const char *s, size_t size);
-void* xmemalign(size_t alignment, size_t bytes);
-void* xmemdup(const void *orig, size_t size);
-char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-char *xvasprintf(const char *fmt, va_list ap);
+char *xstrndup(const char *s, size_t size) __returns_nonnull;
+void* xmemalign(size_t alignment, size_t bytes) __xalloc_size(2);
+void* xmemdup(const void *orig, size_t size) __returns_nonnull;
+char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2))) __returns_nonnull;
+char *xvasprintf(const char *fmt, va_list ap) __returns_nonnull;
 
 wchar_t *xstrdup_wchar(const wchar_t *src);
 wchar_t *xstrdup_char_to_wchar(const char *src);
diff --git a/scripts/include/linux/compiler.h b/scripts/include/linux/compiler.h
index fa7208a32d76..780ccec21a3c 100644
--- a/scripts/include/linux/compiler.h
+++ b/scripts/include/linux/compiler.h
@@ -39,6 +39,15 @@
 # define unlikely(x)		__builtin_expect(!!(x), 0)
 #endif
 
+#ifndef __returns_nonnull
+# define __returns_nonnull
+#endif
+
+# define __alloc_size(x, ...)
+# define __realloc_size(x, ...)
+# define __xalloc_size(args...)		__returns_nonnull __alloc_size(args)
+# define __xrealloc_size(args...)	__returns_nonnull __realloc_size(args)
+
 #define ACCESS_ONCE(x) (*(volatile typeof(x) *)&(x))
 
 #include <linux/types.h>
-- 
2.39.2



