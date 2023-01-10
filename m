Delivery-date: Tue, 10 Jan 2023 09:51:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALx-007Zy2-3B
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:51:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALu-0008Ex-Ie
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fs7cwsklxCFBmZlI9Y46bFtEdr3alXaYF1/x7jRKJ9s=; b=1SUrAmVeFHh6Eld2/q+WvoOZHe
	df/mBFO6WuA3DpV/ZMbSxuX5bOwx5ychzGu4Q2f05iB+BcAwAfDCyPcybbPZv8wIZca53eX4r0UO+
	z5Ffb8MURP3feZW7Q6kPdHCRWFLKLL2j4Gzod8/PJqYTLP/K6kGo7jbYE5/zxCOQWSH7P/C/nWfhL
	hQ6xrJ+xiEZRmIp4K07OiamXH5tWL9BZTpnx7wD5ZTveWwMlnkczBPUCJJRnCTk5Q31XVMmZFgUmJ
	+fSPWqN6Mhzpz0bX0D3Sa1m2yo5fr3ugAYpHHfuOK4h4Uj6rQjKKkSJPpDqHoErvRfI4HEjyY5mKC
	JUtZjnkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKW-005uQ2-8y; Tue, 10 Jan 2023 08:50:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKF-005uIk-8v
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:49:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK9-0007Yt-43; Tue, 10 Jan 2023 09:49:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0052Ar-Gu; Tue, 10 Jan 2023 09:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK7-00EQeo-2B; Tue, 10 Jan 2023 09:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:49:27 +0100
Message-Id: <20230110084930.3439001-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
References: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_004943_656887_079625D9 
X-CRM114-Status: GOOD (  28.75  )
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
Subject: [PATCH 1/4] lib: add jsmn JSON parser support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code may require JSON support to parse factory data or to verify
JSON web tokens in locked-down systems. Import the current master
state[1] of JSMN, a minimalistic JSON parser, with slight changes
to make it compile in barebox

[1]: https://github.com/zserge/jsmn/commit/25647e6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h |  91 ++++++++++++
 lib/Kconfig    |   5 +
 lib/Makefile   |   1 +
 lib/jsmn.c     | 371 +++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 468 insertions(+)
 create mode 100644 include/jsmn.h
 create mode 100644 lib/jsmn.c

