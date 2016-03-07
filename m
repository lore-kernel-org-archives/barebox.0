Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFT-0004ut-36
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:01 +0000
Received: by mail-lb0-x22b.google.com with SMTP id k15so130106413lbg.0
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:40 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.38
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:38 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:13 +0300
Message-Id: <1457357426-9868-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 02/15] MIPS: pbl: import cache init code from U-Boot
 v2016.01-212-ga3ab2ae
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/cacheops.h   |  29 ++++++++
 arch/mips/include/asm/mipsregs.h   |   8 +++
 arch/mips/include/asm/pbl_macros.h | 133 +++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)

diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
new file mode 100644
index 0000000..5bd44d5
--- /dev/null
+++ b/arch/mips/include/asm/cacheops.h
@@ -0,0 +1,29 @@
+/*
+ * Cache operations for the cache instruction.
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * (C) Copyright 1996, 97, 99, 2002, 03 Ralf Baechle
+ * (C) Copyright 1999 Silicon Graphics, Inc.
+ */
+#ifndef __ASM_CACHEOPS_H
+#define __ASM_CACHEOPS_H
+
+/*
+ * Most cache ops are split into a 2 bit field identifying the cache, and a 3
+ * bit field identifying the cache operation.
+ */
+#define Cache_I				0x00
+#define Cache_D				0x01
+
+#define Index_Store_Tag			0x08
+
+/*
+ * Cache Operations available on all MIPS processors with R4000-style caches
+ */
+#define Index_Store_Tag_I		(Cache_I | Index_Store_Tag)
+#define Index_Store_Tag_D		(Cache_D | Index_Store_Tag)
+
+#endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index f923860..30262e6 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -409,6 +409,14 @@
 #define MIPS_CONF1_PC		(_ULCAST_(1) <<  4)
 #define MIPS_CONF1_MD		(_ULCAST_(1) <<  5)
 #define MIPS_CONF1_C2		(_ULCAST_(1) <<  6)
+#define MIPS_CONF1_DA_SHF	7
+#define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
+#define MIPS_CONF1_DL_SHF	10
+#define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
+#define MIPS_CONF1_DS_SHF	13
+#define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
+#define MIPS_CONF1_IA_SHF	16
+
 #define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
 #define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
 #define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index dbe3410..37b150a 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -27,6 +27,8 @@
 #include <asm-generic/memory_layout.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
+#include <asm/addrspace.h>
+#include <asm/cacheops.h>
 
 	.macro	pbl_reg_writel val addr
 	.set push
@@ -212,4 +214,135 @@ copy_loop_exit:
 	.set	pop
 	.endm
 
+#ifndef CONFIG_SYS_MIPS_CACHE_MODE
+#define CONFIG_SYS_MIPS_CACHE_MODE CONF_CM_CACHABLE_NONCOHERENT
+#endif
+
+#define INDEX_BASE	CKSEG0
+
+	.macro	f_fill64 dst, offset, val
+	LONG_S	\val, (\offset +  0 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  1 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  2 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  3 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  4 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  5 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  6 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  7 * LONGSIZE)(\dst)
+#if LONGSIZE == 4
+	LONG_S	\val, (\offset +  8 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset +  9 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 10 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 11 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 12 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 13 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 14 * LONGSIZE)(\dst)
+	LONG_S	\val, (\offset + 15 * LONGSIZE)(\dst)
+#endif
+	.endm
+
+	.macro cache_loop	curr, end, line_sz, op
+10:	cache		\op, 0(\curr)
+	PTR_ADDU	\curr, \curr, \line_sz
+	bne		\curr, \end, 10b
+	.endm
+
+	.macro	l1_info		sz, line_sz, off
+	.set	push
+	.set	noat
+
+	mfc0	$1, CP0_CONFIG, 1
+
+	/* detect line size */
+	srl	\line_sz, $1, \off + MIPS_CONF1_DL_SHF - MIPS_CONF1_DA_SHF
+	andi	\line_sz, \line_sz, (MIPS_CONF1_DL >> MIPS_CONF1_DL_SHF)
+	move	\sz, zero
+	beqz	\line_sz, 10f
+	li	\sz, 2
+	sllv	\line_sz, \sz, \line_sz
+
+	/* detect associativity */
+	srl	\sz, $1, \off + MIPS_CONF1_DA_SHF - MIPS_CONF1_DA_SHF
+	andi	\sz, \sz, (MIPS_CONF1_DA >> MIPS_CONF1_DA_SHF)
+	addi	\sz, \sz, 1
+
+	/* sz *= line_sz */
+	mul	\sz, \sz, \line_sz
+
+	/* detect log32(sets) */
+	srl	$1, $1, \off + MIPS_CONF1_DS_SHF - MIPS_CONF1_DA_SHF
+	andi	$1, $1, (MIPS_CONF1_DS >> MIPS_CONF1_DS_SHF)
+	addiu	$1, $1, 1
+	andi	$1, $1, 0x7
+
+	/* sz <<= log32(sets) */
+	sllv	\sz, \sz, $1
+
+	/* sz *= 32 */
+	li	$1, 32
+	mul	\sz, \sz, $1
+10:
+	.set	pop
+	.endm
+
+/*
+ * mips_cache_reset - low level initialisation of the primary caches
+ *
+ * This routine initialises the primary caches to ensure that they have good
+ * parity.  It must be called by the ROM before any cached locations are used
+ * to prevent the possibility of data with bad parity being written to memory.
+ *
+ * To initialise the instruction cache it is essential that a source of data
+ * with good parity is available. This routine will initialise an area of
+ * memory starting at location zero to be used as a source of parity.
+ *
+ */
+	.macro	mips_cache_reset
+
+	l1_info	t2, t8, MIPS_CONF1_IA_SHF
+	l1_info	t3, t9, MIPS_CONF1_DA_SHF
+
+	/*
+	 * The TagLo registers used depend upon the CPU implementation, but the
+	 * architecture requires that it is safe for software to write to both
+	 * TagLo selects 0 & 2 covering supported cases.
+	 */
+	mtc0	zero, CP0_TAGLO
+	mtc0	zero, CP0_TAGLO, 2
+
+	/*
+	 * The caches are probably in an indeterminate state, so we force good
+	 * parity into them by doing an invalidate for each line.
+	 */
+
+	/*
+	 * Initialize the I-cache first,
+	 */
+	blez		t2, 1f
+	PTR_LI		t0, INDEX_BASE
+	PTR_ADDU	t1, t0, t2
+	/* clear tag to invalidate */
+	cache_loop	t0, t1, t8, Index_Store_Tag_I
+
+	/*
+	 * then initialize D-cache.
+	 */
+1:	blez		t3, 3f
+	PTR_LI		t0, INDEX_BASE
+	PTR_ADDU	t1, t0, t3
+	/* clear all tags */
+	cache_loop	t0, t1, t9, Index_Store_Tag_D
+
+3:	nop
+
+	.endm
+
+	.macro	dcache_enable
+	mfc0	t0, CP0_CONFIG
+	ori	t0, CONF_CM_CMASK
+	xori	t0, CONF_CM_CMASK
+	ori	t0, CONFIG_SYS_MIPS_CACHE_MODE
+	mtc0	t0, CP0_CONFIG
+	.endm
+
 #endif /* __ASM_PBL_MACROS_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
