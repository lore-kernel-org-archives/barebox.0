Delivery-date: Fri, 06 Jun 2025 10:59:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuv-004K7h-17
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuq-0003h9-3c
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+gZrqZEDnkD6335a3nD7t3/Osa9JiDyDah7NjFOBebM=; b=tJa4I1FLCS7wa/WKj831V4BLIr
	umJCmKXTcxCj3BTV/tjnR1NglKrILkoCK+eycl+ePGkf7LnQKW/HUGrZBeJgLSukhVt/t28gnBGNW
	BKgOOh746mlGLCQuJMOIKxK4GznPiQB4G4+eu9BGiJcyH3oUpojN6uxfEAwigWE3ZRyhLWxjK8xu4
	cKnzdQxdL9uV/axsjOLAGk8gDBRy8JOpHL9qEOuzcyzz3vDiQnwfL9/kHZUy/S8UK8qbZIsr7QfTp
	VxIAdFFPiALGlRTB7EpKWQDWiVyZKeB5nEH6tA+K0gCPYpxqvEn9VD4Vj11hPG7PDLSlEhDm2DKbs
	ihFbUruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu9-0000000HSQV-1KOh;
	Fri, 06 Jun 2025 08:58:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu1-0000000HSKA-09Qd
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNStz-0002si-NT; Fri, 06 Jun 2025 10:58:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:08 +0200
Message-Id: <20250606085813.2183260-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015817_378022_43652D97 
X-CRM114-Status: GOOD (  30.27  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/10] lib: add parser code for mount options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is going to be used in the 9PFS code, but could be retrofitted to
other file systems as well in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/parser.h |  42 +++++
 lib/Makefile           |   1 +
 lib/parser.c           | 363 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 406 insertions(+)
 create mode 100644 include/linux/parser.h
 create mode 100644 lib/parser.c

diff --git a/include/linux/parser.h b/include/linux/parser.h
new file mode 100644
index 000000000000..3c3185ddbad6
--- /dev/null
+++ b/include/linux/parser.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * linux/include/linux/parser.h
+ *
+ * Header for lib/parser.c
+ * Intended use of these functions is parsing filesystem argument lists,
+ * but could potentially be used anywhere else that simple option=arg
+ * parsing is required.
+ */
+#ifndef _LINUX_PARSER_H
+#define _LINUX_PARSER_H
+
+#include <linux/types.h>
+
+/* associates an integer enumerator with a pattern string. */
+struct match_token {
+	int token;
+	const char *pattern;
+};
+
+typedef struct match_token match_table_t[];
+
+/* Maximum number of arguments that match_token will find in a pattern */
+enum {MAX_OPT_ARGS = 3};
+
+/* Describe the location within a string of a substring */
+typedef struct {
+	char *from;
+	char *to;
+} substring_t;
+
+int match_token(char *, const match_table_t table, substring_t args[]);
+int match_int(substring_t *, int *result);
+int match_uint(substring_t *s, unsigned int *result);
+int match_u64(substring_t *, u64 *result);
+int match_octal(substring_t *, int *result);
+int match_hex(substring_t *, int *result);
+bool match_wildcard(const char *pattern, const char *str);
+size_t match_strlcpy(char *, const substring_t *, size_t);
+char *match_strdup(const substring_t *);
+
+#endif /* _LINUX_PARSER_H */
diff --git a/lib/Makefile b/lib/Makefile
index a1ca2803a095..468383508f17 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -32,6 +32,7 @@ obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-y			+= arith.o
 obj-$(CONFIG_IDR)	+= idr.o
+obj-y			+= parser.o
 obj-y			+= iov_iter.o
 obj-y			+= math/
 obj-y			+= uuid.o
