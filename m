Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYTV-0001d3-Rm
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 15:06:08 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 6D91BDCED96
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 17:07:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:41:58 +0200
Message-Id: <1318084919-3984-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] crypto: add sha224 support
To: barebox@lists.infradead.org

the sha224sum is nearly the same as sha256sum except for the init of the
context and the hash length

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/Kconfig              |    3 +
 crypto/Makefile             |    3 +-
 crypto/{sha256.c => sha2.c} |  130 +++++++++++++++++++++++++++++-------------
 3 files changed, 95 insertions(+), 41 deletions(-)
 rename crypto/{sha256.c => sha2.c} (75%)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 9f01810..a391ae6 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -15,6 +15,9 @@ config MD5
 config SHA1
 	bool "SHA1"
 
+config SHA224
+	bool "SHA224"
+
 config SHA256
 	bool "SHA256"
 
diff --git a/crypto/Makefile b/crypto/Makefile
index a88c5b7..955a66d 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -2,4 +2,5 @@ obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_MD5)	+= md5.o
 obj-$(CONFIG_SHA1)	+= sha1.o
-obj-$(CONFIG_SHA256)	+= sha256.o
+obj-$(CONFIG_SHA224)	+= sha2.o
+obj-$(CONFIG_SHA256)	+= sha2.o
diff --git a/crypto/sha256.c b/crypto/sha2.c
similarity index 75%
rename from crypto/sha256.c
rename to crypto/sha2.c
index 975ebe9..17303e6 100644
--- a/crypto/sha256.c
+++ b/crypto/sha2.c
@@ -24,13 +24,15 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
+#define SHA224_SUM_LEN	28
 #define SHA256_SUM_LEN	32
 
 typedef struct {
 	uint32_t total[2];
 	uint32_t state[8];
 	uint8_t buffer[64];
-} sha256_context;
+	int is224;
+} sha2_context;
 
 /*
  * 32-bit integer manipulation macros (big endian)
@@ -38,22 +40,42 @@ typedef struct {
 #define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
 #define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
 
-static void sha256_starts(sha256_context * ctx)
+static void sha2_starts(sha2_context * ctx, int is224)
 {
 	ctx->total[0] = 0;
 	ctx->total[1] = 0;
 
-	ctx->state[0] = 0x6A09E667;
-	ctx->state[1] = 0xBB67AE85;
-	ctx->state[2] = 0x3C6EF372;
-	ctx->state[3] = 0xA54FF53A;
-	ctx->state[4] = 0x510E527F;
-	ctx->state[5] = 0x9B05688C;
-	ctx->state[6] = 0x1F83D9AB;
-	ctx->state[7] = 0x5BE0CD19;
+#ifdef CONFIG_SHA256
+	if (is224 == 0) {
+		/* SHA-256 */
+		ctx->state[0] = 0x6A09E667;
+		ctx->state[1] = 0xBB67AE85;
+		ctx->state[2] = 0x3C6EF372;
+		ctx->state[3] = 0xA54FF53A;
+		ctx->state[4] = 0x510E527F;
+		ctx->state[5] = 0x9B05688C;
+		ctx->state[6] = 0x1F83D9AB;
+		ctx->state[7] = 0x5BE0CD19;
+	}
+#endif
+#ifdef CONFIG_SHA224
+	if (is224 == 1) {
+		/* SHA-224 */
+		ctx->state[0] = 0xC1059ED8;
+		ctx->state[1] = 0x367CD507;
+		ctx->state[2] = 0x3070DD17;
+		ctx->state[3] = 0xF70E5939;
+		ctx->state[4] = 0xFFC00B31;
+		ctx->state[5] = 0x68581511;
+		ctx->state[6] = 0x64F98FA7;
+		ctx->state[7] = 0xBEFA4FA4;
+	}
+#endif
+
+	ctx->is224 = is224;
 }
 
-static void sha256_process(sha256_context * ctx, uint8_t data[64])
+static void sha2_process(sha2_context * ctx, const uint8_t data[64])
 {
 	uint32_t temp1, temp2;
 	uint32_t W[64];
@@ -184,32 +206,33 @@ static void sha256_process(sha256_context * ctx, uint8_t data[64])
 	ctx->state[7] += H;
 }
 
