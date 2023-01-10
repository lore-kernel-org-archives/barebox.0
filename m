Delivery-date: Tue, 10 Jan 2023 09:51:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALx-007Zy4-4X
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:51:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALu-0008F1-Vt
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qDvhs2Ov7bPNHEXZ2MPJm9lK0R180rq4vOa6wSBvLys=; b=N/TQvUetr5RDrg5lWlEDWMYa+V
	mEYfVmsmOsUlbQYyCX+8dO6k1x+qv1XpRy0vz7kIUKhauK3/B6emNx4C2SDuAWivmPxIPDcFz8V7V
	p0l8+C/k7EPVbDJ8ghlfR9c9DrFKbvbVnw7MpXrKlME1fRA9wjI0jdrOx/qHViQUyy+21s4z6NrUu
	B30g/P6VlWcvpyHyUmO7LM+5qyKWakny9VgdbideBQq7HtubYN4e9bdpTM/r0VGJbD+3jvkzjYKK8
	GuMIcO8F2YGz/IhoK7Iv/DIWN0PftrohycuBrps+/AkvJLoIEXvmjb+YzXf18AlJhfVB6ekSk/uBy
	ASI+u06A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKQ-005uOj-7R; Tue, 10 Jan 2023 08:49:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKF-005uIi-8w
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:49:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK9-0007Yq-0y; Tue, 10 Jan 2023 09:49:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0052An-Ea; Tue, 10 Jan 2023 09:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK7-00EQex-3f; Tue, 10 Jan 2023 09:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:49:30 +0100
Message-Id: <20230110084930.3439001-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
References: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_004943_336638_74A9AC6A 
X-CRM114-Status: GOOD (  18.19  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] test: self: add json parser test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newly added JSON parsing code doesn't yet have a consumer in-tree.
Add a self-test to exercise the API for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/bselftest.h |   3 +-
 test/self/Kconfig   |   5 ++
 test/self/Makefile  |   1 +
 test/self/json.c    | 146 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 154 insertions(+), 1 deletion(-)
 create mode 100644 test/self/json.c

