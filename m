Delivery-date: Mon, 23 Oct 2023 16:33:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzM-001H3u-Bg
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 16:33:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzK-0001NE-Gj
	for lore@pengutronix.de; Mon, 23 Oct 2023 16:33:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MzA6P9MLSxjU2huuLMu54BeL0Jn5s3gLT7Vmu1ZKTXw=; b=1Iazk0aKiOg8elsAaRFYY4wfe8
	9IgKC/rCsSJ69+zS75n5fy/tmh4BNPI9GO7LDxMv2X7nCdViYdu9IaK3IuA9j5dt9v7BAkEniAxkr
	fI4sx6o3FbkljIJ2UcggflgjnUDDRDNmJDJQ8BQYo3bUQQxl6OeVcMCmZc4DtHGhNjlFyXZUSOQwf
	a9Zcce7qTnrdaMgp3XDE3PcJs5V4ldOD6UZkzjrQkjLhepqjWbC/++X8jlrb2UxZYsSWeRreRczTl
	F34JhUMB+WJAxLCMrkXq6Q+0+O4zxkNe21IiBWrWKXpquUtShOVED3PYLB00bOEOLhRnGc90Wok5w
	J7KS21tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quvy0-007YCk-2O;
	Mon, 23 Oct 2023 14:31:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quvxw-007YB7-21
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 14:31:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxv-00013w-Gf; Mon, 23 Oct 2023 16:31:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxv-003jWs-3z; Mon, 23 Oct 2023 16:31:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxv-007PfI-0F;
	Mon, 23 Oct 2023 16:31:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Oct 2023 16:31:22 +0200
Message-Id: <20231023143122.1760217-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_073136_829320_91EDC129 
X-CRM114-Status: GOOD (  21.84  )
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
Subject: [PATCH 2/3] crypto: add JSON Web Token (JWT) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

JSON Web Token is a proposed Internet standard for creating tokens with
optional signature and/or optional encryption whose payload holds JSON that
asserts some number of claims. The tokens are signed either using a private
secret or a public/private key.

In the context of barebox, a JSON Web Token can be used as unlock token
for a system: By default, the system would be locked and only boot
signed payloads, but when a valid unlock token is provided, board code
can selectively allow access to disallowed features, such as booting
unsigned payloads or provide access to the console and shell.

This commit adds first support for JSON Web Tokens on top of the already
existing JSON support. RS256 is the only currently supported format, but
more may be added in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/Kconfig       |   6 ++
 crypto/Makefile      |   2 +
 crypto/jwt.c         | 241 +++++++++++++++++++++++++++++++++++++++++++
 include/crypto/jwt.h |  55 ++++++++++
 4 files changed, 304 insertions(+)
 create mode 100644 crypto/jwt.c
 create mode 100644 include/crypto/jwt.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 4ad7bd844fa1..d1360a2101b3 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -147,4 +147,10 @@ config CRYPTO_KEYSTORE
 	  This is a simple keystore, which can be used to pass keys
 	  between several components via simple interface.
 
+config JWT
+	bool "JSON Web Token support" if COMPILE_TEST
+	select JSMN
+	select BASE64
+	select CRYPTO_RSA
+
 endmenu
diff --git a/crypto/Makefile b/crypto/Makefile
index 4a1c7e9615b8..cf041dd6b3ed 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -19,6 +19,8 @@ obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
 obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 
+obj-$(CONFIG_JWT)		+= jwt.o
+
 extra-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS) += rsa-keys.h
 
 ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
