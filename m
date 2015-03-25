Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yajva-0008Vs-Ua
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:56:57 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9FDDA103C035
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:15 +0100
Message-Id: <1427284580-30218-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150325115140.GD8125@ns203013.ovh.net>
 <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/9] crypto: hmac: move register to hmac
To: barebox@lists.infradead.org

As we will use the best sha algo at runtime

Add a new init level crypto_initcall to ensure that all the sha present
before hmac

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/hmac.c                     | 48 +++++++++++++++++++++++++++------------
 crypto/md5.c                      |  8 +------
 crypto/sha1.c                     |  8 +------
 crypto/sha2.c                     | 16 ++-----------
 crypto/sha4.c                     | 16 ++-----------
 include/asm-generic/barebox.lds.h |  3 ++-
 include/crypto/internal.h         | 10 --------
 include/init.h                    |  3 ++-
 8 files changed, 43 insertions(+), 69 deletions(-)

diff --git a/crypto/hmac.c b/crypto/hmac.c
index 77814a1..20af2a5 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <digest.h>
 #include <malloc.h>
+#include <init.h>
 #include <crypto/internal.h>
 
 struct digest_hmac {
@@ -39,6 +40,8 @@ static int digest_hmac_alloc(struct digest *d)
 	if (!dh->d)
 		return -EINVAL;
 
+	d->length = dh->d->algo->length;
+
 	dh->ipad = xmalloc(hmac->pad_length);
 	dh->opad = xmalloc(hmac->pad_length);
 
@@ -148,34 +151,49 @@ struct digest_algo hmac_algo = {
 		.priority	= 0,
 		.flags		= DIGEST_ALGO_NEED_KEY,
 	},
-	.alloc = digest_hmac_alloc,
-	.init = digest_hmac_init,
-	.update = digest_hmac_update,
-	.final = digest_hmac_final,
-	.digest = digest_generic_digest,
-	.verify = digest_generic_verify,
-	.set_key = digest_hmac_set_key,
-	.free = digest_hmac_free,
-	.ctx_length = sizeof(struct digest_hmac),
+	.alloc		= digest_hmac_alloc,
+	.init		= digest_hmac_init,
+	.update		= digest_hmac_update,
+	.final		= digest_hmac_final,
+	.digest		= digest_generic_digest,
+	.verify		= digest_generic_verify,
+	.set_key	= digest_hmac_set_key,
+	.free		= digest_hmac_free,
+	.ctx_length	= sizeof(struct digest_hmac),
 };
 
-int digest_hmac_register(struct digest_algo *algo, unsigned int pad_length)
+static int digest_hmac_register(char *name, unsigned int pad_length)
 {
 	struct digest_hmac *dh;
-	char *name;
 
-	if (!algo || !pad_length)
+	if (!name || !pad_length)
 		return -EINVAL;
 
-	name = algo->base.name;
 	dh = xzalloc(sizeof(*dh));
 	dh->name = xstrdup(name);
 	dh->pad_length = pad_length;
 	dh->algo = hmac_algo;
-	dh->algo.length = algo->length;
 	dh->algo.base.name = asprintf("hmac(%s)", name);
 	dh->algo.base.driver_name = asprintf("hmac(%s)-generic", name);
-	dh->algo.base.priority = algo->base.priority;
 
 	return digest_algo_register(&dh->algo);
 }
+
+static int digest_hmac_initcall(void)
+{
+	if (IS_ENABLED(CONFIG_MD5))
+		digest_hmac_register("md5", 64);
+	if (IS_ENABLED(CONFIG_SHA1))
+		digest_hmac_register("sha1", 64);
+	if (IS_ENABLED(CONFIG_SHA224))
+		digest_hmac_register("sha224", 64);
+	if (IS_ENABLED(CONFIG_SHA256))
+		digest_hmac_register("sha256", 64);
+	if (IS_ENABLED(CONFIG_SHA384))
+		digest_hmac_register("sha384", 128);
+	if (IS_ENABLED(CONFIG_SHA512))
+		digest_hmac_register("sha512", 128);
+
+	return 0;
+}
+crypto_initcall(digest_hmac_initcall);
diff --git a/crypto/md5.c b/crypto/md5.c
index 74c9b70..23892ba 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -305,12 +305,6 @@ static struct digest_algo md5 = {
 
 static int md5_digest_register(void)
 {
-	int ret;
-
-	ret = digest_algo_register(&md5);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&md5, 64);
+	return digest_algo_register(&md5);
 }
 device_initcall(md5_digest_register);
