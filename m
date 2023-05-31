Delivery-date: Wed, 31 May 2023 08:30:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLm-003sER-Mb
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:30:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLj-0007QT-J8
	for lore@pengutronix.de; Wed, 31 May 2023 08:30:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GBFI9JbqKdv68f2lk4Ru9ZcECJiNziYuy0bpZ+34eR4=; b=eU16Yyj8XA9C0vXSSPoxC9zED4
	j5X6MZ1SKAKmRc30Mm3GwkbA0+rqFxNNwSvYMeLFIy9rapQl2x4m75TocC5aoVLrMeoPRsO2J0e0c
	7IbtMCbfHlo90C1IWr6rA3t7GtWODVOZb9Rv7+9CDo2LSRRJLFMEqn8FhjlB02oWV083DackPRKn6
	Qrf+FDVMXwcCPcOgWD8owrSPr8vXCZeqXrYYy2lBi1GZzAIJylhn+7WRIkOxeAVkYIZ0umx86aAEp
	8boyiuu8FhfQUTXRsdBiQhcxwcPlksTdAIWbkAvbKbMp5G0QKKwILf4x4I8d8hUsDLfyq6aR7IiLt
	EehxvOtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKd-00GI5G-1g;
	Wed, 31 May 2023 06:29:15 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKW-00GI24-1E
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:29:12 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3A8DC6000E;
	Wed, 31 May 2023 06:29:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:28:53 +0200
Message-Id: <20230531062853.670751-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
In-Reply-To: <20230531062853.670751-1-ahmad@a3f.at>
References: <20230531062853.670751-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232908_683772_16DA267B 
X-CRM114-Status: GOOD (  28.15  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] string: import strverscmp_improved from systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Boot Loader specification now references the UAPI group's version
format specification[1] on how blspec entries should be sorted.

In preparation of aligning barebox entry sorting with the specification,
import systemd's strverscmp_improved as strverscmp and add some tests
for it.

The selftest is called string.c, because it indirectly tests some string
mangling function and in anticipation of adding more string tests in the
future.

[1]: https://uapi-group.org/specifications/specs/version_format_specification/#examples

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/string.h   |   2 +
 lib/Kconfig        |   9 ++-
 lib/Makefile       |   1 +
 lib/strverscmp.c   | 165 ++++++++++++++++++++++++++++++++++++++++++
 test/self/Kconfig  |   6 ++
 test/self/Makefile |   1 +
 test/self/string.c | 175 +++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 358 insertions(+), 1 deletion(-)
 create mode 100644 lib/strverscmp.c
 create mode 100644 test/self/string.c

diff --git a/include/string.h b/include/string.h
index 499f2ec03c02..43911b75762f 100644
--- a/include/string.h
+++ b/include/string.h
@@ -18,4 +18,6 @@ void *__nokasan_default_memcpy(void * dest,const void *src,size_t count);
 
 char *parse_assignment(char *str);
 
+int strverscmp(const char *a, const char *b);
+
 #endif /* __STRING_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index b8bc9d63d4f0..84d2a2573625 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -107,7 +107,7 @@ config IMAGE_SPARSE
 	bool
 
 config STMP_DEVICE
-	bool "STMP device support" if COMPILE_TEST
+	bool "STMP device support"
 
 config FSL_QE_FIRMWARE
 	select CRC32
@@ -167,6 +167,13 @@ config PROGRESS_NOTIFIER
 	  This is selected by boards that register a notifier to visualize
 	  progress, like blinking a LED during an update.
 
+config VERSION_CMP
+	bool "version comparison utilities" if COMPILE_TEST
+	help
+	  This is selected by code that needs to compare versions
+	  in a manner compatible with
+	    https://uapi-group.org/specifications/specs/version_format_specification
+
 config PRINTF_UUID
 	bool
 	default y if PRINTF_FULL
diff --git a/lib/Makefile b/lib/Makefile
index 38478625423b..185e6221fdd2 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -6,6 +6,7 @@ obj-pbl-y		+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
 obj-y			+= string.o
+obj-$(CONFIG_VERSION_CMP)	+= strverscmp.o
 obj-y			+= strtox.o
 obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
