Delivery-date: Wed, 10 Mar 2021 09:50:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuY6-0001CV-JH
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuY3-0002Y8-9J
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Id7FM4vJPluDZWTA3kxPkiirr6+1ruQmHoZAy4Ls+fE=; b=oRc2K2XFU5QgjEeG+YrDsxBy3
	cwP9+Gql7ZJG6365z+lUAE3f2dEZLewUCussBX99du/NZuJaTQ7dCJp6WxM0qkYMoE8YhIyIcwZCR
	2FZYGLA5dvfG/nKTwBBZ9P6qH9hjY54jc49H05PFlKdRsh2YfE6fwaabfbCr0verzhcJiRfTIDrvH
	8jopTNt2X2tAprWH9idDvhkS9s5cH7nfQPfbiIUd1a3qR2ID7KV+dV9syWlV7roYNJSUzNsOP4af2
	2Pdpl8LZAPC/w/Qwj+BRCrKS7nbDgNxpLtuB/W+CJ6mqHRLs+M0G4PgvL6tVeGwwdEZPn2dzOHBaL
	dMQQVnBlQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWu-006LkG-QW; Wed, 10 Mar 2021 08:49:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVn-006LMh-LB
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001Te-2o; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zX-Jj; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:53 +0100
Message-Id: <20210310084800.3584-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084812_017718_18C64474 
X-CRM114-Status: GOOD (  15.54  )
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
Subject: [PATCH v3 09/16] mips: Implement setjmp/longjmp/initjmp for 32BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The header has been taken from glibc, the implementation itself is based
on the newlib implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/Kconfig              |  1 +
 arch/mips/include/asm/setjmp.h | 32 ++++++++++++++++++++++
 arch/mips/lib/Makefile         |  1 +
 arch/mips/lib/setjmp.S         | 50 ++++++++++++++++++++++++++++++++++
 4 files changed, 84 insertions(+)
 create mode 100644 arch/mips/include/asm/setjmp.h
 create mode 100644 arch/mips/lib/setjmp.S

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 48f97c4bbf30..7774abe94827 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -303,6 +303,7 @@ choice
 config 32BIT
 	bool "32-bit barebox"
 	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
+	select HAS_ARCH_SJLJ
 	help
 	  Select this option if you want to build a 32-bit barebox.
 
diff --git a/arch/mips/include/asm/setjmp.h b/arch/mips/include/asm/setjmp.h
new file mode 100644
index 000000000000..5a9af7773a5f
--- /dev/null
+++ b/arch/mips/include/asm/setjmp.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
+
+/*
+ * Define the machine-dependent type `jmp_buf'.  MIPS version.
+ * Copyright (C) 1992-2021 Free Software Foundation, Inc.
+ * This file is part of the GNU C Library.
+ */
+
+#ifndef _MIPS_BITS_SETJMP_H
+#define _MIPS_BITS_SETJMP_H 1
+
+#include <asm/sgidefs.h>
+
+typedef struct __jmp_buf_internal_tag {
+	/* Program counter.  */
+	void *__pc;
+
+	/* Stack pointer.  */
+	void *__sp;
+
+	/* Callee-saved registers s0 through s7.  */
+	int __regs[8];
+
+	/* The frame pointer.  */
+	void *__fp;
+} jmp_buf[1];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
+#endif /* _MIPS_BITS_SETJMP_H */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 0761588ae865..88a2bdbd282b 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -8,6 +8,7 @@ obj-y += reloc.o
 obj-y += sections.o
 obj-y += shutdown.o
 obj-y += dma-default.o
+obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o
 
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memcpy.o
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memset.o
diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
new file mode 100644
index 000000000000..b09a7c55293c
--- /dev/null
+++ b/arch/mips/lib/setjmp.S
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm/regdef.h>
+#include <asm/asm.h>
+#include <linux/linkage.h>
+
+/* int setjmp (jmp_buf);  */
+LEAF(setjmp)
+	sw	ra, (0 * 4)(a0)
+	sw	sp, (1 * 4)(a0)
+	sw	s0, (2 * 4)(a0)
+	sw	s1, (3 * 4)(a0)
+	sw	s2, (4 * 4)(a0)
+	sw	s3, (5 * 4)(a0)
+	sw	s4, (6 * 4)(a0)
+	sw	s5, (7 * 4)(a0)
+	sw	s6, (8 * 4)(a0)
+	sw	s7, (9 * 4)(a0)
+	sw	fp, (10 * 4)(a0)
+	move	v0, zero
+	j	ra
+END(setjmp)
+
+/* volatile void longjmp (jmp_buf, int);  */
+LEAF(longjmp)
+	lw	ra, (0 * 4)(a0)
+	lw	sp, (1 * 4)(a0)
+	lw	s0, (2 * 4)(a0)
+	lw	s1, (3 * 4)(a0)
+	lw	s2, (4 * 4)(a0)
+	lw	s3, (5 * 4)(a0)
+	lw	s4, (6 * 4)(a0)
+	lw	s5, (7 * 4)(a0)
+	lw	s6, (8 * 4)(a0)
+	lw	s7, (9 * 4)(a0)
+	lw	fp, (10 * 4)(a0)
+	bne	a1, zero, 1f
+	li	a1, 1
+1:
+	move	v0, a1
+	j	ra
+END(longjmp)
+
+/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
+LEAF(initjmp)
+	sw	a1, (0 * 4)(a0)
+	sw	a2, (1 * 4)(a0)
+	move	v0, zero
+	j	ra
+END(initjmp)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

