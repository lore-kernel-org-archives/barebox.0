Delivery-date: Thu, 05 Jun 2025 13:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wL-003zsM-2X
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wF-0002l4-Ur
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WC8yhcltwI3sbW2YXINPpF3L5aX/a7jejpzyVdxs0l4=; b=hLIPN3kO03o9akZ3of3hvgnHCn
	5kOFw/j88X74oHnBH+P0QFpzE4XnUcOi2GTKm4Zzf8mDTqVFQ2sqmiYOM7/DVKpc6BMdTEV778601
	rD28e0zFxsOhN9Er48gtWnX8KWcKRGfsVv2nErycYoYWuSZ0Hoovj6s4JWChPDgv/ddzyp7x6SJHa
	OMhD4e+iUEzgOMSUzRYmpd4uRm9ztLMXDidwLdb5JrqLlIedFYWbHrmv3xavS2bHoZPzlmV9VxjAz
	H0yqIymlQsVswogB3naOpjNv1IcZa6L19Xzq1OVs4ChbByjrjLp7em+h45+DBeEljxfP3SpLIkYJZ
	jECh6KLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vZ-0000000FOVy-3RnH;
	Thu, 05 Jun 2025 11:38:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOO-0DTv
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-0001hz-Mb; Thu, 05 Jun 2025 13:38:25 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-001x0N-1e;
	Thu, 05 Jun 2025 13:38:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-2i;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:19 +0200
Message-Id: <20250605113530.2076990-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_567609_520D1AD1 
X-CRM114-Status: GOOD (  32.57  )
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
Subject: [PATCH 10/21] string: add fortify source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FORTIFY_SOURCE provides lightweight support for detecting buffer overflows
in various functions that perform operations on memory and strings.

This should be in future extended to all architectures, so let's start
by enabling it for sandbox for use during fuzz tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig                   |   6 +
 arch/sandbox/Kconfig           |   1 +
 commands/stacksmash.c          |   6 +-
 include/linux/compiler_types.h |  41 ++
 include/linux/fortify-string.h | 804 +++++++++++++++++++++++++++++++++
 include/linux/string.h         |  17 +
 lib/Kconfig.hardening          |  15 +
 lib/Makefile                   |   2 +-
 lib/string.c                   |  16 +-
 lib/string_helpers.c           |  30 ++
 pbl/string.c                   |   1 +
 11 files changed, 925 insertions(+), 14 deletions(-)
 create mode 100644 include/linux/fortify-string.h
 create mode 100644 lib/string_helpers.c

diff --git a/arch/Kconfig b/arch/Kconfig
index 890923ad059c..446c4b8fd960 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -116,3 +116,9 @@ config HAVE_ARCH_KASAN
 
 config ARCH_HAS_UBSAN_SANITIZE_ALL
 	bool
+
+config ARCH_HAS_FORTIFY_SOURCE
+	bool
+	help
+	  An architecture should select this when it can successfully
+	  build and run with CONFIG_FORTIFY_SOURCE.
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 4eebca6748b3..7d8f88474781 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -7,6 +7,7 @@ config SANDBOX
 	select OFTREE
 	select GPIOLIB
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
+	select ARCH_HAS_FORTIFY_SOURCE
 	select HAS_DMA
 	select BLOCK
 	select BLOCK_WRITE
diff --git a/commands/stacksmash.c b/commands/stacksmash.c
index e200fa5a1cbb..15c925d05f37 100644
--- a/commands/stacksmash.c
+++ b/commands/stacksmash.c
@@ -6,6 +6,8 @@
 #include <linux/compiler.h>
 #include <string.h>
 
