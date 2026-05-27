Delivery-date: Wed, 27 May 2026 12:56:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBwY-004Maw-1e
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 12:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBwX-0000T2-E4
	for lore@pengutronix.de; Wed, 27 May 2026 12:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ML5yZOxeQ/u9aIgAvL/etItVh/m7FJ6h6zq+/j2tJs=; b=PiHk9xxkN1XPFYUnE0VKAOcaZu
	+C+DKgnUABNCi0VEs5PkF6m22qbIK6q0rOBEYUe3oMZaaRAxCyj4DdaJvnjAuNBFn7UcOp4yOi1uY
	UOFBB/fi0OPksccDdbjYBOCoAc+8G0gwfQbgtZOMsTkxfIhAT0c44lyhGTQ/lWcuBJqrRr7UrglYG
	TQPUzgkwcRiOKji3c19pbJKaJFyDzye/l5M36dp77AR66Va+e9ZFH9BRN3J3Q38l5lKyiCu5EdRv3
	b01vbQbYnLu+NevR7tJxNRcUBum3W4r2jwUe0N6G4ZARuX4MvYurARpbjbPqXkT8PIDGeQQYKb7sq
	kpIPpkvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuU-00000003yIl-1W21;
	Wed, 27 May 2026 10:54:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuP-00000003yFX-1yHC
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 10:54:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuN-0008SU-37; Wed, 27 May 2026 12:54:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0025vD-1Q;
	Wed, 27 May 2026 12:54:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0000000EvQF-3oyx;
	Wed, 27 May 2026 12:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 May 2026 12:54:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260527-public-keys-v1-4-c87a1cc61d1b@pengutronix.de>
References: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
In-Reply-To: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779879282; l=7373;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ae/ztzL42Gzze2mF7PISKEPx3rO0EvjveKVi7qg2SO8=;
 b=kbuOqcuC5SEihmgL/tDbD3Tojp9Ozd+qMagMOLuSfiKGjrIT3dkYIHBj0+ylQ0L0xed7+F+0N
 hA40Hallq46APDg9gMaPwKeI/x7/vLsDUUVSZwoi6cgac1qoyWtsgqS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_035445_656686_8FA67893 
X-CRM114-Status: GOOD (  16.48  )
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
Subject: [PATCH 4/4] public keys: allow keys to be members of multiple
 keyrings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The same signing identity can be valid in more than one context — e.g.
the development PEM is used both as a FIT image signer and as a TLV
signer. Until now keytoc forced one keyring per key, so the Kconfig
default listed the snakeoil PEM twice (once per target keyring) and
emitted two full copies of the modulus / rr / hash / public_key struct
into rodata.

Let the keyring= option in a keyspec appear more than once. Each
occurrence appends to a list; the emitted key data (struct public_key,
rsa/ecdsa_public_key, hash) is unchanged and singular, and one
struct public_key_record is emitted per keyring all pointing back at
the same key. Symbol/section names are uniquified with a per-key
record index (key_N_record_M).

For the development-key default, collapse the two CRYPTO_PUBLIC_KEYS
entries into one (keyring=fit,keyring=tlv-generic,fit-hint=...). With
4096-bit RSA this avoids re-emitting ~1 KB per shared identity into
rodata.

While here, have the keys command print a keyring header so the now
N-records-per-key output is readable.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Makefile  |  6 ++----
 scripts/keytoc.c | 61 ++++++++++++++++++++++++++++++++++++++++----------------
 2 files changed, 46 insertions(+), 21 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 17043316c4..0c4a900504 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -33,12 +33,10 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
 
 ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 ifdef CONFIG_CRYPTO_RSA
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/snakeoil-4096-development.pem
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/snakeoil-4096-development.pem
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,keyring=tlv-generic,fit-hint=rsa-devel:$(srctree)/crypto/snakeoil-4096-development.pem
 endif
 ifdef CONFIG_CRYPTO_ECDSA
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/snakeoil-ecdsa-development.pem
-CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv-generic:$(srctree)/crypto/snakeoil-ecdsa-development.pem
+CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,keyring=tlv-generic,fit-hint=ecdsa-devel:$(srctree)/crypto/snakeoil-ecdsa-development.pem
 endif
 endif
 
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 7e910422a7..e78d010481 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -34,7 +34,8 @@
 struct keyinfo {
 	char *spec;
 	char *name_hint;
-	char *keyring;
+	char **keyrings;
+	int nr_keyrings;
 	char *path;
 	char *name_c;
 };