diff --git a/crypto/sha1.c b/crypto/sha1.c
index a2ca191..94d56c3 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -328,12 +328,6 @@ static struct digest_algo m = {
 
 static int sha1_digest_register(void)
 {
-	int ret;
-
-	ret = digest_algo_register(&m);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m, 64);
+	return digest_algo_register(&m);
 }
 device_initcall(sha1_digest_register);
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 42c40da..f7b8beb 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -315,16 +315,10 @@ static struct digest_algo m224 = {
 
 static int sha224_digest_register(void)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_SHA224))
 		return 0;
 
-	ret = digest_algo_register(&m224);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m224, 64);
+	return digest_algo_register(&m224);
 }
 device_initcall(sha224_digest_register);
 
@@ -353,15 +347,9 @@ static struct digest_algo m256 = {
 
 static int sha256_digest_register(void)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_SHA256))
 		return 0;
 
-	ret = digest_algo_register(&m256);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m256, 64);
+	return digest_algo_register(&m256);
 }
 device_initcall(sha256_digest_register);
diff --git a/crypto/sha4.c b/crypto/sha4.c
index cb62d1d..3f8fa0d 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -321,16 +321,10 @@ static struct digest_algo m384 = {
 
 static int sha384_digest_register(void)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_SHA384))
 		return 0;
 
-	ret = digest_algo_register(&m384);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m384, 128);
+	return digest_algo_register(&m384);
 }
 device_initcall(sha384_digest_register);
 
@@ -359,15 +353,9 @@ static struct digest_algo m512 = {
 
 static int sha512_digest_register(void)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_SHA512))
 		return 0;
 
-	ret = digest_algo_register(&m512);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m512, 128);
+	return digest_algo_register(&m512);
 }
 device_initcall(sha512_digest_register);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 66abff3..e359187 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -33,7 +33,8 @@
 	KEEP(*(.initcall.8))			\
 	KEEP(*(.initcall.9))			\
 	KEEP(*(.initcall.10))			\
-	KEEP(*(.initcall.11))
+	KEEP(*(.initcall.11))			\
+	KEEP(*(.initcall.12))
 
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
diff --git a/include/crypto/internal.h b/include/crypto/internal.h
index c6f5908..0987ccc 100644
--- a/include/crypto/internal.h
+++ b/include/crypto/internal.h
@@ -4,16 +4,6 @@
  * GPL v2 only
  */
 
-#ifdef CONFIG_DIGEST_HMAC
-int digest_hmac_register(struct digest_algo *algo, unsigned int pad_length);
-#else
-static inline int digest_hmac_register(struct digest_algo *algo,
-				       unsigned int pad_length)
-{
-	return 0;
-}
-#endif
-
 int digest_generic_verify(struct digest *d, const unsigned char *md);
 int digest_generic_digest(struct digest *d, const void *data,
 			  unsigned int len, u8 *out);
diff --git a/include/init.h b/include/init.h
index 40cea55..37c7eed 100644
--- a/include/init.h
+++ b/include/init.h
@@ -37,7 +37,8 @@ typedef int (*initcall_t)(void);
 #define coredevice_initcall(fn)		__define_initcall("8",fn,8)
 #define fs_initcall(fn)			__define_initcall("9",fn,9)
 #define device_initcall(fn)		__define_initcall("10",fn,10)
-#define late_initcall(fn)		__define_initcall("11",fn,11)
+#define crypto_initcall(fn)		__define_initcall("11",fn,11)
+#define late_initcall(fn)		__define_initcall("12",fn,12)
 
 /* section for code used very early when
  * - we're not running from where we linked at
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
