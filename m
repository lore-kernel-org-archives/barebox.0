Delivery-date: Tue, 06 Jan 2026 14:02:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hO-001tcq-0v
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hM-0003ON-FE
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SVsy07tdQFuopXl+10bPdfIG31lrSun7bzrQml5IQGc=; b=hR500RkloVrczxrGhraBduMAIP
	5Dlsam/XEBYqj0mpLV/EnNtq2Yj8Og5RtSLn+n5UxExn+9ldUVKoPyRKzVZsXTIgKZA8dzUSWWQcj
	3ucV9wr64qF4U2uOaNdHxDQmrr57LeN88qG9DhOMndgPirEaKThB46w9bFkcCQIV00k5FpbJKCGrM
	2MvA1UX514vtihXCRPoOVqsj7XeNp67VdTS2+G8lobTd5qLKcCAy7N+JYMVmfVfKQpOYf8DyEOZMZ
	mHGdHvChtYx1vaeNx4gSr8h7igccNQx3yJgWRwXCs1jaDtnIIWUO5PBwFvnpHq7cMc2JiTkDqpsgh
	XbWWKdMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gq-0000000D2WC-2TLy;
	Tue, 06 Jan 2026 13:01:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qs-3Udd
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002qB-Du; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-009LeC-0k;
	Tue, 06 Jan 2026 14:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3aB9;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-13-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=5217;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Hz5o9wsx9nC57WG6LOqxXTh3alA3574zAXK8mJw1IG8=;
 b=9zE/bplUdJOxH4a2U9zJXTkNnCdTG9E65+zpKYwmMnYWx14msdRxJv8W74oB2U5yubOhM0kb9
 +UxgGYYm8PHCJuLXGXFlGfHsiTFD+Ffojbz+rmr4Qk/JOA79vs5S6DM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_896007_40D8825A 
X-CRM114-Status: GOOD (  16.15  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/21] ARM: use relative jumps in exception table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Create position-independent exception vectors using relative branches
instead of absolute addresses. This works on ARMv7 onwards which
supports setting the address of the exception vectors.

New .text_inplace_exceptions section contains PC-relative branches,
enabling barebox proper to start with MMU already configured using
ELF segment addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_32.S    | 20 ++++++++++++++++++++
 arch/arm/cpu/interrupts_32.c    |  7 ++-----
 arch/arm/cpu/no-mmu.c           | 11 +----------
 arch/arm/include/asm/sections.h |  1 +
 arch/arm/lib/pbl.lds.S          |  6 +++---
 arch/arm/lib32/barebox.lds.S    |  4 ++++
 6 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index dc3d42663cbedd37947e27d449eb4ac8c3d8c3f1..85ee4ca3fd4e5aff8e1e02aa3d7375173a923072 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -155,6 +155,26 @@ ENTRY(arm_fixup_vectors)
 ENDPROC(arm_fixup_vectors)
 #endif
 
+.section .text_inplace_exceptions
+1:	b 1b			/* barebox_arm_reset_vector */
+#ifdef CONFIG_ARM_EXCEPTIONS
+	b undefined_instruction	/* undefined instruction */
+	b software_interrupt	/* software interrupt (SWI) */
+	b prefetch_abort	/* prefetch abort */
+	b data_abort		/* data abort */
+1:	b 1b			/* (reserved) */
+	b irq			/* irq (interrupt) */
+	b fiq			/* fiq (fast interrupt) */
+#else
+1:	b 1b				/* undefined instruction */
+1:	b 1b				/* software interrupt (SWI) */
+1:	b 1b				/* prefetch abort */
+1:	b 1b				/* data abort */
+1:	b 1b				/* (reserved) */
+1:	b 1b				/* irq (interrupt) */
+1:	b 1b				/* fiq (fast interrupt) */
+#endif
+
 .section .text_exceptions
 .globl extable
 extable:
diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 0b88db10fe487378fe08018701bc672f63139fc1..5dc4802fafbfdbcd54707b84835f40177e10742b 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -231,10 +231,8 @@ static __maybe_unused int arm_init_vectors(void)
 	 * First try to use the vectors where they actually are, works
 	 * on ARMv7 and later.
 	 */
-	if (!set_vector_table((unsigned long)__exceptions_start)) {
-		arm_fixup_vectors();
+	if (!set_vector_table((unsigned long)__inplace_exceptions_start))
 		return 0;
-	}
 
 	/*
 	 * Next try high vectors at 0xffff0000.
@@ -264,7 +262,6 @@ void arm_pbl_init_exceptions(void)
 	if (cpu_architecture() < CPU_ARCH_ARMv7)
 		return;
 
-	set_vbar((unsigned long)__exceptions_start);
-	arm_fixup_vectors();
+	set_vbar((unsigned long)__inplace_exceptions_start);
 }
 #endif
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index c4ef5d1f9d55136d606c244309dbeeb8fd988784..68246d71156c7c84b9faff452cebb37132b83573 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -21,8 +21,6 @@
 #include <asm/sections.h>
 #include <asm/cputype.h>
 
-#define __exceptions_size (__exceptions_stop - __exceptions_start)
-
 static bool has_vbar(void)
 {
 	u32 mainid;
@@ -41,7 +39,6 @@ static bool has_vbar(void)
 
 static int nommu_v7_vectors_init(void)
 {
-	void *vectors;
 	u32 cr;
 
 	if (cpu_architecture() < CPU_ARCH_ARMv7)
@@ -58,13 +55,7 @@ static int nommu_v7_vectors_init(void)
 	cr &= ~CR_V;
 	set_cr(cr);
 
-	arm_fixup_vectors();
-
-	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
-	memset(vectors, 0, PAGE_SIZE);
-	memcpy(vectors, __exceptions_start, __exceptions_size);
-
-	set_vbar((unsigned int)vectors);
+	set_vbar((unsigned int)__inplace_exceptions_start);
 
 	return 0;
 }
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 15b1a6482a5b148284ab47de2db1c2653909da09..bf4fb7b109a7a22d9a298257af23a11b9efe6861 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -13,6 +13,7 @@ extern char __dynsym_start[];
 extern char __dynsym_end[];
 extern char __exceptions_start[];
 extern char __exceptions_stop[];
+extern char __inplace_exceptions_start[];
 
 #endif
 
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 9c51f5eb3a3d8256752a78e03fed851c84d92edb..53b21084cff2e3d916cd37485281f2f78166c37d 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -53,9 +53,9 @@ SECTIONS
 		*(.text_bare_init*)
 		__bare_init_end = .;
 		. = ALIGN(0x20);
-		__exceptions_start = .;
-		KEEP(*(.text_exceptions*))
-		__exceptions_stop = .;
+		__inplace_exceptions_start = .;
+		KEEP(*(.text_inplace_exceptions*))
+		__inplace_exceptions_stop = .;
 		*(.text*)
 	}
 
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index c704dd6d70f3ab157ceb67dfb14760e03f2a5d62..17e0970ba4989e5213ed38ea5ff87bdf5bfa2740 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -26,6 +26,10 @@ SECTIONS
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
+		. = ALIGN(0x20);
+		__inplace_exceptions_start = .;
+		KEEP(*(.text_inplace_exceptions*))
+		__inplace_exceptions_stop = .;
 		*(.text*)
 	}
 	BAREBOX_BARE_INIT_SIZE

-- 
2.47.3



