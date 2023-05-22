Delivery-date: Mon, 22 May 2023 07:31:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y90-009JKi-1Q
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:31:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y8x-0003xw-Cx
	for lore@pengutronix.de; Mon, 22 May 2023 07:31:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zlgwUiQF+6grktoDckSiLaBzUHsqrL9bp7Ouk1Wh3qw=; b=vZXMw8dTMiVNnEhHRv8DzwcN26
	S569YdfDAr0JtGsSoPOFPX0d35A43Mi+rMeh+YxfBMr2+9C+lq+AwQGwcbkM59/a+ZxYT1+LOJPcZ
	tgCbXJwWYpcKjHc08AJQcgzy92cX8GHyegnpFw8xxkFHz8Ms9Mk5XXKrtO30sB4euxj3WC1T9nwMO
	J6S70DJc9LqtocSCuR8v8/b1J1lg0dufL6QDLNP8QCN7ixKNJABYGTOSlBJEQWfPp0JLn0SrWvjOv
	cCyp4X5ZjXyRtXBNUvFBQV944UV64e6RXYzRytdBK3OFw4tJM0Rq0Rknh40uspagvo1yedjQAQ1md
	qGZy5sBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y8G-005Plk-1Z;
	Mon, 22 May 2023 05:30:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y88-005PgP-1h
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y87-0003VS-C2; Mon, 22 May 2023 07:30:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y86-001vwz-Op; Mon, 22 May 2023 07:30:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y85-004MS7-4g; Mon, 22 May 2023 07:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:30:42 +0200
Message-Id: <20230522053044.1039572-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
References: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_223048_561113_AE037B51 
X-CRM114-Status: GOOD (  15.88  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] ARM: asm: import Linux adr_l/ldr_l assembler.h definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These macros will come in handy to have loads in assembly routines not
generate relocation entries.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/assembler.h | 211 +++++++++++++++++++++++++++++++
 1 file changed, 211 insertions(+)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 7f9281b9a1a1..5db0f692eec6 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -130,3 +130,214 @@
 #else
 #define CPU_LE(code...) code
 #endif
