Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo69.mail-out.ovh.net ([46.105.73.241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVL9M-0001Oo-Uq
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:28:54 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 026F8FF8D73
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:28:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Mar 2015 15:28:12 +0100
Message-Id: <1425997697-27467-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] digest: make it multi-instance
To: barebox@lists.infradead.org

Now you need to call digest_alloc and when you finish to use it digest_free.

We need this for upcomming aes encryption support and secure boot
as we will need multiple instance of the same digest.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c |  3 ++-
 common/digest.c   | 50 ++++++++++++++++++++++++++++++++++++++++----------
 common/password.c |  5 +++--
 crypto/md5.c      | 34 +++++++++++-----------------------
 crypto/sha1.c     | 34 +++++++++++-----------------------
 crypto/sha2.c     | 55 ++++++++++++++++++++-----------------------------------
 include/digest.h  | 26 +++++++++++++++++---------
 7 files changed, 104 insertions(+), 103 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index bad7d3f..c6a2751 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -33,7 +33,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	int i;
 	unsigned char *hash;
 
-	d = digest_get_by_name(algorithm);
+	d = digest_alloc(algorithm);
 	BUG_ON(!d);
 
 	if (argc < 2)
@@ -71,6 +71,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	}
 
 	free(hash);
+	digest_free(d);
 
 	return ret;
 }
diff --git a/common/digest.c b/common/digest.c
index 789c0b2..89af862 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -28,12 +28,14 @@
 
 static LIST_HEAD(digests);
 
+static struct digest_algo* digest_algo_get_by_name(char* name);
+
 static int dummy_init(struct digest *d)
 {
 	return 0;
 }
 
-int digest_register(struct digest *d)
+int digest_algo_register(struct digest_algo *d)
 {
 	if (!d || !d->name || !d->update || !d->final || d->length < 1)
 		return -EINVAL;
@@ -41,27 +43,27 @@ int digest_register(struct digest *d)
 	if (!d->init)
 		d->init = dummy_init;
 
-	if (digest_get_by_name(d->name))
+	if (digest_algo_get_by_name(d->name))
 		return -EEXIST;
 
 	list_add_tail(&d->list, &digests);
 
 	return 0;
 }
-EXPORT_SYMBOL(digest_register);
+EXPORT_SYMBOL(digest_algo_register);
 
-void digest_unregister(struct digest *d)
+void digest_algo_unregister(struct digest_algo *d)
 {
 	if (!d)
 		return;
 
 	list_del(&d->list);
 }
-EXPORT_SYMBOL(digest_unregister);
+EXPORT_SYMBOL(digest_algo_unregister);
 
