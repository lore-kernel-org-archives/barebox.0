Delivery-date: Thu, 21 Sep 2023 12:25:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsO-005lEK-48
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:25:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsL-0002uT-Tj
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:25:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EA8ovCrBF6KWPQ6RI3NxOQbt91RtvkMaTeVSnFXxOwk=; b=pddYz/r6W3o6hf9wyZ269Os8ED
	AU0oijwKexq+ELKiY/oRGOFGmYkZ4UGaYQVdf4pdCV7uRKAblvLWjtjlxxGJAVhceQrsZhqWOz0Cm
	hJ4P0RUrj4862/dL34lgZz9RN02KFtoqXfmjWyzpWl1bln12SS9kPS7WihNGaHZTJz5oPey2FxY6m
	kwAeesQLYlEnZm8ZQmswxQGz+HhM1ghOpzBIGp2VW3XrGyJLLNwI4xoXvArH00F1bQJWym8FiHQZy
	TxNMhf6aIuY0xr7L3KdbZFW5absMUf6wcNSRP1aqwRLZsA6+IJT9w743tEuQWg8Ig/hUDjEEQ/vcI
	WOZD4nUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrL-005i4o-2w;
	Thu, 21 Sep 2023 10:24:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrI-005i2R-2b
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:24:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-0002HE-MP; Thu, 21 Sep 2023 12:24:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-007u2C-8v; Thu, 21 Sep 2023 12:24:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-004eay-0h;
	Thu, 21 Sep 2023 12:24:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:24:25 +0200
Message-Id: <20230921102426.1109289-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
References: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032432_852145_6DC5E880 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 3/4] lib: jsmn: add case-insensitive comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Users may want to do a case-insensitive comparison of tokens. Add simple
helpers for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h |  3 +++
 lib/jsmn.c     | 12 ++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/include/jsmn.h b/include/jsmn.h
index 62197c2593b4..64b3b535ab6e 100644
--- a/include/jsmn.h
+++ b/include/jsmn.h
@@ -101,6 +101,9 @@ JSMN_API bool jsmn_str_eq(const char *str, const char *json, const jsmntok_t *to
 /** Returns `true` if `token` is to `str`. */
 JSMN_API bool jsmn_eq(const char *val, const char *json, const jsmntok_t *token);
 
+/** Returns `true` if `token` is equal to `str`, ignoring case. */
+JSMN_API bool jsmn_strcase_eq(const char *str, const char *json, const jsmntok_t *token);
+
 /** Returns the token after the value at `tokens[0]`. */
 JSMN_API const jsmntok_t *jsmn_skip_value(const jsmntok_t *tokens);
 
diff --git a/lib/jsmn.c b/lib/jsmn.c
index 3d2ada7b7fdc..9e624f7518ad 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -418,6 +418,18 @@ JSMN_API bool jsmn_str_eq(const char *str, const char *json, const jsmntok_t *to
 	return token->type == JSMN_STRING && jsmn_eq(str, json, token);
 }
 
+static bool jsmn_case_eq(const char *val, const char *json, const jsmntok_t *token)
+{
+	size_t token_size = jsmn_token_size(token);
+	return strlen(val) == token_size
+		&& strncasecmp(json + token->start, val, token_size) == 0;
+}
+
+JSMN_API bool jsmn_strcase_eq(const char *str, const char *json, const jsmntok_t *token)
+{
+	return token->type == JSMN_STRING && jsmn_case_eq(str, json, token);
+}
+
 JSMN_API const jsmntok_t *jsmn_skip_value(const jsmntok_t *tokens)
 {
 	int max_index = tokens[0].end;
-- 
2.39.2



