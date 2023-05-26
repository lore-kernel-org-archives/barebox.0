Delivery-date: Fri, 26 May 2023 08:39:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6l-00EiOC-26
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:39:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6h-0007Se-J5
	for lore@pengutronix.de; Fri, 26 May 2023 08:39:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mW782QYpBzNEm5ppGSvIV2BVwQWjNAUtF7miJpDyaIM=; b=x+0rW9OZD5J1Ds7Ek9DpWuK/H3
	pzBV2Kq/onsBbNpubX2yAfE1ga3zTq1BvWmZ+dWBG8aMHLSlXBvVO4tpGHkM+4WBBRYgzi2yAsrOh
	NwFeWpHHf6bxu7PbGyxSzKvs4AoQVWdlJXoe0u7vnpOkWG0a/jVANxSInsxP2zKzZw9OpnIWeUt02
	WkMk8taY4zIiszl4RWbjT8AjZBMrZlj6HDek5KyuXbAzVzSBfTNZeB+1SngW91TMM2M6nQGk3z1jF
	XE+gvtlyHSpLBbYSCxZ50wrgG/RJa2i79yoUBEkV53+qYHB1arZKxTvqHcH4nCRHjMRA/wXg7KORz
	2A8fo/3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5X-001HgO-0t;
	Fri, 26 May 2023 06:38:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5S-001Hc0-16
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:38:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5B-0006qT-2A; Fri, 26 May 2023 08:37:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5A-002tWb-B7; Fri, 26 May 2023 08:37:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R59-004sYv-7J; Fri, 26 May 2023 08:37:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:37:46 +0200
Message-Id: <20230526063746.1155297-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
References: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233806_707684_DCACA566 
X-CRM114-Status: GOOD (  21.11  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 7/7] ARM64: crypto: add Crypto Extensions accelerated SHA implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This imports the Linux v6.3 state of the ARMv8 Crypto Extensions (CE)
accelerated SHA1/SHA2 routines. This increases hashing rate a tenfold:

  sha1-generic:   digest(7 bytes) = 11750ns digest(4097 bytes) = 59125ns
  sha224-generic: digest(7 bytes) = 12750ns digest(4097 bytes) = 95000ns
  sha256-generic: digest(7 bytes) =  2250ns digest(4097 bytes) = 94875ns
  sha1-ce:        digest(7 bytes) =  2875ns digest(4097 bytes) =  8125ns
  sha224-ce:      digest(7 bytes) =  3125ns digest(4097 bytes) =  7750ns
  sha256-ce:      digest(7 bytes) =   750ns digest(4097 bytes) =  7625ns

This shaves 400ms of a FIT image boot that uses sha256 as digest for
the images referenced by the selected configuration:

  barebox@imx8mn-old:/ time bootm -d kernel-a
  Dryrun. Aborted.
  time: 998ms

  barebox@imx8mn-new:/ time bootm -d kernel-a
  Dryrun. Aborted.
  time: 601ms

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Makefile               |   3 +-
 arch/arm/crypto/Makefile        |   6 ++
 arch/arm/crypto/sha1-ce-core.S  | 149 ++++++++++++++++++++++++++++++
 arch/arm/crypto/sha1-ce-glue.c  |  93 +++++++++++++++++++
 arch/arm/crypto/sha2-ce-core.S  | 156 ++++++++++++++++++++++++++++++++
 arch/arm/crypto/sha2-ce-glue.c  | 121 +++++++++++++++++++++++++
 arch/arm/include/asm/neon.h     |   8 ++
 crypto/Kconfig                  |  21 +++++
 include/crypto/sha.h            |   4 +
 include/crypto/sha1_base.h      | 104 +++++++++++++++++++++
 include/crypto/sha256_base.h    | 129 ++++++++++++++++++++++++++
 include/linux/barebox-wrapper.h |   1 +
 include/linux/string.h          |  20 ++++
 test/self/digest.c              |   2 +
 14 files changed, 816 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/crypto/sha1-ce-core.S
 create mode 100644 arch/arm/crypto/sha1-ce-glue.c
 create mode 100644 arch/arm/crypto/sha2-ce-core.S
 create mode 100644 arch/arm/crypto/sha2-ce-glue.c
 create mode 100644 arch/arm/include/asm/neon.h
 create mode 100644 include/crypto/sha1_base.h
 create mode 100644 include/crypto/sha256_base.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2208b071ac11..35ebc70f44e2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -195,11 +195,12 @@ endif
 
 common-y += arch/arm/boards/ $(MACH)
 common-y += arch/arm/cpu/
