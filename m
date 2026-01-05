Delivery-date: Mon, 05 Jan 2026 12:32:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciof-001VIT-2W
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcioe-0007AQ-Un
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dq4nMr98lBibuOxQdnyM+P06b7UNvkR09Cuz7n6zkAI=; b=MZmYnTBa3O5KOvEosjwuX7leVk
	Q8Bc+T0ZSuRuRGq0eWf0g8FBsPrYd4KfxueOQI0CL2kBcBvVLKGdO9tbFNG1I0LYQb2urs/08jPtl
	672T5r6FraTxNDFrWZWo+cG72Z1j71FVTgD46u2TGobxiv28BAnAvs3MskBP6opkpR1t0oIpD1sXt
	AM9fgBNHaV91EHABmVgqpe+IZL51joMwZwWf5+NMjDrJyL1EJpyH8jF5FpnZHeYJY/1l+lXsGz+/R
	CXhb3zJ3BVVj4GujKjVYAXunyWOvEM6ix5N9NI9NBck4ro97gV1VjIPyVJBZPGjmXH7Zs4zcc5QDT
	fc8OdieQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioB-0000000BCEk-1OTU;
	Mon, 05 Jan 2026 11:31:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB5-2UxJ
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006jv-6Q; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0099zf-02;
	Mon, 05 Jan 2026 12:31:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-13GO;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-13-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=5401;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=T0V2mjGWmzp1ULRgqrdI8L3gvT+KfYFM+TtN2UJxZLQ=;
 b=5tq2N8/vCdwXwWr4+87gwuPf4tHoaPjy3iDDKiM4R5m0iENj+n05NHKjNJa4+52YijQNp4c+E
 BATK6u3BhUfC9fBa6R447NrULa6sg/7ZUsfwKqyQM96UPVC8F459trx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_637325_F315FE38 
X-CRM114-Status: GOOD (  14.03  )
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
Subject: [PATCH 13/19] ARM: exceptions: make in-binary exception table
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
index 302e4d030d6347e8fdb488db73a0a3a4bb1c0ec7..e4a54897bf9fe134fbc48a69a4c5a2efce2acbbc 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -92,24 +92,28 @@ do_abort_\@:
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
@@ -117,45 +121,19 @@ data_abort:
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
@@ -188,17 +166,11 @@ extable:
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
index 6ebcbcd8dc1299c0333da87e496bc57172691fa8..99a0bce9244e339f69548868ce6efcaf72194f47 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -184,3 +184,41 @@ void arm_pbl_init_exceptions(void)
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
index 9ce77078d5e35810f2239d82f29f67e2aa2e4d8e..a1d10db009650c2f9322fa8f7e4a54a0430bb2fa 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -538,10 +538,9 @@ static void create_vector_table(unsigned long adr)
 			      get_pte_flags(MAP_CACHED), true);
 	}
 
-	arm_fixup_vectors();
-
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
+	arm_fixup_vectors(vectors);
 }
 
 /**
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 11be8b85837ea3d1e56d3433b4b7e05eb9e15a47..6c30d9d22e3d3ef6943dd8bca67d8e1394e051d4 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -45,9 +45,9 @@ unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
 #ifdef CONFIG_ARM_EXCEPTIONS
-void arm_fixup_vectors(void);
+void arm_fixup_vectors(void *table);
 #else
-static inline void arm_fixup_vectors(void)
+static inline void arm_fixup_vectors(void *table)
 {
 }
 #endif

-- 
2.47.3



