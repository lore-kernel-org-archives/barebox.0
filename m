Delivery-date: Mon, 22 May 2023 07:31:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y90-009JL2-JZ
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:31:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y8x-0003yL-TX
	for lore@pengutronix.de; Mon, 22 May 2023 07:31:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cuGlC2P0TZmiS6qaimjVutx8lsxpWFaxAHXKsYtJLRk=; b=AQ2cDyC0znLIcGPl+1p4ts+HNb
	z3J4sdx2PByIL+HSlKT4bq7Lo2iCCPCh/N7U4yGddwttyZxEE0od14qTpkOfzfxqIyDUBZdIXPO0i
	eigEBM0HxZzJ9f7cbWjmUF6nJoFVz3VE7tCLu1WcmSJHnbEdNzxVpuzeaSoQtQNK5IjpvKm2jvl+7
	krZWc0VH29m6bhZmN+Z7YbmM/0aGIpcfMYU3sv9OX4cj/KqzQZixz7bWz3wEdfOhZGZWbkPv/erh/
	ek8eCp1dU7Y88t9M7/GCv6Xqczh3FZvXmanGhTrnN9rshjqa9XNlwsIuO0UJNt8EQHgUqX290KOAS
	MFHE5TKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y8D-005PjT-0r;
	Mon, 22 May 2023 05:30:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y87-005PgC-2l
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:30:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y86-0003Us-LW; Mon, 22 May 2023 07:30:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y86-001vwh-0G; Mon, 22 May 2023 07:30:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y85-004MRv-3U; Mon, 22 May 2023 07:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:30:39 +0200
Message-Id: <20230522053044.1039572-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
References: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_223048_058746_2A3E648E 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] test: self: add digest test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Later commits will touch existing digest code, so this is a good
opportunity to add a self test to ensure MD5/SHA continues to work.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |   6 ++
 test/self/Makefile |   1 +
 test/self/digest.c | 190 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 197 insertions(+)
 create mode 100644 test/self/digest.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index ce5048c70ec9..641df9fece1c 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -36,6 +36,7 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_FS_RAMFS
 	imply SELFTEST_TFTP
 	imply SELFTEST_JSON
+	imply SELFTEST_DIGEST
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -69,4 +70,9 @@ config SELFTEST_JSON
 	bool "JSON selftest"
 	depends on JSMN
 