+common-y += arch/arm/crypto/
 
 ifeq ($(CONFIG_CPU_V8), y)
 common-y += arch/arm/lib64/
 else
-common-y += arch/arm/lib32/ arch/arm/crypto/
+common-y += arch/arm/lib32/
 endif
 
 common-$(CONFIG_OFTREE) += arch/arm/dts/
diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 990c0bd609cd..55b3ac0538f6 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -9,6 +9,12 @@ obj-$(CONFIG_DIGEST_SHA256_ARM) += sha256-arm.o
 sha1-arm-y	:= sha1-armv4-large.o sha1_glue.o
 sha256-arm-y	:= sha256-core.o sha256_glue.o
 
+obj-$(CONFIG_DIGEST_SHA1_ARM64_CE) += sha1-ce.o
+sha1-ce-y := sha1-ce-glue.o sha1-ce-core.o
+
+obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) += sha2-ce.o
+sha2-ce-y := sha2-ce-glue.o sha2-ce-core.o
+
 quiet_cmd_perl = PERL    $@
       cmd_perl = $(PERL) $(<) > $(@)
 
diff --git a/arch/arm/crypto/sha1-ce-core.S b/arch/arm/crypto/sha1-ce-core.S
new file mode 100644
index 000000000000..dec53c68c814
--- /dev/null
+++ b/arch/arm/crypto/sha1-ce-core.S
@@ -0,0 +1,149 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * sha1-ce-core.S - SHA-1 secure hash using ARMv8 Crypto Extensions
+ *
+ * Copyright (C) 2014 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+	.text
+	.arch		armv8-a+crypto
+
+	k0		.req	v0
+	k1		.req	v1
+	k2		.req	v2
+	k3		.req	v3
+
+	t0		.req	v4
+	t1		.req	v5
+
+	dga		.req	q6
+	dgav		.req	v6
+	dgb		.req	s7
+	dgbv		.req	v7
+
+	dg0q		.req	q12
+	dg0s		.req	s12
+	dg0v		.req	v12
+	dg1s		.req	s13
+	dg1v		.req	v13
+	dg2s		.req	s14
+
+	.macro		add_only, op, ev, rc, s0, dg1
+	.ifc		\ev, ev
+	add		t1.4s, v\s0\().4s, \rc\().4s
+	sha1h		dg2s, dg0s
+	.ifnb		\dg1
+	sha1\op		dg0q, \dg1, t0.4s
+	.else
+	sha1\op		dg0q, dg1s, t0.4s
+	.endif
+	.else
+	.ifnb		\s0
+	add		t0.4s, v\s0\().4s, \rc\().4s
+	.endif
+	sha1h		dg1s, dg0s
+	sha1\op		dg0q, dg2s, t1.4s
+	.endif
+	.endm
+
+	.macro		add_update, op, ev, rc, s0, s1, s2, s3, dg1
+	sha1su0		v\s0\().4s, v\s1\().4s, v\s2\().4s
+	add_only	\op, \ev, \rc, \s1, \dg1
+	sha1su1		v\s0\().4s, v\s3\().4s
+	.endm
+
+	.macro		loadrc, k, val, tmp
+	movz		\tmp, :abs_g0_nc:\val
+	movk		\tmp, :abs_g1:\val
+	dup		\k, \tmp
+	.endm
+
+	/*
+	 * int sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
+	 *			 int blocks)
+	 */
+SYM_FUNC_START(sha1_ce_transform)
+	/* load round constants */
+	loadrc		k0.4s, 0x5a827999, w6
+	loadrc		k1.4s, 0x6ed9eba1, w6
+	loadrc		k2.4s, 0x8f1bbcdc, w6
+	loadrc		k3.4s, 0xca62c1d6, w6
+
+	/* load state */
+	ld1		{dgav.4s}, [x0]
+	ldr		dgb, [x0, #16]
+
+	/* load sha1_ce_state::finalize */
+	ldr_l		w4, sha1_ce_offsetof_finalize, x4
+	ldr		w4, [x0, x4]
+
+	/* load input */
+0:	ld1		{v8.4s-v11.4s}, [x1], #64
+	sub		w2, w2, #1
+
+CPU_LE(	rev32		v8.16b, v8.16b		)
+CPU_LE(	rev32		v9.16b, v9.16b		)
+CPU_LE(	rev32		v10.16b, v10.16b	)
+CPU_LE(	rev32		v11.16b, v11.16b	)
+
+1:	add		t0.4s, v8.4s, k0.4s
+	mov		dg0v.16b, dgav.16b
+
+	add_update	c, ev, k0,  8,  9, 10, 11, dgb
+	add_update	c, od, k0,  9, 10, 11,  8
+	add_update	c, ev, k0, 10, 11,  8,  9
+	add_update	c, od, k0, 11,  8,  9, 10
+	add_update	c, ev, k1,  8,  9, 10, 11
+
+	add_update	p, od, k1,  9, 10, 11,  8
+	add_update	p, ev, k1, 10, 11,  8,  9
+	add_update	p, od, k1, 11,  8,  9, 10
+	add_update	p, ev, k1,  8,  9, 10, 11
+	add_update	p, od, k2,  9, 10, 11,  8
+
+	add_update	m, ev, k2, 10, 11,  8,  9
+	add_update	m, od, k2, 11,  8,  9, 10
+	add_update	m, ev, k2,  8,  9, 10, 11
+	add_update	m, od, k2,  9, 10, 11,  8
+	add_update	m, ev, k3, 10, 11,  8,  9
+
+	add_update	p, od, k3, 11,  8,  9, 10
+	add_only	p, ev, k3,  9
+	add_only	p, od, k3, 10
+	add_only	p, ev, k3, 11
+	add_only	p, od
+
+	/* update state */
+	add		dgbv.2s, dgbv.2s, dg1v.2s
+	add		dgav.4s, dgav.4s, dg0v.4s
+
+	cbz		w2, 2f
+	b		0b
+
+	/*
+	 * Final block: add padding and total bit count.
+	 * Skip if the input size was not a round multiple of the block size,
+	 * the padding is handled by the C code in that case.
+	 */
+2:	cbz		x4, 3f
+	ldr_l		w4, sha1_ce_offsetof_count, x4
+	ldr		x4, [x0, x4]
+	movi		v9.2d, #0
+	mov		x8, #0x80000000
+	movi		v10.2d, #0
+	ror		x7, x4, #29		// ror(lsl(x4, 3), 32)
+	fmov		d8, x8
+	mov		x4, #0
+	mov		v11.d[0], xzr
+	mov		v11.d[1], x7
+	b		1b
+
+	/* store new state */
+3:	st1		{dgav.4s}, [x0]
+	str		dgb, [x0, #16]
+	mov		w0, w2
+	ret
+SYM_FUNC_END(sha1_ce_transform)
diff --git a/arch/arm/crypto/sha1-ce-glue.c b/arch/arm/crypto/sha1-ce-glue.c
new file mode 100644
index 000000000000..5b49237573fa
--- /dev/null
+++ b/arch/arm/crypto/sha1-ce-glue.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sha1-ce-glue.c - SHA-1 secure hash using ARMv8 Crypto Extensions
+ *
+ * Copyright (C) 2014 - 2017 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#include <common.h>
+#include <digest.h>
+#include <init.h>
+#include <crypto/sha.h>
+#include <crypto/sha1_base.h>
+#include <crypto/internal.h>
+#include <linux/linkage.h>
+#include <asm/byteorder.h>
+#include <asm/neon.h>
+
+MODULE_DESCRIPTION("SHA1 secure hash using ARMv8 Crypto Extensions");
+MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS_CRYPTO("sha1");
+
+struct sha1_ce_state {
+	struct sha1_state	sst;
+	u32			finalize;
+};
+
+extern const u32 sha1_ce_offsetof_count;
+extern const u32 sha1_ce_offsetof_finalize;
+
+asmlinkage int sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
+				 int blocks);
+
+static void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
+				int blocks)
+{
+	while (blocks) {
+		int rem;
+
+		kernel_neon_begin();
+		rem = sha1_ce_transform(container_of(sst, struct sha1_ce_state,
+						     sst), src, blocks);
+		kernel_neon_end();
+		src += (blocks - rem) * SHA1_BLOCK_SIZE;
+		blocks = rem;
+	}
+}
+
+const u32 sha1_ce_offsetof_count = offsetof(struct sha1_ce_state, sst.count);
+const u32 sha1_ce_offsetof_finalize = offsetof(struct sha1_ce_state, finalize);
+
+static int sha1_ce_update(struct digest *desc, const void *data,
+			  unsigned long len)
+{
+	struct sha1_ce_state *sctx = digest_ctx(desc);
+
+	sctx->finalize = 0;
+	sha1_base_do_update(desc, data, len, __sha1_ce_transform);
+
+	return 0;
+}
+
+static int sha1_ce_final(struct digest *desc, u8 *out)
+{
+	struct sha1_ce_state *sctx = digest_ctx(desc);
+
+	sctx->finalize = 0;
+	sha1_base_do_finalize(desc, __sha1_ce_transform);
+	return sha1_base_finish(desc, out);
+}
+
+static struct digest_algo m = {
+	.base = {
+		.name		=	"sha1",
+		.driver_name	=	"sha1-ce",
+		.priority	=	200,
+		.algo		=	HASH_ALGO_SHA1,
+	},
+
+	.init	=	sha1_base_init,
+	.update	=	sha1_ce_update,
+	.final	=	sha1_ce_final,
+	.digest	=	digest_generic_digest,
+	.verify	=	digest_generic_verify,
+	.length	=	SHA1_DIGEST_SIZE,
+	.ctx_length =	sizeof(struct sha1_ce_state),
+};
+
+static int sha1_ce_mod_init(void)
+{
+	return digest_algo_register(&m);
+}
+coredevice_initcall(sha1_ce_mod_init);
diff --git a/arch/arm/crypto/sha2-ce-core.S b/arch/arm/crypto/sha2-ce-core.S
new file mode 100644
index 000000000000..5a60b13b87a2
--- /dev/null
+++ b/arch/arm/crypto/sha2-ce-core.S
@@ -0,0 +1,156 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * sha2-ce-core.S - core SHA-224/SHA-256 transform using v8 Crypto Extensions
+ *
+ * Copyright (C) 2014 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+	.text
+	.arch		armv8-a+crypto
+
+	dga		.req	q20
+	dgav		.req	v20
+	dgb		.req	q21
+	dgbv		.req	v21
+
+	t0		.req	v22
+	t1		.req	v23
+
+	dg0q		.req	q24
+	dg0v		.req	v24
+	dg1q		.req	q25
+	dg1v		.req	v25
+	dg2q		.req	q26
+	dg2v		.req	v26
+
+	.macro		add_only, ev, rc, s0
+	mov		dg2v.16b, dg0v.16b
+	.ifeq		\ev
+	add		t1.4s, v\s0\().4s, \rc\().4s
+	sha256h		dg0q, dg1q, t0.4s
+	sha256h2	dg1q, dg2q, t0.4s
+	.else
+	.ifnb		\s0
+	add		t0.4s, v\s0\().4s, \rc\().4s
+	.endif
+	sha256h		dg0q, dg1q, t1.4s
+	sha256h2	dg1q, dg2q, t1.4s
+	.endif
+	.endm
+
+	.macro		add_update, ev, rc, s0, s1, s2, s3
+	sha256su0	v\s0\().4s, v\s1\().4s
+	add_only	\ev, \rc, \s1
+	sha256su1	v\s0\().4s, v\s2\().4s, v\s3\().4s
+	.endm
+
+	/*
+	 * The SHA-256 round constants
+	 */
+	.section	".rodata", "a"
+	.align		4
+.Lsha2_rcon:
+	.word		0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5
+	.word		0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5
+	.word		0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3
+	.word		0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174
+	.word		0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc
+	.word		0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da
+	.word		0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7
+	.word		0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967
+	.word		0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13
+	.word		0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85
+	.word		0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3
+	.word		0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070
+	.word		0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5
+	.word		0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3
+	.word		0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208
+	.word		0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
+
+	/*
+	 * void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
+	 *			  int blocks)
+	 */
+	.text
+SYM_FUNC_START(sha2_ce_transform)
+	/* load round constants */
+	adr_l		x8, .Lsha2_rcon
+	ld1		{ v0.4s- v3.4s}, [x8], #64
+	ld1		{ v4.4s- v7.4s}, [x8], #64
+	ld1		{ v8.4s-v11.4s}, [x8], #64
+	ld1		{v12.4s-v15.4s}, [x8]
+
+	/* load state */
+	ld1		{dgav.4s, dgbv.4s}, [x0]
+
+	/* load sha256_ce_state::finalize */
+	ldr_l		w4, sha256_ce_offsetof_finalize, x4
+	ldr		w4, [x0, x4]
+
+	/* load input */
+0:	ld1		{v16.4s-v19.4s}, [x1], #64
+	sub		w2, w2, #1
+
+CPU_LE(	rev32		v16.16b, v16.16b	)
+CPU_LE(	rev32		v17.16b, v17.16b	)
+CPU_LE(	rev32		v18.16b, v18.16b	)
+CPU_LE(	rev32		v19.16b, v19.16b	)
+
+1:	add		t0.4s, v16.4s, v0.4s
+	mov		dg0v.16b, dgav.16b
+	mov		dg1v.16b, dgbv.16b
+
+	add_update	0,  v1, 16, 17, 18, 19
+	add_update	1,  v2, 17, 18, 19, 16
+	add_update	0,  v3, 18, 19, 16, 17
+	add_update	1,  v4, 19, 16, 17, 18
+
+	add_update	0,  v5, 16, 17, 18, 19
+	add_update	1,  v6, 17, 18, 19, 16
+	add_update	0,  v7, 18, 19, 16, 17
+	add_update	1,  v8, 19, 16, 17, 18
+
+	add_update	0,  v9, 16, 17, 18, 19
+	add_update	1, v10, 17, 18, 19, 16
+	add_update	0, v11, 18, 19, 16, 17
+	add_update	1, v12, 19, 16, 17, 18
+
+	add_only	0, v13, 17
+	add_only	1, v14, 18
+	add_only	0, v15, 19
+	add_only	1
+
+	/* update state */
+	add		dgav.4s, dgav.4s, dg0v.4s
+	add		dgbv.4s, dgbv.4s, dg1v.4s
+
+	/* handled all input blocks? */
+	cbz		w2, 2f
+	b		0b
+
+	/*
+	 * Final block: add padding and total bit count.
+	 * Skip if the input size was not a round multiple of the block size,
+	 * the padding is handled by the C code in that case.
+	 */
+2:	cbz		x4, 3f
+	ldr_l		w4, sha256_ce_offsetof_count, x4
+	ldr		x4, [x0, x4]
+	movi		v17.2d, #0
+	mov		x8, #0x80000000
+	movi		v18.2d, #0
+	ror		x7, x4, #29		// ror(lsl(x4, 3), 32)
+	fmov		d16, x8
+	mov		x4, #0
+	mov		v19.d[0], xzr
+	mov		v19.d[1], x7
+	b		1b
+
+	/* store new state */
+3:	st1		{dgav.4s, dgbv.4s}, [x0]
+	mov		w0, w2
+	ret
+SYM_FUNC_END(sha2_ce_transform)
diff --git a/arch/arm/crypto/sha2-ce-glue.c b/arch/arm/crypto/sha2-ce-glue.c
new file mode 100644
index 000000000000..88cbc7993dac
--- /dev/null
+++ b/arch/arm/crypto/sha2-ce-glue.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sha2-ce-glue.c - SHA-224/SHA-256 using ARMv8 Crypto Extensions
+ *
+ * Copyright (C) 2014 - 2017 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#include <common.h>
+#include <digest.h>
+#include <init.h>
+#include <crypto/sha.h>
+#include <crypto/sha256_base.h>
+#include <crypto/internal.h>
+#include <linux/linkage.h>
+#include <asm/byteorder.h>
+#include <asm/neon.h>
+
+#include <asm/neon.h>
+
+MODULE_DESCRIPTION("SHA-224/SHA-256 secure hash using ARMv8 Crypto Extensions");
+MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS_CRYPTO("sha224");
+MODULE_ALIAS_CRYPTO("sha256");
+
+struct sha256_ce_state {
+	struct sha256_state	sst;
+	u32			finalize;
+};
+
+extern const u32 sha256_ce_offsetof_count;
+extern const u32 sha256_ce_offsetof_finalize;
+
+asmlinkage int sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
+				 int blocks);
+
+static void __sha2_ce_transform(struct sha256_state *sst, u8 const *src,
+				int blocks)
+{
+	while (blocks) {
+		int rem;
+
+		kernel_neon_begin();
+		rem = sha2_ce_transform(container_of(sst, struct sha256_ce_state,
+						     sst), src, blocks);
+		kernel_neon_end();
+		src += (blocks - rem) * SHA256_BLOCK_SIZE;
+		blocks = rem;
+	}
+}
+
+const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
+					      sst.count);
+const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
+						 finalize);
+
+static int sha256_ce_update(struct digest *desc, const void *data,
+			    unsigned long len)
+{
+	struct sha256_ce_state *sctx = digest_ctx(desc);
+
+	sctx->finalize = 0;
+	sha256_base_do_update(desc, data, len, __sha2_ce_transform);
+
+	return 0;
+}
+
+static int sha256_ce_final(struct digest *desc, u8 *out)
+{
+	struct sha256_ce_state *sctx = digest_ctx(desc);
+
+	sctx->finalize = 0;
+	sha256_base_do_finalize(desc, __sha2_ce_transform);
+	return sha256_base_finish(desc, out);
+}
+
+static struct digest_algo sha224 = {
+	.base = {
+		.name		=	"sha224",
+		.driver_name	=	"sha224-ce",
+		.priority	=	200,
+		.algo		=	HASH_ALGO_SHA224,
+	},
+
+	.length	=	SHA224_DIGEST_SIZE,
+	.init	=	sha224_base_init,
+	.update	=	sha256_ce_update,
+	.final	=	sha256_ce_final,
+	.digest	=	digest_generic_digest,
+	.verify	=	digest_generic_verify,
+	.ctx_length =	sizeof(struct sha256_ce_state),
+};
+
+static int sha224_ce_digest_register(void)
+{
+	return digest_algo_register(&sha224);
+}
+coredevice_initcall(sha224_ce_digest_register);
+
+static struct digest_algo sha256 = {
+	.base = {
+		.name		=	"sha256",
+		.driver_name	=	"sha256-ce",
+		.priority	=	200,
+		.algo		=	HASH_ALGO_SHA256,
+	},
+
+	.length	=	SHA256_DIGEST_SIZE,
+	.init	=	sha256_base_init,
+	.update	=	sha256_ce_update,
+	.final	=	sha256_ce_final,
+	.digest	=	digest_generic_digest,
+	.verify	=	digest_generic_verify,
+	.ctx_length =	sizeof(struct sha256_ce_state),
+};
+
+static int sha256_ce_digest_register(void)
+{
+	return digest_algo_register(&sha256);
+}
+coredevice_initcall(sha256_ce_digest_register);
diff --git a/arch/arm/include/asm/neon.h b/arch/arm/include/asm/neon.h
new file mode 100644
index 000000000000..476462e83e80
--- /dev/null
+++ b/arch/arm/include/asm/neon.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ARM_ASM_NEON_H__
+#define __ARM_ASM_NEON_H__
+
+#define kernel_neon_begin()	((void)0)
+#define kernel_neon_end()	((void)0)
+
+#endif
diff --git a/crypto/Kconfig b/crypto/Kconfig
index f32accb3d090..629f615de1af 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -86,6 +86,27 @@ config DIGEST_SHA256_ARM
 	  SHA-256 secure hash standard (DFIPS 180-2) implemented
 	  using optimized ARM assembler and NEON, when available.
 
