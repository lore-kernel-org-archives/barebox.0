Delivery-date: Tue, 16 Jul 2024 13:59:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgq6-005Qw7-0o
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgq4-0001vP-Ff
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=18F9O6cjNy6ko6J4UA/jD3H7RAYym+11/X3XVI7g6eU=; b=GJA6KGqfMKZR2Eb/Wn6PdBvLW3
	rGP7ocUh1lGxjsnyKEPI+ZXbGp2jfYFqgAeNa4pgsdssUKTRKcOW01YH56bblxd0hPDmtFTYPgvvo
	ffx7604GuHz4iO0v6+SkxbDlrx641EoAFbau3T1EyCrnmiQAgZdHPE+ysA+k2KqyMEEHF/D1fnCRK
	ueZq6vZoiduKt/x+qbaQ9mCGff5V/8e7cF5rzXojjac8FNOxGT+JYWjSnHezzueBrgSbOMlVt9Atm
	6Slndm4AshhAdPryd7TKxGiH3/DB9yvAmDDGC/JmMHF24joZVUZTclrg3wbbjMGUveeGz4xDOGkHZ
	+k4CJAlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpV-0000000AKkm-428q;
	Tue, 16 Jul 2024 11:58:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpQ-0000000AKgQ-2RpA
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 11:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=18F9O6cjNy6ko6J4UA/jD3H7RAYym+11/X3XVI7g6eU=; b=Uv/g8xEGlvE35HY7hO+dn+7dGr
	dNOdy3pW8HJtTTczChFP0syTiZFdOPi00U9cabX+jEzoZD9effbbPsgqReSn12PuM2Iq7HOKBJ2sL
	wPWzMkLgnzDMfaEtaudI6t/7k6afZSoL8FfZDX9P6nPllfjPRuemzGFwaVGocXTaxhCcF0zq6UXkF
	qgoIUEPTaf1u//IX3QU/eKMezIdNBXJGw2V8e/H13SozZf2nZ//6VvAVfVjeEWQ+N+XyRFLjiIuCY
	TA75aEK3KWsEWMjluYc6zA/5+DFZx62xFPPI6WrU6dCSXt8G3mnizKQ24MNFuhfH5emnGevNHYS34
	GOyNO+0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpN-0000000220U-0Zbx
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001Ob-DM; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007ZE-Ug; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-2j;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:58:33 +0200
Message-Id: <20240716115834.1958413-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_125841_430917_EE30256D 
X-CRM114-Status: GOOD (  25.52  )
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
Subject: [PATCH 7/8] include: linux/kernel.h: split off into multiple headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream version in Linux has successively factored out parts into
newly created headers for specific functions. What remains in
<linux/kernel.h> is mostly ftrace and annotations like might_sleep(),
which we don't define in <linux/kernel.h>.

Let's follow suit and factor out everything into headers. The intention
is that other headers won't include <linux/kernel.h>, but one of the
more specific headers and that way we avoid recursive dependencies
and reduce parse time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/array_size.h |  14 +++
 include/linux/hex.h        |  34 ++++++
 include/linux/kernel.h     | 234 +------------------------------------
 include/linux/kstrtox.h    | 123 +++++++++++++++++++
 include/linux/math.h       |  83 +++++++++++++
 include/linux/wordpart.h   |  49 ++++++++
 6 files changed, 308 insertions(+), 229 deletions(-)
 create mode 100644 include/linux/array_size.h
 create mode 100644 include/linux/hex.h
 create mode 100644 include/linux/kstrtox.h
 create mode 100644 include/linux/math.h
 create mode 100644 include/linux/wordpart.h

