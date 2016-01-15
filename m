Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5zB-00039h-6o
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:08:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:07:15 +0100
Message-Id: <1452870438-29656-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] crypto: add digest_alloc_by_algo()
To: Barebox List <barebox@lists.infradead.org>

In barebox the function digest_alloc() allocates a digest based on a string.
When a subsystem already uses an integer value to identify a digest it makes no
sense to create a string and pass it to digest_alloc(), where it is parsed
again. This patch adds the possibility to get a digest by an enum.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/crypto/sha1_glue.c   |  1 +
 arch/arm/crypto/sha256_glue.c |  2 ++
 crypto/digest.c               | 43 ++++++++++++++++++++++++++++++++++++++++++-
 crypto/md5.c                  |  1 +
 crypto/sha1.c                 |  1 +
 crypto/sha2.c                 |  2 ++
 crypto/sha4.c                 |  2 ++
 include/digest.h              | 23 +++++++++++++++++++++++
 8 files changed, 74 insertions(+), 1 deletion(-)

diff --git a/arch/arm/crypto/sha1_glue.c b/arch/arm/crypto/sha1_glue.c
index 176aa9e..57cd9d1 100644
--- a/arch/arm/crypto/sha1_glue.c
+++ b/arch/arm/crypto/sha1_glue.c
@@ -119,6 +119,7 @@ static struct digest_algo m = {
 		.name		=	"sha1",
 		.driver_name	=	"sha1-asm",
 		.priority	=	150,
+		.algo		=	HASH_ALGO_SHA1,
 	},
 
 	.init	=	sha1_init,
diff --git a/arch/arm/crypto/sha256_glue.c b/arch/arm/crypto/sha256_glue.c
index f8086f6..e649609 100644
--- a/arch/arm/crypto/sha256_glue.c
+++ b/arch/arm/crypto/sha256_glue.c
@@ -173,6 +173,7 @@ static struct digest_algo sha224 = {
 		.name		=	"sha224",
 		.driver_name 	=	"sha224-asm",
 		.priority	=	150,
+		.algo		=	HASH_ALGO_SHA224,
 	},
 
 	.length	=	SHA224_DIGEST_SIZE,
@@ -195,6 +196,7 @@ static struct digest_algo sha256 = {
 		.name		=	"sha256",
 		.driver_name 	=	"sha256-asm",
 		.priority	=	150,
+		.algo		=	HASH_ALGO_SHA256,
 	},
 
 	.length	=	SHA256_DIGEST_SIZE,
