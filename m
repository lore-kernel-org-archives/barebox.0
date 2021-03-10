Delivery-date: Wed, 10 Mar 2021 09:50:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXZ-0001B2-PD
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXY-0002Hn-2s
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lcIP00dmpb5fC3aaFeyLEVnX53pDhz0YzCHn3kUqbhY=; b=fjUhoiWJcbEySgZ/VmWVEJONh
	4u7SyKK5PKmTwpJqcm21wAuyUrtG46FATWoSWj2NZfqrDKzQx+6sAsTTRj0upDXyWn1fqXT5whY03
	nfOspfF3lS5NmXszKSR5cZmJHnsM4yb9EFdHDChw/fvsXimiDKZar+FHmNRgPRnAOpYovPcul/pYw
	6iTjZb0S5IpI/ihREEwDhFm3VDmMO9tqPS/tYb4eI7B6f4fG6r/CrNr9PyYtR7F/k7f0s9czvORDj
	aoORcg25xcY2xRekiT0TC7fm2Ju7oF9/tK2qyqSAXPhJShW6wyWCO/ySUCQabVWIS+clHT2P2rM11
	6TJYKTwDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWI-006LUm-Rb; Wed, 10 Mar 2021 08:48:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVj-006LL6-Uz
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVj-0001Tg-HC; Wed, 10 Mar 2021 09:48:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zd-Kh; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:55 +0100
Message-Id: <20210310084800.3584-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084808_491829_B33BB4B0 
X-CRM114-Status: GOOD (  17.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 11/16] x86: implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

For use with bthreads, implement CONFIG_HAS_ARCH_SJLJ.
Code is taken from U-Boot, itself based on the Linux ARCH=um.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/Kconfig              |  2 ++
 arch/x86/include/asm/setjmp.h | 44 +++++++++++++++++++++++++
 arch/x86/lib/Makefile         |  3 ++
 arch/x86/lib/setjmp_32.S      | 60 +++++++++++++++++++++++++++++++++++
 arch/x86/lib/setjmp_64.S      | 60 +++++++++++++++++++++++++++++++++++
 5 files changed, 169 insertions(+)
 create mode 100644 arch/x86/include/asm/setjmp.h
 create mode 100644 arch/x86/lib/setjmp_32.S
 create mode 100644 arch/x86/lib/setjmp_64.S

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 0e3e5d61872a..e942c79cbd49 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -36,10 +36,12 @@ config 64BIT
 config X86_32
 	def_bool y
 	depends on !64BIT
+	select HAS_ARCH_SJLJ
 
 config X86_64
 	def_bool y
 	depends on 64BIT
+	select HAS_ARCH_SJLJ
 
 endmenu
 
diff --git a/arch/x86/include/asm/setjmp.h b/arch/x86/include/asm/setjmp.h
new file mode 100644
index 000000000000..88c198cfaeb9
--- /dev/null
+++ b/arch/x86/include/asm/setjmp.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Written by H. Peter Anvin <hpa@zytor.com>
+ * Brought in from Linux v4.4 and modified for U-Boot
+ * From Linux arch/um/sys-i386/setjmp.S
+ */
+
+#ifndef __setjmp_h
+#define __setjmp_h
+
+#include <linux/compiler.h>
+
+struct jmp_buf_data {
+#if defined CONFIG_X86_64
+#define __sjlj_attr
+	unsigned long __rip;
+	unsigned long __rsp;
+	unsigned long __rbp;
+	unsigned long __rbx;
+	unsigned long __r12;
+	unsigned long __r13;
+	unsigned long __r14;
+	unsigned long __r15;
+#elif defined CONFIG_X86_32
+#define __sjlj_attr	__attribute__((regparm(3)))
+	unsigned int __ebx;
+	unsigned int __esp;
+	unsigned int __ebp;
+	unsigned int __esi;
+	unsigned int __edi;
+	unsigned int __eip;
+#else
+#error "Unsupported configuration"
+#endif
+};
+
+typedef struct jmp_buf_data jmp_buf[1];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice)) __sjlj_attr;
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn)) __sjlj_attr;
+
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top) __sjlj_attr;
+
+#endif
diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
index 05e43f0f2b34..6a8fa7c0ff3e 100644
--- a/arch/x86/lib/Makefile
+++ b/arch/x86/lib/Makefile
@@ -4,5 +4,8 @@ obj-y += memory.o
 obj-y += gdt.o
 endif
 