+
+#ifdef CONFIG_CPU_64
+/*
+ * Pseudo-ops for PC-relative adr/ldr/str <reg>, <symbol> where
+ * <symbol> is within the range +/- 4 GB of the PC.
+ */
+	/*
+	 * @dst: destination register (64 bit wide)
+	 * @sym: name of the symbol
+	 */
+	.macro	adr_l, dst, sym
+	adrp	\dst, \sym
+	add	\dst, \dst, :lo12:\sym
+	.endm
+
+	/*
+	 * @dst: destination register (32 or 64 bit wide)
+	 * @sym: name of the symbol
+	 * @tmp: optional 64-bit scratch register to be used if <dst> is a
+	 *       32-bit wide register, in which case it cannot be used to hold
+	 *       the address
+	 */
+	.macro	ldr_l, dst, sym, tmp=
+	.ifb	\tmp
+	adrp	\dst, \sym
+	ldr	\dst, [\dst, :lo12:\sym]
+	.else
+	adrp	\tmp, \sym
+	ldr	\dst, [\tmp, :lo12:\sym]
+	.endif
+	.endm
+
+	/*
+	 * @src: source register (32 or 64 bit wide)
+	 * @sym: name of the symbol
+	 * @tmp: mandatory 64-bit scratch register to calculate the address
+	 *       while <src> needs to be preserved.
+	 */
+	.macro	str_l, src, sym, tmp
+	adrp	\tmp, \sym
+	str	\src, [\tmp, :lo12:\sym]
+	.endm
+
+#else
+
+	.macro		__adldst_l, op, reg, sym, tmp, c
+	.if		__LINUX_ARM_ARCH__ < 7
+	ldr\c		\tmp, .La\@
+	.subsection	1
+	.align		2
+.La\@:	.long		\sym - .Lpc\@
+	.previous
+	.else
+	.ifnb		\c
+ THUMB(	ittt		\c			)
+	.endif
+	movw\c		\tmp, #:lower16:\sym - .Lpc\@
+	movt\c		\tmp, #:upper16:\sym - .Lpc\@
+	.endif
+
+#ifndef CONFIG_THUMB2_BAREBOX
+	.set		.Lpc\@, . + 8			// PC bias
+	.ifc		\op, add
+	add\c		\reg, \tmp, pc
+	.else
+	\op\c		\reg, [pc, \tmp]
+	.endif
+#else
+.Lb\@:	add\c		\tmp, \tmp, pc
+	/*
+	 * In Thumb-2 builds, the PC bias depends on whether we are currently
+	 * emitting into a .arm or a .thumb section. The size of the add opcode
+	 * above will be 2 bytes when emitting in Thumb mode and 4 bytes when
+	 * emitting in ARM mode, so let's use this to account for the bias.
+	 */
+	.set		.Lpc\@, . + (. - .Lb\@)
+
+	.ifnc		\op, add
+	\op\c		\reg, [\tmp]
+	.endif
+#endif
+	.endm
+
+	/*
+	 * mov_l - move a constant value or [relocated] address into a register
+	 */
+	.macro		mov_l, dst:req, imm:req, cond
+	.if		__LINUX_ARM_ARCH__ < 7
+	ldr\cond	\dst, =\imm
+	.else
+	movw\cond	\dst, #:lower16:\imm
+	movt\cond	\dst, #:upper16:\imm
+	.endif
+	.endm
+
+	/*
+	 * adr_l - adr pseudo-op with unlimited range
+	 *
+	 * @dst: destination register
+	 * @sym: name of the symbol
+	 * @cond: conditional opcode suffix
+	 */
+	.macro		adr_l, dst:req, sym:req, cond
+	__adldst_l	add, \dst, \sym, \dst, \cond
+	.endm
+
+	/*
+	 * ldr_l - ldr <literal> pseudo-op with unlimited range
+	 *
+	 * @dst: destination register
+	 * @sym: name of the symbol
+	 * @cond: conditional opcode suffix
+	 */
+	.macro		ldr_l, dst:req, sym:req, cond
+	__adldst_l	ldr, \dst, \sym, \dst, \cond
+	.endm
+
+	/*
+	 * str_l - str <literal> pseudo-op with unlimited range
+	 *
+	 * @src: source register
+	 * @sym: name of the symbol
+	 * @tmp: mandatory scratch register
+	 * @cond: conditional opcode suffix
+	 */
+	.macro		str_l, src:req, sym:req, tmp:req, cond
+	__adldst_l	str, \src, \sym, \tmp, \cond
+	.endm
+
+	.macro		__ldst_va, op, reg, tmp, sym, cond, offset
+#if __LINUX_ARM_ARCH__ >= 7 || \
+    (defined(MODULE) && defined(CONFIG_ARM_MODULE_PLTS))
+	mov_l		\tmp, \sym, \cond
+#else
+	/*
+	 * Avoid a literal load, by emitting a sequence of ADD/LDR instructions
+	 * with the appropriate relocations. The combined sequence has a range
+	 * of -/+ 256 MiB, which should be sufficient for the core kernel and
+	 * for modules loaded into the module region.
+	 */
+	.globl		\sym
+	.reloc		.L0_\@, R_ARM_ALU_PC_G0_NC, \sym
+	.reloc		.L1_\@, R_ARM_ALU_PC_G1_NC, \sym
+	.reloc		.L2_\@, R_ARM_LDR_PC_G2, \sym
+.L0_\@: sub\cond	\tmp, pc, #8 - \offset
+.L1_\@: sub\cond	\tmp, \tmp, #4 - \offset
+.L2_\@:
+#endif
+	\op\cond	\reg, [\tmp, #\offset]
+	.endm
+
+	/*
+	 * ldr_va - load a 32-bit word from the virtual address of \sym
+	 */
+	.macro		ldr_va, rd:req, sym:req, cond, tmp, offset=0
+	.ifnb		\tmp
+	__ldst_va	ldr, \rd, \tmp, \sym, \cond, \offset
+	.else
+	__ldst_va	ldr, \rd, \rd, \sym, \cond, \offset
+	.endif
+	.endm
+
+	/*
+	 * str_va - store a 32-bit word to the virtual address of \sym
+	 */
+	.macro		str_va, rn:req, sym:req, tmp:req, cond
+	__ldst_va	str, \rn, \tmp, \sym, \cond, 0
+	.endm
+
+	/*
+	 * ldr_this_cpu - Load a 32-bit word from the per-CPU variable 'sym'
+	 *		  into register 'rd', which may be the stack pointer,
+	 *		  using 't1' and 't2' as general temp registers. These
+	 *		  are permitted to overlap with 'rd' if != sp
+	 */
+	.macro		ldr_this_cpu, rd:req, sym:req, t1:req, t2:req
+	ldr_va		\rd, \sym, tmp=\t1
+	.endm
+
+	/*
+	 * rev_l - byte-swap a 32-bit value
+	 *
+	 * @val: source/destination register
+	 * @tmp: scratch register
+	 */
+	.macro		rev_l, val:req, tmp:req
+	.if		__LINUX_ARM_ARCH__ < 6
+	eor		\tmp, \val, \val, ror #16
+	bic		\tmp, \tmp, #0x00ff0000
+	mov		\val, \val, ror #8
+	eor		\val, \val, \tmp, lsr #8
+	.else
+	rev		\val, \val
+	.endif
+	.endm
+
+	/*
+	 * bl_r - branch and link to register
+	 *
+	 * @dst: target to branch to
+	 * @c: conditional opcode suffix
+	 */
+	.macro		bl_r, dst:req, c
+	.if		__LINUX_ARM_ARCH__ < 6
+	mov\c		lr, pc
+	mov\c		pc, \dst
+	.else
+	blx\c		\dst
+	.endif
+	.endm
+#endif
-- 
2.39.2



