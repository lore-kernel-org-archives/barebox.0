Delivery-date: Fri, 13 Sep 2024 10:28:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1fA-0043YD-27
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f9-0001Dx-EM
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dWQX4xTpvCpxu7UwJzqAZTZakCgmthQ/wte3itSKps=; b=h6Jr1Kf9q0NcwY
	MgZjQB1VjJbd1f0piJtC+caBPuuVI7Qvl1m6NSRLTmAFYF8ejZPIdMAdWfzvOFsjV2GK/lH0zjL47
	kSR52mEmA/R55xdpTFtZz8OjXjZHUzQfOItSvEJ18BZ9KWwcDzlF7AC2/i39AD2WKOYElDL+nQ7F1
	El/Yqt+pPY9D/gq8Bbr8EpetqeFjgPSvrH+alyT6/Gup2JRB4k0NVHXfz6iNZDFN5RgqvMHKqe0cP
	1hZ/2Cz+YgWdvOBJobacYwlZxGBUzKxlI+vfJSvYaqbp8ll+RDayCpJ8f3mXvu4KDSy8La2y6uuG3
	UWmylyrSh51rQvhegtUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1ee-0000000FKcN-0cV2;
	Fri, 13 Sep 2024 08:27:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZf-0eY9
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000o3-Lr; Fri, 13 Sep 2024 10:27:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzK-8f; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-0k;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:20 +0200
Message-Id: <20240913075924.1652866-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_215632_93C52D19 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 12/16] crypto: public-keys: use array of public_keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of collecting the public keys directly in a section, we used to
collect pointers to the public keys. This indirection is unnecessary,
so drop it and put the keys directly into a section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/public-keys.c | 10 +++++-----
 scripts/keytoc.c     | 12 ++++--------
 2 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 36c308908d..dc51ef18f8 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -73,15 +73,15 @@ int public_key_verify(const struct public_key *key, const uint8_t *sig,
 	return -ENOKEY;
 }
 
-extern const struct public_key * const __public_keys_start;
-extern const struct public_key * const __public_keys_end;
+extern const struct public_key __public_keys_start[];
+extern const struct public_key __public_keys_end[];
 
 static int init_public_keys(void)
 {
-	const struct public_key * const *iter;
+	const struct public_key *iter;
 
-	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
-		struct public_key *key = public_key_dup(*iter);
+	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
+		struct public_key *key = public_key_dup(iter);
 
 		if (!key)
 			continue;
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 8b29118c95..bdda059759 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -489,13 +489,11 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		fprintf(outfilep, "\t.y = %s_y,\n", key_name_c);
 		fprintf(outfilep, "};\n");
 		if (!standalone) {
-			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
+			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
-			fprintf(outfilep, "};");
-			fprintf(outfilep, "\nstruct public_key *%s_ecdsa_p __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
-				key_name_c, key_name_c, key_name_c);
+			fprintf(outfilep, "};\n");
 		}
 	}
 
@@ -555,13 +553,11 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "};\n");
 
 		if (!standalone) {
-			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
+			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
-			fprintf(outfilep, "};");
-			fprintf(outfilep, "\nstruct public_key *%sp __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
-				key_name_c, key_name_c, key_name_c);
+			fprintf(outfilep, "};\n");
 		}
 	}
 
-- 
2.39.2



