Delivery-date: Thu, 21 Sep 2023 12:25:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsZ-005lFM-6t
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:25:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsW-0002yv-T6
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:25:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XYDVkKAgnwvF8S+cpS9AwEhkjWMkx1o755UeyVxnfY=; b=4/hHUw0ZzQN+nJ8qjzqHCho+Bi
	PRxhaDBjkKzYcKt4ksYY1/5yK229M3a2jvSwek2NcOLqqIa15bZV7vkiXxc8kstsQ030w4wKsMnXY
	rpIpbnRn94GdlY9TfjwAV11posY6m/FfLSiAqldqsSWoXJCQAkDR/SobL4iIEsXx8fwtawH/bl645
	f+X34nP6GhUSCOvX5LIWSXVqycB1xQvqgifHCL7D8YvDQQBEcigHCycnPYZumQqGoCSrOi9J2mJQ1
	tJxjwSP3cM1khcwiIYDrpOV6c8pz9PxXmNdOlRLA/qFZU6ZtHHMaPzu6fN/MF4X7dejDNVEwxVlTN
	s1nWjfNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrQ-005i7c-0f;
	Thu, 21 Sep 2023 10:24:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrI-005i2S-2b
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:24:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-0002HF-NB; Thu, 21 Sep 2023 12:24:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-007u2D-8y; Thu, 21 Sep 2023 12:24:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGrH-004eb2-0j;
	Thu, 21 Sep 2023 12:24:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:24:26 +0200
Message-Id: <20230921102426.1109289-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
References: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032432_853885_FD2EE29B 
X-CRM114-Status: GOOD (  11.74  )
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
Subject: [PATCH 4/4] lib: rename json_strcpy to json_strdup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

json_strcpy is an unfortunate name for a function that allocates
memory. Rename it to json_strdup instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/jsmn.h   | 2 +-
 lib/jsmn.c       | 2 +-
 test/self/json.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/jsmn.h b/include/jsmn.h
index 64b3b535ab6e..156ae2086439 100644
--- a/include/jsmn.h
+++ b/include/jsmn.h
@@ -153,7 +153,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
  * value does not exist or is not a string. The caller takes ownership of the
  * pointer returned.
  */
-JSMN_API char *jsmn_strcpy(const char *path[], const char *json, const jsmntok_t *tokens);
+JSMN_API char *jsmn_strdup(const char *path[], const char *json, const jsmntok_t *tokens);
 
 #ifdef __cplusplus
 }
diff --git a/lib/jsmn.c b/lib/jsmn.c
index 9e624f7518ad..10a77886a8bd 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -483,7 +483,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
 	return tokens;
 }
 
-JSMN_API char *jsmn_strcpy(const char *path[], const char *json,
+JSMN_API char *jsmn_strdup(const char *path[], const char *json,
 			   const jsmntok_t *tokens)
 {
 	const jsmntok_t *node;
diff --git a/test/self/json.c b/test/self/json.c
index d3088f1b7542..489671768923 100644
--- a/test/self/json.c
+++ b/test/self/json.c
@@ -104,7 +104,7 @@ static void test_json(void)
 	token = jsmn_skip_value(token);
 	__json_expect(json, token, JP("boolean"), JSMN_PRIMITIVE, "true");
 
-	string = jsmn_strcpy(JP("string"), json, tokens);
+	string = jsmn_strdup(JP("string"), json, tokens);
 	if (WARN_ON(!string))
 		goto out;
 
-- 
2.39.2



