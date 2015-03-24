Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaL0K-0002Mi-Qd
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 09:20:14 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 84BD9FFA76D
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 10:19:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 24 Mar 2015 10:19:27 +0100
Message-Id: <1427188768-18012-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1427188768-18012-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150324091655.GA8125@ns203013.ovh.net>
 <1427188768-18012-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] crypto: sha1: switch to linux implementation
To: barebox@lists.infradead.org

current implementation

$ ls -al build/versatilpb/arch/arm/pbl/zbarebox.bin
-rw-r--r-- 1 root root 211095 Mar 24 13:21 build/versatilpb/arch/arm/pbl/zbarebox.bin

linux generic implementation

$ ls -al build/versatilpb/arch/arm/pbl/zbarebox.bin
-rw-r--r-- 1 root root 210829 Mar 24 13:21 build/versatilpb/arch/arm/pbl/zbarebox.bin

on a compressed lzo barebox we will 266 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/sha1.c        | 650 ++++++++++++++++++++++++---------------------------
 include/crypto/sha.h |  95 ++++++++
 include/digest.h     |   5 +
 3 files changed, 411 insertions(+), 339 deletions(-)
 rewrite crypto/sha1.c (90%)
 create mode 100644 include/crypto/sha.h

diff --git a/crypto/sha1.c b/crypto/sha1.c
dissimilarity index 90%
index a2ca191..68830ac 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -1,339 +1,311 @@
-/*
- *  Heiko Schocher, DENX Software Engineering, hs@denx.de.
- *  based on:
- *  FIPS-180-1 compliant SHA-1 implementation
- *
- *  Copyright (C) 2003-2006  Christophe Devine
- *
- *  This library is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU Lesser General Public
- *  License, version 2.1 as published by the Free Software Foundation.
- *
- *  This library is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  Lesser General Public License for more details.
- */
-/*
- *  The SHA-1 standard was published by NIST in 1993.
- *
- *  http://www.itl.nist.gov/fipspubs/fip180-1.htm
- */
-
-#include <common.h>
-#include <digest.h>
-#include <init.h>
-#include <linux/string.h>
-#include <asm/byteorder.h>
-
-#include <crypto/internal.h>
-
-#define SHA1_SUM_POS	-0x20
-#define SHA1_SUM_LEN	20
-
-typedef struct
-{
-	uint32_t total[2];	/*!< number of bytes processed	*/
-	uint32_t state[5];	/*!< intermediate digest state	*/
-	uint8_t buffer[64];	/*!< data block being processed */
-}
-sha1_context;
-
-/*
- * 32-bit integer manipulation macros (big endian)
- */
-#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
-#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
-
-/*
- * SHA-1 context setup
- */
-static void sha1_starts (sha1_context *ctx)
-{
-	ctx->total[0] = 0;
-	ctx->total[1] = 0;
-
-	ctx->state[0] = 0x67452301;
-	ctx->state[1] = 0xEFCDAB89;
-	ctx->state[2] = 0x98BADCFE;
-	ctx->state[3] = 0x10325476;
-	ctx->state[4] = 0xC3D2E1F0;
-}
-
-static void sha1_process (sha1_context *ctx, uint8_t data[64])
-{
-	uint32_t temp, W[16], A, B, C, D, E;
-
-	GET_UINT32_BE (W[0], data, 0);
-	GET_UINT32_BE (W[1], data, 4);
-	GET_UINT32_BE (W[2], data, 8);
-	GET_UINT32_BE (W[3], data, 12);
-	GET_UINT32_BE (W[4], data, 16);
-	GET_UINT32_BE (W[5], data, 20);
-	GET_UINT32_BE (W[6], data, 24);
-	GET_UINT32_BE (W[7], data, 28);
-	GET_UINT32_BE (W[8], data, 32);
-	GET_UINT32_BE (W[9], data, 36);
-	GET_UINT32_BE (W[10], data, 40);
-	GET_UINT32_BE (W[11], data, 44);
-	GET_UINT32_BE (W[12], data, 48);
-	GET_UINT32_BE (W[13], data, 52);
-	GET_UINT32_BE (W[14], data, 56);
-	GET_UINT32_BE (W[15], data, 60);
-
-#define S(x,n)	((x << n) | ((x & 0xFFFFFFFF) >> (32 - n)))
-
-#define R(t) (						\
-	temp = W[(t -  3) & 0x0F] ^ W[(t - 8) & 0x0F] ^	\
-	       W[(t - 14) & 0x0F] ^ W[ t      & 0x0F],	\
-	( W[t & 0x0F] = S(temp,1) )			\
-)
-
-#define P(a,b,c,d,e,x)	{				\
-	e += S(a,5) + F(b,c,d) + K + x; b = S(b,30);	\
-}
-
-	A = ctx->state[0];
-	B = ctx->state[1];
-	C = ctx->state[2];
-	D = ctx->state[3];
-	E = ctx->state[4];
-
-#define F(x,y,z) (z ^ (x & (y ^ z)))
-#define K 0x5A827999
-
-	P (A, B, C, D, E, W[0]);
-	P (E, A, B, C, D, W[1]);
-	P (D, E, A, B, C, W[2]);
-	P (C, D, E, A, B, W[3]);
-	P (B, C, D, E, A, W[4]);
-	P (A, B, C, D, E, W[5]);
-	P (E, A, B, C, D, W[6]);
-	P (D, E, A, B, C, W[7]);
-	P (C, D, E, A, B, W[8]);
-	P (B, C, D, E, A, W[9]);
-	P (A, B, C, D, E, W[10]);
-	P (E, A, B, C, D, W[11]);
-	P (D, E, A, B, C, W[12]);
-	P (C, D, E, A, B, W[13]);
-	P (B, C, D, E, A, W[14]);
-	P (A, B, C, D, E, W[15]);
-	P (E, A, B, C, D, R (16));
-	P (D, E, A, B, C, R (17));
-	P (C, D, E, A, B, R (18));
-	P (B, C, D, E, A, R (19));
-
-#undef K
-#undef F
-
-#define F(x,y,z) (x ^ y ^ z)
-#define K 0x6ED9EBA1
-
-	P (A, B, C, D, E, R (20));
-	P (E, A, B, C, D, R (21));
-	P (D, E, A, B, C, R (22));
-	P (C, D, E, A, B, R (23));
-	P (B, C, D, E, A, R (24));
-	P (A, B, C, D, E, R (25));
-	P (E, A, B, C, D, R (26));
-	P (D, E, A, B, C, R (27));
-	P (C, D, E, A, B, R (28));
-	P (B, C, D, E, A, R (29));
-	P (A, B, C, D, E, R (30));
-	P (E, A, B, C, D, R (31));
-	P (D, E, A, B, C, R (32));
-	P (C, D, E, A, B, R (33));
-	P (B, C, D, E, A, R (34));
-	P (A, B, C, D, E, R (35));
-	P (E, A, B, C, D, R (36));
-	P (D, E, A, B, C, R (37));
-	P (C, D, E, A, B, R (38));
-	P (B, C, D, E, A, R (39));
-
-#undef K
-#undef F
-
-#define F(x,y,z) ((x & y) | (z & (x | y)))
-#define K 0x8F1BBCDC
-
-	P (A, B, C, D, E, R (40));
-	P (E, A, B, C, D, R (41));
-	P (D, E, A, B, C, R (42));
-	P (C, D, E, A, B, R (43));
-	P (B, C, D, E, A, R (44));
-	P (A, B, C, D, E, R (45));
-	P (E, A, B, C, D, R (46));
-	P (D, E, A, B, C, R (47));
-	P (C, D, E, A, B, R (48));
-	P (B, C, D, E, A, R (49));
-	P (A, B, C, D, E, R (50));
-	P (E, A, B, C, D, R (51));
-	P (D, E, A, B, C, R (52));
-	P (C, D, E, A, B, R (53));
-	P (B, C, D, E, A, R (54));
-	P (A, B, C, D, E, R (55));
-	P (E, A, B, C, D, R (56));
-	P (D, E, A, B, C, R (57));
-	P (C, D, E, A, B, R (58));
-	P (B, C, D, E, A, R (59));
-
-#undef K
-#undef F
-
-#define F(x,y,z) (x ^ y ^ z)
-#define K 0xCA62C1D6
-
-	P (A, B, C, D, E, R (60));
-	P (E, A, B, C, D, R (61));
-	P (D, E, A, B, C, R (62));
-	P (C, D, E, A, B, R (63));
-	P (B, C, D, E, A, R (64));
-	P (A, B, C, D, E, R (65));
-	P (E, A, B, C, D, R (66));
-	P (D, E, A, B, C, R (67));
-	P (C, D, E, A, B, R (68));
-	P (B, C, D, E, A, R (69));
-	P (A, B, C, D, E, R (70));
-	P (E, A, B, C, D, R (71));
-	P (D, E, A, B, C, R (72));
-	P (C, D, E, A, B, R (73));
-	P (B, C, D, E, A, R (74));
-	P (A, B, C, D, E, R (75));
-	P (E, A, B, C, D, R (76));
-	P (D, E, A, B, C, R (77));
-	P (C, D, E, A, B, R (78));
-	P (B, C, D, E, A, R (79));
-
-#undef K
-#undef F
-
-	ctx->state[0] += A;
-	ctx->state[1] += B;
-	ctx->state[2] += C;
-	ctx->state[3] += D;
-	ctx->state[4] += E;
-}
-
-/*
- * SHA-1 process buffer
- */
-static void sha1_update (sha1_context *ctx, uint8_t *input, uint32_t ilen)
-{
-	uint32_t fill, left;
-
-	if (ilen <= 0)
-		return;
-
-	left = ctx->total[0] & 0x3F;
-	fill = 64 - left;
-
-	ctx->total[0] += ilen;
-	ctx->total[0] &= 0xFFFFFFFF;
-
-	if (ctx->total[0] < ilen)
-		ctx->total[1]++;
-
-	if (left && ilen >= fill) {
-		memcpy ((void *) (ctx->buffer + left), (void *) input, fill);
-		sha1_process (ctx, ctx->buffer);
-		input += fill;
-		ilen -= fill;
-		left = 0;
-	}
-
-	while (ilen >= 64) {
-		sha1_process (ctx, input);
-		input += 64;
-		ilen -= 64;
-	}
-
-	if (ilen > 0) {
-		memcpy ((void *) (ctx->buffer + left), (void *) input, ilen);
-	}
-}
-
-static uint8_t sha1_padding[64] = {
-	0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
-};
-
-/*
- * SHA-1 final digest
- */
-static void sha1_finish (sha1_context *ctx, uint8_t output[20])
-{
-	uint32_t last, padn;
-	uint32_t high, low;
-	uint8_t msglen[8];
-
-	high = (ctx->total[0] >> 29)
-		| (ctx->total[1] << 3);
-	low = (ctx->total[0] << 3);
-
-	PUT_UINT32_BE (high, msglen, 0);
-	PUT_UINT32_BE (low, msglen, 4);
-
-	last = ctx->total[0] & 0x3F;
-	padn = (last < 56) ? (56 - last) : (120 - last);
-
-	sha1_update (ctx, sha1_padding, padn);
-	sha1_update (ctx, msglen, 8);
-
-	PUT_UINT32_BE (ctx->state[0], output, 0);
-	PUT_UINT32_BE (ctx->state[1], output, 4);
-	PUT_UINT32_BE (ctx->state[2], output, 8);
-	PUT_UINT32_BE (ctx->state[3], output, 12);
-	PUT_UINT32_BE (ctx->state[4], output, 16);
-}
-
-static int digest_sha1_init(struct digest *d)
-{
-	sha1_starts(d->ctx);
-
-	return 0;
-}
-
-static int digest_sha1_update(struct digest *d, const void *data,
-			     unsigned long len)
-{
-	sha1_update(d->ctx, (uint8_t*)data, len);
-
-	return 0;
-}
-
-static int digest_sha1_final(struct digest *d, unsigned char *md)
-{
-	sha1_finish(d->ctx, md);
-
-	return 0;
-}
-
-static struct digest_algo m = {
-	.base = {
-		.name		=	"sha1",
-		.driver_name	=	"sha1-generic",
-		.priority	=	0,
-	},
-
-	.init = digest_sha1_init,
-	.update = digest_sha1_update,
-	.final = digest_sha1_final,
-	.digest = digest_generic_digest,
-	.verify = digest_generic_verify,
-	.length = SHA1_SUM_LEN,
-	.ctx_length = sizeof(sha1_context),
-};
-
-static int sha1_digest_register(void)
-{
-	int ret;
-
-	ret = digest_algo_register(&m);
-	if (ret)
-		return ret;
-
-	return digest_hmac_register(&m, 64);
-}
-device_initcall(sha1_digest_register);
+/*
+ * Cryptographic API.
+ *
+ * SHA1 Secure Hash Algorithm.
+ *
+ * Derived from cryptoapi implementation, adapted for in-place
+ * scatterlist interface.
+ *
+ * Copyright (c) Alan Smithee.
+ * Copyright (c) Andrew McDonald <andrew@mcdonald.org.uk>
+ * Copyright (c) Jean-Francois Dive <jef@linuxbe.org>
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
+#define SHA_WORKSPACE_WORDS 16
+
+static int digest_sha1_init(struct digest *desc)
+{
+	struct sha1_state *ctx = digest_ctx(desc);
+
+	ctx->count = 0;
+
+	ctx->state[0] = SHA1_H0;
+	ctx->state[1] = SHA1_H1;
+	ctx->state[2] = SHA1_H2;
+	ctx->state[3] = SHA1_H3;
+	ctx->state[4] = SHA1_H4;
+
+	return 0;
+}
+
+/*
+ * If you have 32 registers or more, the compiler can (and should)
+ * try to change the array[] accesses into registers. However, on
+ * machines with less than ~25 registers, that won't really work,
+ * and at least gcc will make an unholy mess of it.
+ *
+ * So to avoid that mess which just slows things down, we force
+ * the stores to memory to actually happen (we might be better off
+ * with a 'W(t)=(val);asm("":"+m" (W(t))' there instead, as
+ * suggested by Artur Skawina - that will also make gcc unable to
+ * try to do the silly "optimize away loads" part because it won't
+ * see what the value will be).
+ *
+ * Ben Herrenschmidt reports that on PPC, the C version comes close
+ * to the optimized asm with this (ie on PPC you don't want that
+ * 'volatile', since there are lots of registers).
+ *
+ * On ARM we get the best code generation by forcing a full memory barrier
+ * between each SHA_ROUND, otherwise gcc happily get wild with spilling and
+ * the stack frame size simply explode and performance goes down the drain.
+ */
+
+#ifdef CONFIG_X86
+  #define setW(x, val) (*(volatile __u32 *)&W(x) = (val))
+#elif defined(CONFIG_ARM)
+  #define setW(x, val) do { W(x) = (val); __asm__("":::"memory"); } while (0)
+#else
+  #define setW(x, val) (W(x) = (val))
+#endif
+
+/* This "rolls" over the 512-bit array */
+#define W(x) (array[(x)&15])
+
+/*
+ * Where do we get the source from? The first 16 iterations get it from
+ * the input data, the next mix it from the 512-bit array.
+ */
+#define SHA_SRC(t) get_unaligned_be32((__u32 *)data + t)
+#define SHA_MIX(t) rol32(W(t+13) ^ W(t+8) ^ W(t+2) ^ W(t), 1)
+
+#define SHA_ROUND(t, input, fn, constant, A, B, C, D, E) do { \
+	__u32 TEMP = input(t); setW(t, TEMP); \
+	E += TEMP + rol32(A,5) + (fn) + (constant); \
+	B = ror32(B, 2); } while (0)
+
+#define T_0_15(t, A, B, C, D, E)  SHA_ROUND(t, SHA_SRC, (((C^D)&B)^D) , 0x5a827999, A, B, C, D, E )
+#define T_16_19(t, A, B, C, D, E) SHA_ROUND(t, SHA_MIX, (((C^D)&B)^D) , 0x5a827999, A, B, C, D, E )
+#define T_20_39(t, A, B, C, D, E) SHA_ROUND(t, SHA_MIX, (B^C^D) , 0x6ed9eba1, A, B, C, D, E )
+#define T_40_59(t, A, B, C, D, E) SHA_ROUND(t, SHA_MIX, ((B&C)+(D&(B^C))) , 0x8f1bbcdc, A, B, C, D, E )
+#define T_60_79(t, A, B, C, D, E) SHA_ROUND(t, SHA_MIX, (B^C^D) ,  0xca62c1d6, A, B, C, D, E )
+
+/**
+ * sha_transform - single block SHA1 transform
+ *
+ * @digest: 160 bit digest to update
+ * @data:   512 bits of data to hash
+ * @array:  16 words of workspace (see note)
+ *
+ * This function generates a SHA1 digest for a single 512-bit block.
+ * Be warned, it does not handle padding and message digest, do not
+ * confuse it with the full FIPS 180-1 digest algorithm for variable
+ * length messages.
+ *
+ * Note: If the hash is security sensitive, the caller should be sure
+ * to clear the workspace. This is left to the caller to avoid
+ * unnecessary clears between chained hashing operations.
+ */
+static void sha_transform(__u32 *digest, const char *data, __u32 *array)
+{
+	__u32 A, B, C, D, E;
+
+	A = digest[0];
+	B = digest[1];
+	C = digest[2];
+	D = digest[3];
+	E = digest[4];
+
+	/* Round 1 - iterations 0-16 take their input from 'data' */
+	T_0_15( 0, A, B, C, D, E);
+	T_0_15( 1, E, A, B, C, D);
+	T_0_15( 2, D, E, A, B, C);
+	T_0_15( 3, C, D, E, A, B);
+	T_0_15( 4, B, C, D, E, A);
+	T_0_15( 5, A, B, C, D, E);
+	T_0_15( 6, E, A, B, C, D);
+	T_0_15( 7, D, E, A, B, C);
+	T_0_15( 8, C, D, E, A, B);
+	T_0_15( 9, B, C, D, E, A);
+	T_0_15(10, A, B, C, D, E);
+	T_0_15(11, E, A, B, C, D);
+	T_0_15(12, D, E, A, B, C);
+	T_0_15(13, C, D, E, A, B);
+	T_0_15(14, B, C, D, E, A);
+	T_0_15(15, A, B, C, D, E);
+
+	/* Round 1 - tail. Input from 512-bit mixing array */
+	T_16_19(16, E, A, B, C, D);
+	T_16_19(17, D, E, A, B, C);
+	T_16_19(18, C, D, E, A, B);
+	T_16_19(19, B, C, D, E, A);
+
+	/* Round 2 */
+	T_20_39(20, A, B, C, D, E);
+	T_20_39(21, E, A, B, C, D);
+	T_20_39(22, D, E, A, B, C);
+	T_20_39(23, C, D, E, A, B);
+	T_20_39(24, B, C, D, E, A);
+	T_20_39(25, A, B, C, D, E);
+	T_20_39(26, E, A, B, C, D);
+	T_20_39(27, D, E, A, B, C);
+	T_20_39(28, C, D, E, A, B);
+	T_20_39(29, B, C, D, E, A);
+	T_20_39(30, A, B, C, D, E);
+	T_20_39(31, E, A, B, C, D);
+	T_20_39(32, D, E, A, B, C);
+	T_20_39(33, C, D, E, A, B);
+	T_20_39(34, B, C, D, E, A);
+	T_20_39(35, A, B, C, D, E);
+	T_20_39(36, E, A, B, C, D);
+	T_20_39(37, D, E, A, B, C);
+	T_20_39(38, C, D, E, A, B);
+	T_20_39(39, B, C, D, E, A);
+
+	/* Round 3 */
+	T_40_59(40, A, B, C, D, E);
+	T_40_59(41, E, A, B, C, D);
+	T_40_59(42, D, E, A, B, C);
+	T_40_59(43, C, D, E, A, B);
+	T_40_59(44, B, C, D, E, A);
+	T_40_59(45, A, B, C, D, E);
+	T_40_59(46, E, A, B, C, D);
+	T_40_59(47, D, E, A, B, C);
+	T_40_59(48, C, D, E, A, B);
+	T_40_59(49, B, C, D, E, A);
+	T_40_59(50, A, B, C, D, E);
+	T_40_59(51, E, A, B, C, D);
+	T_40_59(52, D, E, A, B, C);
+	T_40_59(53, C, D, E, A, B);
+	T_40_59(54, B, C, D, E, A);
+	T_40_59(55, A, B, C, D, E);
+	T_40_59(56, E, A, B, C, D);
+	T_40_59(57, D, E, A, B, C);
+	T_40_59(58, C, D, E, A, B);
+	T_40_59(59, B, C, D, E, A);
+
+	/* Round 4 */
+	T_60_79(60, A, B, C, D, E);
+	T_60_79(61, E, A, B, C, D);
+	T_60_79(62, D, E, A, B, C);
+	T_60_79(63, C, D, E, A, B);
+	T_60_79(64, B, C, D, E, A);
+	T_60_79(65, A, B, C, D, E);
+	T_60_79(66, E, A, B, C, D);
+	T_60_79(67, D, E, A, B, C);
+	T_60_79(68, C, D, E, A, B);
+	T_60_79(69, B, C, D, E, A);
+	T_60_79(70, A, B, C, D, E);
+	T_60_79(71, E, A, B, C, D);
+	T_60_79(72, D, E, A, B, C);
+	T_60_79(73, C, D, E, A, B);
+	T_60_79(74, B, C, D, E, A);
+	T_60_79(75, A, B, C, D, E);
+	T_60_79(76, E, A, B, C, D);
+	T_60_79(77, D, E, A, B, C);
+	T_60_79(78, C, D, E, A, B);
+	T_60_79(79, B, C, D, E, A);
+
+	digest[0] += A;
+	digest[1] += B;
+	digest[2] += C;
+	digest[3] += D;
+	digest[4] += E;
+}
+
+static int digest_sha1_update(struct digest *desc, const void *data,
+			     unsigned long len)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	unsigned int partial, done;
+	const u8 *src;
+
+	partial = sctx->count % SHA1_BLOCK_SIZE;
+	sctx->count += len;
+	done = 0;
+	src = data;
+
+	if ((partial + len) >= SHA1_BLOCK_SIZE) {
+		u32 temp[SHA_WORKSPACE_WORDS];
+
+		if (partial) {
+			done = -partial;
+			memcpy(sctx->buffer + partial, data,
+			       done + SHA1_BLOCK_SIZE);
+			src = sctx->buffer;
+		}
+
+		do {
+			sha_transform(sctx->state, src, temp);
+			done += SHA1_BLOCK_SIZE;
+			src = data + done;
+		} while (done + SHA1_BLOCK_SIZE <= len);
+
+		memset(temp, 0, sizeof(temp));
+		partial = 0;
+	}
+	memcpy(sctx->buffer + partial, src, len - done);
+
+	return 0;
+}
+
+static int digest_sha1_final(struct digest *desc, unsigned char *md)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	__be32 *dst = (__be32 *)md;
+	u32 i, index, padlen;
+	__be64 bits;
+	static const u8 padding[64] = { 0x80, };
+
+	bits = cpu_to_be64(sctx->count << 3);
+
+	/* Pad out to 56 mod 64 */
+	index = sctx->count & 0x3f;
+	padlen = (index < 56) ? (56 - index) : ((64+56) - index);
+	digest_sha1_update(desc, padding, padlen);
+
+	/* Append length */
+	digest_sha1_update(desc, (const u8 *)&bits, sizeof(bits));
+
+	/* Store state in digest */
+	for (i = 0; i < 5; i++)
+		dst[i] = cpu_to_be32(sctx->state[i]);
+
+	/* Wipe context */
+	memset(sctx, 0, sizeof *sctx);
+
+	return 0;
+}
+
+static struct digest_algo m = {
+	.base = {
+		.name		=	"sha1",
+		.driver_name	=	"sha1-generic",
+		.priority	=	0,
+	},
+
+	.init = digest_sha1_init,
+	.update = digest_sha1_update,
+	.final = digest_sha1_final,
+	.digest = digest_generic_digest,
+	.verify = digest_generic_verify,
+	.length = SHA1_DIGEST_SIZE,
+	.ctx_length = sizeof(struct sha1_state),
+};
+
+static int sha1_digest_register(void)
+{
+	int ret;
+
+	ret = digest_algo_register(&m);
+	if (ret)
+		return ret;
+
+	return digest_hmac_register(&m, 64);
+}
+device_initcall(sha1_digest_register);
diff --git a/include/crypto/sha.h b/include/crypto/sha.h
new file mode 100644
index 0000000..190f8a0
--- /dev/null
+++ b/include/crypto/sha.h
@@ -0,0 +1,95 @@
+/*
+ * Common values for SHA algorithms
+ */
+
+#ifndef _CRYPTO_SHA_H
+#define _CRYPTO_SHA_H
+
+#include <linux/types.h>
+
+#define SHA1_DIGEST_SIZE        20
+#define SHA1_BLOCK_SIZE         64
+
+#define SHA224_DIGEST_SIZE	28
+#define SHA224_BLOCK_SIZE	64
+
+#define SHA256_DIGEST_SIZE      32
+#define SHA256_BLOCK_SIZE       64
+
+#define SHA384_DIGEST_SIZE      48
+#define SHA384_BLOCK_SIZE       128
+
+#define SHA512_DIGEST_SIZE      64
+#define SHA512_BLOCK_SIZE       128
+
+#define SHA1_H0		0x67452301UL
+#define SHA1_H1		0xefcdab89UL
+#define SHA1_H2		0x98badcfeUL
+#define SHA1_H3		0x10325476UL
+#define SHA1_H4		0xc3d2e1f0UL
+
+#define SHA224_H0	0xc1059ed8UL
+#define SHA224_H1	0x367cd507UL
+#define SHA224_H2	0x3070dd17UL
+#define SHA224_H3	0xf70e5939UL
+#define SHA224_H4	0xffc00b31UL
+#define SHA224_H5	0x68581511UL
+#define SHA224_H6	0x64f98fa7UL
+#define SHA224_H7	0xbefa4fa4UL
+
+#define SHA256_H0	0x6a09e667UL
+#define SHA256_H1	0xbb67ae85UL
+#define SHA256_H2	0x3c6ef372UL
+#define SHA256_H3	0xa54ff53aUL
+#define SHA256_H4	0x510e527fUL
+#define SHA256_H5	0x9b05688cUL
+#define SHA256_H6	0x1f83d9abUL
+#define SHA256_H7	0x5be0cd19UL
+
+#define SHA384_H0	0xcbbb9d5dc1059ed8ULL
+#define SHA384_H1	0x629a292a367cd507ULL
+#define SHA384_H2	0x9159015a3070dd17ULL
+#define SHA384_H3	0x152fecd8f70e5939ULL
+#define SHA384_H4	0x67332667ffc00b31ULL
+#define SHA384_H5	0x8eb44a8768581511ULL
+#define SHA384_H6	0xdb0c2e0d64f98fa7ULL
+#define SHA384_H7	0x47b5481dbefa4fa4ULL
+
+#define SHA512_H0	0x6a09e667f3bcc908ULL
+#define SHA512_H1	0xbb67ae8584caa73bULL
+#define SHA512_H2	0x3c6ef372fe94f82bULL
+#define SHA512_H3	0xa54ff53a5f1d36f1ULL
+#define SHA512_H4	0x510e527fade682d1ULL
+#define SHA512_H5	0x9b05688c2b3e6c1fULL
+#define SHA512_H6	0x1f83d9abfb41bd6bULL
+#define SHA512_H7	0x5be0cd19137e2179ULL
+
+struct sha1_state {
+	u64 count;
+	u32 state[SHA1_DIGEST_SIZE / 4];
+	u8 buffer[SHA1_BLOCK_SIZE];
+};
+
+struct sha256_state {
+	u64 count;
+	u32 state[SHA256_DIGEST_SIZE / 4];
+	u8 buf[SHA256_BLOCK_SIZE];
+};
+
+struct sha512_state {
+	u64 count[2];
+	u64 state[SHA512_DIGEST_SIZE / 8];
+	u8 buf[SHA512_BLOCK_SIZE];
+};
+
+struct shash_desc;
+
+extern int crypto_sha1_update(struct shash_desc *desc, const u8 *data,
+			      unsigned int len);
+
+extern int crypto_sha256_update(struct shash_desc *desc, const u8 *data,
+			      unsigned int len);
+
+extern int crypto_sha512_update(struct shash_desc *desc, const u8 *data,
+			      unsigned int len);
+#endif
diff --git a/include/digest.h b/include/digest.h
index c1221fc..e4b1696 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -126,4 +126,9 @@ static inline const char *digest_name(struct digest *d)
 	return d->algo->base.name;
 }
 
+static inline void* digest_ctx(struct digest *d)
+{
+	return d->ctx;
+}
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