+#define NO_FORTIFY_SOURCE "We want to test stack protector, not FORTIFY_SOURCE"
+
 static noinline void stack_overflow_frame(void)
 {
 	volatile int length = 512;
@@ -17,10 +19,10 @@ static noinline void stack_overflow_frame(void)
 	 */
 	OPTIMIZER_HIDE_VAR(length);
 
-	memset(a, 0xa5, length);
+	unsafe_memset(a, 0xa5, length, NO_FORTIFY_SOURCE);
 
 	printf("We have smashed our stack as this should not exceed 128: sizeof(a) = %zu\n",
-	       strlen(a));
+	       unsafe_strlen(a, NO_FORTIFY_SOURCE));
 }
 
 static noinline void stack_overflow_region(u64 i)
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 87ab117aca13..fcdf83cec195 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -124,6 +124,24 @@ struct ftrace_likely_data {
 #define __has_attribute(...)		0
 #endif
 
+/*
+ * Note: the "type" argument should match any __builtin_object_size(p, type) usage.
+ *
+ * Optional: not supported by gcc.
+ *
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#pass-object-size-pass-dynamic-object-size
+ */
+#if __has_attribute(__pass_dynamic_object_size__)
+# define __pass_dynamic_object_size(type)	__attribute__((__pass_dynamic_object_size__(type)))
+#else
+# define __pass_dynamic_object_size(type)
+#endif
+#if __has_attribute(__pass_object_size__)
+# define __pass_object_size(type)	__attribute__((__pass_object_size__(type)))
+#else
+# define __pass_object_size(type)
+#endif
+
 /*
  * Add the pseudo keyword 'fallthrough' so case statement blocks
  * must end with any of these keywords:
@@ -161,6 +179,29 @@ struct ftrace_likely_data {
 #define __returns_nonnull
 #endif
 
+/*
+ * Optional: not supported by gcc.
+ *
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#overloadable
+ */
+#if __has_attribute(__overloadable__)
+# define __overloadable			__attribute__((__overloadable__))
+#else
+# define __overloadable
+#endif
+
+/*
+ * Optional: not supported by gcc
+ * Optional: only supported since clang >= 14.0
+ *
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#diagnose_as_builtin
+ */
+#if __has_attribute(__diagnose_as_builtin__)
+# define __diagnose_as(builtin...)	__attribute__((__diagnose_as_builtin__(builtin)))
+#else
+# define __diagnose_as(builtin...)
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
new file mode 100644
index 000000000000..ff2618c9c339
--- /dev/null
+++ b/include/linux/fortify-string.h
@@ -0,0 +1,804 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_FORTIFY_STRING_H_
+#define _LINUX_FORTIFY_STRING_H_
+
+#include <linux/bug.h>
+#include <linux/const.h>
+#include <linux/limits.h>
+#include <linux/stringify.h>
+
+#define __FORTIFY_INLINE extern __always_inline __gnu_inline __overloadable
+#define __RENAME(x) __asm__(#x)
+
+void fortify_panic(const char *name) __noreturn __cold;
+void __read_overflow(void) __compiletime_error("detected read beyond size of object (1st parameter)");
+void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
+void __read_overflow2_field(size_t avail, size_t wanted) __compiletime_warning("detected read beyond size of field (2nd parameter); maybe use struct_group()?");
+void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
+void __write_overflow_field(size_t avail, size_t wanted) __compiletime_warning("detected write beyond size of field (1st parameter); maybe use struct_group()?");
+
+#define __compiletime_strlen(p)					\
+({								\
+	char *__p = (char *)(p);				\
+	size_t __ret = SIZE_MAX;				\
+	const size_t __p_size = __member_size(p);		\
+	if (__p_size != SIZE_MAX &&				\
+	    __builtin_constant_p(*__p)) {			\
+		size_t __p_len = __p_size - 1;			\
+		if (__builtin_constant_p(__p[__p_len]) &&	\
+		    __p[__p_len] == '\0')			\
+			__ret = __builtin_strlen(__p);		\
+	}							\
+	__ret;							\
+})
+
+#if defined(__SANITIZE_ADDRESS__)
+extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
+extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
+extern void *__underlying_memcpy(void *p, const void *q, __kernel_size_t size) __RENAME(memcpy);
+extern void *__underlying_memmove(void *p, const void *q, __kernel_size_t size) __RENAME(memmove);
+extern void *__underlying_memset(void *p, int c, __kernel_size_t size) __RENAME(memset);
+extern char *__underlying_strcat(char *p, const char *q) __RENAME(strcat);
+extern char *__underlying_strcpy(char *p, const char *q) __RENAME(strcpy);
+extern __kernel_size_t __underlying_strlen(const char *p) __RENAME(strlen);
+extern char *__underlying_strncat(char *p, const char *q, __kernel_size_t count) __RENAME(strncat);
+extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size) __RENAME(strncpy);
+#else
+
+#define __underlying_memcpy	__builtin_memcpy
+#define __underlying_memmove	__builtin_memmove
+#define __underlying_memset	__builtin_memset
+
+#define __underlying_memchr	__builtin_memchr
+#define __underlying_memcmp	__builtin_memcmp
+#define __underlying_strcat	__builtin_strcat
+#define __underlying_strcpy	__builtin_strcpy
+#define __underlying_strlen	__builtin_strlen
+#define __underlying_strncat	__builtin_strncat
+#define __underlying_strncpy	__builtin_strncpy
+#endif
+
+/**
+ * unsafe_memcpy - memcpy implementation with no FORTIFY bounds checking
+ *
+ * @dst: Destination memory address to write to
+ * @src: Source memory address to read from
+ * @bytes: How many bytes to write to @dst from @src
+ * @justification: Free-form text or comment describing why the use is needed
+ *
+ * This should be used for corner cases where the compiler cannot do the
+ * right thing, or during transitions between APIs, etc. It should be used
+ * very rarely, and includes a place for justification detailing where bounds
+ * checking has happened, and why existing solutions cannot be employed.
+ */
+#define unsafe_memcpy(dst, src, bytes, justification)		\
+	__underlying_memcpy(dst, src, bytes)
+
+#define unsafe_memset(dst, val, size, justification)		\
+	__underlying_memset(dst, val, size)
+
+#define unsafe_strlen(str, justification)			\
+	__underlying_strlen(str)
+
+/*
+ * Clang's use of __builtin_*object_size() within inlines needs hinting via
+ * __pass_*object_size(). The preference is to only ever use type 1 (member
+ * size, rather than struct size), but there remain some stragglers using
+ * type 0 that will be converted in the future.
+ */
+#if __has_builtin(__builtin_dynamic_object_size)
+#define POS			__pass_dynamic_object_size(1)
+#define POS0			__pass_dynamic_object_size(0)
+#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
+#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
+#else
+#define POS			__pass_object_size(1)
+#define POS0			__pass_object_size(0)
+#define __struct_size(p)	__builtin_object_size(p, 0)
+#define __member_size(p)	__builtin_object_size(p, 1)
+#endif
+
+#define __compiletime_lessthan(bounds, length)	(	\
+	__builtin_constant_p((bounds) < (length)) &&	\
+	(bounds) < (length)				\
+)
+
+/**
+ * strncpy - Copy a string to memory with non-guaranteed NUL padding
+ *
+ * @p: pointer to destination of copy
+ * @q: pointer to NUL-terminated source string to copy
+ * @size: bytes to write at @p
+ *
+ * If strlen(@q) >= @size, the copy of @q will stop after @size bytes,
+ * and @p will NOT be NUL-terminated
+ *
+ * If strlen(@q) < @size, following the copy of @q, trailing NUL bytes
+ * will be written to @p until @size total bytes have been written.
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * over-reads of @q, it cannot defend against writing unterminated
+ * results to @p. Using strncpy() remains ambiguous and fragile.
+ * Instead, please choose an alternative, so that the expectation
+ * of @p's contents is unambiguous:
+ *
+ * +--------------------+--------------------+------------+
+ * | **p** needs to be: | padded to **size** | not padded |
+ * +====================+====================+============+
+ * |     NUL-terminated | strscpy_pad()      | strscpy()  |
+ * +--------------------+--------------------+------------+
+ * | not NUL-terminated | strtomem_pad()     | strtomem() |
+ * +--------------------+--------------------+------------+
+ *
+ * Note strscpy*()'s differing return values for detecting truncation,
+ * and strtomem*()'s expectation that the destination is marked with
+ * __nonstring when it is a character array.
+ *
+ */
+__FORTIFY_INLINE __diagnose_as(__builtin_strncpy, 1, 2, 3)
+char *strncpy(char * const POS p, const char *q, __kernel_size_t size)
+{
+	const size_t p_size = __member_size(p);
+
+	if (__compiletime_lessthan(p_size, size))
+		__write_overflow();
+	if (p_size < size)
+		fortify_panic(__func__);
+	return __underlying_strncpy(p, q, size);
+}
+
+extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
+/**
+ * strnlen - Return bounded count of characters in a NUL-terminated string
+ *
+ * @p: pointer to NUL-terminated string to count.
+ * @maxlen: maximum number of characters to count.
+ *
+ * Returns number of characters in @p (NOT including the final NUL), or
+ * @maxlen, if no NUL has been found up to there.
+ *
+ */
+__FORTIFY_INLINE __kernel_size_t strnlen(const char * const POS p, __kernel_size_t maxlen)
+{
+	const size_t p_size = __member_size(p);
+	const size_t p_len = __compiletime_strlen(p);
+	size_t ret;
+
+	/* We can take compile-time actions when maxlen is const. */
+	if (__builtin_constant_p(maxlen) && p_len != SIZE_MAX) {
+		/* If p is const, we can use its compile-time-known len. */
+		if (maxlen >= p_size)
+			return p_len;
+	}
+
+	/* Do not check characters beyond the end of p. */
+	ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
+	if (p_size <= ret && maxlen != ret)
+		fortify_panic(__func__);
+	return ret;
+}
+
+/*
+ * Defined after fortified strnlen to reuse it. However, it must still be
+ * possible for strlen() to be used on compile-time strings for use in
+ * static initializers (i.e. as a constant expression).
+ */
+/**
+ * strlen - Return count of characters in a NUL-terminated string
+ *
+ * @p: pointer to NUL-terminated string to count.
+ *
+ * Do not use this function unless the string length is known at
+ * compile-time. When @p is unterminated, this function may crash
+ * or return unexpected counts that could lead to memory content
+ * exposures. Prefer strnlen().
+ *
+ * Returns number of characters in @p (NOT including the final NUL).
+ *
+ */
+#define strlen(p)							\
+	__builtin_choose_expr(__is_constexpr(__builtin_strlen(p)),	\
+		__builtin_strlen(p), __fortify_strlen(p))
+__FORTIFY_INLINE __diagnose_as(__builtin_strlen, 1)
+__kernel_size_t __fortify_strlen(const char * const POS p)
+{
+	const size_t p_size = __member_size(p);
+	__kernel_size_t ret;
+
+	/* Give up if we don't know how large p is. */
+	if (p_size == SIZE_MAX)
+		return __underlying_strlen(p);
+	ret = strnlen(p, p_size);
+	if (p_size <= ret)
+		fortify_panic(__func__);
+	return ret;
+}
+
+/* Defined after fortified strlen() to reuse it. */
+extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
+/**
+ * strlcpy - Copy a string into another string buffer
+ *
+ * @p: pointer to destination of copy
+ * @q: pointer to NUL-terminated source string to copy
+ * @size: maximum number of bytes to write at @p
+ *
+ * If strlen(@q) >= @size, the copy of @q will be truncated at
+ * @size - 1 bytes. @p will always be NUL-terminated.
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * over-reads when calculating strlen(@q), it is still possible.
+ * Prefer strscpy(), though note its different return values for
+ * detecting truncation.
+ *
+ * Returns total number of bytes written to @p, including terminating NUL.
+ *
+ */
+__FORTIFY_INLINE size_t strlcpy(char * const POS p, const char * const POS q, size_t size)
+{
+	const size_t p_size = __member_size(p);
+	const size_t q_size = __member_size(q);
+	size_t q_len;	/* Full count of source string length. */
+	size_t len;	/* Count of characters going into destination. */
+
+	if (p_size == SIZE_MAX && q_size == SIZE_MAX)
+		return __real_strlcpy(p, q, size);
+	q_len = strlen(q);
+	len = (q_len >= size) ? size - 1 : q_len;
+	if (__builtin_constant_p(size) && __builtin_constant_p(q_len) && size) {
+		/* Write size is always larger than destination. */
+		if (len >= p_size)
+			__write_overflow();
+	}
+	if (size) {
+		if (len >= p_size)
+			fortify_panic(__func__);
+		__underlying_memcpy(p, q, len);
+		p[len] = '\0';
+	}
+	return q_len;
+}
+
+/* Defined after fortified strnlen() to reuse it. */
+extern ssize_t __real_strscpy(char *, const char *, size_t) __RENAME(strscpy);
+/**
+ * strscpy - Copy a C-string into a sized buffer
+ *
+ * @p: Where to copy the string to
+ * @q: Where to copy the string from
+ * @size: Size of destination buffer
+ *
+ * Copy the source string @q, or as much of it as fits, into the destination
+ * @p buffer. The behavior is undefined if the string buffers overlap. The
+ * destination @p buffer is always NUL terminated, unless it's zero-sized.
+ *
+ * Preferred to strlcpy() since the API doesn't require reading memory
+ * from the source @q string beyond the specified @size bytes, and since
+ * the return value is easier to error-check than strlcpy()'s.
+ * In addition, the implementation is robust to the string changing out
+ * from underneath it, unlike the current strlcpy() implementation.
+ *
+ * Preferred to strncpy() since it always returns a valid string, and
+ * doesn't unnecessarily force the tail of the destination buffer to be
+ * zero padded. If padding is desired please use strscpy_pad().
+ *
+ * Returns the number of characters copied in @p (not including the
+ * trailing %NUL) or -E2BIG if @size is 0 or the copy of @q was truncated.
+ */
+__FORTIFY_INLINE ssize_t strscpy(char * const POS p, const char * const POS q, size_t size)
+{
+	/* Use string size rather than possible enclosing struct size. */
+	const size_t p_size = __member_size(p);
+	const size_t q_size = __member_size(q);
+	size_t len;
+
+	/* If we cannot get size of p and q default to call strscpy. */
+	if (p_size == SIZE_MAX && q_size == SIZE_MAX)
+		return __real_strscpy(p, q, size);
+
+	/*
+	 * If size can be known at compile time and is greater than
+	 * p_size, generate a compile time write overflow error.
+	 */
+	if (__compiletime_lessthan(p_size, size))
+		__write_overflow();
+
+	/* Short-circuit for compile-time known-safe lengths. */
+	if (__compiletime_lessthan(p_size, SIZE_MAX)) {
+		len = __compiletime_strlen(q);
+
+		if (len < SIZE_MAX && __compiletime_lessthan(len, size)) {
+			__underlying_memcpy(p, q, len + 1);
+			return len;
+		}
+	}
+
+	/*
+	 * This call protects from read overflow, because len will default to q
+	 * length if it smaller than size.
+	 */
+	len = strnlen(q, size);
+	/*
+	 * If len equals size, we will copy only size bytes which leads to
+	 * -E2BIG being returned.
+	 * Otherwise we will copy len + 1 because of the final '\O'.
+	 */
+	len = len == size ? size : len + 1;
+
+	/*
+	 * Generate a runtime write overflow error if len is greater than
+	 * p_size.
+	 */
+	if (len > p_size)
+		fortify_panic(__func__);
+
+	/*
+	 * We can now safely call vanilla strscpy because we are protected from:
+	 * 1. Read overflow thanks to call to strnlen().
+	 * 2. Write overflow thanks to above ifs.
+	 */
+	return __real_strscpy(p, q, len);
+}
+
+/* Defined after fortified strlen() to reuse it. */
+extern size_t __real_strlcat(char *p, const char *q, size_t avail) __RENAME(strlcat);
+/**
+ * strlcat - Append a string to an existing string
+ *
+ * @p: pointer to %NUL-terminated string to append to
+ * @q: pointer to %NUL-terminated string to append from
+ * @avail: Maximum bytes available in @p
+ *
+ * Appends %NUL-terminated string @q after the %NUL-terminated
+ * string at @p, but will not write beyond @avail bytes total,
+ * potentially truncating the copy from @q. @p will stay
+ * %NUL-terminated only if a %NUL already existed within
+ * the @avail bytes of @p. If so, the resulting number of
+ * bytes copied from @q will be at most "@avail - strlen(@p) - 1".
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * read and write overflows, this is only possible when the sizes
+ * of @p and @q are known to the compiler. Prefer building the
+ * string with formatting, via scnprintf(), seq_buf, or similar.
+ *
+ * Returns total bytes that _would_ have been contained by @p
+ * regardless of truncation, similar to snprintf(). If return
+ * value is >= @avail, the string has been truncated.
+ *
+ */
+__FORTIFY_INLINE
+size_t strlcat(char * const POS p, const char * const POS q, size_t avail)
+{
+	const size_t p_size = __member_size(p);
+	const size_t q_size = __member_size(q);
+	size_t p_len, copy_len;
+	size_t actual, wanted;
+
+	/* Give up immediately if both buffer sizes are unknown. */
+	if (p_size == SIZE_MAX && q_size == SIZE_MAX)
+		return __real_strlcat(p, q, avail);
+
+	p_len = strnlen(p, avail);
+	copy_len = strlen(q);
+	wanted = actual = p_len + copy_len;
+
+	/* Cannot append any more: report truncation. */
+	if (avail <= p_len)
+		return wanted;
+
+	/* Give up if string is already overflowed. */
+	if (p_size <= p_len)
+		fortify_panic(__func__);
+
+	if (actual >= avail) {
+		copy_len = avail - p_len - 1;
+		actual = p_len + copy_len;
+	}
+
+	/* Give up if copy will overflow. */
+	if (p_size <= actual)
+		fortify_panic(__func__);
+	__underlying_memcpy(p + p_len, q, copy_len);
+	p[actual] = '\0';
+
+	return wanted;
+}
+
+/* Defined after fortified strlcat() to reuse it. */
+/**
+ * strcat - Append a string to an existing string
+ *
+ * @p: pointer to NUL-terminated string to append to
+ * @q: pointer to NUL-terminated source string to append from
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * read and write overflows, this is only possible when the
+ * destination buffer size is known to the compiler. Prefer
+ * building the string with formatting, via scnprintf() or similar.
+ * At the very least, use strncat().
+ *
+ * Returns @p.
+ *
+ */
+__FORTIFY_INLINE __diagnose_as(__builtin_strcat, 1, 2)
+char *strcat(char * const POS p, const char *q)
+{
+	const size_t p_size = __member_size(p);
+
+	if (strlcat(p, q, p_size) >= p_size)
+		fortify_panic(__func__);
+	return p;
+}
+
+/**
+ * strncat - Append a string to an existing string
+ *
+ * @p: pointer to NUL-terminated string to append to
+ * @q: pointer to source string to append from
+ * @count: Maximum bytes to read from @q
+ *
+ * Appends at most @count bytes from @q (stopping at the first
+ * NUL byte) after the NUL-terminated string at @p. @p will be
+ * NUL-terminated.
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * read and write overflows, this is only possible when the sizes
+ * of @p and @q are known to the compiler. Prefer building the
+ * string with formatting, via scnprintf() or similar.
+ *
+ * Returns @p.
+ *
+ */
+/* Defined after fortified strlen() and strnlen() to reuse them. */
+__FORTIFY_INLINE __diagnose_as(__builtin_strncat, 1, 2, 3)
+char *strncat(char * const POS p, const char * const POS q, __kernel_size_t count)
+{
+	const size_t p_size = __member_size(p);
+	const size_t q_size = __member_size(q);
+	size_t p_len, copy_len;
+
+	if (p_size == SIZE_MAX && q_size == SIZE_MAX)
+		return __underlying_strncat(p, q, count);
+	p_len = strlen(p);
+	copy_len = strnlen(q, count);
+	if (p_size < p_len + copy_len + 1)
+		fortify_panic(__func__);
+	__underlying_memcpy(p + p_len, q, copy_len);
+	p[p_len + copy_len] = '\0';
+	return p;
+}
+
+__FORTIFY_INLINE void fortify_memset_chk(__kernel_size_t size,
+					 const size_t p_size,
+					 const size_t p_size_field)
+{
+	if (__builtin_constant_p(size)) {
+		/*
+		 * Length argument is a constant expression, so we
+		 * can perform compile-time bounds checking where
+		 * buffer sizes are also known at compile time.
+		 */
+
+		/* Error when size is larger than enclosing struct. */
+		if (__compiletime_lessthan(p_size_field, p_size) &&
+		    __compiletime_lessthan(p_size, size))
+			__write_overflow();
+
+		/* Warn when write size is larger than dest field. */
+		if (__compiletime_lessthan(p_size_field, size))
+			__write_overflow_field(p_size_field, size);
+	}
+	/*
+	 * At this point, length argument may not be a constant expression,
+	 * so run-time bounds checking can be done where buffer sizes are
+	 * known. (This is not an "else" because the above checks may only
+	 * be compile-time warnings, and we want to still warn for run-time
+	 * overflows.)
+	 */
+
+	/*
+	 * Always stop accesses beyond the struct that contains the
+	 * field, when the buffer's remaining size is known.
+	 * (The SIZE_MAX test is to optimize away checks where the buffer
+	 * lengths are unknown.)
+	 */
+	if (p_size != SIZE_MAX && p_size < size)
+		fortify_panic("memset");
+}
+
+#define __fortify_memset_chk(p, c, size, p_size, p_size_field) ({	\
+	size_t __fortify_size = (size_t)(size);				\
+	fortify_memset_chk(__fortify_size, p_size, p_size_field),	\
+	__underlying_memset(p, c, __fortify_size);			\
+})
+
+/*
+ * To make sure the compiler can enforce protection against buffer overflows,
+ * memcpy(), memmove(), and memset() must not be used beyond individual
+ * struct members. If you need to copy across multiple members, please use
+ * struct_group() to create a named mirror of an anonymous struct union.
+ * (e.g. see struct sk_buff.) Read overflow checking is currently only
+ * done when a write overflow is also present, or when building with W=1.
+ *
+ * Mitigation coverage matrix
+ *					Bounds checking at:
+ *					+-------+-------+-------+-------+
+ *					| Compile time  |   Run time    |
+ * memcpy() argument sizes:		| write | read  | write | read  |
+ *        dest     source   length      +-------+-------+-------+-------+
+ * memcpy(known,   known,   constant)	|   y   |   y   |  n/a  |  n/a  |
+ * memcpy(known,   unknown, constant)	|   y   |   n   |  n/a  |   V   |
+ * memcpy(known,   known,   dynamic)	|   n   |   n   |   B   |   B   |
+ * memcpy(known,   unknown, dynamic)	|   n   |   n   |   B   |   V   |
+ * memcpy(unknown, known,   constant)	|   n   |   y   |   V   |  n/a  |
+ * memcpy(unknown, unknown, constant)	|   n   |   n   |   V   |   V   |
+ * memcpy(unknown, known,   dynamic)	|   n   |   n   |   V   |   B   |
+ * memcpy(unknown, unknown, dynamic)	|   n   |   n   |   V   |   V   |
+ *					+-------+-------+-------+-------+
+ *
+ * y = perform deterministic compile-time bounds checking
+ * n = cannot perform deterministic compile-time bounds checking
+ * n/a = no run-time bounds checking needed since compile-time deterministic
+ * B = can perform run-time bounds checking (currently unimplemented)
+ * V = vulnerable to run-time overflow (will need refactoring to solve)
+ *
+ */
+__FORTIFY_INLINE bool fortify_memcpy_chk(__kernel_size_t size,
+					 const size_t p_size,
+					 const size_t q_size,
+					 const size_t p_size_field,
+					 const size_t q_size_field,
+					 const char *func)
+{
+	if (__builtin_constant_p(size)) {
+		/*
+		 * Length argument is a constant expression, so we
+		 * can perform compile-time bounds checking where
+		 * buffer sizes are also known at compile time.
+		 */
+
+		/* Error when size is larger than enclosing struct. */
+		if (__compiletime_lessthan(p_size_field, p_size) &&
+		    __compiletime_lessthan(p_size, size))
+			__write_overflow();
+		if (__compiletime_lessthan(q_size_field, q_size) &&
+		    __compiletime_lessthan(q_size, size))
+			__read_overflow2();
+
+		/* Warn when write size argument larger than dest field. */
+		if (__compiletime_lessthan(p_size_field, size))
+			__write_overflow_field(p_size_field, size);
+		/*
+		 * Warn for source field over-read when building with W=1
+		 * or when an over-write happened, so both can be fixed at
+		 * the same time.
+		 */
+		if ((IS_ENABLED(KBUILD_EXTRA_WARN1) ||
+		     __compiletime_lessthan(p_size_field, size)) &&
+		    __compiletime_lessthan(q_size_field, size))
+			__read_overflow2_field(q_size_field, size);
+	}
+	/*
+	 * At this point, length argument may not be a constant expression,
+	 * so run-time bounds checking can be done where buffer sizes are
+	 * known. (This is not an "else" because the above checks may only
+	 * be compile-time warnings, and we want to still warn for run-time
+	 * overflows.)
+	 */
+
+	/*
+	 * Always stop accesses beyond the struct that contains the
+	 * field, when the buffer's remaining size is known.
+	 * (The SIZE_MAX test is to optimize away checks where the buffer
+	 * lengths are unknown.)
+	 */
+	if ((p_size != SIZE_MAX && p_size < size) ||
+	    (q_size != SIZE_MAX && q_size < size))
+		fortify_panic(func);
+
+	/*
+	 * Warn when writing beyond destination field size.
+	 *
+	 * We must ignore p_size_field == 0 for existing 0-element
+	 * fake flexible arrays, until they are all converted to
+	 * proper flexible arrays.
+	 *
+	 * The implementation of __builtin_*object_size() behaves
+	 * like sizeof() when not directly referencing a flexible
+	 * array member, which means there will be many bounds checks
+	 * that will appear at run-time, without a way for them to be
+	 * detected at compile-time (as can be done when the destination
+	 * is specifically the flexible array member).
+	 * https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101832
+	 */
+	if (p_size_field != 0 && p_size_field != SIZE_MAX &&
+	    p_size != p_size_field && p_size_field < size)
+		return true;
+
+	return false;
+}
+
+#define __fortify_memcpy_chk(p, q, size, p_size, q_size,		\
+			     p_size_field, q_size_field, op) ({		\
+	const size_t __fortify_size = (size_t)(size);			\
+	const size_t __p_size = (p_size);				\
+	const size_t __q_size = (q_size);				\
+	const size_t __p_size_field = (p_size_field);			\
+	const size_t __q_size_field = (q_size_field);			\
+	WARN_ONCE(fortify_memcpy_chk(__fortify_size, __p_size,		\
+				     __q_size, __p_size_field,		\
+				     __q_size_field, #op),		\
+		  #op ": detected field-spanning write (size %zu) of single %s (size %zu)\n", \
+		  __fortify_size,					\
+		  "field \"" #p "\" at " __FILE__ ":" __stringify(__LINE__), \
+		  __p_size_field);					\
+	__underlying_##op(p, q, __fortify_size);			\
+})
+
+/*
+ * Notes about compile-time buffer size detection:
+ *
+ * With these types...
+ *
+ *	struct middle {
+ *		u16 a;
+ *		u8 middle_buf[16];
+ *		int b;
+ *	};
+ *	struct end {
+ *		u16 a;
+ *		u8 end_buf[16];
+ *	};
+ *	struct flex {
+ *		int a;
+ *		u8 flex_buf[];
+ *	};
+ *
+ *	void func(TYPE *ptr) { ... }
+ *
+ * Cases where destination size cannot be currently detected:
+ * - the size of ptr's object (seemingly by design, gcc & clang fail):
+ *	__builtin_object_size(ptr, 1) == SIZE_MAX
+ * - the size of flexible arrays in ptr's obj (by design, dynamic size):
+ *	__builtin_object_size(ptr->flex_buf, 1) == SIZE_MAX
+ * - the size of ANY array at the end of ptr's obj (gcc and clang bug):
+ *	__builtin_object_size(ptr->end_buf, 1) == SIZE_MAX
+ *	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836
+ *
+ * Cases where destination size is currently detected:
+ * - the size of non-array members within ptr's object:
+ *	__builtin_object_size(ptr->a, 1) == 2
+ * - the size of non-flexible-array in the middle of ptr's obj:
+ *	__builtin_object_size(ptr->middle_buf, 1) == 16
+ *
+ */
+
+/*
+ * __struct_size() vs __member_size() must be captured here to avoid
+ * evaluating argument side-effects further into the macro layers.
+ */
+#define memcpy(p, q, s)  __fortify_memcpy_chk(p, q, s,			\
+		__struct_size(p), __struct_size(q),			\
+		__member_size(p), __member_size(q),			\
+		memcpy)
+#define memmove(p, q, s)  __fortify_memcpy_chk(p, q, s,			\
+		__struct_size(p), __struct_size(q),			\
+		__member_size(p), __member_size(q),			\
+		memmove)
+
+extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
+__FORTIFY_INLINE void *memscan(void * const POS0 p, int c, __kernel_size_t size)
+{
+	const size_t p_size = __struct_size(p);
+
+	if (__compiletime_lessthan(p_size, size))
+		__read_overflow();
+	if (p_size < size)
+		fortify_panic(__func__);
+	return __real_memscan(p, c, size);
+}
+
+__FORTIFY_INLINE __diagnose_as(__builtin_memcmp, 1, 2, 3)
+int memcmp(const void * const POS0 p, const void * const POS0 q, __kernel_size_t size)
+{
+	const size_t p_size = __struct_size(p);
+	const size_t q_size = __struct_size(q);
+
+	if (__builtin_constant_p(size)) {
+		if (__compiletime_lessthan(p_size, size))
+			__read_overflow();
+		if (__compiletime_lessthan(q_size, size))
+			__read_overflow2();
+	}
+	if (p_size < size || q_size < size)
+		fortify_panic(__func__);
+	return __underlying_memcmp(p, q, size);
+}
+
+__FORTIFY_INLINE __diagnose_as(__builtin_memchr, 1, 2, 3)
+void *memchr(const void * const POS0 p, int c, __kernel_size_t size)
+{
+	const size_t p_size = __struct_size(p);
+
+	if (__compiletime_lessthan(p_size, size))
+		__read_overflow();
+	if (p_size < size)
+		fortify_panic(__func__);
+	return __underlying_memchr(p, c, size);
+}
+
+void *__real_memchr_inv(const void *s, int c, size_t n) __RENAME(memchr_inv);
+__FORTIFY_INLINE void *memchr_inv(const void * const POS0 p, int c, size_t size)
+{
+	const size_t p_size = __struct_size(p);
+
+	if (__compiletime_lessthan(p_size, size))
+		__read_overflow();
+	if (p_size < size)
+		fortify_panic(__func__);
+	return __real_memchr_inv(p, c, size);
+}
+
+extern void *__real_kmemdup(const void *src, size_t len, gfp_t gfp) __RENAME(kmemdup)
+								    __realloc_size(2);
+__FORTIFY_INLINE void *kmemdup(const void * const POS0 p, size_t size, gfp_t gfp)
+{
+	const size_t p_size = __struct_size(p);
+
+	if (__compiletime_lessthan(p_size, size))
+		__read_overflow();
+	if (p_size < size)
+		fortify_panic(__func__);
+	return __real_kmemdup(p, size, gfp);
+}
+
+/**
+ * strcpy - Copy a string into another string buffer
+ *
+ * @p: pointer to destination of copy
+ * @q: pointer to NUL-terminated source string to copy
+ *
+ * Do not use this function. While FORTIFY_SOURCE tries to avoid
+ * overflows, this is only possible when the sizes of @q and @p are
+ * known to the compiler. Prefer strscpy(), though note its different
+ * return values for detecting truncation.
+ *
+ * Returns @p.
+ *
+ */
+/* Defined after fortified strlen to reuse it. */
+__FORTIFY_INLINE __diagnose_as(__builtin_strcpy, 1, 2)
+char *strcpy(char * const POS p, const char * const POS q)
+{
+	const size_t p_size = __member_size(p);
+	const size_t q_size = __member_size(q);
+	size_t size;
+
+	/* If neither buffer size is known, immediately give up. */
+	if (__builtin_constant_p(p_size) &&
+	    __builtin_constant_p(q_size) &&
+	    p_size == SIZE_MAX && q_size == SIZE_MAX)
+		return __underlying_strcpy(p, q);
+	size = strlen(q) + 1;
+	/* Compile-time check for const size overflow. */
+	if (__compiletime_lessthan(p_size, size))
+		__write_overflow();
+	/* Run-time check for dynamic size overflow. */
+	if (p_size < size)
+		fortify_panic(__func__);
+	__underlying_memcpy(p, q, size);
+	return p;
+}
+
+/* Don't use these outside the FORITFY_SOURCE implementation */
+#undef __underlying_memchr
+#undef __underlying_memcmp
+#undef __underlying_strcat
+#undef __underlying_strcpy
+#undef __underlying_strncat
+#undef __underlying_strncpy
+
+#undef POS
+#undef POS0
+
+#endif /* _LINUX_FORTIFY_STRING_H_ */
diff --git a/include/linux/string.h b/include/linux/string.h
index 953484ebc9f6..d796c774c4fe 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -161,6 +161,23 @@ static inline const char *kbasename(const char *path)
 	return tail ? tail + 1 : path;
 }
 