+config DIGEST_SHA1_ARM64_CE
+	tristate "SHA-1 digest algorithm (ARMv8 Crypto Extensions)"
+	depends on CPU_V8
+	select HAVE_DIGEST_SHA1
+	help
+	  SHA-1 secure hash algorithm (FIPS 180)
+
+	  Architecture: arm64 using:
+	  - ARMv8 Crypto Extensions
+
+config DIGEST_SHA256_ARM64_CE
+	tristate "SHA-224/256 digest algorithm (ARMv8 Crypto Extensions)"
+	depends on CPU_V8
+	select HAVE_DIGEST_SHA256
+	select HAVE_DIGEST_SHA224
+	help
+	  SHA-224 and SHA-256 secure hash algorithms (FIPS 180)
+
+	  Architecture: arm64 using:
+	  - ARMv8 Crypto Extensions
+
 endif
 
 config CRYPTO_PBKDF2
diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index b01d74cd3334..e23d7cb76692 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -66,6 +66,10 @@
 #define SHA512_H6	0x1f83d9abfb41bd6bULL
 #define SHA512_H7	0x5be0cd19137e2179ULL
 
+/*
+ * State must be first member for compatibility with assembly
+ * code imported from Linux
+ */
 struct sha1_state {
 	u32 state[SHA1_DIGEST_SIZE / 4];
 	u64 count;
diff --git a/include/crypto/sha1_base.h b/include/crypto/sha1_base.h
new file mode 100644
index 000000000000..8e1a5fdcc865
--- /dev/null
+++ b/include/crypto/sha1_base.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * sha1_base.h - core logic for SHA-1 implementations
+ *
+ * Copyright (C) 2015 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#ifndef _CRYPTO_SHA1_BASE_H
+#define _CRYPTO_SHA1_BASE_H
+
+#include <digest.h>
+#include <crypto/sha.h>
+#include <linux/string.h>
+
+#include <asm/unaligned.h>
+
+typedef void (sha1_block_fn)(struct sha1_state *sst, u8 const *src, int blocks);
+
+static inline int sha1_base_init(struct digest *desc)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+
+	*sctx = (struct sha1_state){
+		.state = { SHA1_H0, SHA1_H1, SHA1_H2, SHA1_H3, SHA1_H4 },
+	};
+
+	return 0;
+}
+
+static inline int sha1_base_do_update(struct digest *desc,
+				      const u8 *data,
+				      unsigned int len,
+				      sha1_block_fn *block_fn)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	unsigned int partial = sctx->count % SHA1_BLOCK_SIZE;
+
+	sctx->count += len;
+
+	if (unlikely((partial + len) >= SHA1_BLOCK_SIZE)) {
+		int blocks;
+
+		if (partial) {
+			int p = SHA1_BLOCK_SIZE - partial;
+
+			memcpy(sctx->buffer + partial, data, p);
+			data += p;
+			len -= p;
+
+			block_fn(sctx, sctx->buffer, 1);
+		}
+
+		blocks = len / SHA1_BLOCK_SIZE;
+		len %= SHA1_BLOCK_SIZE;
+
+		if (blocks) {
+			block_fn(sctx, data, blocks);
+			data += blocks * SHA1_BLOCK_SIZE;
+		}
+		partial = 0;
+	}
+	if (len)
+		memcpy(sctx->buffer + partial, data, len);
+
+	return 0;
+}
+
+static inline int sha1_base_do_finalize(struct digest *desc,
+					sha1_block_fn *block_fn)
+{
+	const int bit_offset = SHA1_BLOCK_SIZE - sizeof(__be64);
+	struct sha1_state *sctx = digest_ctx(desc);
+	__be64 *bits = (__be64 *)(sctx->buffer + bit_offset);
+	unsigned int partial = sctx->count % SHA1_BLOCK_SIZE;
+
+	sctx->buffer[partial++] = 0x80;
+	if (partial > bit_offset) {
+		memset(sctx->buffer + partial, 0x0, SHA1_BLOCK_SIZE - partial);
+		partial = 0;
+
+		block_fn(sctx, sctx->buffer, 1);
+	}
+
+	memset(sctx->buffer + partial, 0x0, bit_offset - partial);
+	*bits = cpu_to_be64(sctx->count << 3);
+	block_fn(sctx, sctx->buffer, 1);
+
+	return 0;
+}
+
+static inline int sha1_base_finish(struct digest *desc, u8 *out)
+{
+	struct sha1_state *sctx = digest_ctx(desc);
+	__be32 *digest = (__be32 *)out;
+	int i;
+
+	for (i = 0; i < SHA1_DIGEST_SIZE / sizeof(__be32); i++)
+		put_unaligned_be32(sctx->state[i], digest++);
+
+	memzero_explicit(sctx, sizeof(*sctx));
+	return 0;
+}
+
+#endif /* _CRYPTO_SHA1_BASE_H */
diff --git a/include/crypto/sha256_base.h b/include/crypto/sha256_base.h
new file mode 100644
index 000000000000..b9e48eb942d3
--- /dev/null
+++ b/include/crypto/sha256_base.h
@@ -0,0 +1,129 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * sha256_base.h - core logic for SHA-256 implementations
+ *
+ * Copyright (C) 2015 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#ifndef _CRYPTO_SHA256_BASE_H
+#define _CRYPTO_SHA256_BASE_H
+
+#include <digest.h>
+#include <crypto/sha.h>
+#include <linux/string.h>
+
+#include <asm/unaligned.h>
+
+typedef void (sha256_block_fn)(struct sha256_state *sst, u8 const *src,
+			       int blocks);
+
+static inline int sha224_base_init(struct digest *desc)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+
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
+static inline int sha256_base_init(struct digest *desc)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+
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
+static inline int sha256_base_do_update(struct digest *desc,
+					const u8 *data,
+					unsigned int len,
+					sha256_block_fn *block_fn)
+{
+	struct sha256_state *sctx = digest_ctx(desc);
+	unsigned int partial = sctx->count % SHA256_BLOCK_SIZE;
+
+	sctx->count += len;
+
+	if (unlikely((partial + len) >= SHA256_BLOCK_SIZE)) {
+		int blocks;
+
+		if (partial) {
+			int p = SHA256_BLOCK_SIZE - partial;
+
+			memcpy(sctx->buf + partial, data, p);
+			data += p;
+			len -= p;
+
+			block_fn(sctx, sctx->buf, 1);
+		}
+
+		blocks = len / SHA256_BLOCK_SIZE;
+		len %= SHA256_BLOCK_SIZE;
+
+		if (blocks) {
+			block_fn(sctx, data, blocks);
+			data += blocks * SHA256_BLOCK_SIZE;
+		}
+		partial = 0;
+	}
+	if (len)
+		memcpy(sctx->buf + partial, data, len);
+
+	return 0;
+}
+
+static inline int sha256_base_do_finalize(struct digest *desc,
+					  sha256_block_fn *block_fn)
+{
+	const int bit_offset = SHA256_BLOCK_SIZE - sizeof(__be64);
+	struct sha256_state *sctx = digest_ctx(desc);
+	__be64 *bits = (__be64 *)(sctx->buf + bit_offset);
+	unsigned int partial = sctx->count % SHA256_BLOCK_SIZE;
+
+	sctx->buf[partial++] = 0x80;
+	if (partial > bit_offset) {
+		memset(sctx->buf + partial, 0x0, SHA256_BLOCK_SIZE - partial);
+		partial = 0;
+
+		block_fn(sctx, sctx->buf, 1);
+	}
+
+	memset(sctx->buf + partial, 0x0, bit_offset - partial);
+	*bits = cpu_to_be64(sctx->count << 3);
+	block_fn(sctx, sctx->buf, 1);
+
+	return 0;
+}
+
+static inline int sha256_base_finish(struct digest *desc, u8 *out)
+{
+	unsigned int digest_size = digest_length(desc);
+	struct sha256_state *sctx = digest_ctx(desc);
+	__be32 *digest = (__be32 *)out;
+	int i;
+
+	for (i = 0; digest_size > 0; i++, digest_size -= sizeof(__be32))
+		put_unaligned_be32(sctx->state[i], digest++);
+
+	memzero_explicit(sctx, sizeof(*sctx));
+	return 0;
+}
+
+#endif /* _CRYPTO_SHA256_BASE_H */
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 28e87cb17316..ed237877fc75 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -22,6 +22,7 @@ static inline void vfree(const void *addr)
 #define MODULE_ALIAS(x)
 #define MODULE_DEVICE_TABLE(bus, table)
 #define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
