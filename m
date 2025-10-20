Delivery-date: Mon, 20 Oct 2025 14:58:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTT-009tkx-0f
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTJ-0000Xd-Um
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wg9cILTk0yv5dOB1aIWyHSB1xzluqrNswxv5yPqYdU0=; b=ehTy8UbNSPAhQiGJWAlhjTdXr0
	OnGn5vKjrZHBz119zdGF9zLvp4c5NftvWPsmlXhC0hrGc6ykgRh48die7yYfA7Cx7OpC/U4OkqgJ9
	5bAzziUHemDtWsg7ULVaf3S8B/ua7Xfmp49Hyh2YT8jNEYm2bjT0Zv07B5M155RvTS5c/TejWBBf8
	TCqYNFYdXkHgLpNQzvxs3EQahlzz1pEL523QXrvdGy4CHboExw8c+QvnNaVI7pCJ9QMpU0MGoDnqs
	bhdJsDRLLE46ffAPeZWqSNgHo/o7RGQYXC6Rg0utfuWweibH2pt33IevICjbyDtFfDUyMEhtI8x2e
	UAdyFVfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSf-0000000Df8e-3MEm;
	Mon, 20 Oct 2025 12:58:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df44-1CnJ
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008Bk-JU
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTr-1O;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1MZK;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:31:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-public-keys-const-v1-5-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=3182;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UvF3Ox6U0qN3WBrMll83iw/smuS6+qSHc7+Jsi6SpBI=;
 b=OqyrTqRAEHfLuGHam5NTI3IAE5P7+n6RIlvT/3j6ZDcSfKGuDP+LfyUwuE+BBtjMfDqul2Wbu
 ifP4zI/mrefBWLqtAfTjhQOusOcznKZOi+DCqirra2tlm7hUo1FSuWi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_329020_A5309EDE 
X-CRM114-Status: GOOD (  13.17  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] public-keys: make const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

public keys should not be modified once created, so make them const.
This also has the effect that the statically initialized keys can live
in the RO data section and thus are protected from modification.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/crypto/public_key.h | 8 ++++----
 include/crypto/rsa.h        | 4 ++--
 scripts/keytoc.c            | 8 ++++----
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 3a484eced110b179c5c411c4e06c47770e965613..5c0234acc06bd05b27cb86d62efe55f9f4e50d5c 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -14,13 +14,13 @@ enum public_key_type {
 
 struct public_key {
 	enum public_key_type type;
-	char *key_name_hint;
-	unsigned char *hash;
+	const char *key_name_hint;
+	const unsigned char *hash;
 	unsigned int hashlen;
 
 	union {
-		struct rsa_public_key *rsa;
-		struct ecdsa_public_key *ecdsa;
+		const struct rsa_public_key *rsa;
+		const struct ecdsa_public_key *ecdsa;
 	};
 };
 
diff --git a/include/crypto/rsa.h b/include/crypto/rsa.h
index fce94df094f90359ef500088277a0c1bf9130c14..bff25e02375d6da488981c8dbfab404e830d1f68 100644
--- a/include/crypto/rsa.h
+++ b/include/crypto/rsa.h
@@ -26,8 +26,8 @@
 struct rsa_public_key {
 	uint len;		/* len of modulus[] in number of uint32_t */
 	uint32_t n0inv;		/* -1 / modulus[0] mod 2^32 */
-	uint32_t *modulus;	/* modulus as little endian array */
-	uint32_t *rr;		/* R^2 as little endian array */
+	const uint32_t *modulus;/* modulus as little endian array */
+	const uint32_t *rr;	/* R^2 as little endian array */
 	uint64_t exponent;	/* public exponent */
 };
 
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 074af6f0b44017572cc43be3ef559abd9fec1da3..9d6ec376c124f36e1f07f3e198bb245cfa033cd0 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -529,14 +529,14 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "\nstatic uint64_t %s_x[] = {", key_name_c);
+		fprintf(outfilep, "\nstatic const uint64_t %s_x[] = {", key_name_c);
 		ret = print_bignum(key_x, bits, 64);
 		if (ret)
 			return ret;
 
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "static uint64_t %s_y[] = {", key_name_c);
+		fprintf(outfilep, "static const uint64_t %s_y[] = {", key_name_c);
 		ret = print_bignum(key_y, bits, 64);
 		if (ret)
 			return ret;
@@ -627,14 +627,14 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "\nstatic uint32_t %s_modulus[] = {", key_name_c);
+		fprintf(outfilep, "\nstatic const uint32_t %s_modulus[] = {", key_name_c);
 		ret = print_bignum(modulus, bits, 32);
 		if (ret)
 			return ret;
 
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "static uint32_t %s_rr[] = {", key_name_c);
+		fprintf(outfilep, "static const uint32_t %s_rr[] = {", key_name_c);
 		ret = print_bignum(r_squared, bits, 32);
 		if (ret)
 			return ret;

-- 
2.47.3



