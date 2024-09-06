Delivery-date: Fri, 06 Sep 2024 12:43:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRS-001qwY-1Q
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:43:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRQ-0003mp-Uf
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:43:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lAJStN+uVVBsBnR2WMaJEH5bqlscwwBeSVgQesZQRxc=; b=Bs78oiRBKWDOzriSWyXdSGiQ4L
	JL3yyMy0IHUxoLgZqDo2aDSbxFjBVqQi1lQIwZutYdTe5R1ihou/uwoDzInqrU41sDH8QKRLD8DZ7
	0FvNfqLUi3/Lcixs7Zgoqy3BgVJMFpTuvM3ml0ozCGiLJ/ssOtR+O4ofl/REWxLH5JWRd+iRuPHLt
	nF/TZO+iJOyz5VC2nm8j1kA5ySEiAqGB/0ItXHLrRYqSOdNPBjtFPUFtnSB7gZ7XknqZDM4P0sYRy
	nt6jVrG62jfO/+Yg4XPy3Xv4YKk5qP9Pj/myJxf/eHlm5D/yaQ542faQmGUfpuU2vNQZ0334MAczv
	sFzpaCdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWR0-0000000Bp7t-1gRv;
	Fri, 06 Sep 2024 10:43:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWQs-0000000Bp4H-1Nzb
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:43:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQr-0003Nh-52; Fri, 06 Sep 2024 12:43:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQq-005vOU-OJ; Fri, 06 Sep 2024 12:43:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOF-009BBJ-0T;
	Fri, 06 Sep 2024 12:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:24 +0200
Message-Id: <20240906104028.2187872-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034314_390816_50A24A2B 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 11/15] crypto: public-keys: use array of public_keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of collecting the public keys directly in a section, we used to
collect pointers to the public keys. This indirection is unnecessary,
so drop it and put the keys directly into a section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