diff --git a/crypto/jwt.c b/crypto/jwt.c
new file mode 100644
index 000000000000..146ddeff1e8b
--- /dev/null
+++ b/crypto/jwt.c
@@ -0,0 +1,241 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "jwt: " fmt
+
+#include <crypto/jwt.h>
+#include <rsa.h>
+#include <errno.h>
+#include <linux/printk.h>
+#include <base64.h>
+#include <jsmn.h>
+#include <linux/ctype.h>
+
+#define JP(...)	(const char *[]) { __VA_ARGS__, NULL }
+
+static enum hash_algo digest_algo_by_jwt_alg(enum jwt_alg alg)
+{
+	switch (alg) {
+		case JWT_ALG_RS256:
+			return HASH_ALGO_SHA256;
+		case JWT_ALG_RS384:
+			return HASH_ALGO_SHA384;
+		case JWT_ALG_RS512:
+			return HASH_ALGO_SHA512;
+		default:
+			BUG();
+	}
+}
+
+static u8 *do_hash(const u8 *buf, size_t len, enum hash_algo algo)
+{
+	struct digest *digest;
+	int ret = 0;
+	u8 *hash;
+
+	digest = digest_alloc_by_algo(algo);
+	if (!digest) {
+		pr_err("signature algorithm not supported\n");
+		return ERR_PTR(-ENOSYS);
+	}
+
+	hash = xzalloc(digest_length(digest));
+	ret = digest_digest(digest, buf, len, hash);
+	digest_free(digest);
+
+	if (ret) {
+		free(hash);
+		return ERR_PTR(ret);
+	}
+
+	return hash;
+}
+
+static int jwt_part_parse(struct jwt_part *part, const char *content, size_t len)
+{
+	size_t decoded_len;
+
+	part->content = xmalloc(len);
+	decoded_len = decode_base64url(part->content, len, content);
+	part->content[decoded_len] = '\0';
+	part->tokens = jsmn_parse_alloc(part->content, decoded_len, &part->token_count);
+	if (!part->tokens) {
+		free(part->content);
+		return -EILSEQ;
+	}
+
+	return 0;
+}
+
+static void jwt_part_free(struct jwt_part *part)
+{
+	free(part->tokens);
+	free(part->content);
+}
+
+static const char *jwt_alg_names[] = {
+	[JWT_ALG_NONE]   = "none",
+	[JWT_ALG_HS256]  = "HS256",
+	[JWT_ALG_HS384]  = "HS384",
+	[JWT_ALG_HS512]  = "HS512",
+	[JWT_ALG_PS256]  = "PS256",
+	[JWT_ALG_PS384]  = "PS384",
+	[JWT_ALG_PS512]  = "PS512",
+	[JWT_ALG_RS256]  = "RS256",
+	[JWT_ALG_RS384]  = "RS384",
+	[JWT_ALG_RS512]  = "RS512",
+	[JWT_ALG_ES256]  = "ES256",
+	[JWT_ALG_ES256K] = "ES256K",
+	[JWT_ALG_ES384]  = "ES384",
+	[JWT_ALG_ES512]  = "ES512",
+	[JWT_ALG_EDDSA]  = "EDDSA",
+};
+
+static bool jwt_header_ok(struct jwt *jwt, enum jwt_alg alg)
+{
+	struct jwt_part *header = &jwt->header;
+	const jsmntok_t *token;
+
+	token = jsmn_locate(JP("typ"), header->content, header->tokens);
+	if (!token)
+		return false;
+
+	if (!jsmn_strcase_eq("JWT", header->content, token))
+		return false;
+
+	if (alg >= ARRAY_SIZE(jwt_alg_names))
+		return false;
+
+	token = jsmn_locate(JP("alg"), header->content, header->tokens);
+	if (!token)
+		return false;
+
+	return jsmn_strcase_eq(jwt_alg_names[alg], header->content, token);
+}
+
+void jwt_free(struct jwt *jwt)
+{
+	jwt_part_free(&jwt->payload);
+	jwt_part_free(&jwt->header);
+	free(jwt);
+}
+
+const char *jwt_split(const char *token,
+		      const char **payload, const char **signature, const char **end)
+{
+	const char *p, *p_end;
+
+	token = skip_spaces(token);
+
+	p = strchr(token, '.');
+	if (!p)
+		return ERR_PTR(-EINVAL);
+	if (payload)
+		*payload = ++p;
+
+	p = strchr(p, '.');
+	if (!p)
+		return ERR_PTR(-EINVAL);
+	if (signature)
+		*signature = ++p;
+
+	/* seek to first space or '\0' */
+	for (p_end = p; *p_end && !isspace(*p_end); p_end++)
+		;
+
+	/* ensure the trailing spaces aren't followed by anything */
+	if (*skip_spaces(p_end) != '\0')
+		return ERR_PTR(-EINVAL);
+
+	*end = p_end;
+
+	return token;
+}
+
+struct jwt *jwt_decode(const char *token, const struct jwt_key *key)
+{
+	const char *alg_name = jwt_alg_names[key->alg];
+	enum hash_algo hash_algo;
+	const char *payload, *signature, *end;
+	u8 *sigbin;
+	size_t sig_len, sigbin_len;
+	struct jwt *jwt;
+	u8 *hash;
+	int ret;
+
+	token = jwt_split(token, &payload, &signature, &end);
+	if (IS_ERR(token))
+		return ERR_CAST(token);
+
+	sig_len = end - signature;
+
+	switch (key->alg) {
+	case JWT_ALG_RS256:
+	case JWT_ALG_RS384:
+	case JWT_ALG_RS512:
+		if (sig_len == 0)
+			return ERR_PTR(-EILSEQ);
+
+		sigbin = xzalloc(sig_len);
+		sigbin_len = decode_base64url(sigbin, sig_len, signature);
+
+		hash_algo = digest_algo_by_jwt_alg(key->alg);
+		hash = do_hash(token, signature - token - 1, hash_algo);
+		if (IS_ERR(hash)) {
+			free(sigbin);
+			return ERR_CAST(hash);
+		}
+
+		ret = rsa_verify(key->material.rsa_pub, sigbin, sigbin_len, hash,
+				 hash_algo);
+		free(hash);
+		free(sigbin);
+		if (ret < 0) {
+			pr_debug("%s signature does not match: %pe\n",
+				 alg_name, ERR_PTR(ret));
+			return ERR_PTR(ret);
+		}
+
+		break;
+	default:
+		return ERR_PTR(-ENOSYS);
+	}
+
+	pr_debug("verification for algo %s ok\n", alg_name);
+
+	jwt = xzalloc(sizeof(*jwt));
+
+	ret = jwt_part_parse(&jwt->header, token, payload - token - 1);
+	if (ret || !jwt_header_ok(jwt, key->alg)) {
+		ret = ret ?: -EINVAL;
+		pr_debug("failed to parse header: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	ret = jwt_part_parse(&jwt->payload, payload, signature - payload - 1);
+	if (ret) {
+		ret = ret ?: -EINVAL;
+		pr_debug("failed to parse payload: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	return jwt;
+
+err:
+	jwt_free(jwt);
+	return ERR_PTR(ret);
+}
+
+const char *jwt_get_payload(const struct jwt *t)
+{
+	return t->payload.content;
+}
+
+const jsmntok_t *jwt_get_claim(const struct jwt *t, const char *claim)
+{
+	return jsmn_locate(JP(claim), t->payload.content, t->payload.tokens);
+}
+
+char *jwt_get_claim_str(const struct jwt *t, const char *claim)
+{
+	return jsmn_strdup(JP(claim), t->payload.content, t->payload.tokens);
+}
diff --git a/include/crypto/jwt.h b/include/crypto/jwt.h
new file mode 100644
index 000000000000..4e20b5950e69
--- /dev/null
+++ b/include/crypto/jwt.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __JWT_H_
+#define __JWT_H_
+
+#include <linux/types.h>
+#include <jsmn.h>
+
+enum jwt_alg {
+	JWT_ALG_NONE,
+	JWT_ALG_HS256,
+	JWT_ALG_HS384,
+	JWT_ALG_HS512,
+	JWT_ALG_PS256,
+	JWT_ALG_PS384,
+	JWT_ALG_PS512,
+	JWT_ALG_RS256, /* supported */
+	JWT_ALG_RS384, /* supported */
+	JWT_ALG_RS512, /* supported */
+	JWT_ALG_ES256,
+	JWT_ALG_ES256K,
+	JWT_ALG_ES384,
+	JWT_ALG_ES512,
+	JWT_ALG_EDDSA,
+};
+
+struct jwt_key {
+	enum jwt_alg alg;
+	union {
+		const struct rsa_public_key *rsa_pub;
+	} material;
+};
+
+struct jwt_part {
+	char *content;
+	int token_count;
+	jsmntok_t *tokens;
+};
+
+struct jwt {
+	struct jwt_part header;
+	struct jwt_part payload;
+};
+
+const char *jwt_split(const char *token,
+		      const char **payload, const char **signature, const char **end);
+
+struct jwt *jwt_decode(const char *token, const struct jwt_key *key);
+void jwt_free(struct jwt *jwt);
+
+const char *jwt_get_payload(const struct jwt *t);
+
+const jsmntok_t *jwt_get_claim(const struct jwt *t, const char *claim);
+char *jwt_get_claim_str(const struct jwt *t, const char *claim);
+
+#endif
-- 
2.39.2