diff --git a/crypto/digest.c b/crypto/digest.c
index a90e4ff..46600f2 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -116,7 +116,27 @@ static struct digest_algo *digest_algo_get_by_name(const char *name)
 	list_for_each_entry(tmp, &digests, list) {
 		if (strcmp(tmp->base.name, name) != 0)
 			continue;
-		
+
+		if (tmp->base.priority <= priority)
+			continue;
+
+		d = tmp;
+		priority = tmp->base.priority;
+	}
+
+	return d;
+}
+
+static struct digest_algo *digest_algo_get_by_algo(enum hash_algo algo)
+{
+	struct digest_algo *d = NULL;
+	struct digest_algo *tmp;
+	int priority = -1;
+
+	list_for_each_entry(tmp, &digests, list) {
+		if (tmp->base.algo != algo)
+			continue;
+
 		if (tmp->base.priority <= priority)
 			continue;
 
@@ -160,6 +180,27 @@ struct digest *digest_alloc(const char *name)
 }
 EXPORT_SYMBOL_GPL(digest_alloc);
 
+struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
+{
+	struct digest *d;
+	struct digest_algo *algo;
+
+	algo = digest_algo_get_by_algo(hash_algo);
+	if (!algo)
+		return NULL;
+
+	d = xzalloc(sizeof(*d));
+	d->algo = algo;
+	d->ctx = xzalloc(algo->ctx_length);
+	if (d->algo->alloc(d)) {
+		digest_free(d);
+		return NULL;
+	}
+
+	return d;
+}
+EXPORT_SYMBOL_GPL(digest_alloc_by_algo);
+
 void digest_free(struct digest *d)
 {
 	if (!d)
diff --git a/crypto/md5.c b/crypto/md5.c
index 23892ba..f8f52bf 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -293,6 +293,7 @@ static struct digest_algo md5 = {
 		.name		= "md5",
 		.driver_name	= "md5-generic",
 		.priority	= 0,
+		.algo		= HASH_ALGO_MD5,
 	},
 	.init = digest_md5_init,
 	.update = digest_md5_update,
diff --git a/crypto/sha1.c b/crypto/sha1.c
index a3de271..cbde4d2 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -287,6 +287,7 @@ static struct digest_algo m = {
 		.name		=	"sha1",
 		.driver_name	=	"sha1-generic",
 		.priority	=	0,
+		.algo		=	HASH_ALGO_SHA1,
 	},
 
 	.init		= sha1_init,
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 6ac5527..df566c8 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -327,6 +327,7 @@ static struct digest_algo m224 = {
 		.name		=	"sha224",
 		.driver_name	=	"sha224-generic",
 		.priority	=	0,
+		.algo		=	HASH_ALGO_SHA224,
 	},
 
 	.init		= sha224_init,
@@ -352,6 +353,7 @@ static struct digest_algo m256 = {
 		.name		=	"sha256",
 		.driver_name	=	"sha256-generic",
 		.priority	=	0,
+		.algo		=	HASH_ALGO_SHA256,
 	},
 
 	.init		= sha256_init,
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 187a91e..4ce37b7 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -246,6 +246,7 @@ static struct digest_algo m384 = {
 		.name		=	"sha384",
 		.driver_name	=	"sha384-generic",
 		.priority	=	0,
+		.algo		=	HASH_ALGO_SHA384,
 	},
 
 	.init		= sha384_init,
@@ -272,6 +273,7 @@ static struct digest_algo m512 = {
 		.name		=	"sha512",
 		.driver_name	=	"sha512-generic",
 		.priority	=	0,
+		.algo		=	HASH_ALGO_SHA512,
 	},
 
 	.init		= sha512_init,
diff --git a/include/digest.h b/include/digest.h
index 3a9d305..fe30cc2 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -23,12 +23,34 @@
 
 struct digest;
 
+enum hash_algo {
+	HASH_ALGO_MD4,
+	HASH_ALGO_MD5,
+	HASH_ALGO_SHA1,
+	HASH_ALGO_RIPE_MD_160,
+	HASH_ALGO_SHA224,
+	HASH_ALGO_SHA256,
+	HASH_ALGO_SHA384,
+	HASH_ALGO_SHA512,
+	HASH_ALGO_RIPE_MD_128,
+	HASH_ALGO_RIPE_MD_256,
+	HASH_ALGO_RIPE_MD_320,
+	HASH_ALGO_WP_256,
+	HASH_ALGO_WP_384,
+	HASH_ALGO_WP_512,
+	HASH_ALGO_TGR_128,
+	HASH_ALGO_TGR_160,
+	HASH_ALGO_TGR_192,
+	HASH_ALGO__LAST
+};
+
 struct crypto_alg {
 	char *name;
 	char *driver_name;
 	int priority;
 #define DIGEST_ALGO_NEED_KEY	(1 << 0)
 	unsigned int flags;
+	enum hash_algo algo;
 };
 
 struct digest_algo {
@@ -65,6 +87,7 @@ void digest_algo_unregister(struct digest_algo *d);
 void digest_algo_prints(const char *prefix);
 
 struct digest *digest_alloc(const char *name);
+struct digest *digest_alloc_by_algo(enum hash_algo);
 void digest_free(struct digest *d);
 
 int digest_file_window(struct digest *d, const char *filename,
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