diff --git a/include/linux/array_size.h b/include/linux/array_size.h
new file mode 100644
index 000000000000..5411d730c819
--- /dev/null
+++ b/include/linux/array_size.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_ARRAY_SIZE_H
+#define _LINUX_ARRAY_SIZE_H
+
+#include <linux/compiler.h>
+
+/**
+ * ARRAY_SIZE - get the number of elements in array @arr
+ * @arr: array to be sized
+ */
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
+#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
+
+#endif  /* _LINUX_ARRAY_SIZE_H */
diff --git a/include/linux/hex.h b/include/linux/hex.h
new file mode 100644
index 000000000000..b77ed6d5441f
--- /dev/null
+++ b/include/linux/hex.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_HEX_H
+#define _LINUX_HEX_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+
+extern const char hex_asc[];
+#define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
+#define hex_asc_hi(x)	hex_asc[((x) & 0xf0) >> 4]
+
+static inline char *hex_byte_pack(char *buf, u8 byte)
+{
+	*buf++ = hex_asc_hi(byte);
+	*buf++ = hex_asc_lo(byte);
+	return buf;
+}
+
+extern const char hex_asc_upper[];
+#define hex_asc_upper_lo(x)	hex_asc_upper[((x) & 0x0f)]
+#define hex_asc_upper_hi(x)	hex_asc_upper[((x) & 0xf0) >> 4]
+
+static inline char *hex_byte_pack_upper(char *buf, u8 byte)
+{
+	*buf++ = hex_asc_upper_hi(byte);
+	*buf++ = hex_asc_upper_lo(byte);
+	return buf;
+}
+
+extern int hex_to_bin(char ch);
+extern int __must_check hex2bin(u8 *dst, const char *src, size_t count);
+extern char *bin2hex(char *dst, const void *src, size_t count);
+
+#endif
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index dd108ba0abf7..fbb3cfe844cb 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -3,241 +3,17 @@
 #define _LINUX_KERNEL_H
 
 #include <linux/compiler.h>
+#include <linux/array_size.h>
 #include <linux/bug.h>
 #include <linux/barebox-wrapper.h>
 #include <linux/limits.h>
-#include <linux/math64.h>
+#include <linux/math.h>
 #include <linux/container_of.h>
+#include <linux/wordpart.h>
 #include <linux/instruction_pointer.h>
 #include <linux/minmax.h>
+#include <linux/kstrtox.h>
 #include <linux/align.h>