+#if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
+#include <linux/fortify-string.h>
+#endif
+#ifndef unsafe_memcpy
+#define unsafe_memcpy(dst, src, bytes, justification)		\
+	memcpy(dst, src, bytes)
+#endif
+
+#ifndef unsafe_memset
+#define unsafe_memset(dst, val, size, justification)		\
+	memset(dst, val, size)
+#endif
+
+#ifndef unsafe_strlen
+#define unsafe_strlen(str, justification)			\
+	strlen(str)
+#endif
 
 #ifdef __cplusplus
 }
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index ac1acefafb2c..658de4953aa1 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -137,6 +137,19 @@ config ZERO_CALL_USED_REGS
 
 endmenu
 
+menu "Buffer overflow protection"
+
+config FORTIFY_SOURCE
+	bool "Harden common str/mem functions against buffer overflows"
+	depends on ARCH_HAS_FORTIFY_SOURCE
+	# https://bugs.llvm.org/show_bug.cgi?id=41459
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 120001
+	# https://github.com/llvm/llvm-project/issues/53645
+	depends on !CC_IS_CLANG || !X86_32
+	help
+	  Detect overflows of buffers in common string and memory functions
+	  where the compiler can determine and validate the buffer sizes.
+
 config STACK_GUARD_PAGE
 	bool "Place guard page to catch stack overflows"
 	depends on ARM && MMU
