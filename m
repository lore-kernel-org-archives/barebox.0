Delivery-date: Sun, 21 Mar 2021 16:21:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztN-000264-Lj
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:25 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztH-0002is-4I
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ReMeHT6lKNzjmn+I7UghEGqfNACKGcehPMXQGzx9rOU=; b=CA/Puz+u1KJLfgS1zHiy8Nmns
	pIwGG/Ob9nVZQyvhcXkAGpYQvmsMrW3bEIzcQiJI/1PN1I/2YisO7GAVSpZRXpQBg0mHOeP1gAoZI
	GeJoCBq1G+MOtC9Bj7TW9pXEinq5pkbHjiUh3IC2NAKZ0OJdpyRxc41AL3HgY79q3tzwBBTvgB8fj
	cB7REsohJUoj36bogU9nKHMi3KnDGsp9rl8IthtV/lxcR95Vxo0VvYhXWmBF2Zh8giiFU4eYki8rQ
	BB/SozdfKaugngdOW0zlmfFwhNIoUzsIJcdaD0ONUMYOaJNN/myundp7vndvGMLqQlP2+ZmcQ1IdY
	zKTsk2L1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrq-00A4kB-Ek; Sun, 21 Mar 2021 15:19:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmE-00A41s-8B
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011U-7d; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007wP-Vq; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:34 +0100
Message-Id: <20210321151344.5810-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_863737_AD3759FA 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 11/21] RISC-V: import Linux' optimized string functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For non-NMON enabled board the RISC-V specific settings menu will be
empty. Improve UI/UX by adding something there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig              |   7 ++
 arch/riscv/include/asm/string.h |  21 +++++-
 arch/riscv/lib/Makefile         |   1 +
 arch/riscv/lib/memcpy.S         | 108 ++++++++++++++++++++++++++++++
 arch/riscv/lib/memmove.S        |  64 ++++++++++++++++++
 arch/riscv/lib/memset.S         | 113 ++++++++++++++++++++++++++++++++
 6 files changed, 313 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/lib/memcpy.S
 create mode 100644 arch/riscv/lib/memmove.S
 create mode 100644 arch/riscv/lib/memset.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a7f362d8e80c..b1b24f2e5764 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -70,6 +70,13 @@ endmenu
 
 menu "RISC-V specific settings"
 
+config RISCV_OPTIMZED_STRING_FUNCTIONS
+	bool "use assembler optimized string functions"
+	help
+	  Say yes here to use assembler optimized memcpy / memset functions.
+	  These functions work faster than the normal versions but increase
+	  your binary size.
+
 config HAS_NMON
 	bool
 
diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
index 2997587d820c..1e920c8688ce 100644
--- a/arch/riscv/include/asm/string.h
+++ b/arch/riscv/include/asm/string.h
@@ -1 +1,20 @@
-/* dummy */
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_RISCV_STRING_H
+#define __ASM_RISCV_STRING_H
+
+#ifdef CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS
+
+#define __HAVE_ARCH_MEMCPY
+extern void *memcpy(void *, const void *, __kernel_size_t);
+#define __HAVE_ARCH_MEMSET
+extern void *memset(void *, int, __kernel_size_t);
+#define __HAVE_ARCH_MEMMOVE
+extern void *memmove(void *, const void *, __kernel_size_t);
+
+#endif
+
+extern void *__memcpy(void *, const void *, __kernel_size_t);
+extern void *__memset(void *, int, __kernel_size_t);
+extern void *__memmove(void *, const void *, __kernel_size_t);
+
+#endif
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 7fe57b0b554c..b983ca8cdca0 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,3 +2,4 @@ extra-y += barebox.lds
 
 obj-y += riscv_timer.o
 obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
+obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
diff --git a/arch/riscv/lib/memcpy.S b/arch/riscv/lib/memcpy.S
new file mode 100644
index 000000000000..51ab716253fa
--- /dev/null
+++ b/arch/riscv/lib/memcpy.S
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2013 Regents of the University of California
+ */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+/* void *memcpy(void *, const void *, size_t) */
+ENTRY(__memcpy)
+WEAK(memcpy)
+	move t6, a0  /* Preserve return value */
+
+	/* Defer to byte-oriented copy for small sizes */
+	sltiu a3, a2, 128
+	bnez a3, 4f
+	/* Use word-oriented copy only if low-order bits match */
+	andi a3, t6, SZREG-1
+	andi a4, a1, SZREG-1
+	bne a3, a4, 4f
+
+	beqz a3, 2f  /* Skip if already aligned */
+	/*
+	 * Round to nearest double word-aligned address
+	 * greater than or equal to start address
+	 */
+	andi a3, a1, ~(SZREG-1)
+	addi a3, a3, SZREG
+	/* Handle initial misalignment */
+	sub a4, a3, a1
+1:
+	lb a5, 0(a1)
+	addi a1, a1, 1
+	sb a5, 0(t6)
+	addi t6, t6, 1
+	bltu a1, a3, 1b
+	sub a2, a2, a4  /* Update count */
+
+2:
+	andi a4, a2, ~((16*SZREG)-1)
+	beqz a4, 4f
+	add a3, a1, a4
+3:
+	REG_L a4,       0(a1)
+	REG_L a5,   SZREG(a1)
+	REG_L a6, 2*SZREG(a1)
+	REG_L a7, 3*SZREG(a1)
+	REG_L t0, 4*SZREG(a1)
+	REG_L t1, 5*SZREG(a1)
+	REG_L t2, 6*SZREG(a1)
+	REG_L t3, 7*SZREG(a1)
+	REG_L t4, 8*SZREG(a1)
+	REG_L t5, 9*SZREG(a1)
+	REG_S a4,       0(t6)
+	REG_S a5,   SZREG(t6)
+	REG_S a6, 2*SZREG(t6)
+	REG_S a7, 3*SZREG(t6)
+	REG_S t0, 4*SZREG(t6)
+	REG_S t1, 5*SZREG(t6)
+	REG_S t2, 6*SZREG(t6)
+	REG_S t3, 7*SZREG(t6)
+	REG_S t4, 8*SZREG(t6)
+	REG_S t5, 9*SZREG(t6)
+	REG_L a4, 10*SZREG(a1)
+	REG_L a5, 11*SZREG(a1)
+	REG_L a6, 12*SZREG(a1)
+	REG_L a7, 13*SZREG(a1)
+	REG_L t0, 14*SZREG(a1)
+	REG_L t1, 15*SZREG(a1)
+	addi a1, a1, 16*SZREG
+	REG_S a4, 10*SZREG(t6)
+	REG_S a5, 11*SZREG(t6)
+	REG_S a6, 12*SZREG(t6)
+	REG_S a7, 13*SZREG(t6)
+	REG_S t0, 14*SZREG(t6)
+	REG_S t1, 15*SZREG(t6)
+	addi t6, t6, 16*SZREG
+	bltu a1, a3, 3b
+	andi a2, a2, (16*SZREG)-1  /* Update count */
+
+4:
+	/* Handle trailing misalignment */
+	beqz a2, 6f
+	add a3, a1, a2
+
+	/* Use word-oriented copy if co-aligned to word boundary */
+	or a5, a1, t6
+	or a5, a5, a3
+	andi a5, a5, 3
+	bnez a5, 5f
+7:
+	lw a4, 0(a1)
+	addi a1, a1, 4
+	sw a4, 0(t6)
+	addi t6, t6, 4
+	bltu a1, a3, 7b
+
+	ret
+
+5:
+	lb a4, 0(a1)
+	addi a1, a1, 1
+	sb a4, 0(t6)
+	addi t6, t6, 1
+	bltu a1, a3, 5b
+6:
+	ret
+END(__memcpy)
diff --git a/arch/riscv/lib/memmove.S b/arch/riscv/lib/memmove.S
new file mode 100644
index 000000000000..07d1d2152ba5
--- /dev/null
+++ b/arch/riscv/lib/memmove.S
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+ENTRY(__memmove)
+WEAK(memmove)
+        move    t0, a0
+        move    t1, a1
+
+        beq     a0, a1, exit_memcpy
+        beqz    a2, exit_memcpy
+        srli    t2, a2, 0x2
+
+        slt     t3, a0, a1
+        beqz    t3, do_reverse
+
+        andi    a2, a2, 0x3
+        li      t4, 1
+        beqz    t2, byte_copy
+
+word_copy:
+        lw      t3, 0(a1)
+        addi    t2, t2, -1
+        addi    a1, a1, 4
+        sw      t3, 0(a0)
+        addi    a0, a0, 4
+        bnez    t2, word_copy
+        beqz    a2, exit_memcpy
+        j       byte_copy
+
+do_reverse:
+        add     a0, a0, a2
+        add     a1, a1, a2
+        andi    a2, a2, 0x3
+        li      t4, -1
+        beqz    t2, reverse_byte_copy
+
+reverse_word_copy:
+        addi    a1, a1, -4
+        addi    t2, t2, -1
+        lw      t3, 0(a1)
+        addi    a0, a0, -4
+        sw      t3, 0(a0)
+        bnez    t2, reverse_word_copy
+        beqz    a2, exit_memcpy
+
+reverse_byte_copy:
+        addi    a0, a0, -1
+        addi    a1, a1, -1
+
+byte_copy:
+        lb      t3, 0(a1)
+        addi    a2, a2, -1
+        sb      t3, 0(a0)
+        add     a1, a1, t4
+        add     a0, a0, t4
+        bnez    a2, byte_copy
+
+exit_memcpy:
+        move a0, t0
+        move a1, t1
+        ret
+END(__memmove)
diff --git a/arch/riscv/lib/memset.S b/arch/riscv/lib/memset.S
new file mode 100644
index 000000000000..34c5360c6705
--- /dev/null
+++ b/arch/riscv/lib/memset.S
@@ -0,0 +1,113 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2013 Regents of the University of California
+ */
+
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+/* void *memset(void *, int, size_t) */
+ENTRY(__memset)
+WEAK(memset)
+	move t0, a0  /* Preserve return value */
+
+	/* Defer to byte-oriented fill for small sizes */
+	sltiu a3, a2, 16
+	bnez a3, 4f
+
+	/*
+	 * Round to nearest XLEN-aligned address
+	 * greater than or equal to start address
+	 */
+	addi a3, t0, SZREG-1
+	andi a3, a3, ~(SZREG-1)
+	beq a3, t0, 2f  /* Skip if already aligned */
+	/* Handle initial misalignment */
+	sub a4, a3, t0
+1:
+	sb a1, 0(t0)
+	addi t0, t0, 1
+	bltu t0, a3, 1b
+	sub a2, a2, a4  /* Update count */
+
+2: /* Duff's device with 32 XLEN stores per iteration */
+	/* Broadcast value into all bytes */
+	andi a1, a1, 0xff
+	slli a3, a1, 8
+	or a1, a3, a1
+	slli a3, a1, 16
+	or a1, a3, a1
+#ifdef CONFIG_64BIT
+	slli a3, a1, 32
+	or a1, a3, a1
+#endif
+
+	/* Calculate end address */
+	andi a4, a2, ~(SZREG-1)
+	add a3, t0, a4
+
+	andi a4, a4, 31*SZREG  /* Calculate remainder */
+	beqz a4, 3f            /* Shortcut if no remainder */
+	neg a4, a4
+	addi a4, a4, 32*SZREG  /* Calculate initial offset */
+
+	/* Adjust start address with offset */
+	sub t0, t0, a4
+
+	/* Jump into loop body */
+	/* Assumes 32-bit instruction lengths */
+	la a5, 3f
+#ifdef CONFIG_64BIT
+	srli a4, a4, 1
+#endif
+	add a5, a5, a4
+	jr a5
+3:
+	REG_S a1,        0(t0)
+	REG_S a1,    SZREG(t0)
+	REG_S a1,  2*SZREG(t0)
+	REG_S a1,  3*SZREG(t0)
+	REG_S a1,  4*SZREG(t0)
+	REG_S a1,  5*SZREG(t0)
+	REG_S a1,  6*SZREG(t0)
+	REG_S a1,  7*SZREG(t0)
+	REG_S a1,  8*SZREG(t0)
+	REG_S a1,  9*SZREG(t0)
+	REG_S a1, 10*SZREG(t0)
+	REG_S a1, 11*SZREG(t0)
+	REG_S a1, 12*SZREG(t0)
+	REG_S a1, 13*SZREG(t0)
+	REG_S a1, 14*SZREG(t0)
+	REG_S a1, 15*SZREG(t0)
+	REG_S a1, 16*SZREG(t0)
+	REG_S a1, 17*SZREG(t0)
+	REG_S a1, 18*SZREG(t0)
+	REG_S a1, 19*SZREG(t0)
+	REG_S a1, 20*SZREG(t0)
+	REG_S a1, 21*SZREG(t0)
+	REG_S a1, 22*SZREG(t0)
+	REG_S a1, 23*SZREG(t0)
+	REG_S a1, 24*SZREG(t0)
+	REG_S a1, 25*SZREG(t0)
+	REG_S a1, 26*SZREG(t0)
+	REG_S a1, 27*SZREG(t0)
+	REG_S a1, 28*SZREG(t0)
+	REG_S a1, 29*SZREG(t0)
+	REG_S a1, 30*SZREG(t0)
+	REG_S a1, 31*SZREG(t0)
+	addi t0, t0, 32*SZREG
+	bltu t0, a3, 3b
+	andi a2, a2, SZREG-1  /* Update count */
+
+4:
+	/* Handle trailing misalignment */
+	beqz a2, 6f
+	add a3, t0, a2
+5:
+	sb a1, 0(t0)
+	addi t0, t0, 1
+	bltu t0, a3, 5b
+6:
+	ret
+END(__memset)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

