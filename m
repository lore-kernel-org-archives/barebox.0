Delivery-date: Thu, 21 Aug 2025 19:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T6-0032cr-1S
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T4-0005u4-O8
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CBc+2gDg4R2hl65krZZLp1o2IvyZl6HRkOq+GUmg4ys=; b=No5RqzY+CV996aEtZc6WZqYlsH
	b7j64/2DW4KeIssj9y2Wdu4fwTeuaWOu6l9FwE4L6Qy87qo0dx3Uk4Y2he0Dq9uOiT2QeZG6kfCXw
	CDHQ6SW20J4ZTd7tzP4h6psMbdO94M23+cI34nn+iXBtWq9qFDYmA8Ej/qQfcehlV+v/hWMlLEDEk
	FIduy2CYHuT2znL4cPxSx4ELJyR1SAZC/rw0mJ1VIj2OlIUHytb85qKD/Bhbod3aL/4kfVV7ptI6N
	JaRuI3x4Evbg0WzuSeSae3+qzI/Df2+raoSTQdiYFf7iHM/HvpGFNEnOmqhc9XQV/i/DU4V3+O5mI
	qy1FsAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SO-000000006rw-3TTs;
	Thu, 21 Aug 2025 17:52:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Ba-0000000H1aG-3Hq3
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vh-Hm; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3I-10;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0d;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-3-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=5219;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JnWKvn24KbWKE+c8E7hevVhKaGp70WPHGaotKVLkfCY=;
 b=OcBF5WEgf2IYy7kJuc4NqZIg/3Uppr+iiy+oN7O/w1jhuHJHRCIuV5wx1ssVowZOzTFyzg+LK
 dES/H+eUF54Dmm2S3OUDba53VsnZwy/Q76IYspzOPYTyJDKRUnkJzT9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061834_834441_D11D1837 
X-CRM114-Status: GOOD (  15.77  )
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
Subject: [PATCH 3/6] crypto: include public key hashes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The keys built into the barebox binary are not identifiable. They might
have a key name hint, but this is optional. This adds a sha256 hash
to struct public_key which can be printed when a key is used. The
hash can be obtained on the host from the certificate files or public
key PEM files with openssl commands:

openssl x509 -in crypto/fit-ecdsa-development.crt -pubkey -noout | openssl ec -pubin -inform PEM -outform DER | openssl dgst -sha256
cat ~/git/ptx-code-signing-dev/fit/fit-ecdsa-development.public-key | openssl ec -pubin -inform PEM -outform DER | openssl dgst -sha256

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/public-keys.c        |  2 ++
 include/crypto/public_key.h |  2 ++
 scripts/keytoc.c            | 59 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 63 insertions(+)

diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index fba963db4eb875196daf0e3a4e3fb3cac844796a..3b691ffd6aa536084aefca90933b4bb74b724423 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -46,6 +46,8 @@ static struct public_key *public_key_dup(const struct public_key *key)
 	k->type = key->type;
 	if (key->key_name_hint)
 		k->key_name_hint = xstrdup(key->key_name_hint);
+	k->hash = xmemdup(key->hash, key->hashlen);
+	k->hashlen = key->hashlen;
 
 	switch (key->type) {
 	case PUBLIC_KEY_TYPE_RSA:
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index d4e75981738ba9651145b9a03527525ae63d6c39..7edea2d69190cb30f328510f905bab3054ad5845 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -15,6 +15,8 @@ struct public_key {
 	enum public_key_type type;
 	struct list_head list;
 	char *key_name_hint;
+	unsigned char *hash;
+	unsigned int hashlen;
 
 	union {
 		struct rsa_public_key *rsa;
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c92465707f65950e95b04afe58fb10161178998c..4e5ef72cfc9a82be6fa2a74b94a663136dd703b6 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -452,6 +452,45 @@ static EVP_PKEY *reimport_key(EVP_PKEY *pkey)
 	return pkey_out;
 }
 
+static int print_hash(EVP_PKEY *key)
+{
+	int i, ret;
+	BIO *mem;
+	BUF_MEM *p;
+	unsigned char hash[SHA256_DIGEST_LENGTH];
+	SHA256_CTX sha256;
+	mem = BIO_new(BIO_s_mem());
+
+	ret = i2d_PUBKEY_bio(mem, key);
+	if (ret != 1)
+		goto err;
+
+	BIO_get_mem_ptr(mem, &p);
+
+	ret = SHA256_Init(&sha256);
+	if (ret != 1)
+		goto err;
+
+	ret = SHA256_Update(&sha256, p->data, p->length);
+	if (ret != 1)
+		goto err;
+
+	ret = SHA256_Final(hash, &sha256);
+	if (ret != 1)
+		goto err;
+
+	for (i = 0; i < SHA256_DIGEST_LENGTH; i++)
+		fprintf(outfilep, "0x%02x, ", hash[i]);
+
+	fprintf(outfilep, "\n");
+
+	ret = 0;
+err:
+	BIO_free(mem);
+
+	return ret ? -EINVAL : 0;
+}
+
 static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
 {
 	char group[128];
@@ -482,6 +521,14 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
 		return -EOPNOTSUPP;
 	} else {
+		fprintf(outfilep, "\nstatic unsigned char %s_hash[] = {\n\t", key_name_c);
+
+		ret = print_hash(key);
+		if (ret)
+			return ret;
+
+		fprintf(outfilep, "\n};\n\n");
+
 		fprintf(outfilep, "\nstatic uint64_t %s_x[] = {", key_name_c);
 		ret = print_bignum(key_x, bits, 64);
 		if (ret)
@@ -506,6 +553,8 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
+			fprintf(outfilep, "\t.hash = %s_hash,\n", key_name_c);
+			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
 			fprintf(outfilep, "};\n");
 		}
@@ -568,6 +617,14 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "\t\t\tkey-name-hint = \"%s\";\n", key_name_c);
 		fprintf(outfilep, "\t\t};\n");
 	} else {
+		fprintf(outfilep, "\nstatic unsigned char %s_hash[] = {\n\t", key_name_c);
+
+		ret = print_hash(key);
+		if (ret)
+			return ret;
+
+		fprintf(outfilep, "\n};\n\n");
+
 		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
 		ret = print_bignum(modulus, bits, 32);
 		if (ret)
@@ -600,6 +657,8 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
+			fprintf(outfilep, "\t.hash = %s_hash,\n", key_name_c);
+			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
 			fprintf(outfilep, "};\n");
 		}

-- 
2.39.5