-
-/**
- * REPEAT_BYTE - repeat the value @x multiple times as an unsigned long value
- * @x: value to repeat
- *
- * NOTE: @x is not checked for > 0xff; larger values produce odd results.
- */
-#define REPEAT_BYTE(x)	((~0ul / 0xff) * (x))
-
-#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
-#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
-
-/*
- * This looks more complex than it should be. But we need to
- * get the type for the ~ right in round_down (it needs to be
- * as wide as the result!), and we want to evaluate the macro
- * arguments just once each.
- *
- * NOTE these functions only round to power-of-2 arguments. Use
- * roundup/rounddown for non power-of-2-arguments.
- */
-#define __round_mask(x, y) ((__typeof__(x))((y)-1))
-#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
-#define round_down(x, y) ((x) & ~__round_mask(x, y))
-
-#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
-
-#define DIV_ROUND_DOWN_ULL(ll, d) \
-	({ unsigned long long _tmp = (ll); do_div(_tmp, d); _tmp; })
-
-#define DIV_ROUND_UP_ULL(ll, d)		DIV_ROUND_DOWN_ULL((ll) + (d) - 1, (d))
-
-#define DIV_ROUND_CLOSEST(x, divisor)(			\
-{							\
-	typeof(divisor) __divisor = divisor;		\
-	(((x) + ((__divisor) / 2)) / (__divisor));	\
-}							\
-)
-/*
- * Same as above but for u64 dividends. divisor must be a 32-bit
- * number.
- */
-#define DIV_ROUND_CLOSEST_ULL(x, divisor)(		\
-{							\
-	typeof(divisor) __d = divisor;			\
-	unsigned long long _tmp = (x) + (__d) / 2;	\
-	do_div(_tmp, __d);				\
-	_tmp;						\
-}							\
-)
-
-/**
- * upper_32_bits - return bits 32-63 of a number
- * @n: the number we're accessing
- *
- * A basic shift-right of a 64- or 32-bit quantity.  Use this to suppress
- * the "right shift count >= width of type" warning when that quantity is
- * 32-bits.
- */
-#define upper_32_bits(n) ((u32)(((n) >> 16) >> 16))
-
-/**
- * lower_32_bits - return bits 0-31 of a number
- * @n: the number we're accessing
- */
-#define lower_32_bits(n) ((u32)(n))
-
-#define abs(x) ({                               \
-		long __x = (x);                 \
-		(__x < 0) ? -__x : __x;         \
-	})
-
-#define abs64(x) ({                             \
-		s64 __x = (x);                  \
-		(__x < 0) ? -__x : __x;         \
-	})
-
-extern unsigned long simple_strtoul(const char *,char **,unsigned int);
-extern long simple_strtol(const char *,char **,unsigned int);
-extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
-extern long long simple_strtoll(const char *,char **,unsigned int);
-extern s64 simple_strtofract(const char *cp, char **endp, u32 division);
-
-/* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
-#define roundup(x, y) (					\
-{							\
-	const typeof(y) __y = y;			\
-	(((x) + (__y - 1)) / __y) * __y;		\
-}							\
-)
-#define rounddown(x, y) (				\
-{							\
-	typeof(x) __x = (x);				\
-	__x - (__x % (y));				\
-}							\
-)
-
-/* Calculate "x * n / d" without unnecessary overflow or loss of precision. */
-#define mult_frac(x, n, d)	\
-({				\
-	typeof(x) x_ = (x);	\
-	typeof(n) n_ = (n);	\
-	typeof(d) d_ = (d);	\
-				\
-	typeof(x_) q = x_ / d_;	\
-	typeof(x_) r = x_ % d_;	\
-	q * n_ + r * n_ / d_;	\
-})
-
-extern const char hex_asc[];
-#define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
-#define hex_asc_hi(x)	hex_asc[((x) & 0xf0) >> 4]
-
-static inline char *hex_byte_pack(char *buf, u8 byte)
-{
-	*buf++ = hex_asc_hi(byte);
-	*buf++ = hex_asc_lo(byte);
-	return buf;
-}
-
-extern const char hex_asc_upper[];
-#define hex_asc_upper_lo(x)	hex_asc_upper[((x) & 0x0f)]
-#define hex_asc_upper_hi(x)	hex_asc_upper[((x) & 0xf0) >> 4]
-
-static inline char *hex_byte_pack_upper(char *buf, u8 byte)
-{
-	*buf++ = hex_asc_upper_hi(byte);
-	*buf++ = hex_asc_upper_lo(byte);
-	return buf;
-}
-
-extern int hex_to_bin(char ch);
-extern int __must_check hex2bin(u8 *dst, const char *src, size_t count);
-extern char *bin2hex(char *dst, const void *src, size_t count);
-
-/* Internal, do not use. */
-int __must_check _kstrtoul(const char *s, unsigned int base, unsigned long *res);
-int __must_check _kstrtol(const char *s, unsigned int base, long *res);
-
-int __must_check kstrtoull(const char *s, unsigned int base, unsigned long long *res);
-int __must_check kstrtoll(const char *s, unsigned int base, long long *res);
-
-/**
- * kstrtoul - convert a string to an unsigned long
- * @s: The start of the string. The string must be null-terminated, and may also
- *  include a single newline before its terminating null. The first character
- *  may also be a plus sign, but not a minus sign.
- * @base: The number base to use. The maximum supported base is 16. If base is
- *  given as 0, then the base of the string is automatically detected with the
- *  conventional semantics - If it begins with 0x the number will be parsed as a
- *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
- *  parsed as an octal number. Otherwise it will be parsed as a decimal.
- * @res: Where to write the result of the conversion on success.
- *
- * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
- * Used as a replacement for the obsolete simple_strtoull. Return code must
- * be checked.
-*/
-static inline int __must_check kstrtoul(const char *s, unsigned int base, unsigned long *res)
-{
-	/*
-	 * We want to shortcut function call, but
-	 * __builtin_types_compatible_p(unsigned long, unsigned long long) = 0.
-	 */
-	if (sizeof(unsigned long) == sizeof(unsigned long long) &&
-	    __alignof__(unsigned long) == __alignof__(unsigned long long))
-		return kstrtoull(s, base, (unsigned long long *)res);
-	else
-		return _kstrtoul(s, base, res);
-}
-
-/**
- * kstrtol - convert a string to a long
- * @s: The start of the string. The string must be null-terminated, and may also
- *  include a single newline before its terminating null. The first character
- *  may also be a plus sign or a minus sign.
- * @base: The number base to use. The maximum supported base is 16. If base is
- *  given as 0, then the base of the string is automatically detected with the
- *  conventional semantics - If it begins with 0x the number will be parsed as a
- *  hexadecimal (case insensitive), if it otherwise begins with 0, it will be
- *  parsed as an octal number. Otherwise it will be parsed as a decimal.
- * @res: Where to write the result of the conversion on success.
- *
- * Returns 0 on success, -ERANGE on overflow and -EINVAL on parsing error.
- * Used as a replacement for the obsolete simple_strtoull. Return code must
- * be checked.
- */
-static inline int __must_check kstrtol(const char *s, unsigned int base, long *res)
-{
-	/*
-	 * We want to shortcut function call, but
-	 * __builtin_types_compatible_p(long, long long) = 0.
-	 */
-	if (sizeof(long) == sizeof(long long) &&
-	    __alignof__(long) == __alignof__(long long))
-		return kstrtoll(s, base, (long long *)res);
-	else
-		return _kstrtol(s, base, res);
-}
-
-int __must_check kstrtouint(const char *s, unsigned int base, unsigned int *res);
-int __must_check kstrtoint(const char *s, unsigned int base, int *res);
-
-static inline int __must_check kstrtou64(const char *s, unsigned int base, u64 *res)
-{
-	return kstrtoull(s, base, res);
-}
-
-static inline int __must_check kstrtos64(const char *s, unsigned int base, s64 *res)
-{
-	return kstrtoll(s, base, res);
-}
-
-static inline int __must_check kstrtou32(const char *s, unsigned int base, u32 *res)
-{
-	return kstrtouint(s, base, res);
-}
-
-static inline int __must_check kstrtos32(const char *s, unsigned int base, s32 *res)
-{
-	return kstrtoint(s, base, res);
-}
-
-int __must_check kstrtou16(const char *s, unsigned int base, u16 *res);
-int __must_check kstrtos16(const char *s, unsigned int base, s16 *res);
-int __must_check kstrtou8(const char *s, unsigned int base, u8 *res);
-int __must_check kstrtos8(const char *s, unsigned int base, s8 *res);
-int __must_check kstrtobool(const char *s, bool *res);
+#include <linux/hex.h>
 
 #endif /* _LINUX_KERNEL_H */