diff --git a/lib/strverscmp.c b/lib/strverscmp.c
new file mode 100644
index 000000000000..da2d284918e0
--- /dev/null
+++ b/lib/strverscmp.c
@@ -0,0 +1,165 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
+/*
+ * Code taken from systemd src/fundamental/string-util-fundamental.c
+ * NOTE: Semantics differ from glibc strverscmp (e.g. handling of ~rc1)
+ */
+
+#include <string.h>
+#include <linux/ctype.h>
+#include <linux/export.h>
+
+static bool is_valid_version_char(char a)
+{
+        return isdigit(a) || isalpha(a) || a == '~' ||
+		a == '-' || a == '^' || a == '.';
+}
+
+int strverscmp(const char *a, const char *b)
+{
+        /* This function is similar to strverscmp(3), but it treats '-' and '.' as separators.
+         *
+         * The logic is based on rpm's rpmvercmp(), but unlike rpmvercmp(), it distiguishes e.g.
+         * '123a' and '123.a', with '123a' being newer.
+         *
+         * It allows direct comparison of strings which contain both a version and a release; e.g.
+         * '247.2-3.1.fc33.x86_64' or '5.11.0-0.rc5.20210128git76c057c84d28.137.fc34'.
+         *
+         * The input string is split into segments. Each segment is numeric or alphabetic, and may be
+         * prefixed with the following:
+         *  '~' : used for pre-releases, a segment prefixed with this is the oldest,
+         *  '-' : used for the separator between version and release,
+         *  '^' : used for patched releases, a segment with this is newer than one with '-'.
+         *  '.' : used for point releases.
+         * Note that no prefix segment is the newest. All non-supported characters are dropped, and
+         * handled as a separator of segments, e.g., '123_a' is equivalent to '123a'.
+         *
+         * By using this, version strings can be sorted like following:
+         *  (older) 122.1
+         *     ^    123~rc1-1
+         *     |    123
+         *     |    123-a
+         *     |    123-a.1
+         *     |    123-1
+         *     |    123-1.1
+         *     |    123^post1
+         *     |    123.a-1
+         *     |    123.1-1
+         *     v    123a-1
+         *  (newer) 124-1
+         */
+
+        a = a ?: "";
+        b = b ?: "";
+
+        for (;;) {
+                const char *aa, *bb;
+                int r;
+
+                /* Drop leading invalid characters. */
+                while (*a != '\0' && !is_valid_version_char(*a))
+                        a++;
+                while (*b != '\0' && !is_valid_version_char(*b))
+                        b++;
+
+                /* Handle '~'. Used for pre-releases, e.g. 123~rc1, or 4.5~alpha1 */
+                if (*a == '~' || *b == '~') {
+                        /* The string prefixed with '~' is older. */
+                        r = compare3(*a != '~', *b != '~');
+                        if (r != 0)
+                                return r;
+
+                        /* Now both strings are prefixed with '~'. Compare remaining strings. */
+                        a++;
+                        b++;
+                }
+
+                /* If at least one string reaches the end, then longer is newer.
+                 * Note that except for '~' prefixed segments, a string which has more segments is newer.
+                 * So, this check must be after the '~' check. */
+                if (*a == '\0' || *b == '\0')
+                        return compare3(*a, *b);
+
+                /* Handle '-', which separates version and release, e.g 123.4-3.1.fc33.x86_64 */
+                if (*a == '-' || *b == '-') {
+                        /* The string prefixed with '-' is older (e.g., 123-9 vs 123.1-1) */
+                        r = compare3(*a != '-', *b != '-');
+                        if (r != 0)
+                                return r;
+
+                        a++;
+                        b++;
+                }
+
+                /* Handle '^'. Used for patched release. */
+                if (*a == '^' || *b == '^') {
+                        r = compare3(*a != '^', *b != '^');
+                        if (r != 0)
+                                return r;
+
+                        a++;
+                        b++;
+                }
+
+                /* Handle '.'. Used for point releases. */
+                if (*a == '.' || *b == '.') {
+                        r = compare3(*a != '.', *b != '.');
+                        if (r != 0)
+                                return r;
+
+                        a++;
+                        b++;
+                }
+
+                if (isdigit(*a) || isdigit(*b)) {
+                        /* Find the leading numeric segments. One may be an empty string. So,
+                         * numeric segments are always newer than alpha segments. */
+                        for (aa = a; isdigit(*aa); aa++)
+                                ;
+                        for (bb = b; isdigit(*bb); bb++)
+                                ;
+
+                        /* Check if one of the strings was empty, but the other not. */
+                        r = compare3(a != aa, b != bb);
+                        if (r != 0)
+                                return r;
+
+                        /* Skip leading '0', to make 00123 equivalent to 123. */
+                        while (*a == '0')
+                                a++;
+                        while (*b == '0')
+                                b++;
+
+                        /* To compare numeric segments without parsing their values, first compare the
+                         * lengths of the segments. Eg. 12345 vs 123, longer is newer. */
+                        r = compare3(aa - a, bb - b);
+                        if (r != 0)
+                                return r;
+
+                        /* Then, compare them as strings. */
+                        r = compare3(strncmp(a, b, aa - a), 0);
+                        if (r != 0)
+                                return r;
+                } else {
+                        /* Find the leading non-numeric segments. */
+                        for (aa = a; isalpha(*aa); aa++)
+                                ;
+                        for (bb = b; isalpha(*bb); bb++)
+                                ;
+
+                        /* Note that the segments are usually not NUL-terminated. */
+                        r = compare3(strncmp(a, b, min(aa - a, bb - b)), 0);
+                        if (r != 0)
+                                return r;
+
+                        /* Longer is newer, e.g. abc vs abcde. */
+                        r = compare3(aa - a, bb - b);
+                        if (r != 0)
+                                return r;
+                }
+
+                /* The current segments are equivalent. Let's move to the next one. */
+                a = aa;
+                b = bb;
+        }
+}
+EXPORT_SYMBOL(strverscmp);
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 1d6d8ab53a8d..d1ca6a701df3 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -38,6 +38,8 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_JSON
 	imply SELFTEST_DIGEST
 	imply SELFTEST_MMU