@@ -251,3 +264,5 @@ config MEMORY_ATTRIBUTES
 	  will in future be enforced by the MMU.
 
 endmenu
+
+endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 0d1d22c0845b..370d4f31d45a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -6,7 +6,7 @@ obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-pbl-y		+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
-obj-y			+= string.o
+obj-y			+= string.o string_helpers.o
 obj-$(CONFIG_VERSION_CMP)	+= strverscmp.o
 obj-y			+= strtox.o
 obj-y			+= kstrtox.o
diff --git a/lib/string.c b/lib/string.c
index ebce8f0073fa..96eac6d1daf6 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -6,19 +6,13 @@
  */
 
 /*
- * stupid library routines.. The optimized versions should generally be found
- * as inline code in <asm-xx/string.h>
- *
- * These are buggy as well..
- *
- * * Fri Jun 25 1999, Ingo Oeser <ioe@informatik.tu-chemnitz.de>
- * -  Added strsep() which will replace strtok() soon (because strsep() is
- *    reentrant and should be faster). Use only strsep() in new code, please.
- * * Mon Sep 14 2020, Ahmad Fatoum <a.fatoum@pengutronix.de>
- * -  Kissed strtok() goodbye
- *
+ * This file should be used only for "library" routines that may have
+ * alternative implementations on specific architectures (generally
+ * found in <asm/string.h>), or get overloaded by FORTIFY_SOURCE.
+ * (Specifically, this file is built with __NO_FORTIFY.)
  */
 
