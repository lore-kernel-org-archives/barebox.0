Delivery-date: Tue, 06 Jan 2026 14:02:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hP-001tdW-1S
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hN-0003PT-I8
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XHk5GSDk/BpucXAzEiGHggvonfkcZchy9rxKdhTk7z0=; b=sD/21PSUxY5sw+um0cK2poewyp
	46Csqg3xz6yNj2P1Jl8xncK/8SwBqXqmG2MOPgqvqm4bwFCYAD1oKWoyhKghYHPUxMZWYhqeq6eMP
	sX7Xbb714J+n7Ccco3uLeCQ4ok+DIIhuyV1cjA0wydCw5muU6CRbvuKi0aAAg7zdIM916+GnUdhiu
	yd+SDzCMIQiAOptvJoBjf+V53nUMZkAAxyeL35MU6dGlAcD5Qo1mdkbgXIfzJ2ZUQs/c/LcDOdvbE
	IBwh07W6R2YSIW+naI4te5pYlyrRWhyGKQGjVN9fthg+QxpHFWHYvQvMIWJ9vmYAFywvnp2YpQmVf
	wvgQpqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gs-0000000D2ZF-3I48;
	Tue, 06 Jan 2026 13:01:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qt-3zQW
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002qQ-HS; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-009LeG-14;
	Tue, 06 Jan 2026 14:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3bmU;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-14-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=5503;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=E9T0Rsrcgfa4JYR50MqSpsLLZxBjQ+60req9H0c0Yi8=;
 b=vDBeO08SS8sKM0QZSSIFSBQ+sDXdN7+vK8SdaXheLBushq3cjMrNLIlXl54EY1dGZRRSOAlTT
 iz3ywFoE8dxA84ejcfEd6lTnRl61yxXTsZKicgNg8hcaoYRdNLP1A6J
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_992308_C4FB7A3E 
X-CRM114-Status: GOOD (  14.11  )
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
Subject: [PATCH v2 14/21] ARM: exceptions: make in-binary exception table
 const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When making the .text section const we can no longer modify the code.
On ARMv5/v6 we finally use a copy of the exception table anyway, so
instead of modifying it in-place and copy afterwards, copy it first and
then modify it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_32.S       | 40 ++++++--------------------------------
 arch/arm/cpu/interrupts_32.c       | 38 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_32.c              |  3 +--
 arch/arm/include/asm/barebox-arm.h |  4 ++--
 4 files changed, 47 insertions(+), 38 deletions(-)

diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index 85ee4ca3fd4e5aff8e1e02aa3d7375173a923072..386cf72e7ada73547d811e07b009ffc7fe1c4c0a 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -91,24 +91,28 @@ do_abort_\@:
 	.arm
 
 	.align  5
+.globl undefined_instruction
 undefined_instruction:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_undefined_instruction
 
 	.align	5
+.globl software_interrupt
 software_interrupt:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_software_interrupt
 
 	.align	5
+.globl prefetch_abort
 prefetch_abort:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_prefetch_abort
 
 	.align	5
+.globl data_abort
 data_abort:
 	try_data_abort
 	get_bad_stack
@@ -116,45 +120,19 @@ data_abort:
 	bl 	do_data_abort
 
 	.align	5
+.globl irq
 irq:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_irq
 
 	.align	5
+.globl fiq
 fiq:
 	get_bad_stack
 	bad_save_user_regs
 	bl 	do_fiq
 
