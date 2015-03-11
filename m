Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo6.mail-out.ovh.net ([87.98.171.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVjt6-0004xT-W7
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 16:53:43 +0000
Received: from mail617.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id E4116FFA095
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 17:53:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 17:53:08 +0100
Message-Id: <1426092789-7708-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150311165009.GP30554@ns203013.ovh.net>
 <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] digest: add HMAC support for md5, sha1, sha224, sha256,
 sha384, sha512
To: barebox@lists.infradead.org

the hmac algo will be registered as hmac(%s) such as hmac(sha256)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/Kconfig    |   3 ++
 crypto/Makefile   |   1 +
 crypto/hmac.c     | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/internal.h |  15 ++++++
 crypto/md5.c      |  10 +++-
 crypto/sha1.c     |  10 +++-
 crypto/sha2.c     |  41 ++++++++++-----
 crypto/sha4.c     |  35 ++++++++++---
 include/digest.h  |   8 +++
 9 files changed, 251 insertions(+), 24 deletions(-)
 create mode 100644 crypto/hmac.c
 create mode 100644 crypto/internal.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 3b78a14..e72b91e 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -30,4 +30,7 @@ config SHA384
 config SHA512
 	bool "SHA512"
 
+config DIGEST_HMAC
+	bool "HMAC"
+
 endif
diff --git a/crypto/Makefile b/crypto/Makefile
index aef8733..ff5c289 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_DIGEST)	+= digest.o
+obj-$(CONFIG_DIGEST_HMAC)	+= hmac.o
 obj-$(CONFIG_MD5)	+= md5.o
 obj-$(CONFIG_SHA1)	+= sha1.o
 obj-$(CONFIG_SHA224)	+= sha2.o