+obj-$(CONFIG_X86_32) += setjmp_32.o
+obj-$(CONFIG_X86_64) += setjmp_64.o
+
 # needed, when running via a 16 bit BIOS
 obj-$(CONFIG_CMD_LINUX16) += linux_start.o
diff --git a/arch/x86/lib/setjmp_32.S b/arch/x86/lib/setjmp_32.S
new file mode 100644
index 000000000000..38dcb68c1b59
--- /dev/null
+++ b/arch/x86/lib/setjmp_32.S
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Written by H. Peter Anvin <hpa@zytor.com>
+ * Brought in from Linux v4.4 and modified for U-Boot
+ * From Linux arch/um/sys-i386/setjmp.S
+ */
+
+#define _REGPARM
+
+#include <linux/linkage.h>
+
+.text
+.align 8
+
+/*
+ * The jmp_buf is assumed to contain the following, in order:
+ *	%ebx
+ *	%esp
+ *	%ebp
+ *	%esi
+ *	%edi
+ *	<return address>
+ */
+
+ENTRY(setjmp)
+
+	movl %eax, %edx
+	popl %ecx		/* Return address, and adjust the stack */
+	xorl %eax, %eax		/* Return value */
+	movl %ebx, (%edx)
+	movl %esp, 4(%edx)	/* Post-return %esp! */
+	pushl %ecx		/* Make the call/return stack happy */
+	movl %ebp, 8(%edx)
+	movl %esi, 12(%edx)
+	movl %edi, 16(%edx)
+	movl %ecx, 20(%edx)	/* Return address */
+	ret
+
+ENDPROC(setjmp)
+
+ENTRY(longjmp)
+
+	xchgl %eax, %edx
+	movl (%edx), %ebx
+	movl 4(%edx), %esp
+	movl 8(%edx), %ebp
+	movl 12(%edx), %esi
+	movl 16(%edx), %edi
+	jmp *20(%edx)
+
+ENDPROC(longjmp)
+
+ENTRY(initjmp)
+
+	movl %edx, 20(%eax)	/* Return address */
+	movl %ecx, 4(%eax)	/* Post-return %esp! */
+	xorl %eax, %eax		/* Return value */
+	ret
+
+ENDPROC(initjmp)
diff --git a/arch/x86/lib/setjmp_64.S b/arch/x86/lib/setjmp_64.S
new file mode 100644
index 000000000000..28ea576cd22e
--- /dev/null
+++ b/arch/x86/lib/setjmp_64.S
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018 Intel Corporation
+ *
+ * See arch/x86/include/asm/setjmp.h for jmp_buf format
+ */
+
+#include <linux/linkage.h>
+
+.text
+.align 8
+
+ENTRY(setjmp)
+
+	pop	%rcx
+	movq	%rcx, (%rdi)	/* Return address */
+	movq	%rsp, 8(%rdi)
+	movq	%rbp, 16(%rdi)
+	movq	%rbx, 24(%rdi)
+	movq	%r12, 32(%rdi)
+	movq	%r13, 40(%rdi)
+	movq	%r14, 48(%rdi)
+	movq	%r15, 56(%rdi)
+	xorq	%rax, %rax	/* Direct invocation returns 0 */
+	jmpq	*%rcx
+
+ENDPROC(setjmp)
+
+.align 8
+
+ENTRY(longjmp)
+
+	movq	(%rdi), %rcx	/* Return address */
+	movq	8(%rdi), %rsp
+	movq	16(%rdi), %rbp
+	movq	24(%rdi), %rbx
+	movq	32(%rdi), %r12
+	movq	40(%rdi), %r13
+	movq	48(%rdi), %r14
+	movq	56(%rdi), %r15
+
+	movq	%rsi, %rax	/* Value to be returned by setjmp() */
+	testq	%rax, %rax	/* cannot be 0 in this case */
+	jnz	1f
+	incq	%rax		/* Return 1 instead */
+1:
+	jmpq	*%rcx
+
+ENDPROC(longjmp)
+
+.align 8
+
+ENTRY(initjmp)
+
+	movq	%rsi, (%rdi)	/* Return address */
+	movq	%rdx, 8(%rdi)	/* Stack top */
+	xorq	%rax, %rax
+	ret
+
+ENDPROC(initjmp)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

