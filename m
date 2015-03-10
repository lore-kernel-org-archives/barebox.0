Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo69.mail-out.ovh.net ([178.32.228.69])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVL9R-0001Q5-7F
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:28:55 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 16E781004053
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:28:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Mar 2015 15:28:16 +0100
Message-Id: <1425997697-27467-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] digest: add HMAC support for md5, sha1, sha224, sha256,
 sha384, sha512
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/digest.c  | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/md5.c     |  1 +
 crypto/sha1.c    |  1 +
 crypto/sha2.c    |  2 ++
 crypto/sha4.c    |  2 ++
 include/digest.h | 16 ++++++++++++++++
 6 files changed, 73 insertions(+)

diff --git a/common/digest.c b/common/digest.c
index 89af862..7c09ce2 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -102,6 +102,57 @@ void digest_free(struct digest *d)
 }
 EXPORT_SYMBOL_GPL(digest_free);
 
+void digest_hmac_init(struct digest *d, const unsigned char *key,
+                       size_t keylen)
+{
+	int i;
+	unsigned char *sum = NULL;
+
+	if (keylen > d->algo->pad_length) {
+		sum = xmalloc(sizeof(unsigned char) * digest_length(d));
+		digest_init(d);
+		digest_update(d, key, keylen);
+		digest_final(d, sum);
+		keylen = digest_length(d);
+		key = sum;
+	}
+
+	d->ipad = xmalloc(sizeof(unsigned char) * d->algo->pad_length);
+	d->opad = xmalloc(sizeof(unsigned char) * d->algo->pad_length);
+
+	memset(d->ipad, 0x36, d->algo->pad_length);
+	memset(d->opad, 0x5C, d->algo->pad_length);
+
+	for (i = 0; i < keylen; i++) {
+		d->ipad[i] = (unsigned char)(d->ipad[i] ^ key[i]);
+		d->opad[i] = (unsigned char)(d->opad[i] ^ key[i]);
+	}
+
+	digest_init(d);
+	digest_update(d, d->ipad, d->algo->pad_length);
+	free(sum);
+
+}
+EXPORT_SYMBOL_GPL(digest_hmac_init);
+
+void digest_hmac_final(struct digest *d, unsigned char *md)
+{
+	unsigned char *tmp = NULL;
+
+	tmp = xmalloc(sizeof(unsigned char) * digest_length(d));
+
+	digest_final(d, tmp);
+	digest_init(d);
+	digest_update(d, d->opad, d->algo->pad_length);
+	digest_update(d, tmp, digest_length(d));
+	digest_final(d, md);
+
+	free(tmp);
+	free(d->ipad);
+	free(d->opad);
+}
+EXPORT_SYMBOL_GPL(digest_hmac_final);
+
 int digest_file_window(struct digest *d, char *filename,
 		       unsigned char *hash,
 		       ulong start, ulong size)
diff --git a/crypto/md5.c b/crypto/md5.c
index f70dd62..bed2256 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -294,6 +294,7 @@ static struct digest_algo md5 = {
 	.final = digest_md5_final,
 	.length = 16,
 	.ctx_length = sizeof(struct MD5Context),
+	.pad_length = 64,
 };
 
 static int md5_digest_register(void)
diff --git a/crypto/sha1.c b/crypto/sha1.c
index b6f4cbb..16288d1 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -315,6 +315,7 @@ static struct digest_algo m = {
 	.final = digest_sha1_final,
 	.length = SHA1_SUM_LEN,
 	.ctx_length = sizeof(sha1_context),
+	.pad_length = 64,
 };
 
 static int sha1_digest_register(void)
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cc6b167..a280bd8 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -305,6 +305,7 @@ static struct digest_algo m224 = {
 	.final = digest_sha2_final,
 	.length = SHA224_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
+	.pad_length = 64,
 };
 #endif
 
@@ -323,6 +324,7 @@ static struct digest_algo m256 = {
 	.final = digest_sha2_final,
 	.length = SHA256_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
+	.pad_length = 64,
 };
 #endif
 
diff --git a/crypto/sha4.c b/crypto/sha4.c
index c3dcf17..686298a 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -309,6 +309,7 @@ static struct digest_algo m384 = {
 	.final = digest_sha4_final,
 	.length = SHA384_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
+	.pad_length = 128,
 };
 
 static int digest_sha512_init(struct digest *d)
@@ -325,6 +326,7 @@ static struct digest_algo m512 = {
 	.final = digest_sha4_final,
 	.length = SHA512_SUM_LEN,
 	.ctx_length = sizeof(sha4_context),
+	.pad_length = 128,
 };
 
 static int sha4_digest_register(void)
diff --git a/include/digest.h b/include/digest.h
index b8c6898..f04f467 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -33,12 +33,17 @@ struct digest_algo {
 	unsigned int length;
 	unsigned int ctx_length;
 
+	unsigned int pad_length;
+
 	struct list_head list;
 };
 
 struct digest {
 	struct digest_algo *algo;
 	void *ctx;
+
+	unsigned char *ipad;
+	unsigned char *opad;
 };
 
 /*
@@ -79,4 +84,15 @@ static inline int digest_length(struct digest *d)
 	return d->algo->length;
 }
 
+void digest_hmac_init(struct digest *d, const unsigned char *key,
+                       size_t keylen);
+
+static inline void digest_hmac_update(struct digest *d, const void *data,
+				      unsigned long len)
+{
+	digest_update(d, data, len);
+}
+
+void digest_hmac_final(struct digest *d, unsigned char *md);
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