diff --git a/crypto/hmac.c b/crypto/hmac.c
new file mode 100644
index 0000000..bfcb966
--- /dev/null
+++ b/crypto/hmac.c
@@ -0,0 +1,152 @@
+#include <common.h>
+#include <digest.h>
+#include <malloc.h>
+
+#include "internal.h"
+
+struct digest_hmac {
+	char *name;
+	unsigned int pad_length;
+	struct digest_algo algo;
+};
+
+struct digest_hmac_ctx {
+	struct digest *d;
+
+	unsigned char *ipad;
+	unsigned char *opad;
+
+	unsigned char *key;
+	unsigned int keylen;
+};
+
+static inline struct digest_hmac * to_digest_hmac(struct digest_algo *algo)
+{
+	return container_of(algo, struct digest_hmac, algo);
+}
+
+static int digest_hmac_alloc(struct digest *d)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+	struct digest_hmac *hmac = to_digest_hmac(d->algo);
+
+	dh->d = digest_alloc(hmac->name);
+	if (!dh->d)
+		return -EINVAL;
+
+	dh->ipad = xmalloc(sizeof(unsigned char) * hmac->pad_length);
+	dh->opad = xmalloc(sizeof(unsigned char) * hmac->pad_length);
+	
+	return 0;
+}
+
+static void digest_hmac_free(struct digest *d)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+
+	free(dh->ipad);
+	free(dh->opad);
+	free(dh->key);
+
+	digest_free(dh->d);
+}
+
+static int digest_hmac_set_key(struct digest *d, unsigned char *key, unsigned int len)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+	struct digest_hmac *hmac = to_digest_hmac(d->algo);
+
+	free(dh->key);
+	if (len > hmac->pad_length) {
+		unsigned char *sum;
+
+		sum = xmalloc(sizeof(unsigned char) * digest_length(dh->d));
+		digest_init(dh->d);
+		digest_update(dh->d, dh->key, dh->keylen);
+		digest_final(dh->d, sum);
+		dh->keylen = digest_length(dh->d);
+		dh->key = sum;
+	} else {
+		dh->key = xmalloc(len);
+		memcpy(dh->key, key, len);
+		dh->keylen = len;
+	}
+
+	return 0;
+}
+
+static int digest_hmac_init(struct digest *d)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+	struct digest_hmac *hmac = to_digest_hmac(d->algo);
+	int i;
+	unsigned char *key = dh->key;
+	unsigned int keylen = dh->keylen;
+
+	memset(dh->ipad, 0x36, hmac->pad_length);
+	memset(dh->opad, 0x5C, hmac->pad_length);
+
+	for (i = 0; i < keylen; i++) {
+		dh->ipad[i] = (unsigned char)(dh->ipad[i] ^ key[i]);
+		dh->opad[i] = (unsigned char)(dh->opad[i] ^ key[i]);
+	}
+
+	digest_init(dh->d);
+	digest_update(dh->d, dh->ipad, hmac->pad_length);
+
+	return 0;
+}
+
+static int digest_hmac_update(struct digest *d, const void *data,
+			      unsigned long len)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+
+	return digest_update(dh->d, data, len);
+}
+
+static int digest_hmac_final(struct digest *d, unsigned char *md)
+{
+	struct digest_hmac_ctx *dh = d->ctx;
+	struct digest_hmac *hmac = to_digest_hmac(d->algo);
+	unsigned char *tmp = NULL;
+
+	tmp = xmalloc(sizeof(unsigned char) * digest_length(d));
+
+	digest_final(dh->d, tmp);
+	digest_init(dh->d);
+	digest_update(dh->d, dh->opad, hmac->pad_length);
+	digest_update(dh->d, tmp, digest_length(d));
+	digest_final(dh->d, md);
+
+	free(tmp);
+
+	return 0;
+}
+
+struct digest_algo hmac_algo = {
+	.alloc = digest_hmac_alloc,
+	.init = digest_hmac_init,
+	.update = digest_hmac_update,
+	.final = digest_hmac_final,
+	.set_key = digest_hmac_set_key,
+	.free = digest_hmac_free,
+	.ctx_length = sizeof(struct digest_hmac),
+};
+
+int digest_hmac_register(struct digest_algo *algo, unsigned int pad_length)
+{
+	struct digest_hmac *dh;
+
+	if (!algo || !pad_length)
+		return -EINVAL;
+
+	dh = xzalloc(sizeof(*dh));
+	dh->name = xstrdup(algo->name);
+	dh->pad_length = pad_length;
+	dh->algo = hmac_algo;
+	dh->algo.length = algo->length;
+	dh->algo.name = asprintf("hmac(%s)", algo->name);
+
+	return digest_algo_register(&dh->algo);
+}
diff --git a/crypto/internal.h b/crypto/internal.h
new file mode 100644
index 0000000..b6a8df0
--- /dev/null
+++ b/crypto/internal.h
@@ -0,0 +1,15 @@
+/*
+ * (C) Copyright 215 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2 only
+ */
+
+#ifdef CONFIG_DIGEST_HMAC
+int digest_hmac_register(struct digest_algo *algo, unsigned int pad_length);
+#else
+static inline int digest_hmac_register(struct digest_algo *algo,
+				       unsigned int pad_length)
+{
+	return 0;
+}
+#endif
diff --git a/crypto/md5.c b/crypto/md5.c
index f70dd62..fe17ff5 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -29,6 +29,8 @@
 #include <digest.h>
 #include <init.h>
 
+#include "internal.h"
+
 struct MD5Context {
 	__u32 buf[4];
 	__u32 bits[2];
@@ -298,8 +300,12 @@ static struct digest_algo md5 = {
 
 static int md5_digest_register(void)
 {
-	digest_algo_register(&md5);
+	int ret;
 
-	return 0;
+	ret = digest_algo_register(&md5);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&md5, 64);
 }
 device_initcall(md5_digest_register);
diff --git a/crypto/sha1.c b/crypto/sha1.c
index b6f4cbb..766e4ea 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -26,6 +26,8 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
+#include "internal.h"
+
 #define SHA1_SUM_POS	-0x20
 #define SHA1_SUM_LEN	20
 
@@ -319,8 +321,12 @@ static struct digest_algo m = {
 
 static int sha1_digest_register(void)
 {
-	digest_algo_register(&m);
+	int ret;
 
-	return 0;
+	ret = digest_algo_register(&m);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m, 64);
 }
 device_initcall(sha1_digest_register);
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cc6b167..8558030 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -21,6 +21,8 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
+#include "internal.h"
+
 #define SHA224_SUM_LEN	28
 #define SHA256_SUM_LEN	32
 
@@ -290,7 +292,6 @@ static int digest_sha2_final(struct digest *d, unsigned char *md)
 	return 0;
 }
 
