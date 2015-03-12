Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVxNP-0003U4-Vp
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 07:17:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2015 08:17:29 +0100
Message-Id: <1426144649-15803-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426144649-15803-1-git-send-email-s.hauer@pengutronix.de>
References: <1426144649-15803-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] crypto: digest: Fix coding style
To: Barebox List <barebox@lists.infradead.org>

When declaring pointer data or a function that returns a pointer type, the
preferred use of '*' is adjacent to the data name or function name and not
adjacent to the type name.

Fix the remaining occurences in crypto/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/digest.c | 8 ++++----
 crypto/hmac.c   | 2 +-
 crypto/sha1.c   | 8 ++++----
 crypto/sha2.c   | 8 ++++----
 crypto/sha4.c   | 8 ++++----
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 922d9d0..c06089d 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -28,7 +28,7 @@
 
 static LIST_HEAD(digests);
 
-static struct digest_algo* digest_algo_get_by_name(const char *name);
+static struct digest_algo *digest_algo_get_by_name(const char *name);
 
 static int dummy_init(struct digest *d)
 {
@@ -71,7 +71,7 @@ EXPORT_SYMBOL(digest_algo_unregister);
 
 static struct digest_algo *digest_algo_get_by_name(const char *name)
 {
-	struct digest_algo* d;
+	struct digest_algo *d;
 
 	if (!name)
 		return NULL;
@@ -86,8 +86,8 @@ static struct digest_algo *digest_algo_get_by_name(const char *name)
 
 struct digest *digest_alloc(const char *name)
 {
-	struct digest* d;
-	struct digest_algo* algo;
+	struct digest *d;
+	struct digest_algo *algo;
 
 	algo = digest_algo_get_by_name(name);
 	if (!algo)
diff --git a/crypto/hmac.c b/crypto/hmac.c
index a996f1e..b04dff1 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -20,7 +20,7 @@ struct digest_hmac_ctx {
 	unsigned int keylen;
 };
 
-static inline struct digest_hmac * to_digest_hmac(struct digest_algo *algo)
+static inline struct digest_hmac *to_digest_hmac(struct digest_algo *algo)
 {
 	return container_of(algo, struct digest_hmac, algo);
 }
diff --git a/crypto/sha1.c b/crypto/sha1.c
index 766e4ea..a244b5d 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -48,7 +48,7 @@ sha1_context;
 /*
  * SHA-1 context setup
  */
-static void sha1_starts (sha1_context * ctx)
+static void sha1_starts (sha1_context *ctx)
 {
 	ctx->total[0] = 0;
 	ctx->total[1] = 0;
@@ -60,7 +60,7 @@ static void sha1_starts (sha1_context * ctx)
 	ctx->state[4] = 0xC3D2E1F0;
 }
 
-static void sha1_process (sha1_context * ctx, uint8_t data[64])
+static void sha1_process (sha1_context *ctx, uint8_t data[64])
 {
 	uint32_t temp, W[16], A, B, C, D, E;
 
@@ -217,7 +217,7 @@ static void sha1_process (sha1_context * ctx, uint8_t data[64])
 /*
  * SHA-1 process buffer
  */
-static void sha1_update (sha1_context * ctx, uint8_t *input, uint32_t ilen)
+static void sha1_update (sha1_context *ctx, uint8_t *input, uint32_t ilen)
 {
 	uint32_t fill, left;
 
@@ -262,7 +262,7 @@ static uint8_t sha1_padding[64] = {
 /*
  * SHA-1 final digest
  */
-static void sha1_finish (sha1_context * ctx, uint8_t output[20])
+static void sha1_finish (sha1_context *ctx, uint8_t output[20])
 {
 	uint32_t last, padn;
 	uint32_t high, low;
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 8558030..cb89c82 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -39,7 +39,7 @@ typedef struct {
 #define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
 #define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
 
-static void sha2_starts(sha2_context * ctx, int is224)
+static void sha2_starts(sha2_context *ctx, int is224)
 {
 	ctx->total[0] = 0;
 	ctx->total[1] = 0;
@@ -74,7 +74,7 @@ static void sha2_starts(sha2_context * ctx, int is224)
 	ctx->is224 = is224;
 }
 
-static void sha2_process(sha2_context * ctx, const uint8_t data[64])
+static void sha2_process(sha2_context *ctx, const uint8_t data[64])
 {
 	uint32_t temp1, temp2;
 	uint32_t W[64];
@@ -205,7 +205,7 @@ static void sha2_process(sha2_context * ctx, const uint8_t data[64])
 	ctx->state[7] += H;
 }
 
-static void sha2_update(sha2_context * ctx, const uint8_t * input, size_t length)
+static void sha2_update(sha2_context *ctx, const uint8_t *input, size_t length)
 {
 	size_t fill;
 	uint32_t left;
@@ -247,7 +247,7 @@ static const uint8_t sha2_padding[64] = {
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
 };
 
-static void sha2_finish(sha2_context * ctx, uint8_t digest[32])
+static void sha2_finish(sha2_context *ctx, uint8_t digest[32])
 {
 	uint32_t last, padn;
 	uint32_t high, low;
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 8a56081..1c768e7 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -97,7 +97,7 @@ static const uint64_t K[80] = {
 /*
  * SHA-512 context setup
  */
-static void sha4_starts(sha4_context * ctx, int is384)
+static void sha4_starts(sha4_context *ctx, int is384)
 {
 	ctx->total[0] = 0;
 	ctx->total[1] = 0;
@@ -127,7 +127,7 @@ static void sha4_starts(sha4_context * ctx, int is384)
 	ctx->is384 = is384;
 }
 
-static void sha4_process(sha4_context * ctx, unsigned char data[128])
+static void sha4_process(sha4_context *ctx, unsigned char data[128])
 {
 	int i;
 	uint64_t temp1, temp2, W[80];
@@ -202,7 +202,7 @@ static void sha4_process(sha4_context * ctx, unsigned char data[128])
 /*
  * SHA-512 process buffer
  */
-static void sha4_update(sha4_context * ctx, unsigned char *input, int ilen)
+static void sha4_update(sha4_context *ctx, unsigned char *input, int ilen)
 {
 	int fill;
 	uint64_t left;
@@ -250,7 +250,7 @@ static const unsigned char sha4_padding[128] = {
 /*
  * SHA-512 final digest
  */
-static void sha4_finish(sha4_context * ctx, unsigned char output[64])
+static void sha4_finish(sha4_context *ctx, unsigned char output[64])
 {
 	int last, padn;
 	uint64_t high, low;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