-#ifdef CONFIG_ARM_EXCEPTIONS
-/*
- * With relocatable binary support the runtime exception vectors do not match
- * the addresses in the binary. We have to fix them up during runtime
- */
-ENTRY(arm_fixup_vectors)
-	ldr	r0, =undefined_instruction
-	ldr	r1, =_undefined_instruction
-	str	r0, [r1]
-	ldr	r0, =software_interrupt
-	ldr	r1, =_software_interrupt
-	str	r0, [r1]
-	ldr	r0, =prefetch_abort
-	ldr	r1, =_prefetch_abort
-	str	r0, [r1]
-	ldr	r0, =data_abort
-	ldr	r1, =_data_abort
-	str	r0, [r1]
-	ldr	r0, =irq
-	ldr	r1, =_irq
-	str	r0, [r1]
-	ldr	r0, =fiq
-	ldr	r1, =_fiq
-	str	r0, [r1]
-	bx	lr
-ENDPROC(arm_fixup_vectors)
-#endif
-
 .section .text_inplace_exceptions
 1:	b 1b			/* barebox_arm_reset_vector */
 #ifdef CONFIG_ARM_EXCEPTIONS
@@ -187,17 +165,11 @@ extable:
 1:	b 1b				/* (reserved) */
 	ldr pc, _irq			/* irq (interrupt) */
 	ldr pc, _fiq			/* fiq (fast interrupt) */
-.globl _undefined_instruction
 _undefined_instruction: .word undefined_instruction
-.globl _software_interrupt
 _software_interrupt: .word software_interrupt
-.globl _prefetch_abort
 _prefetch_abort: .word prefetch_abort
-.globl _data_abort
 _data_abort: .word data_abort
-.globl _irq
 _irq: .word irq
-.globl _fiq
 _fiq: .word fiq
 #else
 1:	b 1b				/* undefined instruction */
diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 5dc4802fafbfdbcd54707b84835f40177e10742b..385504834d8195201db8028073f76628198fdd1e 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -265,3 +265,41 @@ void arm_pbl_init_exceptions(void)
 	set_vbar((unsigned long)__inplace_exceptions_start);
 }
 #endif
+
+/* This struct must match the assembly exception table in exceptions_32.S */
+struct extable {
+	uint32_t reset;
+	uint32_t undefined_instruction;
+	uint32_t software_interrupt;
+	uint32_t prefetch_abort;
+	uint32_t data_abort;
+	uint32_t reserved;
+	uint32_t irq;
+	uint32_t fiq;
+	void *undefined_instruction_ptr;
+	void *software_interrupt_ptr;
+	void *prefetch_abort_ptr;
+	void *data_abort_ptr;
+	void *reserved_ptr;
+	void *irq_ptr;
+	void *fiq_ptr;
+};
+
+void undefined_instruction(void);
+void software_interrupt(void);
+void prefetch_abort(void);
+void data_abort(void);
+void irq(void);
+void fiq(void);
+
+void arm_fixup_vectors(void *_table)
+{
+	struct extable *table = _table;
+
+	table->undefined_instruction_ptr = undefined_instruction;
+	table->software_interrupt_ptr = software_interrupt;
+	table->prefetch_abort_ptr = prefetch_abort;
+	table->data_abort_ptr = irq;
+	table->irq_ptr = irq;
+	table->fiq_ptr = fiq;
+}
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 54371e3e5973c9fe98cadef63499105134e09539..ff52e1d2b6fc763d6210630d181c7d4ed15cdadd 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -535,10 +535,9 @@ void create_vector_table(unsigned long adr)
 			      get_pte_flags(MAP_CACHED), true);
 	}
 
-	arm_fixup_vectors();
-
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
+	arm_fixup_vectors(vectors);
 }
 
 static void create_zero_page(void)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index e1d89d5684d36f003ba8da3651ae86bda1d9b34c..276807dc484f429f22859e1eda4c88644235c57d 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -45,10 +45,10 @@ unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
 #ifdef CONFIG_ARM_EXCEPTIONS
-void arm_fixup_vectors(void);
+void arm_fixup_vectors(void *table);
 ulong arm_get_vector_table(void);
 #else
-static inline void arm_fixup_vectors(void)
+static inline void arm_fixup_vectors(void *table)
 {
 }
 static inline ulong arm_get_vector_table(void)

-- 
2.47.3