+config SELFTEST_DIGEST
+	bool "Digest selftest"
+	depends on DIGEST
+	select PRINTF_HEXSTR
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 98ebd1fd66c1..d6cedede356e 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
+obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/digest.c b/test/self/digest.c
new file mode 100644
index 000000000000..c90f860643e0
--- /dev/null
+++ b/test/self/digest.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define DEBUG 1
+#include <common.h>
+#include <bselftest.h>
+#include <clock.h>
+#include <digest.h>
+
+BSELFTEST_GLOBALS();
+
+struct digest_test_case {
+	const char *name;
+	const void *buf;
+	size_t buf_size;
+	const void *digest_str;
+	u64 time_ns;
+};
+
+#define TEST_CASE(buf, digest_str) \
+	{ #buf, buf, sizeof(buf), digest_str }
+
+#define test_digest(option, algo, ...) do { \
+	struct digest_test_case *t, cases[] = { __VA_ARGS__, { /* sentinel */ } }; \
+	for (t = cases; t->buf; t++) \
+		__test_digest((option), (algo), t, __func__, __LINE__); \
+	if (!__is_defined(DEBUG)) \
+		break; \
+	printf("%s:\t", algo); \
+	for (t = cases; t->buf; t++) \
+		printf(" digest(%zu bytes) = %10lluns", t->buf_size, t->time_ns); \
+	printf("\n"); \
+} while (0)
+
+static inline const char *digest_suffix(const char *str, const char *suffix)
+{
+	static char buf[32];
+
+	if (!*suffix)
+		return str;
+
+	WARN_ON(snprintf(buf, sizeof(buf), "%s-%s", str, suffix) >= sizeof(buf));
+	return buf;
+}
+
+static void __test_digest(bool option,
+			  const char *algo, struct digest_test_case *t,
+			  const char *func, int line)
+{
+	unsigned char *output, *digest;
+	struct digest *d;
+	int hash_len, digest_len;
+	u64 start;
+	int ret;
+
+	total_tests++;
+
+	if (!option) {
+		skipped_tests++;
+		return;
+	}
+
+	d = digest_alloc(algo);
+	if (!d) {
+		printf("%s:%d: failed to allocate %s digest\n", func, line, algo);
+		goto fail;
+	}
+
+	hash_len = digest_length(d);
+	digest_len = strlen(t->digest_str) / 2;
+	if (hash_len != digest_len) {
+		printf("%s:%d: %s digests have length %u, but %u expected\n",
+		       func, line, algo, hash_len, digest_len);
+		goto fail;
+	}
+
+	output = calloc(hash_len, 1);
+	if (WARN_ON(!output))
+		goto fail;
+
+	digest = calloc(digest_len, 1);
+	if (WARN_ON(!digest))
+		goto fail;
+
+	ret = hex2bin(digest, t->digest_str, digest_len);
+	if (WARN_ON(ret))
+		goto fail;
+
+	start = get_time_ns();
+
+	ret = digest_digest(d, t->buf, t->buf_size, output);
+	if (ret) {
+		printf("%s:%d: error calculating %s(%s): %pe\n",
+		       func, line, algo, t->name, ERR_PTR(ret));
+		goto fail;
+	}
+
+	t->time_ns = get_time_ns() - start;
+
+	if (memcmp(output, digest, hash_len)) {
+		printf("%s:%d: mismatch calculating %s(%s):\n\tgot: %*phN\n\tbut: %*phN expected\n",
+		       func, line, algo, t->name, hash_len, output, hash_len, digest);
+		goto fail;
+	}
+
+	return;
+fail:
+	failed_tests++;
+}
+
+static const u8 zeroes7[7] = {};
+static const u8 one32[32] = { 1 };
+static u8 inc4097[4097];
+
+static void test_digest_md5(const char *suffix)
+{
+	test_digest(IS_ENABLED(CONFIG_HAVE_DIGEST_MD5), digest_suffix("md5", suffix),
+		TEST_CASE(zeroes7, "d310a40483f9399dd7ed1712e0fdd702"),
+		TEST_CASE(one32,   "b39ac6e2aa7e375c38ba7ae921b5ba89"),
+		TEST_CASE(inc4097, "70410aad262cd11e63ae854804c8024b"));
+}
+
+static void test_digests_sha12(const char *suffix)
+{
+	bool cond;
+
+	cond = !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA1_ARM) :
+	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA1);
+
+	test_digest(cond, digest_suffix("sha1", suffix),
+		TEST_CASE(zeroes7, "77ce0377defbd11b77b1f4ad54ca40ea5ef28490"),
+		TEST_CASE(one32,   "cbd9cbfc20182e4b71e593e7ad598fc383cc6058"),
+		TEST_CASE(inc4097, "c627e736efd8bb0dff1778335c9c79cb1f27e396"));
+
+
+	cond = !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM) :
+	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA1);
+
+	test_digest(cond, digest_suffix("sha224", suffix),
+		TEST_CASE(zeroes7, "fbf6df85218ac5632461a8a17c6f294e6f35264cbfc0a9774a4f665b"),
+		TEST_CASE(one32,   "343cb3950305e6e6331e294b0a4925739d09ecbd2b43a2fc87c09941"),
+		TEST_CASE(inc4097, "6596b5dcfbd857f4246d6b94508b8a1a5b715a4f644a0c1e7d54c4f7"));
+
+	test_digest(cond, digest_suffix("sha256", suffix),
+		TEST_CASE(zeroes7, "837885c8f8091aeaeb9ec3c3f85a6ff470a415e610b8ba3e49f9b33c9cf9d619"),
+		TEST_CASE(one32,   "01d0fabd251fcbbe2b93b4b927b26ad2a1a99077152e45ded1e678afa45dbec5"),
+		TEST_CASE(inc4097, "1e973d029df2b2c66cb42a942c5edb45966f02abaff29fe99410e44d271d0efc"));
+}
+
+
+static void test_digests_sha35(const char *suffix)
+{
+	test_digest(IS_ENABLED(CONFIG_HAVE_DIGEST_SHA384), digest_suffix("sha384", suffix),
+		TEST_CASE(zeroes7, "b56705a73cf280f06d3a6b482c441a3d280c930d0c44b04f364dcdcedcfbc47c"
+				   "f3645a71da7b97f9e5d3a0924f6b9634"),
+		TEST_CASE(one32,   "dd606b49d7658a5eae905d593271c280819f92eb1a9a4986057aedc0a5f2eaea"
+				   "99052904718f6d83f16ad209d793f253"),
+		TEST_CASE(inc4097, "f76046b90890f20ae94066a3ad33010f5b3b2fd46977414636bbc634898b06fd"
+				   "4cb8f85e0926e8817e518300a930529e"));
+
+	test_digest(IS_ENABLED(CONFIG_HAVE_DIGEST_SHA512), digest_suffix("sha512", suffix),
+		TEST_CASE(zeroes7, "76afca18a9b81ffb967ffcf0460ed221c3605d3820057214d785fa88259bb5cb"
+				   "729576178e6edb0134f645d2e2e92cbabf1333462f3b9058692c950f51c64a92"),
+		TEST_CASE(one32,   "ce0c265ecc82dd8cee6e56ce44e45dafd7a0c5750df914b253a1fb7a8af66ddb"
+				   "99763607f0a85d0bd43669194a3a40577a528af395f4f17e06f1defcc6deb2a5"),
+		TEST_CASE(inc4097, "42eb09aca460d79b0c0aeac28187ed055a92e33602b69428461697680ff9f48f"
+				   "60a5a68aa0017e3446433349b42592b74713d7787628a58e400b7f588b9bd69b"));
+}
+
+static void test_digests(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(inc4097); i++)
+		inc4097[i] = i;
+
+	test_digest_md5("generic");
+
+	test_digests_sha12("generic");
+	if (IS_ENABLED(CONFIG_CPU_32))
+		test_digests_sha12("asm");
+
+	test_digests_sha35("generic");
+
+	test_digest_md5("");
+	test_digests_sha12("");
+	test_digests_sha35("");
+
+}
+bselftest(core, test_digests);
-- 
2.39.2



