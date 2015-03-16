Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo68.mail-out.ovh.net ([46.105.63.100])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXS4h-0001su-MD
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:16:44 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id C5108FFAA5F
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:16:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 11:15:36 +0100
Message-Id: <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150316101321.GA26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
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
Subject: [PATCH 01/10] digest: add verify callback
To: barebox@lists.infradead.org

this will allow to compare a md with the original one

When calling this do not call final

For RSA_SIGN verification final does not exist only verify
as final will be for signing

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c   | 24 +++++++++++++++++++++++-
 crypto/hmac.c     |  1 +
 crypto/internal.h |  2 ++
 crypto/md5.c      |  1 +
 crypto/sha1.c     |  1 +
 crypto/sha2.c     |  2 ++
 crypto/sha4.c     |  2 ++
 include/digest.h  |  6 ++++++
 8 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index c06089d..52e8796 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -26,6 +26,8 @@
 #include <module.h>
 #include <linux/err.h>
 
+#include "internal.h"
+
 static LIST_HEAD(digests);
 
 static struct digest_algo *digest_algo_get_by_name(const char *name);
@@ -37,9 +39,29 @@ static int dummy_init(struct digest *d)
 
 static void dummy_free(struct digest *d) {}
 
+int digest_generic_verify(struct digest *d, const unsigned char *md)
+{
+	int ret;
+	int len = digest_length(d);
+	unsigned char *tmp;
+
+	tmp = xmalloc(len);
+
+	ret = digest_final(d, tmp);
+	if (ret)
+		goto end;
+
+	ret = memcmp(md, tmp, len);
+	ret = ret ? -EINVAL : 0;
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
index 1462730..f39e4c8 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -136,6 +136,7 @@ struct digest_algo hmac_algo = {
 	.init = digest_hmac_init,
 	.update = digest_hmac_update,
 	.final = digest_hmac_final,
+	.verify = digest_generic_verify,
 	.set_key = digest_hmac_set_key,
 	.free = digest_hmac_free,
 	.ctx_length = sizeof(struct digest_hmac),
diff --git a/crypto/internal.h b/crypto/internal.h
index cc409d8..f482654 100644
--- a/crypto/internal.h
+++ b/crypto/internal.h
@@ -13,3 +13,5 @@ static inline int digest_hmac_register(struct digest_algo *algo,
 	return 0;
 }
 #endif
+
+int digest_generic_verify(struct digest *d, const unsigned char *md);
diff --git a/crypto/md5.c b/crypto/md5.c
index fe17ff5..4847b38 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -294,6 +294,7 @@ static struct digest_algo md5 = {
 	.init = digest_md5_init,
 	.update = digest_md5_update,
 	.final = digest_md5_final,
+	.verify = digest_generic_verify,
 	.length = 16,
 	.ctx_length = sizeof(struct MD5Context),
 };
diff --git a/crypto/sha1.c b/crypto/sha1.c
index a244b5d..09dee87 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -315,6 +315,7 @@ static struct digest_algo m = {
 	.init = digest_sha1_init,
 	.update = digest_sha1_update,
 	.final = digest_sha1_final,
+	.verify = digest_generic_verify,
 	.length = SHA1_SUM_LEN,
 	.ctx_length = sizeof(sha1_context),
 };
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cb89c82..9bf6541 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -304,6 +304,7 @@ static struct digest_algo m224 = {
 	.init = digest_sha224_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
+	.verify = digest_generic_verify,
 	.length = SHA224_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
@@ -335,6 +336,7 @@ static struct digest_algo m256 = {
 	.init = digest_sha256_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
+	.verify = digest_generic_verify,
 	.length = SHA256_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 1c768e7..5c3097d 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -309,6 +309,7 @@ static struct digest_algo m384 = {
 	.init = digest_sha384_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
+	.verify = digest_generic_verify,
 	.length = SHA384_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
 };
@@ -341,6 +342,7 @@ static struct digest_algo m512 = {
 	.init = digest_sha512_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
+	.verify = digest_generic_verify,
 	.length = SHA512_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
 };
diff --git a/include/digest.h b/include/digest.h
index b890a7a..cba7814 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -32,6 +32,7 @@ struct digest_algo {
 	int (*update)(struct digest *d, const void *data, unsigned long len);
 	int (*final)(struct digest *d, unsigned char *md);
 	int (*set_key)(struct digest *d, const unsigned char *key, unsigned int len);
+	int (*verify)(struct digest *d, const unsigned char *md);
 
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
