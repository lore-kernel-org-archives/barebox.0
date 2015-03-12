Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVxNP-0003U3-Vp
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 07:17:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2015 08:17:28 +0100
Message-Id: <1426144649-15803-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] crypto: digest: Make string arguments const
To: Barebox List <barebox@lists.infradead.org>

Most string arguments for keys and filenames can be const. Change
that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/digest.c  | 18 +++++++++---------
 include/digest.h | 19 ++++++++++---------
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 2f2039c..922d9d0 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -28,7 +28,7 @@
 
 static LIST_HEAD(digests);
 
-static struct digest_algo* digest_algo_get_by_name(char* name);
+static struct digest_algo* digest_algo_get_by_name(const char *name);
 
 static int dummy_init(struct digest *d)
 {
@@ -69,7 +69,7 @@ void digest_algo_unregister(struct digest_algo *d)
 }
 EXPORT_SYMBOL(digest_algo_unregister);
 
-static struct digest_algo *digest_algo_get_by_name(char* name)
+static struct digest_algo *digest_algo_get_by_name(const char *name)
 {
 	struct digest_algo* d;
 
@@ -84,7 +84,7 @@ static struct digest_algo *digest_algo_get_by_name(char* name)
 	return NULL;
 }
 
-struct digest *digest_alloc(char* name)
+struct digest *digest_alloc(const char *name)
 {
 	struct digest* d;
 	struct digest_algo* algo;
@@ -115,8 +115,8 @@ void digest_free(struct digest *d)
 }
 EXPORT_SYMBOL_GPL(digest_free);
 
-int digest_file_window(struct digest *d, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file_window(struct digest *d, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size)
 {
@@ -189,8 +189,8 @@ out:
 }
 EXPORT_SYMBOL_GPL(digest_file_window);
 
-int digest_file(struct digest *d, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file(struct digest *d, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct stat st;
@@ -205,8 +205,8 @@ int digest_file(struct digest *d, char *filename,
 }
 EXPORT_SYMBOL_GPL(digest_file);
 
-int digest_file_by_name(char *algo, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file_by_name(const char *algo, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct digest *d;
diff --git a/include/digest.h b/include/digest.h
index fd47a7e..b890a7a 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -31,7 +31,7 @@ struct digest_algo {
 	int (*init)(struct digest *d);
 	int (*update)(struct digest *d, const void *data, unsigned long len);
 	int (*final)(struct digest *d, unsigned char *md);
-	int (*set_key)(struct digest *d, unsigned char *key, unsigned int len);
+	int (*set_key)(struct digest *d, const unsigned char *key, unsigned int len);
 
 	unsigned int length;
 	unsigned int ctx_length;
@@ -50,18 +50,18 @@ struct digest {
 int digest_algo_register(struct digest_algo *d);
 void digest_algo_unregister(struct digest_algo *d);
 
-struct digest *digest_alloc(char* name);
+struct digest *digest_alloc(const char *name);
 void digest_free(struct digest *d);
 
-int digest_file_window(struct digest *d, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file_window(struct digest *d, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size);
-int digest_file(struct digest *d, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file(struct digest *d, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash);
-int digest_file_by_name(char *algo, char *filename,
-		       unsigned char *key, size_t keylen,
+int digest_file_by_name(const char *algo, const char *filename,
+		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash);
 
 static inline int digest_init(struct digest *d)
@@ -85,7 +85,8 @@ static inline int digest_length(struct digest *d)
 	return d->algo->length;
 }
 
-static inline int digest_set_key(struct digest *d, unsigned char *key, unsigned int len)
+static inline int digest_set_key(struct digest *d, const unsigned char *key,
+		unsigned int len)
 {
 	if (!d->algo->set_key)
 		return -ENOTSUPP;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