@@ -564,6 +565,8 @@ static int gen_key_ecdsa(EVP_PKEY *key, struct keyinfo *info)
 		fprintf(outfilep, "\t.y = %s_y,\n", info->name_c);
 		fprintf(outfilep, "};\n");
 		if (!standalone) {
+			int i;
+
 			fprintf(outfilep, "\nstatic const struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
 			if (info->name_hint)
@@ -572,11 +575,14 @@ static int gen_key_ecdsa(EVP_PKEY *key, struct keyinfo *info)
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", info->name_c);
 			fprintf(outfilep, "};\n");
-			fprintf(outfilep, "\n");
-			fprintf(outfilep, "static const struct public_key_record __%s_public_key __ll_elem(.public_keys.rodata.%s) = {\n", info->name_c, info->name_c);
-			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
-			fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
-			fprintf(outfilep, "};\n");
+			for (i = 0; i < info->nr_keyrings; i++) {
+				fprintf(outfilep, "\n");
+				fprintf(outfilep, "static const struct public_key_record __%s_record_%d __ll_elem(.public_keys.rodata.%s_record_%d) = {\n",
+					info->name_c, i, info->name_c, i);
+				fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyrings[i]);
+				fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
+				fprintf(outfilep, "};\n");
+			}
 		}
 	}
 
@@ -674,6 +680,8 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 		fprintf(outfilep, "};\n");
 
 		if (!standalone) {
+			int i;
+
 			fprintf(outfilep, "\nstatic const struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
 			if (info->name_hint)
@@ -682,11 +690,14 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.rsa = &%s,\n", info->name_c);
 			fprintf(outfilep, "};\n");
-			fprintf(outfilep, "\n");
-			fprintf(outfilep, "static const struct public_key_record __%s_public_key __ll_elem(.public_keys.rodata.%s) = {\n", info->name_c, info->name_c);
-			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
-			fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
-			fprintf(outfilep, "};\n");
+			for (i = 0; i < info->nr_keyrings; i++) {
+				fprintf(outfilep, "\n");
+				fprintf(outfilep, "static const struct public_key_record __%s_record_%d __ll_elem(.public_keys.rodata.%s_record_%d) = {\n",
+					info->name_c, i, info->name_c, i);
+				fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyrings[i]);
+				fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
+				fprintf(outfilep, "};\n");
+			}
 		}
 	}
 
@@ -775,9 +786,21 @@ static bool parse_info(char *p, struct keyinfo *out)
 			v = strdup(v);
 			if (!v)
 				enomem_exit(__func__);
-			if (strcmp(k, "keyring") == 0)
-				out->keyring = strdup(v);
-			else if (strcmp(k, "fit-hint") == 0)
+			if (strcmp(k, "keyring") == 0) {
+				int i;
+				for (i = 0; i < out->nr_keyrings; i++) {
+					if (strcmp(out->keyrings[i], v) == 0) {
+						fprintf(stderr,
+							"duplicate keyring=%s in keyspec\n", v);
+						return false;
+					}
+				}
+				out->keyrings = realloc(out->keyrings,
+							(out->nr_keyrings + 1) * sizeof(char *));
+				if (!out->keyrings)
+					enomem_exit(__func__);
+				out->keyrings[out->nr_keyrings++] = strdup(v);
+			} else if (strcmp(k, "fit-hint") == 0)
 				out->name_hint = strdup(v);
 			else
 				return false;
@@ -862,7 +885,7 @@ int main(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		fprintf(stderr, "Usage: %s [-ods] keyring=<keyring>[,fit-hint=<hint>]:<crt> ...\n", argv[0]);
+		fprintf(stderr, "Usage: %s [-ods] keyring=<keyring>[,keyring=<keyring>...][,fit-hint=<hint>]:<crt> ...\n", argv[0]);
 		fprintf(stderr, "\t-o FILE\twrite output into FILE instead of stdout\n");
 		fprintf(stderr, "\t-d\tgenerate device tree snippet instead of C code\n");
 		fprintf(stderr, "\t-s\tgenerate standalone key outside FIT image keyring\n");
@@ -926,8 +949,12 @@ int main(int argc, char *argv[])
 		if (asprintf(&info->name_c, "key_%i", keys_idx + 1) < 0)
 			enomem_exit("asprintf");
 
-		if (!info->keyring) {
-			info->keyring = strdup("fit");
+		if (info->nr_keyrings == 0) {
+			info->keyrings = malloc(sizeof(char *));
+			if (!info->keyrings)
+				enomem_exit(__func__);
+			info->keyrings[0] = strdup("fit");
+			info->nr_keyrings = 1;
 			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", info->path);
 		}
 	}

-- 
2.47.3



