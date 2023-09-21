Delivery-date: Thu, 21 Sep 2023 12:25:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsQ-005lEk-Fd
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:25:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsO-0002vJ-6E
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:25:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=12cKwJbNL5jd7iGwXkAUsqHoip/FfJwunA7Tx4gmF4Y=; b=spLOxaV4DD7HmG4ZIdJ2zcQEJB
	q2BVjH8EDzQNIp999kC+Cam+pzXRU0NkdMhK8CuesM4psq/tN8PQOtcQ7OmdKpeSWeyyq2f0KhGCR
	VXvftqIdBns5Hj68pqPlPv84oUNNozoDMH9qhuF1Mk7zEZ9c/cY7DY9/0Q7MRyMDtMo+Nzk2Gu212
	jQhH999ZUUltShqFsPIHLDZZh0as5pG+8F+Co2iuaZtCF9mn8ZV0QSOMQzyD0pf8c3nAhn9t8Gsqa
	KboBOdxY7DFpxltfJDU/nlrE2yXdGhzA/foLaPXoLrZ2bCLvd15FibMY5BMjiaZ16073TB2PDckmN
	tDWH/cfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrM-005i5P-24;
	Thu, 21 Sep 2023 10:24:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrI-005i2P-2Z
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:24:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-0002HC-Ky; Thu, 21 Sep 2023 12:24:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-007u2A-7h; Thu, 21 Sep 2023 12:24:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-004ear-0b;
	Thu, 21 Sep 2023 12:24:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:24:23 +0200
Message-Id: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032432_853372_678501BE 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH 1/4] lib: jsmn: add and use new jsmn_token_size helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make code a bit more terse, add a simple helper to get a token's size
and start using it in some of the existing jsmn helpers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h | 5 +++++
 lib/jsmn.c     | 4 ++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/jsmn.h b/include/jsmn.h
index 8f6db8d534f4..2dd1d5ffc08b 100644
--- a/include/jsmn.h
+++ b/include/jsmn.h
@@ -84,6 +84,11 @@ JSMN_API void jsmn_init(jsmn_parser *parser);
 JSMN_API int jsmn_parse(jsmn_parser *parser, const char *js, const size_t len,
 			jsmntok_t *tokens, const unsigned int num_tokens);
 
+static inline int jsmn_token_size(const jsmntok_t *token)
+{
+	return token->end - token->start;
+}
+
 /** Returns `true` if `token` is a string and equal to `str`. */
 JSMN_API bool jsmn_str_eq(const char *str, const char *json, const jsmntok_t *token);
 
diff --git a/lib/jsmn.c b/lib/jsmn.c
index 7bdcc90f2f4b..9eeed790d93d 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -372,7 +372,7 @@ JSMN_API void jsmn_init(jsmn_parser *parser) {
 
 JSMN_API bool jsmn_eq(const char *val, const char *json, const jsmntok_t *token)
 {
-	size_t token_size = token->end - token->start;
+	size_t token_size = jsmn_token_size(token);
 	return strlen(val) == token_size
 		&& strncmp(json + token->start, val, token_size) == 0;
 }
@@ -446,7 +446,7 @@ JSMN_API char *jsmn_strcpy(const char *path[], const char *json,
 	if (!node || node->type != JSMN_STRING)
 		return NULL;
 
-	value_size = node->end - node->start;
+	value_size = jsmn_token_size(node);
 	value = malloc(value_size + 1);
 	if (value) {
 		strncpy(value, json + node->start, value_size);
-- 
2.39.2