-static void sha256_update(sha256_context * ctx, uint8_t * input, uint32_t length)
+static void sha2_update(sha2_context * ctx, const uint8_t * input, size_t length)
 {
-	uint32_t left, fill;
+	size_t fill;
+	uint32_t left;
 
-	if (!length)
+	if (length <= 0)
 		return;
 
 	left = ctx->total[0] & 0x3F;
 	fill = 64 - left;
 
-	ctx->total[0] += length;
+	ctx->total[0] += (uint32_t)length;
 	ctx->total[0] &= 0xFFFFFFFF;
 
-	if (ctx->total[0] < length)
+	if (ctx->total[0] < (uint32_t)length)
 		ctx->total[1]++;
 
 	if (left && length >= fill) {
 		memcpy((void *) (ctx->buffer + left), (void *) input, fill);
-		sha256_process(ctx, ctx->buffer);
+		sha2_process(ctx, ctx->buffer);
 		length -= fill;
 		input += fill;
 		left = 0;
 	}
 
 	while (length >= 64) {
-		sha256_process(ctx, input);
+		sha2_process(ctx, input);
 		length -= 64;
 		input += 64;
 	}
@@ -218,14 +241,14 @@ static void sha256_update(sha256_context * ctx, uint8_t * input, uint32_t length
 		memcpy((void *) (ctx->buffer + left), (void *) input, length);
 }
 
-static uint8_t sha256_padding[64] = {
+static const uint8_t sha2_padding[64] = {
 	0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
 };
 
-static void sha256_finish(sha256_context * ctx, uint8_t digest[32])
+static void sha2_finish(sha2_context * ctx, uint8_t digest[32])
 {
 	uint32_t last, padn;
 	uint32_t high, low;
@@ -241,8 +264,8 @@ static void sha256_finish(sha256_context * ctx, uint8_t digest[32])
 	last = ctx->total[0] & 0x3F;
 	padn = (last < 56) ? (56 - last) : (120 - last);
 
-	sha256_update(ctx, sha256_padding, padn);
-	sha256_update(ctx, msglen, 8);
+	sha2_update(ctx, sha2_padding, padn);
+	sha2_update(ctx, msglen, 8);
 
 	PUT_UINT32_BE(ctx->state[0], digest, 0);
 	PUT_UINT32_BE(ctx->state[1], digest, 4);
@@ -254,53 +277,80 @@ static void sha256_finish(sha256_context * ctx, uint8_t digest[32])
 	PUT_UINT32_BE(ctx->state[7], digest, 28);
 }
 
-struct sha256 {
-	sha256_context context;
+struct sha2 {
+	sha2_context context;
 	struct digest d;
 };
 
-static int digest_sha256_init(struct digest *d)
+static int digest_sha2_update(struct digest *d, const void *data,
+				unsigned long len)
 {
-	struct sha256 *m = container_of(d, struct sha256, d);
+	struct sha2 *m = container_of(d, struct sha2, d);
 
-	sha256_starts(&m->context);
+	sha2_update(&m->context, (uint8_t *)data, len);
 
 	return 0;
 }
 
-static int digest_sha256_update(struct digest *d, const void *data,
-				unsigned long len)
+static int digest_sha2_final(struct digest *d, unsigned char *md)
 {
-	struct sha256 *m = container_of(d, struct sha256, d);
+	struct sha2 *m = container_of(d, struct sha2, d);
 
-	sha256_update(&m->context, (uint8_t *)data, len);
+	sha2_finish(&m->context, md);
 
 	return 0;
 }
 
-static int digest_sha256_final(struct digest *d, unsigned char *md)
+#ifdef CONFIG_SHA224
+static int digest_sha224_init(struct digest *d)
+{
+	struct sha2 *m = container_of(d, struct sha2, d);
+
+	sha2_starts(&m->context, 1);
+
+	return 0;
+}
+
+static struct sha2 m224 = {
+	.d = {
+		.init = digest_sha224_init,
+		.update = digest_sha2_update,
+		.final = digest_sha2_final,
+		.length = SHA224_SUM_LEN,
+	}
+};
+#endif
+
+#ifdef CONFIG_SHA256
+static int digest_sha256_init(struct digest *d)
 {
-	struct sha256 *m = container_of(d, struct sha256, d);
+	struct sha2 *m = container_of(d, struct sha2, d);
 
-	sha256_finish(&m->context, md);
+	sha2_starts(&m->context, 0);
 
 	return 0;
 }
 
-static struct sha256 m = {
+static struct sha2 m256 = {
 	.d = {
 		.name = "sha256",
 		.init = digest_sha256_init,
-		.update = digest_sha256_update,
-		.final = digest_sha256_final,
+		.update = digest_sha2_update,
+		.final = digest_sha2_final,
 		.length = SHA256_SUM_LEN,
 	}
 };
+#endif
 
-static int sha256_digest_register(void)
+static int sha2_digest_register(void)
 {
-	digest_register(&m.d);
+#ifdef CONFIG_SHA224
+	digest_register(&m224.d);
+#endif
+#ifdef CONFIG_SHA256
+	digest_register(&m256.d);
+#endif
 
 	return 0;
 }
-device_initcall(sha256_digest_register);
+device_initcall(sha2_digest_register);
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
