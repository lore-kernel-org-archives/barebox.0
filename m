Delivery-date: Wed, 10 Mar 2021 09:50:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuYR-0001Dv-OG
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:55 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuYQ-0002ja-S7
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OlTyn4NRF4GH79ez6Puel7DkI82n35kzJTzktYvn3N0=; b=mkM2qk3TBk36scsQCprLs3+ZI
	yqc6VEXtN811WAeV+FmeNGhOKQYdg7jBm/JrX/9ASOD2qohUWf/L0m8LeUfhcCgT+ooZzCSX/xlZA
	ZvS1j0AtAtXSb7G2OLi5PL8zY5qtpvH5L+lgcBeY9oJHU7+4hU+sTLaF85rkICX2cwmiC7aP0DvSP
	G0lYYRDr6xqQn157SzNGeeUGKfNdQ24fvlm7eGE5cjhlxYM1wUTTt91L41ajnSNrqAaVL1a+IBwoK
	BE30OVxtOU5mb5axDseKblZHSPVq4h4D8HgT3DOwcJcEE2Og9VM8ksoMqvhpxYoxb0OWdUTj74vu9
	RQtWjW5WQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuXF-006LvL-9Z; Wed, 10 Mar 2021 08:49:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVv-006LOs-OL
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001Tc-2j; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zR-Ip; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:51 +0100
Message-Id: <20210310084800.3584-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084819_950112_93D6087A 
X-CRM114-Status: GOOD (  14.71  )
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
Subject: [PATCH v3 07/16] riscv: Implement setjmp/longjmp/initjmp for RV32I
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/setjmp.h | 27 +++++++++++++++++++++++++
 arch/riscv/lib/Makefile         |  1 +
 arch/riscv/lib/longjmp.S        | 28 ++++++++++++++++++++++++++
 arch/riscv/lib/setjmp.S         | 35 +++++++++++++++++++++++++++++++++
 5 files changed, 92 insertions(+)
 create mode 100644 arch/riscv/include/asm/setjmp.h
 create mode 100644 arch/riscv/lib/longjmp.S
 create mode 100644 arch/riscv/lib/setjmp.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 16c3eecce6f8..c8d63f99bb28 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -36,6 +36,7 @@ config ARCH_RV32I
 	select GENERIC_LIB_ASHLDI3
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
+	select HAS_ARCH_SJLJ
 
 endchoice
 
diff --git a/arch/riscv/include/asm/setjmp.h b/arch/riscv/include/asm/setjmp.h
new file mode 100644
index 000000000000..7516f6825841
--- /dev/null
+++ b/arch/riscv/include/asm/setjmp.h
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
+ * (C) Copyright 2016 Alexander Graf <agraf@suse.de>
+ */
+
+#ifndef _SETJMP_H_
+#define _SETJMP_H_	1
+
+#include <asm/types.h>
+
+typedef struct __jmp_buf_internal_tag
+  {
+	/* Program counter.  */
+	long int __pc;
+	/* Callee-saved registers.  */
+	long int __regs[12];
+	/* Stack pointer.  */
+	long int __sp;
+} jmp_buf[1];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
+#endif /* _SETJMP_H_ */
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index a1df0b7dc78c..7fe57b0b554c 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -1,3 +1,4 @@
 extra-y += barebox.lds
 
 obj-y += riscv_timer.o
+obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
diff --git a/arch/riscv/lib/longjmp.S b/arch/riscv/lib/longjmp.S
new file mode 100644
index 000000000000..7bcb5b30495d
--- /dev/null
+++ b/arch/riscv/lib/longjmp.S
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: LGPL-2.1-or-later
+
+/* longjmp, RISC-V version. */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+ENTRY (longjmp)
+	REG_L ra,  0*SZREG(a0)
+	REG_L s0,  1*SZREG(a0)
+	REG_L s1,  2*SZREG(a0)
+	REG_L s2,  3*SZREG(a0)
+	REG_L s3,  4*SZREG(a0)
+	REG_L s4,  5*SZREG(a0)
+	REG_L s5,  6*SZREG(a0)
+	REG_L s6,  7*SZREG(a0)
+	REG_L s7,  8*SZREG(a0)
+	REG_L s8,  9*SZREG(a0)
+	REG_L s9, 10*SZREG(a0)
+	REG_L s10,11*SZREG(a0)
+	REG_L s11,12*SZREG(a0)
+	REG_L sp, 13*SZREG(a0)
+
+	seqz a0, a1
+	add  a0, a0, a1   # a0 = (a1 == 0) ? 1 : a1
+	ret
+
+END (longjmp)
diff --git a/arch/riscv/lib/setjmp.S b/arch/riscv/lib/setjmp.S
new file mode 100644
index 000000000000..e8ad01635dd3
--- /dev/null
+++ b/arch/riscv/lib/setjmp.S
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: LGPL-2.1-or-later
+
+/* setjmp for RISC-V. */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+ENTRY (setjmp)
+	REG_S ra,  0*SZREG(a0)
+	REG_S s0,  1*SZREG(a0)
+	REG_S s1,  2*SZREG(a0)
+	REG_S s2,  3*SZREG(a0)
+	REG_S s3,  4*SZREG(a0)
+	REG_S s4,  5*SZREG(a0)
+	REG_S s5,  6*SZREG(a0)
+	REG_S s6,  7*SZREG(a0)
+	REG_S s7,  8*SZREG(a0)
+	REG_S s8,  9*SZREG(a0)
+	REG_S s9, 10*SZREG(a0)
+	REG_S s10,11*SZREG(a0)
+	REG_S s11,12*SZREG(a0)
+	REG_S sp, 13*SZREG(a0)
+
+	li a0, 0
+	ret
+
+END (setjmp)
+
+ENTRY (initjmp)
+	REG_S a1,  0*SZREG(a0)
+	REG_S a2, 13*SZREG(a0)
+	li a0, 0
+	ret
+
+END (initjmp)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

