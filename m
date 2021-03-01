Delivery-date: Mon, 01 Mar 2021 12:02:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK3-0004Tb-VO
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:43 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK3-0000Fm-3E
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7n8oQGo/R/ac5GT60uteEXETHAMolsWLXN/OHQ9H3C4=; b=Bt9cNCMnqx7wSla5/FD3LNmwo
	lset7B+Tl3Bx7R3N96zscKGwUekXCZpW7uS1/oBjTYF7ewMfNmeHcYdhVFmh1AK6iHKpwAqrXpSB5
	tSAQOUgbGUibpf4iiTS5dvM+ds8UKex1noSBicSNoDHU4Oq8kLJxhz2Lc4j2AkDBHfrcBrUSur2lE
	64aVJqPVNcwqgnZVdFanDCZrXojPQ5jMfz7tlYoRyNIzHQkgZXMjb+2cNOYfFG1k+kf1L/pjfAXwS
	itXM1WWlOUsoP/PHu88EN/VaKDP215+5Z4fmp96kIlXkJQ0nGkpdX7G5vDi0pQi+JPMzaINTk8MnL
	CGpu1EGPQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIn-0005MQ-Hv; Mon, 01 Mar 2021 11:01:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005Hz-Gt
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089O-5w; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001bR-FQ; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:01:05 +0100
Message-Id: <20210301110106.3764-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_637544_75E4FA31 
X-CRM114-Status: GOOD (  17.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/11] mips: Implement setjmp/longjmp/initjmp
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
index 48f97c4bbf30..e77c9279ead3 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -12,6 +12,7 @@ config MIPS
 	select HAS_DMA
 	select ARCH_HAS_DATA_ABORT_MASK
 	select ELF
+	select HAS_ARCH_SJLJ
 	default y
 
 config SYS_SUPPORTS_BIG_ENDIAN
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
index 0761588ae865..f869ac088a7d 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -8,6 +8,7 @@ obj-y += reloc.o
 obj-y += sections.o
 obj-y += shutdown.o
 obj-y += dma-default.o
+obj-y += setjmp.o
 
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

