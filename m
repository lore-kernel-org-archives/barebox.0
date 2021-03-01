Delivery-date: Mon, 01 Mar 2021 12:03:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKR-0004W5-2G
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:03:07 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKP-0000S1-Uw
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:03:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wZI+XGQiRbDp6sOtx7gJh5w0fk+a1Q/DGnS9tN75GbA=; b=esHk6UNlt8YxfiZSNgkyaurQL
	SafNbGTzQTY1Vj1GgUpjR7gxHLoO/izWw5JVD2T6WUL7rbSvi0w62OOs9OznY5QlDzqlB7VTWym1v
	cBFaxqgl4rn7Ht+QrMOlSxRKPCktFKrG9nxHTZyEqkcc0QEDe9/jLzOCvaPFCshwdRIo0y7ljApBH
	UcYE+bbBwsPsreNWZcsRhA6qFaWcnIhCd2ELEUFNpcY6b9eLYfyKRsJAbOj6fbcDNlPNHFPMBYUJZ
	sqyth0q2CZ2yWSZ0WC3aa0cD+NG/7tZ1eer/8nnNzijGOnChmfuh2owVE7BsbjwWbwY7iTiywI+EZ
	5pgN3F7+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgJE-0005Xq-N9; Mon, 01 Mar 2021 11:01:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIk-0005Kp-B8
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089P-9t; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001bU-Ft; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:01:06 +0100
Message-Id: <20210301110106.3764-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060122_633366_2A6EF7FC 
X-CRM114-Status: GOOD (  16.33  )
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
Subject: [PATCH v2 11/11] powerpc: Implement initjmp/setjmp/longjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Implementation has been taken from newlib as this is much simpler than
the glibc version.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/powerpc/Kconfig              |  1 +
 arch/powerpc/include/asm/setjmp.h | 21 ++++++++
 arch/powerpc/lib/Makefile         |  2 +-
 arch/powerpc/lib/setjmp.S         | 86 +++++++++++++++++++++++++++++++
 4 files changed, 109 insertions(+), 1 deletion(-)
 create mode 100644 arch/powerpc/include/asm/setjmp.h
 create mode 100644 arch/powerpc/lib/setjmp.S

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 90ec7b1702e9..376c1bf42b5e 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -6,6 +6,7 @@ config PPC
 	select HAS_CACHE
 	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
+	select HAS_ARCH_SJLJ
 	default y
 
 choice
diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
new file mode 100644
index 000000000000..c558415c99d9
--- /dev/null
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -0,0 +1,21 @@
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
+typedef struct __jmp_buf_internal_tag {
+	long int __regs[24];
+} jmp_buf[1];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
+#endif /* _SETJMP_H_ */
diff --git a/arch/powerpc/lib/Makefile b/arch/powerpc/lib/Makefile
index ba2f078b6277..405351c19929 100644
--- a/arch/powerpc/lib/Makefile
+++ b/arch/powerpc/lib/Makefile
@@ -9,4 +9,4 @@ obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
 obj-y += reloc.o
-
+obj-y += setjmp.o
diff --git a/arch/powerpc/lib/setjmp.S b/arch/powerpc/lib/setjmp.S
new file mode 100644
index 000000000000..021a57eebc3c
--- /dev/null
+++ b/arch/powerpc/lib/setjmp.S
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * This is a simple version of setjmp and longjmp for the PowerPC.
+ * Ian Lance Taylor, Cygnus Support, 9 Feb 1994.
+ */
+
+#include <linux/linkage.h>
+#include <asm/ppc_asm.tmpl>
+
+ENTRY(setjmp)
+	addi	r3,r3,7		# align to 8 byte boundary
+	rlwinm	r3,r3,0,0,28
+	stw	r1,0(r3)	# offset 0
+	stwu	r2,4(r3)	# offset 4
+	stwu	r13,4(r3)	# offset 8
+	stwu	r14,4(r3)	# offset 12
+	stwu	r15,4(r3)	# offset 16
+	stwu	r16,4(r3)	# offset 20
+	stwu	r17,4(r3)	# offset 24
+	stwu	r18,4(r3)	# offset 28
+	stwu	r19,4(r3)	# offset 32
+	stwu	r20,4(r3)	# offset 36
+	stwu	r21,4(r3)	# offset 40
+	stwu	r22,4(r3)	# offset 44
+	stwu	r23,4(r3)	# offset 48
+	stwu	r24,4(r3)	# offset 52
+	stwu	r25,4(r3)	# offset 56
+	stwu	r26,4(r3)	# offset 60
+	stwu	r27,4(r3)	# offset 64
+	stwu	r28,4(r3)	# offset 68
+	stwu	r29,4(r3)	# offset 72
+	stwu	r30,4(r3)	# offset 76
+	stwu	r31,4(r3)	# offset 80
+	mflr	r4
+	stwu	r4,4(r3)	# offset 84
+	mfcr	r4
+	stwu	r4,4(r3)	# offset 88
+
+	li	r3,0
+	blr
+END(setjmp)
+
+ENTRY(longjmp)
+	addi	r3,r3,7		# align to 8 byte boundary
+	rlwinm	r3,r3,0,0,28
+	lwz	r1,0(r3)	# offset 0
+	lwzu	r2,4(r3)	# offset 4
+	lwzu	r13,4(r3)	# offset 8
+	lwzu	r14,4(r3)	# offset 12
+	lwzu	r15,4(r3)	# offset 16
+	lwzu	r16,4(r3)	# offset 20
+	lwzu	r17,4(r3)	# offset 24
+	lwzu	r18,4(r3)	# offset 28
+	lwzu	r19,4(r3)	# offset 32
+	lwzu	r20,4(r3)	# offset 36
+	lwzu	r21,4(r3)	# offset 40
+	lwzu	r22,4(r3)	# offset 44
+	lwzu	r23,4(r3)	# offset 48
+	lwzu	r24,4(r3)	# offset 52
+	lwzu	r25,4(r3)	# offset 56
+	lwzu	r26,4(r3)	# offset 60
+	lwzu	r27,4(r3)	# offset 64
+	lwzu	r28,4(r3)	# offset 68
+	lwzu	r29,4(r3)	# offset 72
+	lwzu	r30,4(r3)	# offset 76
+	lwzu	r31,4(r3)	# offset 80
+	lwzu	r5,4(r3)	# offset 84
+	mtlr	r5
+	lwzu	r5,4(r3)	# offset 88
+	mtcrf	255,r5
+
+	mr.	r3,r4
+	bclr+	4,2
+	li	r3,1
+	blr
+END(longjmp)
+
+ENTRY(initjmp)
+	addi	r3,r3,7		# align to 8 byte boundary
+	rlwinm	r3,r3,0,0,28
+	stw	r5,0(r3)	# offset 0
+	stwu	r4,88(r3)	# offset 88
+	li	r3,0
+	blr
+END(initjmp)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