+#define MODULE_ALIAS_CRYPTO(alias)
 
 #define __user
 #define __init
diff --git a/include/linux/string.h b/include/linux/string.h
index cd81ab13965b..75c8cf818b39 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -113,6 +113,26 @@ extern char *strim(char *);
 
 void *memchr_inv(const void *start, int c, size_t bytes);
 
+/**
+ * memzero_explicit - Fill a region of memory (e.g. sensitive
+ *		      keying data) with 0s.
+ * @s: Pointer to the start of the area.
+ * @count: The size of the area.
+ *
+ * Note: usually using memset() is just fine (!), but in cases
+ * where clearing out _local_ data at the end of a scope is
+ * necessary, memzero_explicit() should be used instead in
+ * order to prevent the compiler from optimising away zeroing.
+ *
+ * memzero_explicit() doesn't need an arch-specific version as
+ * it just invokes the one of memset() implicitly.
+ */
+static inline void memzero_explicit(void *s, size_t count)
+{
+	memset(s, 0, count);
+	barrier_data(s);
+}
+
 /**
  * kbasename - return the last part of a pathname.
  *
diff --git a/test/self/digest.c b/test/self/digest.c
index 769444ad15ce..4cda5b09637b 100644
--- a/test/self/digest.c
+++ b/test/self/digest.c
@@ -141,6 +141,7 @@ static void test_digests_sha12(const char *suffix)
 
 	cond = !strcmp(suffix, "generic") ? IS_ENABLED(CONFIG_DIGEST_SHA224_GENERIC) :
 	       !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM) :
+	       !strcmp(suffix, "ce")  ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM64_CE) :
 	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA224);
 
 	test_digest(cond, digest_suffix("sha224", suffix),
@@ -151,6 +152,7 @@ static void test_digests_sha12(const char *suffix)
 
 	cond = !strcmp(suffix, "generic") ? IS_ENABLED(CONFIG_DIGEST_SHA256_GENERIC) :
 	       !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM) :
+	       !strcmp(suffix, "ce")  ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM64_CE) :
 	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA256);
 
 	test_digest(cond, digest_suffix("sha256", suffix),
-- 
2.39.2



