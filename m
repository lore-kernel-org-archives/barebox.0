Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yajva-0008Vt-UT
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:56:59 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F188C103C1BD
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:18 +0100
Message-Id: <1427284580-30218-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] crypto: sha512: switch to linux implementation
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/sha4.c | 654 ++++++++++++++++++++++++++--------------------------------
 1 file changed, 293 insertions(+), 361 deletions(-)
 rewrite crypto/sha4.c (89%)

diff --git a/crypto/sha4.c b/crypto/sha4.c
dissimilarity index 89%
index 3f8fa0d..187a91e 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -1,361 +1,293 @@
-/*
- *  FIPS-180-2 compliant SHA-384/512 implementation
- *
- *  Copyright (C) 2006-2007  Christophe Devine
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2 of the License, or
- *  (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License along
- *  with this program; if not, write to the Free Software Foundation, Inc.,
- *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- */
-/*
- *  The SHA-512 Secure Hash Standard was published by NIST in 2002.
- *
- *  http://csrc.nist.gov/publications/fips/fips180-2/fips180-2.pdf
- */
-
-#include <common.h>
-#include <digest.h>
-#include <init.h>
-#include <linux/string.h>
-#include <asm/byteorder.h>
-#include <crypto/internal.h>
-
-#define SHA384_SUM_LEN	48
-#define SHA512_SUM_LEN	64
-
-typedef struct {
-	uint64_t total[2];
-	uint64_t state[8];
-	uint8_t buffer[128];
-	int is384;
-} sha4_context;
-
-/*
- * 64-bit integer manipulation macros (big endian)
- */
-
-#define GET_UINT64_BE(n,b,i) (n) = be64_to_cpu(((uint64_t*)(b))[i / 8])
-#define PUT_UINT64_BE(n,b,i) ((uint64_t*)(b))[i / 8] = cpu_to_be64(n)
-
-/*
- * Round constants
- */
-static const uint64_t K[80] = {
-	0x428A2F98D728AE22, 0x7137449123EF65CD,
-	0xB5C0FBCFEC4D3B2F, 0xE9B5DBA58189DBBC,
-	0x3956C25BF348B538, 0x59F111F1B605D019,
-	0x923F82A4AF194F9B, 0xAB1C5ED5DA6D8118,
-	0xD807AA98A3030242, 0x12835B0145706FBE,
-	0x243185BE4EE4B28C, 0x550C7DC3D5FFB4E2,
-	0x72BE5D74F27B896F, 0x80DEB1FE3B1696B1,
-	0x9BDC06A725C71235, 0xC19BF174CF692694,
-	0xE49B69C19EF14AD2, 0xEFBE4786384F25E3,
-	0x0FC19DC68B8CD5B5, 0x240CA1CC77AC9C65,
-	0x2DE92C6F592B0275, 0x4A7484AA6EA6E483,
-	0x5CB0A9DCBD41FBD4, 0x76F988DA831153B5,
-	0x983E5152EE66DFAB, 0xA831C66D2DB43210,
-	0xB00327C898FB213F, 0xBF597FC7BEEF0EE4,
-	0xC6E00BF33DA88FC2, 0xD5A79147930AA725,
-	0x06CA6351E003826F, 0x142929670A0E6E70,
-	0x27B70A8546D22FFC, 0x2E1B21385C26C926,
-	0x4D2C6DFC5AC42AED, 0x53380D139D95B3DF,
-	0x650A73548BAF63DE, 0x766A0ABB3C77B2A8,
-	0x81C2C92E47EDAEE6, 0x92722C851482353B,
-	0xA2BFE8A14CF10364, 0xA81A664BBC423001,
-	0xC24B8B70D0F89791, 0xC76C51A30654BE30,
-	0xD192E819D6EF5218, 0xD69906245565A910,
-	0xF40E35855771202A, 0x106AA07032BBD1B8,
-	0x19A4C116B8D2D0C8, 0x1E376C085141AB53,
-	0x2748774CDF8EEB99, 0x34B0BCB5E19B48A8,
-	0x391C0CB3C5C95A63, 0x4ED8AA4AE3418ACB,
-	0x5B9CCA4F7763E373, 0x682E6FF3D6B2B8A3,
-	0x748F82EE5DEFB2FC, 0x78A5636F43172F60,
-	0x84C87814A1F0AB72, 0x8CC702081A6439EC,
-	0x90BEFFFA23631E28, 0xA4506CEBDE82BDE9,
-	0xBEF9A3F7B2C67915, 0xC67178F2E372532B,
-	0xCA273ECEEA26619C, 0xD186B8C721C0C207,
-	0xEADA7DD6CDE0EB1E, 0xF57D4F7FEE6ED178,
-	0x06F067AA72176FBA, 0x0A637DC5A2C898A6,
-	0x113F9804BEF90DAE, 0x1B710B35131C471B,
-	0x28DB77F523047D84, 0x32CAAB7B40C72493,
-	0x3C9EBE0A15C9BEBC, 0x431D67C49C100D4C,
-	0x4CC5D4BECB3E42B6, 0x597F299CFC657E2A,
-	0x5FCB6FAB3AD6FAEC, 0x6C44198C4A475817
-};
-
-/*
- * SHA-512 context setup
- */
-static void sha4_starts(sha4_context *ctx, int is384)
-{
-	ctx->total[0] = 0;
-	ctx->total[1] = 0;
-
-	if (is384 == 0 && IS_ENABLED(CONFIG_SHA512)) {
-		/* SHA-512 */
-		ctx->state[0] = 0x6A09E667F3BCC908;
-		ctx->state[1] = 0xBB67AE8584CAA73B;
-		ctx->state[2] = 0x3C6EF372FE94F82B;
-		ctx->state[3] = 0xA54FF53A5F1D36F1;
-		ctx->state[4] = 0x510E527FADE682D1;
-		ctx->state[5] = 0x9B05688C2B3E6C1F;
-		ctx->state[6] = 0x1F83D9ABFB41BD6B;
-		ctx->state[7] = 0x5BE0CD19137E2179;
-	} else if (IS_ENABLED(CONFIG_SHA384)) {
-		/* SHA-384 */
-		ctx->state[0] = 0xCBBB9D5DC1059ED8;
-		ctx->state[1] = 0x629A292A367CD507;
-		ctx->state[2] = 0x9159015A3070DD17;
-		ctx->state[3] = 0x152FECD8F70E5939;
-		ctx->state[4] = 0x67332667FFC00B31;
-		ctx->state[5] = 0x8EB44A8768581511;
-		ctx->state[6] = 0xDB0C2E0D64F98FA7;
-		ctx->state[7] = 0x47B5481DBEFA4FA4;
-	}
-
-	ctx->is384 = is384;
-}
-
-static void sha4_process(sha4_context *ctx, unsigned char data[128])
-{
-	int i;
-	uint64_t temp1, temp2, W[80];
-	uint64_t A, B, C, D, E, F, G, H;
-
-#define  SHR(x,n) (x >> n)
-#define ROTR(x,n) (SHR(x,n) | (x << (64 - n)))
-
-#define S0(x) (ROTR(x, 1) ^ ROTR(x, 8) ^  SHR(x, 7))
-#define S1(x) (ROTR(x,19) ^ ROTR(x,61) ^  SHR(x, 6))
-
-#define S2(x) (ROTR(x,28) ^ ROTR(x,34) ^ ROTR(x,39))
-#define S3(x) (ROTR(x,14) ^ ROTR(x,18) ^ ROTR(x,41))
-
-#define F0(x,y,z) ((x & y) | (z & (x | y)))
-#define F1(x,y,z) (z ^ (x & (y ^ z)))
-
-#define P(a,b,c,d,e,f,g,h,x,K)                  \
-{                                               \
-    temp1 = h + S3(e) + F1(e,f,g) + K + x;      \
-    temp2 = S2(a) + F0(a,b,c);                  \
-    d += temp1; h = temp1 + temp2;              \
-}
-
-	for (i = 0; i < 16; i++) {
-		GET_UINT64_BE(W[i], data, i << 3);
-	}
-
-	for (; i < 80; i++) {
-		W[i] = S1(W[i - 2]) + W[i - 7] + S0(W[i - 15]) + W[i - 16];
-	}
-
-	A = ctx->state[0];
-	B = ctx->state[1];
-	C = ctx->state[2];
-	D = ctx->state[3];
-	E = ctx->state[4];
-	F = ctx->state[5];
-	G = ctx->state[6];
-	H = ctx->state[7];
-	i = 0;
-
-	do {
-		P(A, B, C, D, E, F, G, H, W[i], K[i]);
-		i++;
-		P(H, A, B, C, D, E, F, G, W[i], K[i]);
-		i++;
-		P(G, H, A, B, C, D, E, F, W[i], K[i]);
-		i++;
-		P(F, G, H, A, B, C, D, E, W[i], K[i]);
-		i++;
-		P(E, F, G, H, A, B, C, D, W[i], K[i]);
-		i++;
-		P(D, E, F, G, H, A, B, C, W[i], K[i]);
-		i++;
-		P(C, D, E, F, G, H, A, B, W[i], K[i]);
-		i++;
-		P(B, C, D, E, F, G, H, A, W[i], K[i]);
-		i++;
-	} while (i < 80);
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
-/*
- * SHA-512 process buffer
- */
-static void sha4_update(sha4_context *ctx, unsigned char *input, int ilen)
-{
-	int fill;
-	uint64_t left;
-
-	if (ilen <= 0)
-		return;
-
-	left = ctx->total[0] & 0x7F;
-	fill = (int)(128 - left);
-
-	ctx->total[0] += ilen;
-
-	if (ctx->total[0] < (uint64_t)ilen)
-		ctx->total[1]++;
-
-	if (left && ilen >= fill) {
-		memcpy((void *)(ctx->buffer + left), (void *)input, fill);
-		sha4_process(ctx, ctx->buffer);
-		input += fill;
-		ilen -= fill;
-		left = 0;
-	}
-
-	while (ilen >= 128) {
-		sha4_process(ctx, input);
-		input += 128;
-		ilen -= 128;
-	}
-
-	if (ilen > 0)
-		memcpy((void *)(ctx->buffer + left), (void *)input, ilen);
-}
-
-static const unsigned char sha4_padding[128] = {
-	0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
-};
-
-/*
- * SHA-512 final digest
- */
-static void sha4_finish(sha4_context *ctx, unsigned char output[64])
-{
-	int last, padn;
-	uint64_t high, low;
-	unsigned char msglen[16];
-
-	high = (ctx->total[0] >> 61)
-	    | (ctx->total[1] << 3);
-	low = (ctx->total[0] << 3);
-
-	PUT_UINT64_BE(high, msglen, 0);
-	PUT_UINT64_BE(low, msglen, 8);
-
-	last = (int)(ctx->total[0] & 0x7F);
-	padn = (last < 112) ? (112 - last) : (240 - last);
-
-	sha4_update(ctx, (unsigned char *)sha4_padding, padn);
-	sha4_update(ctx, msglen, 16);
-
-	PUT_UINT64_BE(ctx->state[0], output, 0);
-	PUT_UINT64_BE(ctx->state[1], output, 8);
-	PUT_UINT64_BE(ctx->state[2], output, 16);
-	PUT_UINT64_BE(ctx->state[3], output, 24);
-	PUT_UINT64_BE(ctx->state[4], output, 32);
-	PUT_UINT64_BE(ctx->state[5], output, 40);
-
-	if (ctx->is384 == 0) {
-		PUT_UINT64_BE(ctx->state[6], output, 48);
-		PUT_UINT64_BE(ctx->state[7], output, 56);
-	}
-}
-
-static int digest_sha4_update(struct digest *d, const void *data,
-				unsigned long len)
-{
-	sha4_update(d->ctx, (uint8_t *)data, len);
-
-	return 0;
-}
-
-static int digest_sha4_final(struct digest *d, unsigned char *md)
-{
-	sha4_finish(d->ctx, md);
-
-	return 0;
-}
-
-static int digest_sha384_init(struct digest *d)
-{
-	sha4_starts(d->ctx, 1);
-
-	return 0;
-}
-
-static struct digest_algo m384 = {
-	.base = {
-		.name		=	"sha384",
-		.driver_name	=	"sha384-generic",
-		.priority	=	0,
-	},
-
-	.init = digest_sha384_init,
-	.update = digest_sha4_update,
-	.final = digest_sha4_final,
-	.verify = digest_generic_verify,
-	.length = SHA384_SUM_LEN,
-	.ctx_length = sizeof(sha4_context),
-};
-
-
-static int sha384_digest_register(void)
-{
-	if (!IS_ENABLED(CONFIG_SHA384))
-		return 0;
-
-	return digest_algo_register(&m384);
-}
-device_initcall(sha384_digest_register);
-
-static int digest_sha512_init(struct digest *d)
-{
-	sha4_starts(d->ctx, 0);
-
-	return 0;
-}
-
-static struct digest_algo m512 = {
-	.base = {
-		.name		=	"sha512",
-		.driver_name	=	"sha512-generic",
-		.priority	=	0,
-	},
-
-	.init = digest_sha512_init,
-	.update = digest_sha4_update,
-	.final = digest_sha4_final,
-	.digest = digest_generic_digest,
-	.verify = digest_generic_verify,
-	.length = SHA512_SUM_LEN,
-	.ctx_length = sizeof(sha4_context),
-};
-
-static int sha512_digest_register(void)
-{
-	if (!IS_ENABLED(CONFIG_SHA512))
-		return 0;
-
-	return digest_algo_register(&m512);
-}
-device_initcall(sha512_digest_register);
+/* SHA-512 code by Jean-Luc Cooke <jlcooke@certainkey.com>
+ *
+ * Copyright (c) Jean-Luc Cooke <jlcooke@certainkey.com>
+ * Copyright (c) Andrew McDonald <andrew@mcdonald.org.uk>
+ * Copyright (c) 2003 Kyle McMartin <kyle@debian.org>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2, or (at your option) any
+ * later version.
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
+static inline u64 Ch(u64 x, u64 y, u64 z)
+{
+        return z ^ (x & (y ^ z));
+}
+
+static inline u64 Maj(u64 x, u64 y, u64 z)
+{
+        return (x & y) | (z & (x | y));
+}
+
+static const u64 sha512_K[80] = {
+        0x428a2f98d728ae22ULL, 0x7137449123ef65cdULL, 0xb5c0fbcfec4d3b2fULL,
+        0xe9b5dba58189dbbcULL, 0x3956c25bf348b538ULL, 0x59f111f1b605d019ULL,
+        0x923f82a4af194f9bULL, 0xab1c5ed5da6d8118ULL, 0xd807aa98a3030242ULL,
+        0x12835b0145706fbeULL, 0x243185be4ee4b28cULL, 0x550c7dc3d5ffb4e2ULL,
+        0x72be5d74f27b896fULL, 0x80deb1fe3b1696b1ULL, 0x9bdc06a725c71235ULL,
+        0xc19bf174cf692694ULL, 0xe49b69c19ef14ad2ULL, 0xefbe4786384f25e3ULL,
+        0x0fc19dc68b8cd5b5ULL, 0x240ca1cc77ac9c65ULL, 0x2de92c6f592b0275ULL,
+        0x4a7484aa6ea6e483ULL, 0x5cb0a9dcbd41fbd4ULL, 0x76f988da831153b5ULL,
+        0x983e5152ee66dfabULL, 0xa831c66d2db43210ULL, 0xb00327c898fb213fULL,
+        0xbf597fc7beef0ee4ULL, 0xc6e00bf33da88fc2ULL, 0xd5a79147930aa725ULL,
+        0x06ca6351e003826fULL, 0x142929670a0e6e70ULL, 0x27b70a8546d22ffcULL,
+        0x2e1b21385c26c926ULL, 0x4d2c6dfc5ac42aedULL, 0x53380d139d95b3dfULL,
+        0x650a73548baf63deULL, 0x766a0abb3c77b2a8ULL, 0x81c2c92e47edaee6ULL,
+        0x92722c851482353bULL, 0xa2bfe8a14cf10364ULL, 0xa81a664bbc423001ULL,
+        0xc24b8b70d0f89791ULL, 0xc76c51a30654be30ULL, 0xd192e819d6ef5218ULL,
+        0xd69906245565a910ULL, 0xf40e35855771202aULL, 0x106aa07032bbd1b8ULL,
+        0x19a4c116b8d2d0c8ULL, 0x1e376c085141ab53ULL, 0x2748774cdf8eeb99ULL,
+        0x34b0bcb5e19b48a8ULL, 0x391c0cb3c5c95a63ULL, 0x4ed8aa4ae3418acbULL,
+        0x5b9cca4f7763e373ULL, 0x682e6ff3d6b2b8a3ULL, 0x748f82ee5defb2fcULL,
+        0x78a5636f43172f60ULL, 0x84c87814a1f0ab72ULL, 0x8cc702081a6439ecULL,
+        0x90befffa23631e28ULL, 0xa4506cebde82bde9ULL, 0xbef9a3f7b2c67915ULL,
+        0xc67178f2e372532bULL, 0xca273eceea26619cULL, 0xd186b8c721c0c207ULL,
+        0xeada7dd6cde0eb1eULL, 0xf57d4f7fee6ed178ULL, 0x06f067aa72176fbaULL,
+        0x0a637dc5a2c898a6ULL, 0x113f9804bef90daeULL, 0x1b710b35131c471bULL,
+        0x28db77f523047d84ULL, 0x32caab7b40c72493ULL, 0x3c9ebe0a15c9bebcULL,
+        0x431d67c49c100d4cULL, 0x4cc5d4becb3e42b6ULL, 0x597f299cfc657e2aULL,
+        0x5fcb6fab3ad6faecULL, 0x6c44198c4a475817ULL,
+};
+
+#define e0(x)       (ror64(x,28) ^ ror64(x,34) ^ ror64(x,39))
+#define e1(x)       (ror64(x,14) ^ ror64(x,18) ^ ror64(x,41))
+#define s0(x)       (ror64(x, 1) ^ ror64(x, 8) ^ (x >> 7))
+#define s1(x)       (ror64(x,19) ^ ror64(x,61) ^ (x >> 6))
+
+static inline void LOAD_OP(int I, u64 *W, const u8 *input)
+{
+	W[I] = get_unaligned_be64((__u64 *)input + I);
+}
+
+static inline void BLEND_OP(int I, u64 *W)
+{
+	W[I & 15] += s1(W[(I-2) & 15]) + W[(I-7) & 15] + s0(W[(I-15) & 15]);
+}
+
+static void
+sha512_transform(u64 *state, const u8 *input)
+{
+	u64 a, b, c, d, e, f, g, h, t1, t2;
+
+	int i;
+	u64 W[16];
+
+	/* load the state into our registers */
+	a=state[0];   b=state[1];   c=state[2];   d=state[3];
+	e=state[4];   f=state[5];   g=state[6];   h=state[7];
+
+	/* now iterate */
+	for (i=0; i<80; i+=8) {
+		if (!(i & 8)) {
+			int j;
+
+			if (i < 16) {
+				/* load the input */
+				for (j = 0; j < 16; j++)
+					LOAD_OP(i + j, W, input);
+			} else {
+				for (j = 0; j < 16; j++) {
+					BLEND_OP(i + j, W);
+				}
+			}
+		}
+
+		t1 = h + e1(e) + Ch(e,f,g) + sha512_K[i  ] + W[(i & 15)];
+		t2 = e0(a) + Maj(a,b,c);    d+=t1;    h=t1+t2;
+		t1 = g + e1(d) + Ch(d,e,f) + sha512_K[i+1] + W[(i & 15) + 1];
+		t2 = e0(h) + Maj(h,a,b);    c+=t1;    g=t1+t2;
+		t1 = f + e1(c) + Ch(c,d,e) + sha512_K[i+2] + W[(i & 15) + 2];
+		t2 = e0(g) + Maj(g,h,a);    b+=t1;    f=t1+t2;
+		t1 = e + e1(b) + Ch(b,c,d) + sha512_K[i+3] + W[(i & 15) + 3];
+		t2 = e0(f) + Maj(f,g,h);    a+=t1;    e=t1+t2;
+		t1 = d + e1(a) + Ch(a,b,c) + sha512_K[i+4] + W[(i & 15) + 4];
+		t2 = e0(e) + Maj(e,f,g);    h+=t1;    d=t1+t2;
+		t1 = c + e1(h) + Ch(h,a,b) + sha512_K[i+5] + W[(i & 15) + 5];
+		t2 = e0(d) + Maj(d,e,f);    g+=t1;    c=t1+t2;
+		t1 = b + e1(g) + Ch(g,h,a) + sha512_K[i+6] + W[(i & 15) + 6];
+		t2 = e0(c) + Maj(c,d,e);    f+=t1;    b=t1+t2;
+		t1 = a + e1(f) + Ch(f,g,h) + sha512_K[i+7] + W[(i & 15) + 7];
+		t2 = e0(b) + Maj(b,c,d);    e+=t1;    a=t1+t2;
+	}
+
+	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
+	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
+
+	/* erase our data */
+	a = b = c = d = e = f = g = h = t1 = t2 = 0;
+}
+
+static int
+sha512_init(struct digest *desc)
+{
+	struct sha512_state *sctx = digest_ctx(desc);
+	sctx->state[0] = SHA512_H0;
+	sctx->state[1] = SHA512_H1;
+	sctx->state[2] = SHA512_H2;
+	sctx->state[3] = SHA512_H3;
+	sctx->state[4] = SHA512_H4;
+	sctx->state[5] = SHA512_H5;
+	sctx->state[6] = SHA512_H6;
+	sctx->state[7] = SHA512_H7;
+	sctx->count[0] = sctx->count[1] = 0;
+
+	return 0;
+}
+
+static int sha384_init(struct digest *desc)
+{
+	struct sha512_state *sctx = digest_ctx(desc);
+	sctx->state[0] = SHA384_H0;
+	sctx->state[1] = SHA384_H1;
+	sctx->state[2] = SHA384_H2;
+	sctx->state[3] = SHA384_H3;
+	sctx->state[4] = SHA384_H4;
+	sctx->state[5] = SHA384_H5;
+	sctx->state[6] = SHA384_H6;
+	sctx->state[7] = SHA384_H7;
+	sctx->count[0] = sctx->count[1] = 0;
+
+	return 0;
+}
+
+static int sha512_update(struct digest *desc, const void *in,
+				unsigned long len)
+{
+	struct sha512_state *sctx = digest_ctx(desc);
+	const u8 *data = in;
+
+	unsigned int i, index, part_len;
+
+	/* Compute number of bytes mod 128 */
+	index = sctx->count[0] & 0x7f;
+
+	/* Update number of bytes */
+	if ((sctx->count[0] += len) < len)
+		sctx->count[1]++;
+
+        part_len = 128 - index;
+
+	/* Transform as many times as possible. */
+	if (len >= part_len) {
+		memcpy(&sctx->buf[index], data, part_len);
+		sha512_transform(sctx->state, sctx->buf);
+
+		for (i = part_len; i + 127 < len; i+=128)
+			sha512_transform(sctx->state, &data[i]);
+
+		index = 0;
+	} else {
+		i = 0;
+	}
+
+	/* Buffer remaining input */
+	memcpy(&sctx->buf[index], &data[i], len - i);
+
+	return 0;
+}
+
+static int sha512_final(struct digest *desc, u8 *hash)
+{
+	struct sha512_state *sctx = digest_ctx(desc);
+        static u8 padding[128] = { 0x80, };
+	__be64 *dst = (__be64 *)hash;
+	__be64 bits[2];
+	unsigned int index, pad_len;
+	int i;
+
+	/* Save number of bits */
+	bits[1] = cpu_to_be64(sctx->count[0] << 3);
+	bits[0] = cpu_to_be64(sctx->count[1] << 3 | sctx->count[0] >> 61);
+
+	/* Pad out to 112 mod 128. */
+	index = sctx->count[0] & 0x7f;
+	pad_len = (index < 112) ? (112 - index) : ((128+112) - index);
+	sha512_update(desc, padding, pad_len);
+
+	/* Append length (before padding) */
+	sha512_update(desc, (const u8 *)bits, sizeof(bits));
+
+	/* Store state in digest */
+	for (i = 0; i < 8; i++)
+		dst[i] = cpu_to_be64(sctx->state[i]);
+
+	/* Zeroize sensitive information. */
+	memset(sctx, 0, sizeof(struct sha512_state));
+
+	return 0;
+}
+
+static int sha384_final(struct digest *desc, u8 *hash)
+{
+	u8 D[64];
+
+	sha512_final(desc, D);
+
+	memcpy(hash, D, 48);
+	memset(D, 0, 64);
+
+	return 0;
+}
+
+static struct digest_algo m384 = {
+	.base = {
+		.name		=	"sha384",
+		.driver_name	=	"sha384-generic",
+		.priority	=	0,
+	},
+
+	.init		= sha384_init,
+	.update		= sha512_update,
+	.final		= sha384_final,
+	.digest		= digest_generic_digest,
+	.verify		= digest_generic_verify,
+	.length		= SHA384_DIGEST_SIZE,
+	.ctx_length	= sizeof(struct sha512_state),
+};
+
+
+static int sha384_digest_register(void)
+{
+	if (!IS_ENABLED(CONFIG_SHA384))
+		return 0;
+
+	return digest_algo_register(&m384);
+}
+device_initcall(sha384_digest_register);
+
+static struct digest_algo m512 = {
+	.base = {
+		.name		=	"sha512",
+		.driver_name	=	"sha512-generic",
+		.priority	=	0,
+	},
+
+	.init		= sha512_init,
+	.update		= sha512_update,
+	.final		= sha512_final,
+	.digest		= digest_generic_digest,
+	.verify		= digest_generic_verify,
+	.length		= SHA512_DIGEST_SIZE,
+	.ctx_length	= sizeof(struct sha512_state),
+};
+
+static int sha512_digest_register(void)
+{
+	if (!IS_ENABLED(CONFIG_SHA512))
+		return 0;
+
+	return digest_algo_register(&m512);
+}
+device_initcall(sha512_digest_register);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
