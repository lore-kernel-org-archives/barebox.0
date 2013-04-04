Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNmEZ-0004uB-87
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 15:37:54 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 03CE6DC3405
 for <barebox@lists.infradead.org>; Thu,  4 Apr 2013 17:49:45 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Apr 2013 17:33:41 +0200
Message-Id: <1365089621-27545-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] lib: import kstrtox from the kernel 3.8
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/kernel.h |   94 +++++++++++++-
 lib/Makefile           |    1 +
 lib/kstrtox.c          |  322 ++++++++++++++++++++++++++++++++++++++++++++++++
 lib/kstrtox.h          |    8 ++
 lib/vsprintf.c         |  109 ++++++++--------
 5 files changed, 484 insertions(+), 50 deletions(-)
 create mode 100644 lib/kstrtox.c
 create mode 100644 lib/kstrtox.h

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 92c3391..0793bc5 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -105,5 +105,97 @@
 }							\
 )
 
-#endif /* _LINUX_KERNEL_H */
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
+
+#endif /* _LINUX_KERNEL_H */
diff --git a/lib/Makefile b/lib/Makefile
index 3c94542..7f1361f 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -3,6 +3,7 @@ obj-y			+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
 obj-y			+= string.o
+obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
 obj-y			+= div64.o
 obj-y			+= misc.o
diff --git a/lib/kstrtox.c b/lib/kstrtox.c
new file mode 100644
index 0000000..a95015f
--- /dev/null
+++ b/lib/kstrtox.c
@@ -0,0 +1,322 @@
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
+#include <errno.h>
+#include <linux/kernel.h>
+#include <linux/math64.h>
+#include <module.h>
+#include <linux/types.h>
+#include "kstrtox.h"
+
+const char *_parse_integer_fixup_radix(const char *s, unsigned int *base)
+{
+	if (*base == 0) {
+		if (s[0] == '0') {
+			if (tolower(s[1]) == 'x' && isxdigit(s[2]))
+				*base = 16;
+			else
+				*base = 8;
+		} else
+			*base = 10;
+	}
+	if (*base == 16 && s[0] == '0' && tolower(s[1]) == 'x')
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
+	int overflow;
+
+	res = 0;
+	rv = 0;
+	overflow = 0;
+	while (*s) {
+		unsigned int val;
+
+		if ('0' <= *s && *s <= '9')
+			val = *s - '0';
+		else if ('a' <= tolower(*s) && tolower(*s) <= 'f')
+			val = tolower(*s) - 'a' + 10;
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
+				overflow = 1;
+		}
+		res = res * base + val;
+		rv++;
+		s++;
+	}
+	*p = res;
+	if (overflow)
+		rv |= KSTRTOX_OVERFLOW;
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
+	rv &= ~KSTRTOX_OVERFLOW;
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
+		if ((long long)(-tmp) >= 0)
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
diff --git a/lib/kstrtox.h b/lib/kstrtox.h
new file mode 100644
index 0000000..f13eeea
--- /dev/null
+++ b/lib/kstrtox.h
@@ -0,0 +1,8 @@
+#ifndef _LIB_KSTRTOX_H
+#define _LIB_KSTRTOX_H
+
+#define KSTRTOX_OVERFLOW	(1U << 31)
+const char *_parse_integer_fixup_radix(const char *s, unsigned int *base);
+unsigned int _parse_integer(const char *s, unsigned int base, unsigned long long *res);
+
+#endif
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index d931340..8c1234d 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -20,70 +20,81 @@
 #include <common.h>
 #include <led.h>
 
-unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
+#include "kstrtox.h"
+
+/**
+ * simple_strtoull - convert a string to an unsigned long long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoull instead.
+ */
+unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int base)
 {
-	unsigned long result = 0,value;
+	unsigned long long result;
+	unsigned int rv;
+
+	cp = _parse_integer_fixup_radix(cp, &base);
+	rv = _parse_integer(cp, base, &result);
+	/* FIXME */
+	cp += (rv & ~KSTRTOX_OVERFLOW);
 
-	if (*cp == '0') {
-		cp++;
-		if ((*cp == 'x') && isxdigit(cp[1])) {
-			base = 16;
-			cp++;
-		}
-		if (!base) {
-			base = 8;
-		}
-	}
-	if (!base) {
-		base = 10;
-	}
-	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
-	    ? toupper(*cp) : *cp)-'A'+10) < base) {
-		result = result*base + value;
-		cp++;
-	}
 	if (endp)
 		*endp = (char *)cp;
+
 	return result;
 }
+EXPORT_SYMBOL(simple_strtoull);
+
+/**
+ * simple_strtoul - convert a string to an unsigned long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoul instead.
+ */
+unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
+{
+	return simple_strtoull(cp, endp, base);
+}
 EXPORT_SYMBOL(simple_strtoul);
 
-long simple_strtol(const char *cp,char **endp,unsigned int base)
+/**
+ * simple_strtol - convert a string to a signed long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtol instead.
+ */
+long simple_strtol(const char *cp, char **endp, unsigned int base)
 {
-	if(*cp=='-')
-		return -simple_strtoul(cp+1,endp,base);
-	return simple_strtoul(cp,endp,base);
+	if (*cp == '-')
+		return -simple_strtoul(cp + 1, endp, base);
+
+	return simple_strtoul(cp, endp, base);
 }
 EXPORT_SYMBOL(simple_strtol);
 
-unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int base)
+/**
+ * simple_strtoll - convert a string to a signed long long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoll instead.
+ */
+long long simple_strtoll(const char *cp, char **endp, unsigned int base)
 {
-	unsigned long long result = 0, value;
+	if (*cp == '-')
+		return -simple_strtoull(cp + 1, endp, base);
 
-	if (*cp == '0') {
-		cp++;
-		if ((*cp == 'x') && isxdigit (cp[1])) {
-			base = 16;
-			cp++;
-		}
-		if (!base) {
-			base = 8;
-		}
-	}
-	if (!base) {
-		base = 10;
-	}
-	while (isxdigit (*cp) && (value = isdigit (*cp)
-				? *cp - '0'
-				: (islower (*cp) ? toupper (*cp) : *cp) - 'A' + 10) < base) {
-		result = result * base + value;
-		cp++;
-	}
-	if (endp)
-		*endp = (char *) cp;
-	return result;
+	return simple_strtoull(cp, endp, base);
 }
-EXPORT_SYMBOL(simple_strtoull);
+EXPORT_SYMBOL(simple_strtoll);
+
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
