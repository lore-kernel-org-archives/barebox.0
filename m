Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXS4y-0001xU-3m
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:17:01 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 2EF00FFAA23
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:16:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 11:15:40 +0100
Message-Id: <1426500945-31815-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/10] digest: add digest callback
To: barebox@lists.infradead.org

Combination of @init and @update and @final. This function
effectively behaves as the entire chain of operations, @init,
@update and @final issued in sequence. This is added for hardware
which cannot do even the @finup, but can only do the whole
transformation in one run.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c   | 18 ++++++++++++++++++
 crypto/hmac.c     |  1 +
 crypto/internal.h |  2 ++
 crypto/md5.c      |  1 +
 crypto/sha1.c     |  1 +
 crypto/sha2.c     |  1 +
 crypto/sha4.c     |  1 +
 include/digest.h  |  8 ++++++++
 8 files changed, 33 insertions(+)

diff --git a/crypto/digest.c b/crypto/digest.c
index 9fa5bba..c261f7e 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -58,6 +58,24 @@ end:
 	return ret;
 }
 
+int digest_generic_digest(struct digest *d, const void *data,
+			  unsigned int len, u8 *md)
+
+{
+	int ret;
+
+	if (!data || len == 0 || !md)
+		return -EINVAL;
+
+	ret = digest_init(d);
+	if (ret)
+		return ret;
+	ret = digest_update(d, data, len);
+	if (ret)
+		return ret;
+	return digest_final(d, md);
+}
+
 int digest_algo_register(struct digest_algo *d)
 {
 	if (!d || !d->name || !d->update || !d->final || !d->verify ||
diff --git a/crypto/hmac.c b/crypto/hmac.c
index f39e4c8..b1c17af 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -136,6 +136,7 @@ struct digest_algo hmac_algo = {
 	.init = digest_hmac_init,
 	.update = digest_hmac_update,
 	.final = digest_hmac_final,
+	.digest = digest_generic_digest,
 	.verify = digest_generic_verify,
 	.set_key = digest_hmac_set_key,
 	.free = digest_hmac_free,
diff --git a/crypto/internal.h b/crypto/internal.h
index f482654..c6f5908 100644
--- a/crypto/internal.h
+++ b/crypto/internal.h
@@ -15,3 +15,5 @@ static inline int digest_hmac_register(struct digest_algo *algo,
 #endif
 
 int digest_generic_verify(struct digest *d, const unsigned char *md);
+int digest_generic_digest(struct digest *d, const void *data,
+			  unsigned int len, u8 *out);
diff --git a/crypto/md5.c b/crypto/md5.c
index 4847b38..b7ad6f2 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -294,6 +294,7 @@ static struct digest_algo md5 = {
 	.init = digest_md5_init,
 	.update = digest_md5_update,
 	.final = digest_md5_final,
+	.digest = digest_generic_digest,
 	.verify = digest_generic_verify,
 	.length = 16,
 	.ctx_length = sizeof(struct MD5Context),
diff --git a/crypto/sha1.c b/crypto/sha1.c
index 09dee87..b108f8a 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -315,6 +315,7 @@ static struct digest_algo m = {
 	.init = digest_sha1_init,
 	.update = digest_sha1_update,
 	.final = digest_sha1_final,
+	.digest = digest_generic_digest,
 	.verify = digest_generic_verify,
 	.length = SHA1_SUM_LEN,
 	.ctx_length = sizeof(sha1_context),
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 9bf6541..375a40e 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -336,6 +336,7 @@ static struct digest_algo m256 = {
 	.init = digest_sha256_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
+	.digest = digest_generic_digest,
 	.verify = digest_generic_verify,
 	.length = SHA256_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 5c3097d..1b91e7f 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -342,6 +342,7 @@ static struct digest_algo m512 = {
 	.init = digest_sha512_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
+	.digest = digest_generic_digest,
 	.verify = digest_generic_verify,
 	.length = SHA512_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
diff --git a/include/digest.h b/include/digest.h
index ec904f0..8250ca7 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -31,6 +31,8 @@ struct digest_algo {
 	int (*init)(struct digest *d);
 	int (*update)(struct digest *d, const void *data, unsigned long len);
 	int (*final)(struct digest *d, unsigned char *md);
+	int (*digest)(struct digest *d, const void *data,
+		      unsigned int len, u8 *out);
 	int (*set_key)(struct digest *d, const unsigned char *key, unsigned int len);
 	int (*verify)(struct digest *d, const unsigned char *md);
 
@@ -85,6 +87,12 @@ static inline int digest_final(struct digest *d, unsigned char *md)
 	return d->algo->final(d, md);
 }
 
+static inline int digest_digest(struct digest *d, const void *data,
+		      unsigned int len, u8 *md)
+{
+	return d->algo->digest(d, data, len, md);
+}
+
 static inline int digest_verify(struct digest *d, const unsigned char *md)
 {
 	return d->algo->verify(d, md);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