+	imply SELFTEST_REGULATOR
+	imply SELFTEST_STRING
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -81,4 +83,8 @@ config SELFTEST_DIGEST
 	depends on DIGEST
 	select PRINTF_HEXSTR
 
+config SELFTEST_STRING
+	bool "String library selftest"
+	select VERSION_CMP
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 269de2e10e88..a66f34671e5a 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
+obj-$(CONFIG_SELFTEST_STRING) += string.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/string.c b/test/self/string.c
new file mode 100644
index 000000000000..f03a7410cd64
--- /dev/null
+++ b/test/self/string.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <string.h>
+
+BSELFTEST_GLOBALS();
+
+static const char *strverscmp_expect_str(int expect)
+{
+	switch (expect) {
+	case -1: return "<";
+	case  0: return "==";
+	case  1: return ">";
+	default: return "?!";
+	}
+}
+
+static int strverscmp_assert_one(const char *lhs, const char *rhs, int expect)
+{
+	int actual;
+
+	total_tests++;
+
+	actual = strverscmp(lhs, rhs);
+	if (actual != expect) {
+		failed_tests++;
+		printf("(%s %s %s), but (%s %s %s) expected\n",
+		       lhs, strverscmp_expect_str(actual), rhs,
+		       lhs, strverscmp_expect_str(expect), rhs);
+	}
+
+	return actual;
+}
+
+static int __strverscmp_assert(char *expr)
+{
+	const char *token, *tokens[3];
+	int expect = -42;
+	int i = 0;
+
+	while ((token = strsep_unescaped(&expr, " "))) {
+		if (i == 3) {
+			pr_err("invalid expression\n");
+			return -EILSEQ;
+		}
+
+		tokens[i++] = token;
+	}
+
+	if (!strcmp(tokens[1], "<"))
+	    expect = -1;
+	else if (!strcmp(tokens[1], "=="))
+	    expect = 0;
+	else if (!strcmp(tokens[1], ">"))
+	    expect = 1;
+
+	return strverscmp_assert_one(tokens[0], tokens[2], expect);
+}
+
+#define strverscmp_assert(expr) ({ \
+	char __expr_mut[] = expr; \
+	__strverscmp_assert(__expr_mut); \
+})
+
+static void test_strverscmp_spec_examples(void)
+{
+	/*
+	 * Taken from specification at
+	 * https://uapi-group.org/specifications/specs/version_format_specification/#examples
+	 */
+	strverscmp_assert("11 == 11");
+	strverscmp_assert("systemd-123 == systemd-123");
+	strverscmp_assert("bar-123 < foo-123");
+	strverscmp_assert("123a > 123");
+	strverscmp_assert("123.a > 123");
+	strverscmp_assert("123.a < 123.b");
+	strverscmp_assert("123a > 123.a");
+	strverscmp_assert("11α == 11β");
+	strverscmp_assert("A < a");
+	strverscmp_assert_one("", "0", -1);
+	strverscmp_assert("0. > 0");
+	strverscmp_assert("0.0 > 0");
+	strverscmp_assert("0 > ~");
+	strverscmp_assert_one("", "~", 1);
+	strverscmp_assert("1_ == 1");
+	strverscmp_assert("_1 == 1");
+	strverscmp_assert("1_ < 1.2");
+	strverscmp_assert("1_2_3 > 1.3.3");
+	strverscmp_assert("1+ == 1");
+	strverscmp_assert("+1 == 1");
+	strverscmp_assert("1+ < 1.2");
+	strverscmp_assert("1+2+3 > 1.3.3");
+}
+
+static void test_strverscmp_one(const char *newer, const char *older)
+{
+        strverscmp_assert_one(newer, newer,  0);
+        strverscmp_assert_one(newer, older,  1);
+        strverscmp_assert_one(older, newer, -1);
+        strverscmp_assert_one(older, older,  0);
+}
+
+static void test_strverscmp_spec_systemd(void)
+{
+	/*
+	 * Taken from systemd tests at
+	 * 87b7d9b6ff23ec10b66bf53efeabf16ad85d7ad8
+	 */
+        static const char * const versions[] = {
+                "~1", "", "ab", "abb", "abc", "0001", "002", "12", "122", "122.9",
+                "123~rc1", "123", "123-a", "123-a.1", "123-a1", "123-a1.1", "123-3",
+                "123-3.1", "123^patch1", "123^1", "123.a-1" "123.1-1", "123a-1", "124",
+                NULL,
+        };
+        const char * const *p, * const *q;
+
+	for (p = versions; *p; p++)
+		for (q = p + 1; *q; q++)
+                        test_strverscmp_one(*q, *p);
+
+        test_strverscmp_one("123.45-67.89", "123.45-67.88");
+        test_strverscmp_one("123.45-67.89a", "123.45-67.89");
+        test_strverscmp_one("123.45-67.89", "123.45-67.ab");
+        test_strverscmp_one("123.45-67.89", "123.45-67.9");
+        test_strverscmp_one("123.45-67.89", "123.45-67");
+        test_strverscmp_one("123.45-67.89", "123.45-66.89");
+        test_strverscmp_one("123.45-67.89", "123.45-9.99");
+        test_strverscmp_one("123.45-67.89", "123.42-99.99");
+        test_strverscmp_one("123.45-67.89", "123-99.99");
+
+        /* '~' : pre-releases */
+        test_strverscmp_one("123.45-67.89", "123~rc1-99.99");
+        test_strverscmp_one("123-45.67.89", "123~rc1-99.99");
+        test_strverscmp_one("123~rc2-67.89", "123~rc1-99.99");
+        test_strverscmp_one("123^aa2-67.89", "123~rc1-99.99");
+        test_strverscmp_one("123aa2-67.89", "123~rc1-99.99");
+
+        /* '-' : separator between version and release. */
+        test_strverscmp_one("123.45-67.89", "123-99.99");
+        test_strverscmp_one("123^aa2-67.89", "123-99.99");
+        test_strverscmp_one("123aa2-67.89", "123-99.99");
+
+        /* '^' : patch releases */
+        test_strverscmp_one("123.45-67.89", "123^45-67.89");
+        test_strverscmp_one("123^aa2-67.89", "123^aa1-99.99");
+        test_strverscmp_one("123aa2-67.89", "123^aa2-67.89");
+
+        /* '.' : point release */
+        test_strverscmp_one("123aa2-67.89", "123.aa2-67.89");
+        test_strverscmp_one("123.ab2-67.89", "123.aa2-67.89");
+
+        /* invalid characters */
+        strverscmp_assert_one("123_aa2-67.89", "123aa+2-67.89", 0);
+}
+
+static void test_strverscmp(void)
+{
+	test_strverscmp_spec_examples();
+	test_strverscmp_spec_systemd();
+
+	/* and now some corner cases */
+	strverscmp_assert_one(NULL, NULL, 0);
+	strverscmp_assert_one(NULL, "", 0);
+	strverscmp_assert_one("", NULL, 0);
+	strverscmp_assert_one("", "", 0);
+}
+
+static void test_string(void)
+{
+	test_strverscmp();
+}
+bselftest(parser, test_string);
-- 
2.38.5



