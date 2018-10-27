Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSf-0000p6-67
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id f8-v6so1295262pgq.5
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:50 -0700
Message-Id: <20181027013157.23135-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/11] lib: Port kstrtox.c from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/kernel.h |  95 +++++++++++
 include/linux/string.h |   2 +
 lib/Makefile           |   1 +
 lib/kstrtox.c          | 366 +++++++++++++++++++++++++++++++++++++++++
 lib/kstrtox.h          |   9 +
 5 files changed, 473 insertions(+)
 create mode 100644 lib/kstrtox.c
 create mode 100644 lib/kstrtox.h

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index ab713f20e..cc6d6f746 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -269,4 +269,99 @@ extern char *bin2hex(char *dst, const void *src, size_t count);
 #define swap(a, b) \
 	do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)
 
+
+/* Internal, do not use. */
+int __must_check _kstrtoul(const char *s, unsigned int base, unsigned long *res);
+int __must_check _kstrtol(const char *s, unsigned int base, long *res);
+
+int __must_check kstrtoull(const char *s, unsigned int base, unsigned long long *res);
+int __must_check kstrtoll(const char *s, unsigned int base, long long *res);
+
+/**
+ * kstrtoul - convert a string to an unsigned long
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign, but not a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+*/
+static inline int __must_check kstrtoul(const char *s, unsigned int base, unsigned long *res)
+{
+	/*
+	 * We want to shortcut function call, but
+	 * __builtin_types_compatible_p(unsigned long, unsigned long long) = 0.
+	 */
+	if (sizeof(unsigned long) == sizeof(unsigned long long) &&
+	    __alignof__(unsigned long) == __alignof__(unsigned long long))
+		return kstrtoull(s, base, (unsigned long long *)res);
+	else
+		return _kstrtoul(s, base, res);
+}
+
+/**
+ * kstrtol - convert a string to a long
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign or a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+ */
+static inline int __must_check kstrtol(const char *s, unsigned int base, long *res)
+{
+	/*
+	 * We want to shortcut function call, but
+	 * __builtin_types_compatible_p(long, long long) = 0.
+	 */
+	if (sizeof(long) == sizeof(long long) &&
+	    __alignof__(long) == __alignof__(long long))
+		return kstrtoll(s, base, (long long *)res);
+	else
+		return _kstrtol(s, base, res);
+}
+
+int __must_check kstrtouint(const char *s, unsigned int base, unsigned int *res);
+int __must_check kstrtoint(const char *s, unsigned int base, int *res);
+
+static inline int __must_check kstrtou64(const char *s, unsigned int base, u64 *res)
+{
+	return kstrtoull(s, base, res);
+}
+
+static inline int __must_check kstrtos64(const char *s, unsigned int base, s64 *res)
+{
+	return kstrtoll(s, base, res);
+}
+
+static inline int __must_check kstrtou32(const char *s, unsigned int base, u32 *res)
+{
+	return kstrtouint(s, base, res);
+}
+
+static inline int __must_check kstrtos32(const char *s, unsigned int base, s32 *res)
+{
+	return kstrtoint(s, base, res);
+}
+
+int __must_check kstrtou16(const char *s, unsigned int base, u16 *res);
+int __must_check kstrtos16(const char *s, unsigned int base, s16 *res);
+int __must_check kstrtou8(const char *s, unsigned int base, u8 *res);
+int __must_check kstrtos8(const char *s, unsigned int base, s8 *res);
+int __must_check kstrtobool(const char *s, bool *res);
+
 #endif /* _LINUX_KERNEL_H */
diff --git a/include/linux/string.h b/include/linux/string.h
index c9823dab8..fd42f5020 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -134,4 +134,6 @@ static inline void *kmemdup(const void *src, size_t len, gfp_t gfp)
 	return memdup(src, len);
 }
 
+extern int kstrtobool(const char *s, bool *res);
+
 #endif /* _LINUX_STRING_H_ */
diff --git a/lib/Makefile b/lib/Makefile
index 693945fb2..24dc3d9ee 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -5,6 +5,7 @@ obj-y			+= rbtree.o
 obj-y			+= display_options.o
 obj-y			+= string.o
 obj-y			+= strtox.o
+obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
 obj-y			+= div64.o