diff --git a/include/bselftest.h b/include/bselftest.h
index f03c803b6553..2bae6cd1393d 100644
--- a/include/bselftest.h
+++ b/include/bselftest.h
@@ -7,7 +7,8 @@
 #include <init.h>
 
 enum bselftest_group {
-	BSELFTEST_core
+	BSELFTEST_core,
+	BSELFTEST_parser,
 };
 
 struct selftest {
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 5c6981959921..ce5048c70ec9 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -35,6 +35,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
 	imply SELFTEST_FS_RAMFS
 	imply SELFTEST_TFTP
+	imply SELFTEST_JSON
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -64,4 +65,8 @@ config SELFTEST_FS_RAMFS
 	bool "ramfs selftest"
 	depends on FS_RAMFS
 
+config SELFTEST_JSON
+	bool "JSON selftest"
+	depends on JSMN
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index c7c729cba0e0..4d2c0374c9c3 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
+obj-$(CONFIG_SELFTEST_JSON) += json.o
diff --git a/test/self/json.c b/test/self/json.c
new file mode 100644
index 000000000000..54323cf4350c
--- /dev/null
+++ b/test/self/json.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <jsmn.h>
+
+BSELFTEST_GLOBALS();
+
+static const jsmntok_t*
+__json_expect(const char *json, const jsmntok_t *token, const char **lookup,
+	      jsmntype_t expected_type, const char *expected_value)
+{
+	bool success = true;
+
+	total_tests++;
+
+	if (token->type != expected_type) {
+		failed_tests++;
+		printf("%pJP: type mismatch: got %d, but %d expected\n",
+		       lookup, token->type, expected_type);
+		success = false;
+	}
+
+	if (!expected_value)
+		goto out;
+
+	total_tests++;
+
+	if (!jsmn_eq(expected_value, json, token)) {
+		failed_tests++;
+		printf("%pJP: string mismatch: got %.*s, but %s expected\n",
+		       lookup, (int)(token->end - token->start),
+		       &json[token->start], expected_value);
+		success = false;
+	}
+
+out:
+	return success ? token : NULL;
+}
+
+static const jsmntok_t*
+json_expect(const char *json, const jsmntok_t *tokens, const char **lookup,
+	    jsmntype_t expected_type, const char *expected_value)
+{
+	const jsmntok_t *token;
+
+	total_tests++;
+
+	token = jsmn_locate(lookup, json, tokens);
+	if (!token) {
+		failed_tests++;
+		printf("%pJP: couldn't be located\n", lookup);
+		return NULL;
+	}
+
+	return __json_expect(json, token, lookup, expected_type, expected_value);
+}
+
+#define JP(...)	(const char *[]) { __VA_ARGS__, NULL }
+
+/* Wonky indentation is intended */
+static const char json[] =
+"{\n"
+"	\"null\" :null,\"number\" : 0x42,\n"
+"	\"object\": {\n"
+"		\"a\": \"b\",\n"
+"		\"C\": \"dE\","
+"		\"e\": \"\"\n"
+"	},"
+"	\"array\": [ \"1\",\"2\",\t\t\"3\"],\n"
+"	\"boolean\": true,\n"
+"\"string\": \"Hello World\n\"}\n";
+
+static void test_json(void)
+{
+	ssize_t token_count;
+	const jsmntok_t *token;
+	jsmntok_t *tokens;
+	jsmn_parser parser;
+	char *string;
+	int ret;
+
+	total_tests++;
+
+	jsmn_init(&parser);
+
+	/* Figure out how many tokens we need. */
+	ret = jsmn_parse(&parser, json, sizeof(json), NULL, 0);
+	if (ret < 0) {
+		printf("failed to determine number of tokens: %d\n", ret);
+		failed_tests++;
+		return;
+	}
+
+	token_count = ret;
+
+	/* `token_count` is strictly less than `length` which is strictly less
+	 * than CONFIG_SYS_EEPROM_SIZE (or 8K), so we should never overflow an
+	 * int here.
+	 */
+	tokens = kmalloc_array(token_count, sizeof(jsmntok_t), GFP_KERNEL);
+	if (WARN_ON(!tokens))
+		return;
+
+	total_tests++;
+
+	jsmn_init(&parser);
+	ret = jsmn_parse(&parser, json, sizeof(json), tokens, token_count);
+	if (ret < 0) {
+		printf("failed to parse JSON with tokens: %d\n", ret);
+		failed_tests++;
+		goto out;
+	}
+
+	json_expect(json, tokens, JP("null"), JSMN_PRIMITIVE, "null");
+	json_expect(json, tokens, JP("number"), JSMN_PRIMITIVE, "0x42");
+	json_expect(json, tokens, JP("object"), JSMN_OBJECT, NULL);
+	json_expect(json, tokens, JP("object", "a"), JSMN_STRING, "b");
+	json_expect(json, tokens, JP("object", "C"), JSMN_STRING, "dE");
+	json_expect(json, tokens, JP("object", "e"), JSMN_STRING, "");
+
+	token = json_expect(json, tokens, JP("array"), JSMN_ARRAY, NULL);
+
+	token = jsmn_skip_value(token);
+	__json_expect(json, token, JP("boolean"), JSMN_STRING, "boolean");
+
+	token = jsmn_skip_value(token);
+	__json_expect(json, token, JP("boolean"), JSMN_PRIMITIVE, "true");
+
+	string = jsmn_strcpy(JP("string"), json, tokens);
+	if (WARN_ON(!string))
+		return;
+
+	total_tests++;
+	if (strcmp(string, "Hello World\n")) {
+		failed_tests++;
+		printf("%pJP: string mismatch\n", JP("string"));
+	}
+
+	free(string);
+out:
+	free(tokens);
+}
+bselftest(parser, test_json);
-- 
2.30.2