diff --git a/lib/parser.c b/lib/parser.c
new file mode 100644
index 000000000000..83c49352667c
--- /dev/null
+++ b/lib/parser.c
@@ -0,0 +1,363 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * lib/parser.c - simple parser for mount, etc. options.
+ */
+
+#include <linux/ctype.h>
+#include <linux/types.h>
+#include <linux/export.h>
+#include <linux/kstrtox.h>
+#include <linux/parser.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+/*
+ * max size needed by different bases to express U64
+ * HEX: "0xFFFFFFFFFFFFFFFF" --> 18
+ * DEC: "18446744073709551615" --> 20
+ * OCT: "01777777777777777777777" --> 23
+ * pick the max one to define NUMBER_BUF_LEN
+ */
+#define NUMBER_BUF_LEN 24
+
+/**
+ * match_one - Determines if a string matches a simple pattern
+ * @s: the string to examine for presence of the pattern
+ * @p: the string containing the pattern
+ * @args: array of %MAX_OPT_ARGS &substring_t elements. Used to return match
+ * locations.
+ *
+ * Description: Determines if the pattern @p is present in string @s. Can only
+ * match extremely simple token=arg style patterns. If the pattern is found,
+ * the location(s) of the arguments will be returned in the @args array.
+ */
+static int match_one(char *s, const char *p, substring_t args[])
+{
+	const char *meta;
+	int argc = 0;
+
+	if (!p)
+		return 1;
+
+	while(1) {
+		int len = -1;
+		meta = strchr(p, '%');
+		if (!meta)
+			return strcmp(p, s) == 0;
+
+		if (strncmp(p, s, meta-p))
+			return 0;
+
+		s += meta - p;
+		p = meta + 1;
+
+		if (isdigit(*p))
+			len = simple_strtoul(p, (char **) &p, 10);
+		else if (*p == '%') {
+			if (*s++ != '%')
+				return 0;
+			p++;
+			continue;
+		}
+
+		if (argc >= MAX_OPT_ARGS)
+			return 0;
+
+		args[argc].from = s;
+		switch (*p++) {
+		case 's': {
+			size_t str_len = strlen(s);
+
+			if (str_len == 0)
+				return 0;
+			if (len == -1 || len > str_len)
+				len = str_len;
+			args[argc].to = s + len;
+			break;
+		}
+		case 'd':
+			simple_strtol(s, &args[argc].to, 0);
+			goto num;
+		case 'u':
+			simple_strtoul(s, &args[argc].to, 0);
+			goto num;
+		case 'o':
+			simple_strtoul(s, &args[argc].to, 8);
+			goto num;
+		case 'x':
+			simple_strtoul(s, &args[argc].to, 16);
+		num:
+			if (args[argc].to == args[argc].from)
+				return 0;
+			break;
+		default:
+			return 0;
+		}
+		s = args[argc].to;
+		argc++;
+	}
+}
+
+/**
+ * match_token - Find a token (and optional args) in a string
+ * @s: the string to examine for token/argument pairs
+ * @table: match_table_t describing the set of allowed option tokens and the
+ * arguments that may be associated with them. Must be terminated with a
+ * &struct match_token whose pattern is set to the NULL pointer.
+ * @args: array of %MAX_OPT_ARGS &substring_t elements. Used to return match
+ * locations.
+ *
+ * Description: Detects which if any of a set of token strings has been passed
+ * to it. Tokens can include up to %MAX_OPT_ARGS instances of basic c-style
+ * format identifiers which will be taken into account when matching the
+ * tokens, and whose locations will be returned in the @args array.
+ */
+int match_token(char *s, const match_table_t table, substring_t args[])
+{
+	const struct match_token *p;
+
+	for (p = table; !match_one(s, p->pattern, args) ; p++)
+		;
+
+	return p->token;
+}
+EXPORT_SYMBOL(match_token);
+
+/**
+ * match_number - scan a number in the given base from a substring_t
+ * @s: substring to be scanned
+ * @result: resulting integer on success
+ * @base: base to use when converting string
+ *
+ * Description: Given a &substring_t and a base, attempts to parse the substring
+ * as a number in that base.
+ *
+ * Return: On success, sets @result to the integer represented by the
+ * string and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+static int match_number(substring_t *s, int *result, int base)
+{
+	char *endp;
+	char buf[NUMBER_BUF_LEN];
+	int ret;
+	long val;
+
+	if (match_strlcpy(buf, s, NUMBER_BUF_LEN) >= NUMBER_BUF_LEN)
+		return -ERANGE;
+	ret = 0;
+	val = simple_strtol(buf, &endp, base);
+	if (endp == buf)
+		ret = -EINVAL;
+	else if (val < (long)INT_MIN || val > (long)INT_MAX)
+		ret = -ERANGE;
+	else
+		*result = (int) val;
+	return ret;
+}
+
+/**
+ * match_u64int - scan a number in the given base from a substring_t
+ * @s: substring to be scanned
+ * @result: resulting u64 on success
+ * @base: base to use when converting string
+ *
+ * Description: Given a &substring_t and a base, attempts to parse the substring
+ * as a number in that base.
+ *
+ * Return: On success, sets @result to the integer represented by the
+ * string and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+static int match_u64int(substring_t *s, u64 *result, int base)
+{
+	char buf[NUMBER_BUF_LEN];
+	int ret;
+	u64 val;
+
+	if (match_strlcpy(buf, s, NUMBER_BUF_LEN) >= NUMBER_BUF_LEN)
+		return -ERANGE;
+	ret = kstrtoull(buf, base, &val);
+	if (!ret)
+		*result = val;
+	return ret;
+}
+
+/**
+ * match_int - scan a decimal representation of an integer from a substring_t
+ * @s: substring_t to be scanned
+ * @result: resulting integer on success
+ *
+ * Description: Attempts to parse the &substring_t @s as a decimal integer.
+ *
+ * Return: On success, sets @result to the integer represented by the string
+ * and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+int match_int(substring_t *s, int *result)
+{
+	return match_number(s, result, 0);
+}
+EXPORT_SYMBOL(match_int);
+
+/**
+ * match_uint - scan a decimal representation of an integer from a substring_t
+ * @s: substring_t to be scanned
+ * @result: resulting integer on success
+ *
+ * Description: Attempts to parse the &substring_t @s as a decimal integer.
+ *
+ * Return: On success, sets @result to the integer represented by the string
+ * and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+int match_uint(substring_t *s, unsigned int *result)
+{
+	char buf[NUMBER_BUF_LEN];
+
+	if (match_strlcpy(buf, s, NUMBER_BUF_LEN) >= NUMBER_BUF_LEN)
+		return -ERANGE;
+
+	return kstrtouint(buf, 10, result);
+}
+EXPORT_SYMBOL(match_uint);
+
+/**
+ * match_u64 - scan a decimal representation of a u64 from
+ *                  a substring_t
+ * @s: substring_t to be scanned
+ * @result: resulting unsigned long long on success
+ *
+ * Description: Attempts to parse the &substring_t @s as a long decimal
+ * integer.
+ *
+ * Return: On success, sets @result to the integer represented by the string
+ * and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+int match_u64(substring_t *s, u64 *result)
+{
+	return match_u64int(s, result, 0);
+}
+EXPORT_SYMBOL(match_u64);
+
+/**
+ * match_octal - scan an octal representation of an integer from a substring_t
+ * @s: substring_t to be scanned
+ * @result: resulting integer on success
+ *
+ * Description: Attempts to parse the &substring_t @s as an octal integer.
+ *
+ * Return: On success, sets @result to the integer represented by the string
+ * and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+int match_octal(substring_t *s, int *result)
+{
+	return match_number(s, result, 8);
+}
+EXPORT_SYMBOL(match_octal);
+
+/**
+ * match_hex - scan a hex representation of an integer from a substring_t
+ * @s: substring_t to be scanned
+ * @result: resulting integer on success
+ *
+ * Description: Attempts to parse the &substring_t @s as a hexadecimal integer.
+ *
+ * Return: On success, sets @result to the integer represented by the string
+ * and returns 0. Returns -EINVAL or -ERANGE on failure.
+ */
+int match_hex(substring_t *s, int *result)
+{
+	return match_number(s, result, 16);
+}
+EXPORT_SYMBOL(match_hex);
+
+/**
+ * match_wildcard - parse if a string matches given wildcard pattern
+ * @pattern: wildcard pattern
+ * @str: the string to be parsed
+ *
+ * Description: Parse the string @str to check if matches wildcard
+ * pattern @pattern. The pattern may contain two types of wildcards:
+ *   '*' - matches zero or more characters
+ *   '?' - matches one character
+ *
+ * Return: If the @str matches the @pattern, return true, else return false.
+ */
+bool match_wildcard(const char *pattern, const char *str)
+{
+	const char *s = str;
+	const char *p = pattern;
+	bool star = false;
+
+	while (*s) {
+		switch (*p) {
+		case '?':
+			s++;
+			p++;
+			break;
+		case '*':
+			star = true;
+			str = s;
+			if (!*++p)
+				return true;
+			pattern = p;
+			break;
+		default:
+			if (*s == *p) {
+				s++;
+				p++;
+			} else {
+				if (!star)
+					return false;
+				str++;
+				s = str;
+				p = pattern;
+			}
+			break;
+		}
+	}
+
+	if (*p == '*')
+		++p;
+	return !*p;
+}
+EXPORT_SYMBOL(match_wildcard);
+
+/**
+ * match_strlcpy - Copy the characters from a substring_t to a sized buffer
+ * @dest: where to copy to
+ * @src: &substring_t to copy
+ * @size: size of destination buffer
+ *
+ * Description: Copy the characters in &substring_t @src to the
+ * c-style string @dest.  Copy no more than @size - 1 characters, plus
+ * the terminating NUL.
+ *
+ * Return: length of @src.
+ */
+size_t match_strlcpy(char *dest, const substring_t *src, size_t size)
+{
+	size_t ret = src->to - src->from;
+
+	if (size) {
+		size_t len = ret >= size ? size - 1 : ret;
+		memcpy(dest, src->from, len);
+		dest[len] = '\0';
+	}
+	return ret;
+}
+EXPORT_SYMBOL(match_strlcpy);
+
+/**
+ * match_strdup - allocate a new string with the contents of a substring_t
+ * @s: &substring_t to copy
+ *
+ * Description: Allocates and returns a string filled with the contents of
+ * the &substring_t @s. The caller is responsible for freeing the returned
+ * string with kfree().
+ *
+ * Return: the address of the newly allocated NUL-terminated string or
+ * %NULL on error.
+ */
+char *match_strdup(const substring_t *s)
+{
+	return memdup_nul(s->from, s->to - s->from);
+}
+EXPORT_SYMBOL(match_strdup);
-- 
2.39.5



