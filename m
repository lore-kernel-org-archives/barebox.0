Delivery-date: Thu, 21 Sep 2023 12:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsa-005lFk-5r
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsY-0002zB-59
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:25:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tmheO0U5OUhZ0dBqEM/nGsy7mpeSNUHZY1rHnE07tV8=; b=qhq3qheVFYtta3eFtr866oXM4e
	qdAi6tbvUgTe1oZc7gl6q1HWm99ewaawkxmddoDe0donon6MwU/i3N4yo2WT/rltpihn1PCd6V47C
	+MJH0fb3suIge38KjXsCrYljk7hUeEGG+PyjTThk5MfW9qiAYhZxgqWmp6VfmIClfHYGOMTmNCgEL
	U1HqVMoTsLLQ61Ci71Uvo4UtLHu0KnR7kP92r4FVwGXmPvsmrlu46VIzOrpceW8UEefK/w5mCUJdp
	D2Ypqsf21ykxt+jig3UGgBy6ouu/zxteQfEMR1vyxJFOy4xjD6FLzcXsIeNEP+a0gOS7TRBMFIS1+
	ckE5WQ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrR-005i8e-10;
	Thu, 21 Sep 2023 10:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrI-005i2Q-2Z
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:24:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-0002HD-LH; Thu, 21 Sep 2023 12:24:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-007u2B-8G; Thu, 21 Sep 2023 12:24:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-004eau-0e;
	Thu, 21 Sep 2023 12:24:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:24:24 +0200
Message-Id: <20230921102426.1109289-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
References: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032432_851456_4A626EAD 
X-CRM114-Status: GOOD (  14.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] lib: jsmn: add helper for allocating tokens
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

jsmn_parse can be called with a NULL buffer to determine the needed
allocation size beforehand. Most users will go on to dynamically
allocate that buffer, so add a helper that does just that and start
using it to simplify the json selftest.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h   |  6 ++++++
 lib/jsmn.c       | 36 ++++++++++++++++++++++++++++++++++++
 test/self/json.c | 33 ++++-----------------------------
 3 files changed, 46 insertions(+), 29 deletions(-)

diff --git a/include/jsmn.h b/include/jsmn.h
index 2dd1d5ffc08b..62197c2593b4 100644
--- a/include/jsmn.h
+++ b/include/jsmn.h
@@ -84,6 +84,12 @@ JSMN_API void jsmn_init(jsmn_parser *parser);
 JSMN_API int jsmn_parse(jsmn_parser *parser, const char *js, const size_t len,
 			jsmntok_t *tokens, const unsigned int num_tokens);
 
+/**
+ * Like jsmn_parse, but allocates tokens dynamically.
+ */
+JSMN_API jsmntok_t *jsmn_parse_alloc(const char *js, const size_t len,
+				     unsigned int *num_tokens);
+
 static inline int jsmn_token_size(const jsmntok_t *token)
 {
 	return token->end - token->start;
diff --git a/lib/jsmn.c b/lib/jsmn.c
index 9eeed790d93d..3d2ada7b7fdc 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -370,6 +370,42 @@ JSMN_API void jsmn_init(jsmn_parser *parser) {
 	parser->toksuper = -1;
 }
 
+/**
+ * Parse JSON string and fill tokens into self-allocated buffer.
+ */
+JSMN_API jsmntok_t *jsmn_parse_alloc(const char *js, const size_t len,
+				     unsigned int *num_tokens)
+{
+
+	ssize_t token_count;
+	jsmn_parser parser;
+	jsmntok_t *tokens;
+	int ret;
+
+	jsmn_init(&parser);
+
+	/* Figure out how many tokens we need. */
+	ret = jsmn_parse(&parser, js, len, NULL, 0);
+	if (ret < 0)
+		return NULL;
+
+	token_count = ret;
+
+	tokens = kmalloc_array(token_count, sizeof(jsmntok_t), GFP_KERNEL);
+	if (!tokens)
+		return NULL;
+
+	jsmn_init(&parser);
+	ret = jsmn_parse(&parser, js, len, tokens, token_count);
+	if (ret < 0) {
+		free(tokens);
+		return NULL;
+	}
+
+	if (num_tokens)
+		*num_tokens = ret;
+	return tokens;
+}
 JSMN_API bool jsmn_eq(const char *val, const char *json, const jsmntok_t *token)
 {
 	size_t token_size = jsmn_token_size(token);
diff --git a/test/self/json.c b/test/self/json.c
index 54323cf4350c..d3088f1b7542 100644
--- a/test/self/json.c
+++ b/test/self/json.c
@@ -75,45 +75,20 @@ static const char json[] =
 
 static void test_json(void)
 {
-	ssize_t token_count;
 	const jsmntok_t *token;
 	jsmntok_t *tokens;
-	jsmn_parser parser;
 	char *string;
-	int ret;
 
 	total_tests++;
 
-	jsmn_init(&parser);
-
 	/* Figure out how many tokens we need. */
-	ret = jsmn_parse(&parser, json, sizeof(json), NULL, 0);
-	if (ret < 0) {
-		printf("failed to determine number of tokens: %d\n", ret);
+	tokens = jsmn_parse_alloc(json, sizeof(json), NULL);
+	if (!tokens) {
+		printf("failed to parse JSON\n");
 		failed_tests++;
 		return;
 	}
 
-	token_count = ret;
-
-	/* `token_count` is strictly less than `length` which is strictly less
-	 * than CONFIG_SYS_EEPROM_SIZE (or 8K), so we should never overflow an
-	 * int here.
-	 */
-	tokens = kmalloc_array(token_count, sizeof(jsmntok_t), GFP_KERNEL);
-	if (WARN_ON(!tokens))
-		return;
-
-	total_tests++;
-
-	jsmn_init(&parser);
-	ret = jsmn_parse(&parser, json, sizeof(json), tokens, token_count);
-	if (ret < 0) {
-		printf("failed to parse JSON with tokens: %d\n", ret);
-		failed_tests++;
-		goto out;
-	}
-
 	json_expect(json, tokens, JP("null"), JSMN_PRIMITIVE, "null");
 	json_expect(json, tokens, JP("number"), JSMN_PRIMITIVE, "0x42");
 	json_expect(json, tokens, JP("object"), JSMN_OBJECT, NULL);
@@ -131,7 +106,7 @@ static void test_json(void)
 
 	string = jsmn_strcpy(JP("string"), json, tokens);
 	if (WARN_ON(!string))
-		return;
+		goto out;
 
 	total_tests++;
 	if (strcmp(string, "Hello World\n")) {
-- 
2.39.2



