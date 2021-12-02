Delivery-date: Thu, 02 Dec 2021 08:44:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglS-0006bi-Cm
	for lore@lore.pengutronix.de; Thu, 02 Dec 2021 08:44:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglR-0002nd-9o
	for lore@pengutronix.de; Thu, 02 Dec 2021 08:44:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y7heCDYYImedNdbJh5k8334WT8qLxP2m7SLNpTKhvfk=; b=AZ6U3EIVEqzNjR
	n8Q8L98/Eu20K3ssD+Kmj5vwnpfe9mT8LkZz95dLaxKYUl4sjLmAQmUy4I3ddrb/MKZx+t6RLCepo
	BkZiXSOjHixZS2gfK1kRXelY4yDWer7xPRBiS5tCqFqy+N1pTqZUOnkDmpYALSc9uWwF32pY6l5VH
	enL/RQWznAw6m5uPIdi1jsDYDQIOdn0X6nmy3lo0JFQy2P0Tt+ZnHXJ6+Iw4KleF2esqpUcnH4V2k
	uCyc/CBvnFtxjt6tmUwGLu42W4/1iAC769tWF2dOc6bUBb0usWG8oH97Gih3TPhSnWPbvMq3J3zak
	GaEg6lTjejV9TCCdUjXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msgkG-00BDDs-Sz; Thu, 02 Dec 2021 07:43:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msgk7-00BDAz-6F
 for barebox@lists.infradead.org; Thu, 02 Dec 2021 07:43:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-0002VC-Lk; Thu, 02 Dec 2021 08:42:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-000qJ7-5f; Thu, 02 Dec 2021 08:42:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Dec 2021 08:42:54 +0100
Message-Id: <20211202074256.200325-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_234259_263142_1BCE84F1 
X-CRM114-Status: GOOD (  20.08  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: implement ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The point of ENTRY_FUNCTION is to write the entry point in C. Due to
lack of __naked on ARM64, the start of the entry point will have prologue
using stack and it's not possible to set up the stack safely without
branching into non-inline assembly[0]. On ARM32, where we got __naked, we
have the potential for a different problem: If BootROM sets up stack for
us and we branch to a naked function, which doesn't set up its own
stack, compiler may decide to spill local variables overwriting
instructions it had already run[1].

For code reuse between ARM and ARM64, it would be nice to use the same
entry point structure for both. Currently, the only way is to write it
in non-inline assembly using the ENTRY_PROC macro.

This introduces another way: the ARM64 barebox header has enough space
for 8 instructions of which 5 are unused (2 instructions compiler prologue
+ 1 instruction to jump after the header), we could place a stack setup
routine there to avoid having to write a separate assembly file.
For ARM32, we just call arm_setup_stack and branch out directly after,
freeing board porters of the burden of getting it right.

Add a new ENTRY_FUNCTION_WITHSTACK to realize this.

[0]: 76bced6fe146 ("ARM: document arm_setup_stack() pitfalls"),
[1]: b51b15ba1738 ("RISC-V: board-dt-2nd: move low level init into nonnaked function")

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h |  6 +---
 arch/arm/include/asm/barebox-arm.h      | 45 +++++++++++++++++++++++++
 arch/arm/lib/pbl.lds.S                  |  1 +
 3 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 187d12c9fc8d..3e8da0da7c0a 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -44,14 +44,10 @@ static inline void __barebox_arm_head(void)
 		"1: b 1b\n"
 #endif
 #else
+		/* 5 instructions added by ENTRY_FUNCTION */
 		/* two instruction long function prologue */
 		/* only use if stack is initialized! */
 		"b 2f\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
 #endif
 		".asciz \"barebox\"\n"
 #ifdef CONFIG_CPU_32
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index cfb5943f33d6..d70de6d5e6e6 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -161,6 +161,51 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	}
 }
 
+#ifdef CONFIG_CPU_64
+
+#define ____emit_entry_prologue(instr, ...) do { \
+	static __attribute__ ((unused,section(".text_head_prologue"))) \
+		const u32 __entry_prologue[] = {(instr), ##__VA_ARGS__}; \
+	barrier_data(__entry_prologue); \
+} while(0)
+
+#define __emit_entry_prologue(instr1, instr2, instr3, instr4, instr5) \
+	____emit_entry_prologue(instr1, instr2, instr3, instr4, instr5)
+
+#define __ARM_SETUP_STACK(stack_top) \
+	__emit_entry_prologue(0x14000002	/* b pc+0x8 */,		\
+			      stack_top		/* 32-bit literal */,	\
+			      0x18ffffe9	/* ldr w9, top */,	\
+			      0xb4000049	/* cbz x9, pc+0x8 */,	\
+			      0x9100013f	/* mov sp, x9 */)
+#else
+#define __ARM_SETUP_STACK(stack_top) if (stack_top) arm_setup_stack(stack_top)
+#endif
+
+/*
+ * Unlike ENTRY_FUNCTION, this can be used to setup stack for a C entry
+ * point on both ARM32 and ARM64. ENTRY_FUNCTION on ARM64 can only be used
+ * if preceding boot stage has initialized the stack pointer.
+ *
+ * Stack top of 0 means stack is already set up. In that case, the follow-up
+ * code block will not be inlined and may spill to stack right away.
+ */
+#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+	void name(ulong r0, ulong r1, ulong r2);			\
+									\
+	static void __##name(ulong, ulong, ulong);			\
+									\
+	void NAKED __section(.text_head_entry_##name)	name		\
+				(ulong r0, ulong r1, ulong r2)		\
+		{							\
+			__barebox_arm_head();				\
+			__ARM_SETUP_STACK(stack_top);			\
+			__##name(r0, r1, r2);				\
+		}							\
+		static void noinline __##name				\
+			(ulong arg0, ulong arg1, ulong arg2)
+
+
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 0a0fb8b5ac13..e77b3220fcb0 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -31,6 +31,7 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
+		*(.text_head_prologue*)
 		*(.text_head_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