diff --git a/include/jsmn.h b/include/jsmn.h
new file mode 100644
index 000000000000..394ffc467487
--- /dev/null
+++ b/include/jsmn.h
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (c) 2010 Serge Zaitsev
+ */
+#ifndef __JSMN_H_
+#define __JSMN_H_
+
+#define JSMN_STRICT
+#define JSMN_PARENT_LINKS
+
+#include <stddef.h>
+#include <errno.h>
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+#ifdef JSMN_STATIC
+#define JSMN_API static
+#else
+#define JSMN_API extern
+#endif
+
+/**
+ * JSON type identifier. Basic types are:
+ * 	o Object
+ * 	o Array
+ * 	o String
+ * 	o Other primitive: number, boolean (true/false) or null
+ */
+typedef enum {
+	JSMN_UNDEFINED = 0,
+	JSMN_OBJECT = 1 << 0,
+	JSMN_ARRAY = 1 << 1,
+	JSMN_STRING = 1 << 2,
+	JSMN_PRIMITIVE = 1 << 3
+} jsmntype_t;
+
+enum jsmnerr {
+	/* Not enough tokens were provided */
+	JSMN_ERROR_NOMEM = -ENOMEM,
+	/* Invalid character inside JSON string */
+	JSMN_ERROR_INVAL = -EINVAL,
+	/* The string is not a full JSON packet, more bytes expected */
+	JSMN_ERROR_PART = -EMSGSIZE
+};
+
+/**
+ * JSON token description.
+ * type		type (object, array, string etc.)
+ * start	start position in JSON data string
+ * end		end position in JSON data string
+ */
+typedef struct jsmntok {
+	jsmntype_t type;
+	int start;
+	int end;
+	int size;
+#ifdef JSMN_PARENT_LINKS
+	int parent;
+#endif
+} jsmntok_t;
+
+/**
+ * JSON parser. Contains an array of token blocks available. Also stores
+ * the string being parsed now and current position in that string.
+ */
+typedef struct jsmn_parser {
+	unsigned int pos;     /* offset in the JSON string */
+	unsigned int toknext; /* next token to allocate */
+	int toksuper;         /* superior token node, e.g. parent object or array */
+} jsmn_parser;
+
+/**
+ * Create JSON parser over an array of tokens
+ */
+JSMN_API void jsmn_init(jsmn_parser *parser);
+
+/**
+ * Run JSON parser. It parses a JSON data string into and array of tokens, each
+ * describing
+ * a single JSON object.
+ */
+JSMN_API int jsmn_parse(jsmn_parser *parser, const char *js, const size_t len,
+			jsmntok_t *tokens, const unsigned int num_tokens);
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif /* JSMN_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index a0f28b935cf7..5af7ea33f27b 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -8,6 +8,11 @@ config UNCOMPRESS
 	bool
 	select FILETYPE
 
+config JSMN
+	bool "JSMN JSON Parser" if COMPILE_TEST
+	help
+	  A minimalistic JSON parser.
+
 config XXHASH
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 21afb233facd..4717b8aec364 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -19,6 +19,7 @@ obj-y			+= readkey.o
 obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
+obj-$(CONFIG_JSMN)	+= jsmn.o
 obj-$(CONFIG_BLOBGEN)	+= blobgen.o
 obj-y			+= stringlist.o
 obj-y			+= cmdlinepart.o
diff --git a/lib/jsmn.c b/lib/jsmn.c
new file mode 100644
index 000000000000..3a68f89337fc
--- /dev/null
+++ b/lib/jsmn.c
@@ -0,0 +1,371 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (c) 2010 Serge Zaitsev
+ */
+
+#include <stdlib.h>
+#include <string.h>
+#include <stdio.h>
+#include <jsmn.h>
+
+/**
+ * Allocates a fresh unused token from the token pool.
+ */
+static jsmntok_t *jsmn_alloc_token(jsmn_parser *parser, jsmntok_t *tokens,
+				   const size_t num_tokens) {
+	jsmntok_t *tok;
+	if (parser->toknext >= num_tokens) {
+		return NULL;
+	}
+	tok = &tokens[parser->toknext++];
+	tok->start = tok->end = -1;
+	tok->size = 0;
+#ifdef JSMN_PARENT_LINKS
+	tok->parent = -1;
+#endif
+	return tok;
+}
+
+/**
+ * Fills token type and boundaries.
+ */
+static void jsmn_fill_token(jsmntok_t *token, const jsmntype_t type,
+			    const int start, const int end) {
+	token->type = type;
+	token->start = start;
+	token->end = end;
+	token->size = 0;
+}
+
+/**
+ * Fills next available token with JSON primitive.
+ */
+static int jsmn_parse_primitive(jsmn_parser *parser, const char *js,
+				const size_t len, jsmntok_t *tokens,
+				const size_t num_tokens) {
+	jsmntok_t *token;
+	int start;
+
+	start = parser->pos;
+
+	for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
+		switch (js[parser->pos]) {
+#ifndef JSMN_STRICT
+			/* In strict mode primitive must be followed by "," or "}" or "]" */
+		case ':':
+#endif
+		case '\t':
+		case '\r':
+		case '\n':
+		case ' ':
+		case ',':
+		case ']':
+		case '}':
+			goto found;
+		default:
+			/* to quiet a warning from gcc*/
+			break;
+		}
+		if (js[parser->pos] < 32 || js[parser->pos] >= 127) {
+			parser->pos = start;
+			return JSMN_ERROR_INVAL;
+		}
+	}
+#ifdef JSMN_STRICT
+	/* In strict mode primitive must be followed by a comma/object/array */
+	parser->pos = start;
+	return JSMN_ERROR_PART;
+#endif
+
+found:
+	if (tokens == NULL) {
+		parser->pos--;
+		return 0;
+	}
+	token = jsmn_alloc_token(parser, tokens, num_tokens);
+	if (token == NULL) {
+		parser->pos = start;
+		return JSMN_ERROR_NOMEM;
+	}
+	jsmn_fill_token(token, JSMN_PRIMITIVE, start, parser->pos);
+#ifdef JSMN_PARENT_LINKS
+	token->parent = parser->toksuper;
+#endif
+	parser->pos--;
+	return 0;
+}
+
+/**
+ * Fills next token with JSON string.
+ */
+static int jsmn_parse_string(jsmn_parser *parser, const char *js,
+			     const size_t len, jsmntok_t *tokens,
+			     const size_t num_tokens) {
+	jsmntok_t *token;
+
+	int start = parser->pos;
+
+	/* Skip starting quote */
+	parser->pos++;
+
+	for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
+		char c = js[parser->pos];
+
+		/* Quote: end of string */
+		if (c == '\"') {
+			if (tokens == NULL) {
+				return 0;
+			}
+			token = jsmn_alloc_token(parser, tokens, num_tokens);
+			if (token == NULL) {
+				parser->pos = start;
+				return JSMN_ERROR_NOMEM;
+			}
+			jsmn_fill_token(token, JSMN_STRING, start + 1, parser->pos);
+#ifdef JSMN_PARENT_LINKS
+			token->parent = parser->toksuper;
+#endif
+			return 0;
+		}
+
+		/* Backslash: Quoted symbol expected */
+		if (c == '\\' && parser->pos + 1 < len) {
+			int i;
+			parser->pos++;
+			switch (js[parser->pos]) {
+				/* Allowed escaped symbols */
+			case '\"':
+			case '/':
+			case '\\':
+			case 'b':
+			case 'f':
+			case 'r':
+			case 'n':
+			case 't':
+				break;
+				/* Allows escaped symbol \uXXXX */
+			case 'u':
+				parser->pos++;
+				for (i = 0; i < 4 && parser->pos < len && js[parser->pos] != '\0';
+				     i++) {
+					/* If it isn't a hex character we have an error */
+					if (!((js[parser->pos] >= 48 && js[parser->pos] <= 57) ||   /* 0-9 */
+					      (js[parser->pos] >= 65 && js[parser->pos] <= 70) ||   /* A-F */
+					      (js[parser->pos] >= 97 && js[parser->pos] <= 102))) { /* a-f */
+						parser->pos = start;
+						return JSMN_ERROR_INVAL;
+					}
+					parser->pos++;
+				}
+				parser->pos--;
+				break;
+				/* Unexpected symbol */
+			default:
+				parser->pos = start;
+				return JSMN_ERROR_INVAL;
+			}
+		}
+	}
+	parser->pos = start;
+	return JSMN_ERROR_PART;
+}
+
+/**
+ * Parse JSON string and fill tokens.
+ */
+JSMN_API int jsmn_parse(jsmn_parser *parser, const char *js, const size_t len,
+			jsmntok_t *tokens, const unsigned int num_tokens) {
+	int r;
+	int i;
+	jsmntok_t *token;
+	int count = parser->toknext;
+
+	for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
+		char c;
+		jsmntype_t type;
+
+		c = js[parser->pos];
+		switch (c) {
+		case '{':
+		case '[':
+			count++;
+			if (tokens == NULL) {
+				break;
+			}
+			token = jsmn_alloc_token(parser, tokens, num_tokens);
+			if (token == NULL) {
+				return JSMN_ERROR_NOMEM;
+			}
+			if (parser->toksuper != -1) {
+				jsmntok_t *t = &tokens[parser->toksuper];
+#ifdef JSMN_STRICT
+				/* In strict mode an object or array can't become a key */
+				if (t->type == JSMN_OBJECT) {
+					return JSMN_ERROR_INVAL;
+				}
+#endif
+				t->size++;
+#ifdef JSMN_PARENT_LINKS
+				token->parent = parser->toksuper;
+#endif
+			}
+			token->type = (c == '{' ? JSMN_OBJECT : JSMN_ARRAY);
+			token->start = parser->pos;
+			parser->toksuper = parser->toknext - 1;
+			break;
+		case '}':
+		case ']':
+			if (tokens == NULL) {
+				break;
+			}
+			type = (c == '}' ? JSMN_OBJECT : JSMN_ARRAY);
+#ifdef JSMN_PARENT_LINKS
+			if (parser->toknext < 1) {
+				return JSMN_ERROR_INVAL;
+			}
+			token = &tokens[parser->toknext - 1];
+			for (;;) {
+				if (token->start != -1 && token->end == -1) {
+					if (token->type != type) {
+						return JSMN_ERROR_INVAL;
+					}
+					token->end = parser->pos + 1;
+					parser->toksuper = token->parent;
+					break;
+				}
+				if (token->parent == -1) {
+					if (token->type != type || parser->toksuper == -1) {
+						return JSMN_ERROR_INVAL;
+					}
+					break;
+				}
+				token = &tokens[token->parent];
+			}
+#else
+			for (i = parser->toknext - 1; i >= 0; i--) {
+				token = &tokens[i];
+				if (token->start != -1 && token->end == -1) {
+					if (token->type != type) {
+						return JSMN_ERROR_INVAL;
+					}
+					parser->toksuper = -1;
+					token->end = parser->pos + 1;
+					break;
+				}
+			}
+			/* Error if unmatched closing bracket */
+			if (i == -1) {
+				return JSMN_ERROR_INVAL;
+			}
+			for (; i >= 0; i--) {
+				token = &tokens[i];
+				if (token->start != -1 && token->end == -1) {
+					parser->toksuper = i;
+					break;
+				}
+			}
+#endif
+			break;
+		case '\"':
+			r = jsmn_parse_string(parser, js, len, tokens, num_tokens);
+			if (r < 0) {
+				return r;
+			}
+			count++;
+			if (parser->toksuper != -1 && tokens != NULL) {
+				tokens[parser->toksuper].size++;
+			}
+			break;
+		case '\t':
+		case '\r':
+		case '\n':
+		case ' ':
+			break;
+		case ':':
+			parser->toksuper = parser->toknext - 1;
+			break;
+		case ',':
+			if (tokens != NULL && parser->toksuper != -1 &&
+			    tokens[parser->toksuper].type != JSMN_ARRAY &&
+			    tokens[parser->toksuper].type != JSMN_OBJECT) {
+#ifdef JSMN_PARENT_LINKS
+				parser->toksuper = tokens[parser->toksuper].parent;
+#else
+				for (i = parser->toknext - 1; i >= 0; i--) {
+					if (tokens[i].type == JSMN_ARRAY || tokens[i].type == JSMN_OBJECT) {
+						if (tokens[i].start != -1 && tokens[i].end == -1) {
+							parser->toksuper = i;
+							break;
+						}
+					}
+				}
+#endif
+			}
+			break;
+#ifdef JSMN_STRICT
+			/* In strict mode primitives are: numbers and booleans */
+		case '-':
+		case '0':
+		case '1':
+		case '2':
+		case '3':
+		case '4':
+		case '5':
+		case '6':
+		case '7':
+		case '8':
+		case '9':
+		case 't':
+		case 'f':
+		case 'n':
+			/* And they must not be keys of the object */
+			if (tokens != NULL && parser->toksuper != -1) {
+				const jsmntok_t *t = &tokens[parser->toksuper];
+				if (t->type == JSMN_OBJECT ||
+				    (t->type == JSMN_STRING && t->size != 0)) {
+					return JSMN_ERROR_INVAL;
+				}
+			}
+#else
+			/* In non-strict mode every unquoted value is a primitive */
+		default:
+#endif
+			r = jsmn_parse_primitive(parser, js, len, tokens, num_tokens);
+			if (r < 0) {
+				return r;
+			}
+			count++;
+			if (parser->toksuper != -1 && tokens != NULL) {
+				tokens[parser->toksuper].size++;
+			}
+			break;
+
+#ifdef JSMN_STRICT
+			/* Unexpected char in strict mode */
+		default:
+			return JSMN_ERROR_INVAL;
+#endif
+		}
+	}
+
+	if (tokens != NULL) {
+		for (i = parser->toknext - 1; i >= 0; i--) {
+			/* Unmatched opened object or array */
+			if (tokens[i].start != -1 && tokens[i].end == -1) {
+				return JSMN_ERROR_PART;
+			}
+		}
+	}
+
+	return count;
+}
+
+/**
+ * Creates a new parser based over a given buffer with an array of tokens
+ * available.
+ */
+JSMN_API void jsmn_init(jsmn_parser *parser) {
+	parser->pos = 0;
+	parser->toknext = 0;
+	parser->toksuper = -1;
+}
-- 
2.30.2



