Delivery-date: Tue, 10 Jan 2023 09:51:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALv-007Zxe-Vb
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:51:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALt-0008ET-KC
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:51:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CCqDAGFb2P6rvwABqxtnfqagqycWsuuMaDpffGPf68o=; b=km88rKHRMF7udfgborNFaZZJx6
	jz81W1BBUc23WWq5QB6yh3cOKO3nea7lHL7d2A2BvGWt24FHzJgf+Sh4CgmSB6jLisHPVI/D8uOx4
	0GmQYDzObgrHGN+yJo/4gx0Tve0jG4OGhbXa+F5XLhK86uAXolK3m+N0c1/7qaVq3STFC9O7PUU0v
	OoxwYBxOgm4fAuRZBNveZK8NWAMuqftKj3slKNbvA1nyubk03x9CG6XRPWjYhY8Dj9AAYzh47dn0b
	zLj2azE0vh+5EBzpKXEoV4L1AkFaHH71jHWV5MbvfLRScnqHRE9cCWbBf0kmhe/GM+1S9i3B4/Yqh
	KObI1o+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKc-005uSV-Lc; Tue, 10 Jan 2023 08:50:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKI-005uMC-DG
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:49:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK9-0007Yu-4p; Tue, 10 Jan 2023 09:49:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0052Aw-ID; Tue, 10 Jan 2023 09:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK7-00EQer-2n; Tue, 10 Jan 2023 09:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:49:28 +0100
Message-Id: <20230110084930.3439001-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
References: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_004946_471244_428ADB2A 
X-CRM114-Status: GOOD (  17.95  )
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
Subject: [PATCH 2/4] lib: extend jsmn with simple JSONPath lookup helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code may not be interested in iterating fully over the JSON blob
and instead just wants to lookup a value at a specific JSONPath.

Add helpers to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h | 57 +++++++++++++++++++++++++++++++++
 lib/jsmn.c     | 86 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 143 insertions(+)

diff --git a/include/jsmn.h b/include/jsmn.h
index 394ffc467487..8f6db8d534f4 100644
--- a/include/jsmn.h
+++ b/include/jsmn.h
@@ -84,6 +84,63 @@ JSMN_API void jsmn_init(jsmn_parser *parser);
 JSMN_API int jsmn_parse(jsmn_parser *parser, const char *js, const size_t len,
 			jsmntok_t *tokens, const unsigned int num_tokens);
 
+/** Returns `true` if `token` is a string and equal to `str`. */
+JSMN_API bool jsmn_str_eq(const char *str, const char *json, const jsmntok_t *token);
+
+/** Returns `true` if `token` is to `str`. */
+JSMN_API bool jsmn_eq(const char *val, const char *json, const jsmntok_t *token);
+
+/** Returns the token after the value at `tokens[0]`. */
+JSMN_API const jsmntok_t *jsmn_skip_value(const jsmntok_t *tokens);
+
+/**
+ * Returns a pointer to the value associated with `key` inside `json` starting
+ * at `tokens[0]`, which is expected to be an object, or returns `NULL` if `key`
+ * cannot be found.
+ */
+JSMN_API const jsmntok_t *jsmn_find_value(const char *key, const char *json,
+					  const jsmntok_t *tokens);
+
+/**
+ * Locate the token at `path` inside `json` in a manner similar to JSONPath.
+ *
+ * Example:
+ * \code
+ * {
+ *   "date": "...",
+ *   "product": {
+ *	 "serial": "1234",
+ *   }
+ * }
+ * \endcode
+ *
+ * To locate the serial number in the JSON object above, you would use the
+ * JSONPath expression "$.product.serial". The same thing can be accomplished
+ * with this call:
+ *
+ * \code
+ * const char *path[] = {"product", "serial", NULL};
+ * const jsmntok_t *token = jsmn_locate(path, json, tokens);
+ * \endcode
+ *
+ * \remark This function cannot search inside arrays.
+ *
+ * @param path		Null-terminated list of path elements.
+ * @param json		JSON string to search in.
+ * @param tokens	Tokens for `json`.
+ *
+ * @return Pointer to the value token or `NULL` if the token could not be found.
+ */
+JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
+				      const jsmntok_t *tokens);
+
+/**
+ * Similar to `jsmn_locate` but returns a copy of the value or `NULL` if the
+ * value does not exist or is not a string. The caller takes ownership of the
+ * pointer returned.
+ */
+JSMN_API char *jsmn_strcpy(const char *path[], const char *json, const jsmntok_t *tokens);
+
 #ifdef __cplusplus
 }
 #endif
diff --git a/lib/jsmn.c b/lib/jsmn.c
index 3a68f89337fc..7bdcc90f2f4b 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -369,3 +369,89 @@ JSMN_API void jsmn_init(jsmn_parser *parser) {
 	parser->toknext = 0;
 	parser->toksuper = -1;
 }
+
+JSMN_API bool jsmn_eq(const char *val, const char *json, const jsmntok_t *token)
+{
+	size_t token_size = token->end - token->start;
+	return strlen(val) == token_size
+		&& strncmp(json + token->start, val, token_size) == 0;
+}
+
+JSMN_API bool jsmn_str_eq(const char *str, const char *json, const jsmntok_t *token)
+{
+	return token->type == JSMN_STRING && jsmn_eq(str, json, token);
+}
+
+JSMN_API const jsmntok_t *jsmn_skip_value(const jsmntok_t *tokens)
+{
+	int max_index = tokens[0].end;
+	do {
+		++tokens;
+	} while (tokens[0].start < max_index);
+	return &tokens[0];
+}
+
+JSMN_API const jsmntok_t *jsmn_find_value(const char *key, const char *json,
+					  const jsmntok_t *tokens)
+{
+	int items;
+	if (tokens[0].type != JSMN_OBJECT || tokens[0].size == 0)
+		return NULL;
+
+	items = tokens[0].size;
+	++tokens;
+
+	do {
+		if (jsmn_str_eq(key, json, tokens))
+			return &tokens[1];
+		tokens = --items ? jsmn_skip_value(&tokens[1]) : NULL;
+	} while (tokens);
+
+	return NULL;
+}
+
+JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
+				      const jsmntok_t *tokens)
+{
+	int i = 0;
+	while (path[i] != NULL) {
+		const jsmntok_t *value = jsmn_find_value(path[i], json, tokens);
+		if (!value)
+			return NULL;
+
+		switch (value->type) {
+		case JSMN_OBJECT:
+		case JSMN_ARRAY:
+			tokens = value;
+			++i;
+			break;
+		case JSMN_UNDEFINED:
+		case JSMN_STRING:
+		case JSMN_PRIMITIVE:
+			return value;
+		}
+	}
+
+	return tokens;
+}
+
+JSMN_API char *jsmn_strcpy(const char *path[], const char *json,
+			   const jsmntok_t *tokens)
+{
+	const jsmntok_t *node;
+	int value_size;
+	char *value;
+
+	node = jsmn_locate(path, json, tokens);
+	if (!node || node->type != JSMN_STRING)
+		return NULL;
+
+	value_size = node->end - node->start;
+	value = malloc(value_size + 1);
+	if (value) {
+		strncpy(value, json + node->start, value_size);
+		value[value_size] = '\0';
+	}
+
+	return value;
+}
-- 
2.30.2