-#ifdef CONFIG_SHA224
 static int digest_sha224_init(struct digest *d)
 {
 	sha2_starts(d->ctx, 1);
@@ -306,9 +307,22 @@ static struct digest_algo m224 = {
 	.length = SHA224_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
-#endif
 
-#ifdef CONFIG_SHA256
+static int sha224_digest_register(void)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_SHA224))
+		return 0;
+
+	ret = digest_algo_register(&m224);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m224, 64);
+}
+device_initcall(sha224_digest_register);
+
 static int digest_sha256_init(struct digest *d)
 {
 	sha2_starts(d->ctx, 0);
@@ -324,17 +338,18 @@ static struct digest_algo m256 = {
 	.length = SHA256_SUM_LEN,
 	.ctx_length = sizeof(sha2_context),
 };
-#endif
 
-static int sha2_digest_register(void)
+static int sha256_digest_register(void)
 {
-#ifdef CONFIG_SHA224
-	digest_algo_register(&m224);
-#endif
-#ifdef CONFIG_SHA256
-	digest_algo_register(&m256);
-#endif
+	int ret;
 
-	return 0;
+	if (!IS_ENABLED(CONFIG_SHA256))
+		return 0;
+
+	ret = digest_algo_register(&m256);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m256, 64);
 }
-device_initcall(sha2_digest_register);
+device_initcall(sha256_digest_register);
diff --git a/crypto/sha4.c b/crypto/sha4.c
index c3dcf17..8a56081 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -29,6 +29,8 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
+#include "internal.h"
+
 #define SHA384_SUM_LEN	48
 #define SHA512_SUM_LEN	64
 
@@ -311,6 +313,22 @@ static struct digest_algo m384 = {
 	.ctx_length = sizeof(sha4_context),
 };
 
+
+static int sha384_digest_register(void)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_SHA384))
+		return 0;
+
+	ret = digest_algo_register(&m384);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m384, 128);
+}
+device_initcall(sha384_digest_register);
+
 static int digest_sha512_init(struct digest *d)
 {
 	sha4_starts(d->ctx, 0);
@@ -327,14 +345,17 @@ static struct digest_algo m512 = {
 	.ctx_length = sizeof(sha4_context),
 };
 
-static int sha4_digest_register(void)
+static int sha512_digest_register(void)
 {
-	if IS_ENABLED(CONFIG_SHA384)
-		digest_algo_register(&m384);
+	int ret;
 
-	if IS_ENABLED(CONFIG_SHA512)
-		digest_algo_register(&m512);
+	if (!IS_ENABLED(CONFIG_SHA512))
+		return 0;
 
-	return 0;
+	ret = digest_algo_register(&m512);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m512, 128);
 }
-device_initcall(sha4_digest_register);
+device_initcall(sha512_digest_register);
diff --git a/include/digest.h b/include/digest.h
index 2fd1135..a26848c 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -31,6 +31,7 @@ struct digest_algo {
 	int (*init)(struct digest *d);
 	int (*update)(struct digest *d, const void *data, unsigned long len);
 	int (*final)(struct digest *d, unsigned char *md);
+	int (*set_key)(struct digest *d, unsigned char *key, unsigned int len);
 
 	unsigned int length;
 	unsigned int ctx_length;
@@ -81,4 +82,11 @@ static inline int digest_length(struct digest *d)
 	return d->algo->length;
 }
 
+static inline int digest_set_key(struct digest *d, unsigned char *key, unsigned int len)
+{
+	if (!d->algo->set_key)
+		return -ENOTSUPP;
+	return d->algo->set_key(d, key, len);
+}
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