+#define __NO_FORTIFY
 #include <linux/types.h>
 #include <string.h>
 #include <linux/ctype.h>
diff --git a/lib/string_helpers.c b/lib/string_helpers.c
new file mode 100644
index 000000000000..6ddef5f78e38
--- /dev/null
+++ b/lib/string_helpers.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Helpers for formatting and printing strings
+ *
+ * Copyright 31 August 2008 James Bottomley
+ * Copyright (C) 2013, Intel Corporation
+ */
+
+#include <linux/types.h>
+#include <linux/bug.h>
+#include <linux/printk.h>
+#include <linux/linkage.h>
+
+void __read_overflow2_field(size_t avail, size_t wanted);
+void __write_overflow_field(size_t avail, size_t wanted);
+void fortify_panic(const char *name);
+
+#ifdef CONFIG_FORTIFY_SOURCE
+/* These are placeholders for fortify compile-time warnings. */
+void __read_overflow2_field(size_t avail, size_t wanted) { }
+EXPORT_SYMBOL(__read_overflow2_field);
+void __write_overflow_field(size_t avail, size_t wanted) { }
+EXPORT_SYMBOL(__write_overflow_field);
+
+void fortify_panic(const char *name)
+{
+	panic("detected buffer overflow in %s\n", name);
+}
+EXPORT_SYMBOL(fortify_panic);
+#endif /* CONFIG_FORTIFY_SOURCE */
diff --git a/pbl/string.c b/pbl/string.c
index 7c10f064dc7e..528f62ef2055 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -6,6 +6,7 @@
  * Small subset of simple string routines
  */
 
+#define __NO_FORTIFY
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/compiler.h>
-- 
2.39.5



