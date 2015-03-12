Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo6.mail-out.ovh.net ([178.32.124.17])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW40n-0003sp-N1
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:22:59 +0000
Received: from mail609.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 7B857FFA7BB
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 15:22:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Mar 2015 15:22:23 +0100
Message-Id: <1426170146-31302-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/7] digest: add verify callback
To: barebox@lists.infradead.org

this will allow to compare a md with the original one

When calling this do not call final

For RSA_SIGN verification final does not exist only verify
as final will be for signing

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c   | 23 ++++++++++++++++++++++-
 crypto/hmac.c     |  1 +
 crypto/internal.h |  2 ++
 crypto/md5.c      |  1 +
 crypto/sha1.c     |  1 +
 crypto/sha2.c     |  2 ++
 crypto/sha4.c     |  2 ++
 include/digest.h  |  6 ++++++
 8 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index c06089d..98c3607 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -26,6 +26,8 @@
 #include <module.h>
 #include <linux/err.h>
 
+#include "internal.h"
+
 static LIST_HEAD(digests);
 
 static struct digest_algo *digest_algo_get_by_name(const char *name);
@@ -37,9 +39,28 @@ static int dummy_init(struct digest *d)
 
 static void dummy_free(struct digest *d) {}
 
+int digest_generic_verity(struct digest *d, const unsigned char *md)
+{
+	int ret;
+	int len = digest_length(d);
+	unsigned char *tmp;
+
+	tmp = xmalloc(sizeof(len));
+
+	ret = digest_final(d, tmp);
+	if (ret)
+		goto end;
+
+	ret = memcmp(md, tmp, len);
+end:
+	free(tmp);
+	return ret;
+}
+
 int digest_algo_register(struct digest_algo *d)
 {
-	if (!d || !d->name || !d->update || !d->final || d->length < 1)
+	if (!d || !d->name || !d->update || !d->final || !d->verify ||
+	    d->length < 1)
 		return -EINVAL;
 
 	if (!d->init)
diff --git a/crypto/hmac.c b/crypto/hmac.c
index 1462730..1041352 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -136,6 +136,7 @@ struct digest_algo hmac_algo = {
 	.init = digest_hmac_init,
 	.update = digest_hmac_update,
 	.final = digest_hmac_final,
+	.verify = digest_generic_verity,
 	.set_key = digest_hmac_set_key,
 	.free = digest_hmac_free,
 	.ctx_length = sizeof(struct digest_hmac),
diff --git a/crypto/internal.h b/crypto/internal.h
index cc409d8..82c5186 100644
--- a/crypto/internal.h
+++ b/crypto/internal.h
@@ -13,3 +13,5 @@ static inline int digest_hmac_register(struct digest_algo *algo,
 	return 0;
 }
 #endif
+
+int digest_generic_verity(struct digest *d, const unsigned char *md);
diff --git a/crypto/md5.c b/crypto/md5.c
index fe17ff5..718f8f0 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -294,6 +294,7 @@ static struct digest_algo md5 = {
 	.init = digest_md5_init,
 	.update = digest_md5_update,
 	.final = digest_md5_final,
+	.verify = digest_generic_verity,
 	.length = 16,
 	.ctx_length = sizeof(struct MD5Context),
 };
diff --git a/crypto/sha1.c b/crypto/sha1.c
index a244b5d..38f0c42 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -315,6 +315,7 @@ static struct digest_algo m = {
 	.init = digest_sha1_init,
 	.update = digest_sha1_update,
 	.final = digest_sha1_final,
+	.verify = digest_generic_verity,
 	.length = SHA1_SUM_LEN,
 	.ctx_length = sizeof(sha1_context),
 };
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cb89c82..41e5720 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -304,6 +304,7 @@ static struct digest_algo m224 = {
 	.init = digest_sha224_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
+	.verify = digest_generic_verity,
 	.length = SHA224_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
@@ -335,6 +336,7 @@ static struct digest_algo m256 = {
 	.init = digest_sha256_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
+	.verify = digest_generic_verity,
 	.length = SHA256_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 1c768e7..7c96ac3 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -309,6 +309,7 @@ static struct digest_algo m384 = {
 	.init = digest_sha384_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
+	.verify = digest_generic_verity,
 	.length = SHA384_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
 };
@@ -341,6 +342,7 @@ static struct digest_algo m512 = {
 	.init = digest_sha512_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
+	.verify = digest_generic_verity,
 	.length = SHA512_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
 };
diff --git a/include/digest.h b/include/digest.h
index b890a7a..c675018 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -32,6 +32,7 @@ struct digest_algo {
 	int (*update)(struct digest *d, const void *data, unsigned long len);
 	int (*final)(struct digest *d, unsigned char *md);
 	int (*set_key)(struct digest *d, const unsigned char *key, unsigned int len);
+	int (*verify)(struct digest *d, const unsigned char *in);
 
 	unsigned int length;
 	unsigned int ctx_length;
@@ -80,6 +81,11 @@ static inline int digest_final(struct digest *d, unsigned char *md)
 	return d->algo->final(d, md);
 }
 
+static inline int digest_verify(struct digest *d, const unsigned char *md)
+{
+	return d->algo->verify(d, md);
+}
+
 static inline int digest_length(struct digest *d)
 {
 	return d->algo->length;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
