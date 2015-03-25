Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yajvb-0008Vv-Kv
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:57:09 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 724EB103C1AD
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:17 +0100
Message-Id: <1427284580-30218-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] crypto: sha256: switch to linux implementation
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/sha2.c | 728 ++++++++++++++++++++++++++++++----------------------------
 1 file changed, 373 insertions(+), 355 deletions(-)
 rewrite crypto/sha2.c (89%)

diff --git a/crypto/sha2.c b/crypto/sha2.c
dissimilarity index 89%
index f7b8beb..6ac5527 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -1,355 +1,373 @@
-/*
- * FIPS-180-2 compliant SHA-256 implementation
- *
- * Copyright (C) 2001-2003  Christophe Devine
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <digest.h>
-#include <init.h>
-#include <linux/string.h>
-#include <asm/byteorder.h>
-#include <crypto/internal.h>
-
-#define SHA224_SUM_LEN	28
-#define SHA256_SUM_LEN	32
-
-typedef struct {
-	uint32_t total[2];
-	uint32_t state[8];
-	uint8_t buffer[64];
-	int is224;
-} sha2_context;
-
-/*
- * 32-bit integer manipulation macros (big endian)
- */
-#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
-#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
-
-static void sha2_starts(sha2_context *ctx, int is224)
-{
-	ctx->total[0] = 0;
-	ctx->total[1] = 0;
-
-#ifdef CONFIG_SHA256
-	if (is224 == 0) {
-		/* SHA-256 */
-		ctx->state[0] = 0x6A09E667;
-		ctx->state[1] = 0xBB67AE85;
-		ctx->state[2] = 0x3C6EF372;
-		ctx->state[3] = 0xA54FF53A;
-		ctx->state[4] = 0x510E527F;
-		ctx->state[5] = 0x9B05688C;
-		ctx->state[6] = 0x1F83D9AB;
-		ctx->state[7] = 0x5BE0CD19;
-	}
-#endif
-#ifdef CONFIG_SHA224
-	if (is224 == 1) {
-		/* SHA-224 */
-		ctx->state[0] = 0xC1059ED8;
-		ctx->state[1] = 0x367CD507;
-		ctx->state[2] = 0x3070DD17;
-		ctx->state[3] = 0xF70E5939;
-		ctx->state[4] = 0xFFC00B31;
-		ctx->state[5] = 0x68581511;
-		ctx->state[6] = 0x64F98FA7;
-		ctx->state[7] = 0xBEFA4FA4;
-	}
-#endif
-
-	ctx->is224 = is224;
-}
-
-static void sha2_process(sha2_context *ctx, const uint8_t data[64])
-{
-	uint32_t temp1, temp2;
-	uint32_t W[64];
-	uint32_t A, B, C, D, E, F, G, H;
-
-	GET_UINT32_BE(W[0], data, 0);
-	GET_UINT32_BE(W[1], data, 4);
-	GET_UINT32_BE(W[2], data, 8);
-	GET_UINT32_BE(W[3], data, 12);
-	GET_UINT32_BE(W[4], data, 16);
-	GET_UINT32_BE(W[5], data, 20);
-	GET_UINT32_BE(W[6], data, 24);
-	GET_UINT32_BE(W[7], data, 28);
-	GET_UINT32_BE(W[8], data, 32);
-	GET_UINT32_BE(W[9], data, 36);
-	GET_UINT32_BE(W[10], data, 40);
-	GET_UINT32_BE(W[11], data, 44);
-	GET_UINT32_BE(W[12], data, 48);
-	GET_UINT32_BE(W[13], data, 52);
-	GET_UINT32_BE(W[14], data, 56);
-	GET_UINT32_BE(W[15], data, 60);
-
-#define SHR(x,n) ((x & 0xFFFFFFFF) >> n)
-#define ROTR(x,n) (SHR(x,n) | (x << (32 - n)))
-
-#define S0(x) (ROTR(x, 7) ^ ROTR(x,18) ^ SHR(x, 3))
-#define S1(x) (ROTR(x,17) ^ ROTR(x,19) ^ SHR(x,10))
-
-#define S2(x) (ROTR(x, 2) ^ ROTR(x,13) ^ ROTR(x,22))
-#define S3(x) (ROTR(x, 6) ^ ROTR(x,11) ^ ROTR(x,25))
-
-#define F0(x,y,z) ((x & y) | (z & (x | y)))
-#define F1(x,y,z) (z ^ (x & (y ^ z)))
-
-#define R(t)					\
-(						\
-	W[t] = S1(W[t - 2]) + W[t - 7] +	\
-		S0(W[t - 15]) + W[t - 16]	\
-)
-
-#define P(a,b,c,d,e,f,g,h,x,K) {		\
-	temp1 = h + S3(e) + F1(e,f,g) + K + x;	\
-	temp2 = S2(a) + F0(a,b,c);		\
-	d += temp1; h = temp1 + temp2;		\
-}
-
-	A = ctx->state[0];
-	B = ctx->state[1];
-	C = ctx->state[2];
-	D = ctx->state[3];
-	E = ctx->state[4];
-	F = ctx->state[5];
-	G = ctx->state[6];
-	H = ctx->state[7];
-
-	P(A, B, C, D, E, F, G, H, W[0], 0x428A2F98);
-	P(H, A, B, C, D, E, F, G, W[1], 0x71374491);
-	P(G, H, A, B, C, D, E, F, W[2], 0xB5C0FBCF);
-	P(F, G, H, A, B, C, D, E, W[3], 0xE9B5DBA5);
-	P(E, F, G, H, A, B, C, D, W[4], 0x3956C25B);
-	P(D, E, F, G, H, A, B, C, W[5], 0x59F111F1);
-	P(C, D, E, F, G, H, A, B, W[6], 0x923F82A4);
-	P(B, C, D, E, F, G, H, A, W[7], 0xAB1C5ED5);
-	P(A, B, C, D, E, F, G, H, W[8], 0xD807AA98);
-	P(H, A, B, C, D, E, F, G, W[9], 0x12835B01);
-	P(G, H, A, B, C, D, E, F, W[10], 0x243185BE);
-	P(F, G, H, A, B, C, D, E, W[11], 0x550C7DC3);
-	P(E, F, G, H, A, B, C, D, W[12], 0x72BE5D74);
-	P(D, E, F, G, H, A, B, C, W[13], 0x80DEB1FE);
-	P(C, D, E, F, G, H, A, B, W[14], 0x9BDC06A7);
-	P(B, C, D, E, F, G, H, A, W[15], 0xC19BF174);
-	P(A, B, C, D, E, F, G, H, R(16), 0xE49B69C1);
-	P(H, A, B, C, D, E, F, G, R(17), 0xEFBE4786);
-	P(G, H, A, B, C, D, E, F, R(18), 0x0FC19DC6);
-	P(F, G, H, A, B, C, D, E, R(19), 0x240CA1CC);
-	P(E, F, G, H, A, B, C, D, R(20), 0x2DE92C6F);
-	P(D, E, F, G, H, A, B, C, R(21), 0x4A7484AA);
-	P(C, D, E, F, G, H, A, B, R(22), 0x5CB0A9DC);
-	P(B, C, D, E, F, G, H, A, R(23), 0x76F988DA);
-	P(A, B, C, D, E, F, G, H, R(24), 0x983E5152);
-	P(H, A, B, C, D, E, F, G, R(25), 0xA831C66D);
-	P(G, H, A, B, C, D, E, F, R(26), 0xB00327C8);
-	P(F, G, H, A, B, C, D, E, R(27), 0xBF597FC7);
-	P(E, F, G, H, A, B, C, D, R(28), 0xC6E00BF3);
-	P(D, E, F, G, H, A, B, C, R(29), 0xD5A79147);
-	P(C, D, E, F, G, H, A, B, R(30), 0x06CA6351);
-	P(B, C, D, E, F, G, H, A, R(31), 0x14292967);
-	P(A, B, C, D, E, F, G, H, R(32), 0x27B70A85);
-	P(H, A, B, C, D, E, F, G, R(33), 0x2E1B2138);
-	P(G, H, A, B, C, D, E, F, R(34), 0x4D2C6DFC);
-	P(F, G, H, A, B, C, D, E, R(35), 0x53380D13);
-	P(E, F, G, H, A, B, C, D, R(36), 0x650A7354);
-	P(D, E, F, G, H, A, B, C, R(37), 0x766A0ABB);
-	P(C, D, E, F, G, H, A, B, R(38), 0x81C2C92E);
-	P(B, C, D, E, F, G, H, A, R(39), 0x92722C85);
-	P(A, B, C, D, E, F, G, H, R(40), 0xA2BFE8A1);
-	P(H, A, B, C, D, E, F, G, R(41), 0xA81A664B);
-	P(G, H, A, B, C, D, E, F, R(42), 0xC24B8B70);
-	P(F, G, H, A, B, C, D, E, R(43), 0xC76C51A3);
-	P(E, F, G, H, A, B, C, D, R(44), 0xD192E819);
-	P(D, E, F, G, H, A, B, C, R(45), 0xD6990624);
-	P(C, D, E, F, G, H, A, B, R(46), 0xF40E3585);
-	P(B, C, D, E, F, G, H, A, R(47), 0x106AA070);
-	P(A, B, C, D, E, F, G, H, R(48), 0x19A4C116);
-	P(H, A, B, C, D, E, F, G, R(49), 0x1E376C08);
-	P(G, H, A, B, C, D, E, F, R(50), 0x2748774C);
-	P(F, G, H, A, B, C, D, E, R(51), 0x34B0BCB5);
-	P(E, F, G, H, A, B, C, D, R(52), 0x391C0CB3);
-	P(D, E, F, G, H, A, B, C, R(53), 0x4ED8AA4A);
-	P(C, D, E, F, G, H, A, B, R(54), 0x5B9CCA4F);
-	P(B, C, D, E, F, G, H, A, R(55), 0x682E6FF3);
-	P(A, B, C, D, E, F, G, H, R(56), 0x748F82EE);
-	P(H, A, B, C, D, E, F, G, R(57), 0x78A5636F);
-	P(G, H, A, B, C, D, E, F, R(58), 0x84C87814);
-	P(F, G, H, A, B, C, D, E, R(59), 0x8CC70208);
-	P(E, F, G, H, A, B, C, D, R(60), 0x90BEFFFA);
-	P(D, E, F, G, H, A, B, C, R(61), 0xA4506CEB);
-	P(C, D, E, F, G, H, A, B, R(62), 0xBEF9A3F7);
-	P(B, C, D, E, F, G, H, A, R(63), 0xC67178F2);
-
-	ctx->state[0] += A;
-	ctx->state[1] += B;
-	ctx->state[2] += C;
-	ctx->state[3] += D;
-	ctx->state[4] += E;
-	ctx->state[5] += F;
-	ctx->state[6] += G;
-	ctx->state[7] += H;
-}
-
-static void sha2_update(sha2_context *ctx, const uint8_t *input, size_t length)
-{
-	size_t fill;
-	uint32_t left;
-
-	if (length == 0)
-		return;
-
-	left = ctx->total[0] & 0x3F;
-	fill = 64 - left;
-
-	ctx->total[0] += (uint32_t)length;
-	ctx->total[0] &= 0xFFFFFFFF;
-
-	if (ctx->total[0] < (uint32_t)length)
-		ctx->total[1]++;
-
-	if (left && length >= fill) {
-		memcpy((void *) (ctx->buffer + left), (void *) input, fill);
-		sha2_process(ctx, ctx->buffer);
-		length -= fill;
-		input += fill;
-		left = 0;
-	}
-
-	while (length >= 64) {
-		sha2_process(ctx, input);
-		length -= 64;
-		input += 64;
-	}
-
-	if (length)
-		memcpy((void *) (ctx->buffer + left), (void *) input, length);
-}
-
-static const uint8_t sha2_padding[64] = {
-	0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
-};
-
-static void sha2_finish(sha2_context *ctx, uint8_t digest[32])
-{
-	uint32_t last, padn;
-	uint32_t high, low;
-	uint8_t msglen[8];
-
-	high = ((ctx->total[0] >> 29)
-		| (ctx->total[1] << 3));
-	low = (ctx->total[0] << 3);
-
-	PUT_UINT32_BE(high, msglen, 0);
-	PUT_UINT32_BE(low, msglen, 4);
-
-	last = ctx->total[0] & 0x3F;
-	padn = (last < 56) ? (56 - last) : (120 - last);
-
-	sha2_update(ctx, sha2_padding, padn);
-	sha2_update(ctx, msglen, 8);
-
-	PUT_UINT32_BE(ctx->state[0], digest, 0);
-	PUT_UINT32_BE(ctx->state[1], digest, 4);
-	PUT_UINT32_BE(ctx->state[2], digest, 8);
-	PUT_UINT32_BE(ctx->state[3], digest, 12);
-	PUT_UINT32_BE(ctx->state[4], digest, 16);
-	PUT_UINT32_BE(ctx->state[5], digest, 20);
-	PUT_UINT32_BE(ctx->state[6], digest, 24);
-	if (!ctx->is224)
-		PUT_UINT32_BE(ctx->state[7], digest, 28);
-}
-
-static int digest_sha2_update(struct digest *d, const void *data,
-				unsigned long len)
-{
-	sha2_update(d->ctx, (uint8_t *)data, len);
-
-	return 0;
-}
-
-static int digest_sha2_final(struct digest *d, unsigned char *md)
-{
-	sha2_finish(d->ctx, md);
-
-	return 0;
-}
-
-static int digest_sha224_init(struct digest *d)
-{
-	sha2_starts(d->ctx, 1);
-
-	return 0;
-}
-
-static struct digest_algo m224 = {
-	.base = {
-		.name		=	"sha224",
-		.driver_name	=	"sha224-generic",
-		.priority	=	0,
-	},
-
-	.init = digest_sha224_init,
-	.update = digest_sha2_update,
-	.final = digest_sha2_final,
-	.verify = digest_generic_verify,
-	.length = SHA224_SUM_LEN,
-	.ctx_length = sizeof(sha2_context),
-};
-
-static int sha224_digest_register(void)
-{
-	if (!IS_ENABLED(CONFIG_SHA224))
-		return 0;
-
-	return digest_algo_register(&m224);
-}
-device_initcall(sha224_digest_register);
-
-static int digest_sha256_init(struct digest *d)
-{
-	sha2_starts(d->ctx, 0);
-
-	return 0;
-}
-
-static struct digest_algo m256 = {
-	.base = {
-		.name		=	"sha256",
-		.driver_name	=	"sha256-generic",
-		.priority	=	0,
-	},
-
-	.init = digest_sha256_init,
-	.update = digest_sha2_update,
-	.final = digest_sha2_final,
-	.digest = digest_generic_digest,
-	.verify = digest_generic_verify,
-	.length = SHA256_SUM_LEN,
-	.ctx_length = sizeof(sha2_context),
-};
-
-static int sha256_digest_register(void)
-{
-	if (!IS_ENABLED(CONFIG_SHA256))
-		return 0;
-
-	return digest_algo_register(&m256);
-}
-device_initcall(sha256_digest_register);
+/*
+ * Cryptographic API.
+ *
+ * SHA-256, as specified in
+ * http://csrc.nist.gov/groups/STM/cavp/documents/shs/sha256-384-512.pdf
+ *
+ * SHA-256 code by Jean-Luc Cooke <jlcooke@certainkey.com>.
+ *
+ * Copyright (c) Jean-Luc Cooke <jlcooke@certainkey.com>
+ * Copyright (c) Andrew McDonald <andrew@mcdonald.org.uk>
+ * Copyright (c) 2002 James Morris <jmorris@intercode.com.au>
+ * SHA224 Support Copyright 2007 Intel Corporation <jonathan.lynch@intel.com>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the Free
+ * Software Foundation; either version 2 of the License, or (at your option) 
+ * any later version.
+ *
+ */
+
+#include <common.h>
+#include <digest.h>
+#include <init.h>
+#include <linux/string.h>
+#include <asm/unaligned.h>
+#include <asm/byteorder.h>
+
+#include <crypto/sha.h>
+#include <crypto/internal.h>
+
+static inline u32 Ch(u32 x, u32 y, u32 z)
+{
+	return z ^ (x & (y ^ z));
+}
+
+static inline u32 Maj(u32 x, u32 y, u32 z)
+{
+	return (x & y) | (z & (x | y));
+}
+
+#define e0(x)       (ror32(x, 2) ^ ror32(x,13) ^ ror32(x,22))
+#define e1(x)       (ror32(x, 6) ^ ror32(x,11) ^ ror32(x,25))
+#define s0(x)       (ror32(x, 7) ^ ror32(x,18) ^ (x >> 3))
+#define s1(x)       (ror32(x,17) ^ ror32(x,19) ^ (x >> 10))
+
+static inline void LOAD_OP(int I, u32 *W, const u8 *input)
+{
+	W[I] = get_unaligned_be32((__u32 *)input + I);
+}
+
+static inline void BLEND_OP(int I, u32 *W)
+{
+	W[I] = s1(W[I-2]) + W[I-7] + s0(W[I-15]) + W[I-16];
+}
+
+static void sha256_transform(u32 *state, const u8 *input)
+{
+	u32 a, b, c, d, e, f, g, h, t1, t2;
+	u32 W[64];
+	int i;
+
+	/* load the input */
+	for (i = 0; i < 16; i++)
+		LOAD_OP(i, W, input);
+
+	/* now blend */
+	for (i = 16; i < 64; i++)
+		BLEND_OP(i, W);
+
+	/* load the state into our registers */
+	a=state[0];  b=state[1];  c=state[2];  d=state[3];
+	e=state[4];  f=state[5];  g=state[6];  h=state[7];
+
+	/* now iterate */
+	t1 = h + e1(e) + Ch(e,f,g) + 0x428a2f98 + W[ 0];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0x71374491 + W[ 1];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0xb5c0fbcf + W[ 2];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0xe9b5dba5 + W[ 3];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x3956c25b + W[ 4];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0x59f111f1 + W[ 5];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x923f82a4 + W[ 6];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0xab1c5ed5 + W[ 7];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0xd807aa98 + W[ 8];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0x12835b01 + W[ 9];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0x243185be + W[10];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0x550c7dc3 + W[11];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x72be5d74 + W[12];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0x80deb1fe + W[13];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x9bdc06a7 + W[14];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0xc19bf174 + W[15];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0xe49b69c1 + W[16];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0xefbe4786 + W[17];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0x0fc19dc6 + W[18];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0x240ca1cc + W[19];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x2de92c6f + W[20];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0x4a7484aa + W[21];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x5cb0a9dc + W[22];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0x76f988da + W[23];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0x983e5152 + W[24];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0xa831c66d + W[25];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0xb00327c8 + W[26];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0xbf597fc7 + W[27];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0xc6e00bf3 + W[28];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0xd5a79147 + W[29];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x06ca6351 + W[30];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0x14292967 + W[31];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0x27b70a85 + W[32];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0x2e1b2138 + W[33];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0x4d2c6dfc + W[34];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0x53380d13 + W[35];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x650a7354 + W[36];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0x766a0abb + W[37];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x81c2c92e + W[38];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0x92722c85 + W[39];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0xa2bfe8a1 + W[40];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0xa81a664b + W[41];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0xc24b8b70 + W[42];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0xc76c51a3 + W[43];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0xd192e819 + W[44];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0xd6990624 + W[45];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0xf40e3585 + W[46];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0x106aa070 + W[47];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0x19a4c116 + W[48];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0x1e376c08 + W[49];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0x2748774c + W[50];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0x34b0bcb5 + W[51];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x391c0cb3 + W[52];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0x4ed8aa4a + W[53];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0x5b9cca4f + W[54];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0x682e6ff3 + W[55];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	t1 = h + e1(e) + Ch(e,f,g) + 0x748f82ee + W[56];
+	t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+	t1 = g + e1(d) + Ch(d,e,f) + 0x78a5636f + W[57];
+	t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+	t1 = f + e1(c) + Ch(c,d,e) + 0x84c87814 + W[58];
+	t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+	t1 = e + e1(b) + Ch(b,c,d) + 0x8cc70208 + W[59];
+	t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+	t1 = d + e1(a) + Ch(a,b,c) + 0x90befffa + W[60];
+	t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+	t1 = c + e1(h) + Ch(h,a,b) + 0xa4506ceb + W[61];
+	t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+	t1 = b + e1(g) + Ch(g,h,a) + 0xbef9a3f7 + W[62];
+	t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+	t1 = a + e1(f) + Ch(f,g,h) + 0xc67178f2 + W[63];
+	t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+
+	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
+	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
+
+	/* clear any sensitive info... */
+	a = b = c = d = e = f = g = h = t1 = t2 = 0;
+	memset(W, 0, 64 * sizeof(u32));
+}
+
+static int sha224_init(struct digest *desc)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+	sctx->state[0] = SHA224_H0;
+	sctx->state[1] = SHA224_H1;
+	sctx->state[2] = SHA224_H2;
+	sctx->state[3] = SHA224_H3;
+	sctx->state[4] = SHA224_H4;
+	sctx->state[5] = SHA224_H5;
+	sctx->state[6] = SHA224_H6;
+	sctx->state[7] = SHA224_H7;
+	sctx->count = 0;
+
+	return 0;
+}
+
+static int sha256_init(struct digest *desc)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+	sctx->state[0] = SHA256_H0;
+	sctx->state[1] = SHA256_H1;
+	sctx->state[2] = SHA256_H2;
+	sctx->state[3] = SHA256_H3;
+	sctx->state[4] = SHA256_H4;
+	sctx->state[5] = SHA256_H5;
+	sctx->state[6] = SHA256_H6;
+	sctx->state[7] = SHA256_H7;
+	sctx->count = 0;
+
+	return 0;
+}
+
+static int sha256_update(struct digest *desc, const void *data,
+				unsigned long len)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+	unsigned int partial, done;
+	const u8 *src;
+
+	partial = sctx->count & 0x3f;
+	sctx->count += len;
+	done = 0;
+	src = data;
+
+	if ((partial + len) > 63) {
+		if (partial) {
+			done = -partial;
+			memcpy(sctx->buf + partial, data, done + 64);
+			src = sctx->buf;
+		}
+
+		do {
+			sha256_transform(sctx->state, src);
+			done += 64;
+			src = data + done;
+		} while (done + 63 < len);
+
+		partial = 0;
+	}
+	memcpy(sctx->buf + partial, src, len - done);
+
+	return 0;
+}
+
+static int sha256_final(struct digest *desc, u8 *out)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+	__be32 *dst = (__be32 *)out;
+	__be64 bits;
+	unsigned int index, pad_len;
+	int i;
+	static const u8 padding[64] = { 0x80, };
+
+	/* Save number of bits */
+	bits = cpu_to_be64(sctx->count << 3);
+
+	/* Pad out to 56 mod 64. */
+	index = sctx->count & 0x3f;
+	pad_len = (index < 56) ? (56 - index) : ((64+56) - index);
+	sha256_update(desc, padding, pad_len);
+
+	/* Append length (before padding) */
+	sha256_update(desc, (const u8 *)&bits, sizeof(bits));
+
+	/* Store state in digest */
+	for (i = 0; i < 8; i++)
+		dst[i] = cpu_to_be32(sctx->state[i]);
+
+	/* Zeroize sensitive information. */
+	memset(sctx, 0, sizeof(*sctx));
+
+	return 0;
+}
+
+static int sha224_final(struct digest *desc, u8 *hash)
+{
+	u8 D[SHA256_DIGEST_SIZE];
+
+	sha256_final(desc, D);
+
+	memcpy(hash, D, SHA224_DIGEST_SIZE);
+	memset(D, 0, SHA256_DIGEST_SIZE);
+
+	return 0;
+}
+
+static struct digest_algo m224 = {
+	.base = {
+		.name		=	"sha224",
+		.driver_name	=	"sha224-generic",
+		.priority	=	0,
+	},
+
+	.init		= sha224_init,
+	.update		= sha256_update,
+	.final		= sha224_final,
+	.digest		= digest_generic_digest,
+	.verify 	= digest_generic_verify,
+	.length 	= SHA224_DIGEST_SIZE,
+	.ctx_length	= sizeof(struct sha256_state),
+};
+
+static int sha224_digest_register(void)
+{
+	if (!IS_ENABLED(CONFIG_SHA224))
+		return 0;
+
+	return digest_algo_register(&m224);
+}
+device_initcall(sha224_digest_register);
+
+static struct digest_algo m256 = {
+	.base = {
+		.name		=	"sha256",
+		.driver_name	=	"sha256-generic",
+		.priority	=	0,
+	},
+
+	.init		= sha256_init,
+	.update		= sha256_update,
+	.final		= sha256_final,
+	.digest		= digest_generic_digest,
+	.verify		= digest_generic_verify,
+	.length		= SHA256_DIGEST_SIZE,
+	.ctx_length	= sizeof(struct sha256_state),
+};
+
+static int sha256_digest_register(void)
+{
+	if (!IS_ENABLED(CONFIG_SHA256))
+		return 0;
+
+	return digest_algo_register(&m256);
+}
+device_initcall(sha256_digest_register);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