-struct digest* digest_get_by_name(char* name)
+static struct digest_algo* digest_algo_get_by_name(char* name)
 {
-	struct digest* d;
+	struct digest_algo* d;
 
 	if (!name)
 		return NULL;
@@ -73,7 +75,32 @@ struct digest* digest_get_by_name(char* name)
 
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(digest_get_by_name);
+
+struct digest* digest_alloc(char* name)
+{
+	struct digest* d;
+	struct digest_algo* algo;
+
+	algo = digest_algo_get_by_name(name);
+	if (!algo)
+		return NULL;
+
+	d = xzalloc(sizeof(*d));
+	d->algo = algo;
+	d->ctx = xzalloc(algo->ctx_length);
+
+	return d;
+}
+EXPORT_SYMBOL_GPL(digest_alloc);
+
+void digest_free(struct digest *d)
+{
+	if (!d)
+		return;
+	free(d->ctx);
+	free(d);
+}
+EXPORT_SYMBOL_GPL(digest_free);
 
 int digest_file_window(struct digest *d, char *filename,
 		       unsigned char *hash,
@@ -164,11 +191,14 @@ int digest_file_by_name(char *algo, char *filename,
 		       unsigned char *hash)
 {
 	struct digest *d;
+	int ret;
 
-	d = digest_get_by_name(algo);
+	d = digest_alloc(algo);
 	if (!d)
 		return -EIO;
 
-	return digest_file(d, filename, hash);
+	ret = digest_file(d, filename, hash);
+	digest_free(d);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(digest_file_by_name);
diff --git a/common/password.c b/common/password.c
index 1606109..4c33152 100644
--- a/common/password.c
+++ b/common/password.c
@@ -280,7 +280,7 @@ static int __check_passwd(unsigned char* passwd, size_t length, int std)
 	unsigned char *passwd2_sum;
 	int ret = 0;
 
-	d = digest_get_by_name(PASSWD_SUM);
+	d = digest_alloc(PASSWD_SUM);
 
 	passwd1_sum = calloc(digest_length(d), sizeof(unsigned char));
 
@@ -315,6 +315,7 @@ err2:
 	free(passwd2_sum);
 err1:
 	free(passwd1_sum);
+	digest_free(d);
 
 	return ret;
 }
@@ -347,7 +348,7 @@ int set_env_passwd(unsigned char* passwd, size_t length)
 	unsigned char *passwd_sum;
 	int ret;
 
-	d = digest_get_by_name(PASSWD_SUM);
+	d = digest_alloc(PASSWD_SUM);
 
 	passwd_sum = calloc(digest_length(d), sizeof(unsigned char));
 
diff --git a/crypto/md5.c b/crypto/md5.c
index 6c4ca1d..f70dd62 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -265,16 +265,9 @@ MD5Transform(__u32 buf[4], __u32 const in[16])
 	buf[3] += d;
 }
 
-struct md5 {
-	struct MD5Context context;
-	struct digest d;
-};
-
 static int digest_md5_init(struct digest *d)
 {
-	struct md5 *m = container_of(d, struct md5, d);
-
-	MD5Init(&m->context);
+	MD5Init(d->ctx);
 
 	return 0;
 }
@@ -282,35 +275,30 @@ static int digest_md5_init(struct digest *d)
 static int digest_md5_update(struct digest *d, const void *data,
 			     unsigned long len)
 {
-	struct md5 *m = container_of(d, struct md5, d);
-
-	MD5Update(&m->context, data, len);
+	MD5Update(d->ctx, data, len);
 
 	return 0;
 }
 
 static int digest_md5_final(struct digest *d, unsigned char *md)
 {
-	struct md5 *m = container_of(d, struct md5, d);
-
-	MD5Final(md, &m->context);
+	MD5Final(md, d->ctx);
 
 	return 0;
 }
 
-static struct md5 m = {
-	.d = {
-		.name = "md5",
-		.init = digest_md5_init,
-		.update = digest_md5_update,
-		.final = digest_md5_final,
-		.length = 16,
-	}
+static struct digest_algo md5 = {
+	.name = "md5",
+	.init = digest_md5_init,
+	.update = digest_md5_update,
+	.final = digest_md5_final,
+	.length = 16,
+	.ctx_length = sizeof(struct MD5Context),
 };
 
 static int md5_digest_register(void)
 {
-	digest_register(&m.d);
+	digest_algo_register(&md5);
 
 	return 0;
 }
diff --git a/crypto/sha1.c b/crypto/sha1.c
index 58d14a8..b6f4cbb 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -286,16 +286,9 @@ static void sha1_finish (sha1_context * ctx, uint8_t output[20])
 	PUT_UINT32_BE (ctx->state[4], output, 16);
 }
 
-struct sha1 {
-	sha1_context context;
-	struct digest d;
-};
-
 static int digest_sha1_init(struct digest *d)
 {
-	struct sha1 *m = container_of(d, struct sha1, d);
-
-	sha1_starts(&m->context);
+	sha1_starts(d->ctx);
 
 	return 0;
 }
@@ -303,35 +296,30 @@ static int digest_sha1_init(struct digest *d)
 static int digest_sha1_update(struct digest *d, const void *data,
 			     unsigned long len)
 {
-	struct sha1 *m = container_of(d, struct sha1, d);
-
-	sha1_update(&m->context, (uint8_t*)data, len);
+	sha1_update(d->ctx, (uint8_t*)data, len);
 
 	return 0;
 }
 
 static int digest_sha1_final(struct digest *d, unsigned char *md)
 {
-	struct sha1 *m = container_of(d, struct sha1, d);
-
-	sha1_finish(&m->context, md);
+	sha1_finish(d->ctx, md);
 
 	return 0;
 }
 
-static struct sha1 m = {
-	.d = {
-		.name = "sha1",
-		.init = digest_sha1_init,
-		.update = digest_sha1_update,
-		.final = digest_sha1_final,
-		.length = SHA1_SUM_LEN,
-	}
+static struct digest_algo m = {
+	.name = "sha1",
+	.init = digest_sha1_init,
+	.update = digest_sha1_update,
+	.final = digest_sha1_final,
+	.length = SHA1_SUM_LEN,
+	.ctx_length = sizeof(sha1_context),
 };
 
 static int sha1_digest_register(void)
 {
-	digest_register(&m.d);
+	digest_algo_register(&m);
 
 	return 0;
 }
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 00a1af3..cc6b167 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -275,26 +275,17 @@ static void sha2_finish(sha2_context * ctx, uint8_t digest[32])
 		PUT_UINT32_BE(ctx->state[7], digest, 28);
 }
 
-struct sha2 {
-	sha2_context context;
-	struct digest d;
-};
-
 static int digest_sha2_update(struct digest *d, const void *data,
 				unsigned long len)
 {
-	struct sha2 *m = container_of(d, struct sha2, d);
-
-	sha2_update(&m->context, (uint8_t *)data, len);
+	sha2_update(d->ctx, (uint8_t *)data, len);
 
 	return 0;
 }
 
 static int digest_sha2_final(struct digest *d, unsigned char *md)
 {
-	struct sha2 *m = container_of(d, struct sha2, d);
-
-	sha2_finish(&m->context, md);
+	sha2_finish(d->ctx, md);
 
 	return 0;
 }
@@ -302,52 +293,46 @@ static int digest_sha2_final(struct digest *d, unsigned char *md)
 #ifdef CONFIG_SHA224
 static int digest_sha224_init(struct digest *d)
 {
-	struct sha2 *m = container_of(d, struct sha2, d);
-
-	sha2_starts(&m->context, 1);
+	sha2_starts(d->ctx, 1);
 
 	return 0;
 }
 
-static struct sha2 m224 = {
-	.d = {
-		.name = "sha224",
-		.init = digest_sha224_init,
-		.update = digest_sha2_update,
-		.final = digest_sha2_final,
-		.length = SHA224_SUM_LEN,
-	}
+static struct digest_algo m224 = {
+	.name = "sha224",
+	.init = digest_sha224_init,
+	.update = digest_sha2_update,
+	.final = digest_sha2_final,
+	.length = SHA224_SUM_LEN,
+	.ctx_length = sizeof(sha2_context),
 };
 #endif
 
 #ifdef CONFIG_SHA256
 static int digest_sha256_init(struct digest *d)
 {
-	struct sha2 *m = container_of(d, struct sha2, d);
-
-	sha2_starts(&m->context, 0);
+	sha2_starts(d->ctx, 0);
 
 	return 0;
 }
 
-static struct sha2 m256 = {
-	.d = {
-		.name = "sha256",
-		.init = digest_sha256_init,
-		.update = digest_sha2_update,
-		.final = digest_sha2_final,
-		.length = SHA256_SUM_LEN,
-	}
+static struct digest_algo m256 = {
+	.name = "sha256",
+	.init = digest_sha256_init,
+	.update = digest_sha2_update,
+	.final = digest_sha2_final,
+	.length = SHA256_SUM_LEN,
+	.ctx_length = sizeof(sha2_context),
 };
 #endif
 
 static int sha2_digest_register(void)
 {
 #ifdef CONFIG_SHA224
-	digest_register(&m224.d);
+	digest_algo_register(&m224);
 #endif
 #ifdef CONFIG_SHA256
-	digest_register(&m256.d);
+	digest_algo_register(&m256);
 #endif
 
 	return 0;
diff --git a/include/digest.h b/include/digest.h
index b9f1bff..b8c6898 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -21,8 +21,9 @@
 
 #include <linux/list.h>
 
-struct digest
-{
+struct digest;
+
+struct digest_algo {
 	char *name;
 
 	int (*init)(struct digest *d);
@@ -30,17 +31,24 @@ struct digest
 	int (*final)(struct digest *d, unsigned char *md);
 
 	unsigned int length;
+	unsigned int ctx_length;
 
 	struct list_head list;
 };
 
+struct digest {
+	struct digest_algo *algo;
+	void *ctx;
+};
+
 /*
  * digest functions
  */
-int digest_register(struct digest *d);
-void digest_unregister(struct digest *d);
+int digest_algo_register(struct digest_algo *d);
+void digest_algo_unregister(struct digest_algo *d);
 
-struct digest* digest_get_by_name(char* name);
+struct digest* digest_alloc(char* name);
+void digest_free(struct digest *d);
 
 int digest_file_window(struct digest *d, char *filename,
 		       unsigned char *hash,
@@ -52,23 +60,23 @@ int digest_file_by_name(char *algo, char *filename,
 
 static inline void digest_init(struct digest *d)
 {
-	d->init(d);
+	d->algo->init(d);
 }
 
 static inline void digest_update(struct digest *d, const void *data,
 				      unsigned long len)
 {
-	d->update(d, data, len);
+	d->algo->update(d, data, len);
 }
 
 static inline void digest_final(struct digest *d, unsigned char *md)
 {
-	d->final(d, md);
+	d->algo->final(d, md);
 }
 
 static inline int digest_length(struct digest *d)
 {
-	return d->length;
+	return d->algo->length;
 }
 
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
