Delivery-date: Wed, 27 May 2026 12:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvc-004MZ9-1p
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 12:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvb-0000HF-Ry
	for lore@pengutronix.de; Wed, 27 May 2026 12:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zwWCK+Y11UC2C3LHJLqKo0TbLkS/Rt1LOtKKO9zR4RU=; b=2kYBZrDzJ0iJS1TCVWZ7x3fysW
	AZ4atAZ0xB8Xl2Pa/tZhieblWKHWarL+ycAEG/hyktxD7NkMl2TFSQOlaoHllaKxmgBZpW7edgUcQ
	A/PfINMpY9I4guaNBGyxIu5Oa1LltUkZadIwoZWqmaSFD7VvdcOv4RK8Kb9yQCIEXg5+oDZ8bN5TQ
	8NinveqvnnGAt2TfzloHOVLv01IwDR8n+yLsUheic56gjek07YzbfbBZN9koje9uRO1q1odGgx74k
	EWotocNh/9+qiQO92av6TT/XrjX1ao31YSwyxM1II9pwrmINs+LRaLJaKG7CuQqygJUhtIn9374Kf
	5GsnVZew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuT-00000003yHl-08vP;
	Wed, 27 May 2026 10:54:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuP-00000003yFV-1wj9
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 10:54:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuN-0008SW-3H; Wed, 27 May 2026 12:54:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0025vC-1P;
	Wed, 27 May 2026 12:54:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0000000EvQF-3lm1;
	Wed, 27 May 2026 12:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 May 2026 12:54:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260527-public-keys-v1-2-c87a1cc61d1b@pengutronix.de>
References: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
In-Reply-To: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779879282; l=3244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JRDh/vjczW6ndmIevjHg70M6fw5qvm894v3ssIPIG98=;
 b=GXrQnMVI0PLJY/VpJze8I1DklERlrU7Q4NEgSNAyy5+hIOxsJ0vi1JlTRsGh5Oi8W9fe/6f2W
 y8Id7k1WWaKA2b7H9W4kPjS4MaPuQ78Dn1Wo1A+19AU39+3rJWgviLT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_035445_512472_468606AE 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] public keys: make key_name_hint optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The key_name_hint is merely a hint which key might fit and as such
it should be optional for a key. In keytoc.c only set it when it has
meaningful content and test for non NULL in barebox before dereferencing
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/keys.c      |  3 ++-
 crypto/public-keys.c |  2 ++
 scripts/keytoc.c     | 10 ++++------
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/commands/keys.c b/commands/keys.c
index 83c3ed533d..12cb6ea2e3 100644
--- a/commands/keys.c
+++ b/commands/keys.c
@@ -9,7 +9,8 @@ static int do_keys(int argc, char *argv[])
 
 	for_each_public_key(key, id) {
 		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
-		       key->hash, public_key_type_string(key->type), key->keyring, key->key_name_hint);
+		       key->hash, public_key_type_string(key->type), key->keyring,
+		       key->key_name_hint ?: "");
 	}
 
 	return 0;
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index ecf255bbb4..2b4bac55b7 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -14,6 +14,8 @@ const struct public_key *public_key_get(const char *name, const char *keyring)
 	int id;
 
 	for_each_public_key_keyring(key, id, keyring) {
+		if (!key->key_name_hint)
+			continue;
 		if (!strcmp(key->key_name_hint, name))
 			return key;
 	}
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c4491fbe81..40601827b7 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -566,7 +566,8 @@ static int gen_key_ecdsa(EVP_PKEY *key, struct keyinfo *info)
 		if (!standalone) {
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
-			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
+			if (info->name_hint)
+				fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
 			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", info->name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
@@ -673,7 +674,8 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 		if (!standalone) {
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
-			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
+			if (info->name_hint)
+				fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
 			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", info->name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
@@ -920,10 +922,6 @@ int main(int argc, char *argv[])
 		if (asprintf(&info->name_c, "key_%i", keys_idx + 1) < 0)
 			enomem_exit("asprintf");
 
-		/* unfortunately, the fit name hint is mandatory in the barebox codebase */
-		if (!info->name_hint)
-			info->name_hint = info->name_c;
-
 		if (!info->keyring) {
 			info->keyring = strdup("fit");
 			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", info->path);

-- 
2.47.3