diff --git a/include/linux/kstrtox.h b/include/linux/kstrtox.h
new file mode 100644
index 000000000000..51493c71292b
--- /dev/null
+++ b/include/linux/kstrtox.h
@@ -0,0 +1,123 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KSTRTOX_H
+#define _LINUX_KSTRTOX_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
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
+
+/*
+ * Use kstrto<foo> instead.
+ *
+ * NOTE: simple_strto<foo> does not check for the range overflow and,
+ *	 depending on the input, may give interesting results.
+ *
+ * Use these functions if and only if you cannot use kstrto<foo>, because
+ * the conversion ends on the first non-digit character, which may be far
+ * beyond the supported range. It might be useful to parse the strings like
+ * 10x50 or 12:21 without altering original string or temporary buffer in use.
+ * Keep in mind above caveat.
+ */
+
+extern unsigned long simple_strtoul(const char *,char **,unsigned int);
+extern long simple_strtol(const char *,char **,unsigned int);
+extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
+extern long long simple_strtoll(const char *,char **,unsigned int);
+
+extern s64 simple_strtofract(const char *cp, char **endp, u32 division);
+
+#endif
diff --git a/include/linux/math.h b/include/linux/math.h
new file mode 100644
index 000000000000..acbffa96e6eb
--- /dev/null
+++ b/include/linux/math.h
@@ -0,0 +1,83 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_MATH_H
+#define _LINUX_MATH_H
+
+#include <linux/types.h>
+#include <linux/math64.h>
+
+/*
+ * This looks more complex than it should be. But we need to
+ * get the type for the ~ right in round_down (it needs to be
+ * as wide as the result!), and we want to evaluate the macro
+ * arguments just once each.
+ *
+ * NOTE these functions only round to power-of-2 arguments. Use
+ * roundup/rounddown for non power-of-2-arguments.
+ */
+#define __round_mask(x, y) ((__typeof__(x))((y)-1))
+#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
+#define round_down(x, y) ((x) & ~__round_mask(x, y))
+
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+
+#define DIV_ROUND_DOWN_ULL(ll, d) \
+	({ unsigned long long _tmp = (ll); do_div(_tmp, d); _tmp; })
+
+#define DIV_ROUND_UP_ULL(ll, d)		DIV_ROUND_DOWN_ULL((ll) + (d) - 1, (d))
+
+#define DIV_ROUND_CLOSEST(x, divisor)(			\
+{							\
+	typeof(divisor) __divisor = divisor;		\
+	(((x) + ((__divisor) / 2)) / (__divisor));	\
+}							\
+)
+/*
+ * Same as above but for u64 dividends. divisor must be a 32-bit
+ * number.
+ */
+#define DIV_ROUND_CLOSEST_ULL(x, divisor)(		\
+{							\
+	typeof(divisor) __d = divisor;			\
+	unsigned long long _tmp = (x) + (__d) / 2;	\
+	do_div(_tmp, __d);				\
+	_tmp;						\
+}							\
+)
+
+/* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
+#define roundup(x, y) (					\
+{							\
+	const typeof(y) __y = y;			\
+	(((x) + (__y - 1)) / __y) * __y;		\
+}							\
+)
+#define rounddown(x, y) (				\
+{							\
+	typeof(x) __x = (x);				\
+	__x - (__x % (y));				\
+}							\
+)
+
+/* Calculate "x * n / d" without unnecessary overflow or loss of precision. */
+#define mult_frac(x, n, d)	\
+({				\
+	typeof(x) x_ = (x);	\
+	typeof(n) n_ = (n);	\
+	typeof(d) d_ = (d);	\
+				\
+	typeof(x_) q = x_ / d_;	\
+	typeof(x_) r = x_ % d_;	\
+	q * n_ + r * n_ / d_;	\
+})
+
+#define abs(x) ({                               \
+		long __x = (x);                 \
+		(__x < 0) ? -__x : __x;         \
+	})
+
+#define abs64(x) ({                             \
+		s64 __x = (x);                  \
+		(__x < 0) ? -__x : __x;         \
+	})
+
+#endif
diff --git a/include/linux/wordpart.h b/include/linux/wordpart.h
new file mode 100644
index 000000000000..72a83685c95d
--- /dev/null
+++ b/include/linux/wordpart.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_WORDPART_H
+#define _LINUX_WORDPART_H
+
+/**
+ * upper_32_bits - return bits 32-63 of a number
+ * @n: the number we're accessing
+ *
+ * A basic shift-right of a 64- or 32-bit quantity.  Use this to suppress
+ * the "right shift count >= width of type" warning when that quantity is
+ * 32-bits.
+ */
+#define upper_32_bits(n) ((u32)(((n) >> 16) >> 16))
+
+/**
+ * lower_32_bits - return bits 0-31 of a number
+ * @n: the number we're accessing
+ */
+#define lower_32_bits(n) ((u32)((n) & 0xffffffff))
+
+/**
+ * upper_16_bits - return bits 16-31 of a number
+ * @n: the number we're accessing
+ */
+#define upper_16_bits(n) ((u16)((n) >> 16))
+
+/**
+ * lower_16_bits - return bits 0-15 of a number
+ * @n: the number we're accessing
+ */
+#define lower_16_bits(n) ((u16)((n) & 0xffff))
+
+/**
+ * REPEAT_BYTE - repeat the value @x multiple times as an unsigned long value
+ * @x: value to repeat
+ *
+ * NOTE: @x is not checked for > 0xff; larger values produce odd results.
+ */
+#define REPEAT_BYTE(x)  ((~0ul / 0xff) * (x))
+
+/* Set bits in the first 'n' bytes when loaded from memory */
+#ifdef __LITTLE_ENDIAN
+#  define aligned_byte_mask(n) ((1UL << 8*(n))-1)
+#else
+#  define aligned_byte_mask(n) (~0xffUL << (BITS_PER_LONG - 8 - 8*(n)))
+#endif
+
+#endif // _LINUX_WORDPART_H
-- 
2.39.2