diff --git a/lib/kstrtox.c b/lib/kstrtox.c
new file mode 100644
index 000000000..0e4b59053
--- /dev/null
+++ b/lib/kstrtox.c
@@ -0,0 +1,366 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Convert integer string representation to an integer.
+ * If an integer doesn't fit into specified type, -E is returned.
+ *
+ * Integer starts with optional sign.
+ * kstrtou*() functions do not accept sign "-".
+ *
+ * Radix 0 means autodetection: leading "0x" implies radix 16,
+ * leading "0" implies radix 8, otherwise radix is 10.
+ * Autodetection hints work after optional sign, but not before.
+ *
+ * If -E is returned, result is not touched.
+ */
+#include <linux/ctype.h>
+#include <linux/kernel.h>
+#include <linux/math64.h>
+#include <linux/types.h>
+
+#include "kstrtox.h"
+
+const char *_parse_integer_fixup_radix(const char *s, unsigned int *base)
+{
+	if (*base == 0) {
+		if (s[0] == '0') {
+			if (_tolower(s[1]) == 'x' && isxdigit(s[2]))
+				*base = 16;
+			else
+				*base = 8;
+		} else
+			*base = 10;
+	}
+	if (*base == 16 && s[0] == '0' && _tolower(s[1]) == 'x')
+		s += 2;
+	return s;
+}
+
+/*
+ * Convert non-negative integer string representation in explicitly given radix
+ * to an integer.
+ * Return number of characters consumed maybe or-ed with overflow bit.
+ * If overflow occurs, result integer (incorrect) is still returned.
+ *
+ * Don't you dare use this function.
+ */
+unsigned int _parse_integer(const char *s, unsigned int base, unsigned long long *p)
+{
+	unsigned long long res;
+	unsigned int rv;
+
+	res = 0;
+	rv = 0;
+	while (1) {
+		unsigned int c = *s;
+		unsigned int lc = c | 0x20; /* don't tolower() this line */
+		unsigned int val;
+
+		if ('0' <= c && c <= '9')
+			val = c - '0';
+		else if ('a' <= lc && lc <= 'f')
+			val = lc - 'a' + 10;
+		else
+			break;
+
+		if (val >= base)
+			break;
+		/*
+		 * Check for overflow only if we are within range of
+		 * it in the max base we support (16)
+		 */
+		if (unlikely(res & (~0ull << 60))) {
+			if (res > div_u64(ULLONG_MAX - val, base))
+				rv |= KSTRTOX_OVERFLOW;
+		}
+		res = res * base + val;
+		rv++;
+		s++;
+	}
+	*p = res;
+	return rv;
+}
+
+static int _kstrtoull(const char *s, unsigned int base, unsigned long long *res)
+{
+	unsigned long long _res;
+	unsigned int rv;
+
+	s = _parse_integer_fixup_radix(s, &base);
+	rv = _parse_integer(s, base, &_res);
+	if (rv & KSTRTOX_OVERFLOW)
+		return -ERANGE;
+	if (rv == 0)
+		return -EINVAL;
+	s += rv;
+	if (*s == '\n')
+		s++;
+	if (*s)
+		return -EINVAL;
+	*res = _res;
+	return 0;
+}
+
+/**
+ * kstrtoull - convert a string to an unsigned long long
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign, but not a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+ */
+int kstrtoull(const char *s, unsigned int base, unsigned long long *res)
+{
+	if (s[0] == '+')
+		s++;
+	return _kstrtoull(s, base, res);
+}
+EXPORT_SYMBOL(kstrtoull);
+
+/**
+ * kstrtoll - convert a string to a long long
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign or a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+ */
+int kstrtoll(const char *s, unsigned int base, long long *res)
+{
+	unsigned long long tmp;
+	int rv;
+
+	if (s[0] == '-') {
+		rv = _kstrtoull(s + 1, base, &tmp);
+		if (rv < 0)
+			return rv;
+		if ((long long)-tmp > 0)
+			return -ERANGE;
+		*res = -tmp;
+	} else {
+		rv = kstrtoull(s, base, &tmp);
+		if (rv < 0)
+			return rv;
+		if ((long long)tmp < 0)
+			return -ERANGE;
+		*res = tmp;
+	}
+	return 0;
+}
+EXPORT_SYMBOL(kstrtoll);
+
+/* Internal, do not use. */
+int _kstrtoul(const char *s, unsigned int base, unsigned long *res)
+{
+	unsigned long long tmp;
+	int rv;
+
+	rv = kstrtoull(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (unsigned long long)(unsigned long)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(_kstrtoul);
+
+/* Internal, do not use. */
+int _kstrtol(const char *s, unsigned int base, long *res)
+{
+	long long tmp;
+	int rv;
+
+	rv = kstrtoll(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (long long)(long)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(_kstrtol);
+
+/**
+ * kstrtouint - convert a string to an unsigned int
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign, but not a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+ */
+int kstrtouint(const char *s, unsigned int base, unsigned int *res)
+{
+	unsigned long long tmp;
+	int rv;
+
+	rv = kstrtoull(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (unsigned long long)(unsigned int)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtouint);
+
+/**
+ * kstrtoint - convert a string to an int
+ * @s: The start of the string. The string must be null-terminated, and may also
+ *  include a single newline before its terminating null. The first character
+ *  may also be a plus sign or a minus sign.
+ * @base: The number base to use. The maximum supported base is 16. If base is
+ *  given as 0, then the base of the string is automatically detected with the
+ *  conventional semantics - If it begins with 0x the number will be parsed as a
+ *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
+ *  parsed as an octal number. Otherwise it will be parsed as a decimal.
+ * @res: Where to write the result of the conversion on success.
+ *
+ * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
+ * Used as a replacement for the obsolete simple_strtoull. Return code must
+ * be checked.
+ */
+int kstrtoint(const char *s, unsigned int base, int *res)
+{
+	long long tmp;
+	int rv;
+
+	rv = kstrtoll(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (long long)(int)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtoint);
+
+int kstrtou16(const char *s, unsigned int base, u16 *res)
+{
+	unsigned long long tmp;
+	int rv;
+
+	rv = kstrtoull(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (unsigned long long)(u16)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtou16);
+
+int kstrtos16(const char *s, unsigned int base, s16 *res)
+{
+	long long tmp;
+	int rv;
+
+	rv = kstrtoll(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (long long)(s16)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtos16);
+
+int kstrtou8(const char *s, unsigned int base, u8 *res)
+{
+	unsigned long long tmp;
+	int rv;
+
+	rv = kstrtoull(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (unsigned long long)(u8)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtou8);
+
+int kstrtos8(const char *s, unsigned int base, s8 *res)
+{
+	long long tmp;
+	int rv;
+
+	rv = kstrtoll(s, base, &tmp);
+	if (rv < 0)
+		return rv;
+	if (tmp != (long long)(s8)tmp)
+		return -ERANGE;
+	*res = tmp;
+	return 0;
+}
+EXPORT_SYMBOL(kstrtos8);
+
+/**
+ * kstrtobool - convert common user inputs into boolean values
+ * @s: input string
+ * @res: result
+ *
+ * This routine returns 0 iff the first character is one of 'Yy1Nn0', or
+ * [oO][NnFf] for "on" and "off". Otherwise it will return -EINVAL.  Value
+ * pointed to by res is updated upon finding a match.
+ */
+int kstrtobool(const char *s, bool *res)
+{
+	if (!s)
+		return -EINVAL;
+
+	switch (s[0]) {
+	case 'y':
+	case 'Y':
+	case '1':
+		*res = true;
+		return 0;
+	case 'n':
+	case 'N':
+	case '0':
+		*res = false;
+		return 0;
+	case 'o':
+	case 'O':
+		switch (s[1]) {
+		case 'n':
+		case 'N':
+			*res = true;
+			return 0;
+		case 'f':
+		case 'F':
+			*res = false;
+			return 0;
+		default:
+			break;
+		}
+	default:
+		break;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL(kstrtobool);
\ No newline at end of file
diff --git a/lib/kstrtox.h b/lib/kstrtox.h
new file mode 100644
index 000000000..3b4637bcd
--- /dev/null
+++ b/lib/kstrtox.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LIB_KSTRTOX_H
+#define _LIB_KSTRTOX_H
+
+#define KSTRTOX_OVERFLOW	(1U << 31)
+const char *_parse_integer_fixup_radix(const char *s, unsigned int *base);
+unsigned int _parse_integer(const char *s, unsigned int base, unsigned long long *res);
+
+#endif
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
