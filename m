Delivery-date: Fri, 16 Jan 2026 09:35:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJC-001toC-05
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:35:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJA-0007yO-Me
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kLsJCvbJn/UPC+2CLjtY9sEFrcNVaLmj2KS7lpo5v64=; b=h7/a3AGaCqZ6YXpSuxO9qbWSph
	tLwTlhRGd88F5/cFDLk5NGNuJ3SPLlL18j9Gpp55CZAjnHBZZL06vuwZAXYb+zMna9QoIhFQntyoS
	1WU9WcBv/ymhbksG0aP3skyT2LN6jgbtWXvSmXSC4EBxxSdVuKIIdfT2uTwsaBTMah21OqtkoOKvv
	+GdWrEApUk/ZVYKRBE6Y6+s2tO9FlBEvF5HzLSzjtcTyibpUneASGomozfRqjMz+1mtWMtSIbPH6y
	l9I21DO5AKvXGP+b1ok5IEb7qB0EZkAiE2VfuR4cTu4rFgL2A6hbg4hm+l+jlt5corFK7nrdmeShQ
	xZfVsX0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIg-0000000Dllz-33Ar;
	Fri, 16 Jan 2026 08:35:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIc-0000000Dlgx-35mC
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007QF-1g; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-000tDi-1h;
	Fri, 16 Jan 2026 09:35:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1hz7;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-14-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=4918;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=k63vokoJmd7JlTi6R3vteHLd97cNUUeHT2+TNXjmioM=;
 b=qXQwbDfTasvQJqju1s1lyFBxW9AH6RA6ozsqj2Q8K9kotBjKMJSlAhxmkI5cIm5DYfnfDVy99
 OwSXGgiwxtJDbAuimGLn7jeG4mNcdgbZbTXyXY/3Rr9l4FowOs4bV29
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003518_793867_29EACB1A 
X-CRM114-Status: GOOD (  14.31  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 14/22] ARM: drop arm_fixup_vectors()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the missing "ax" flag for the exception table. With this the jumps
in the exception table are correctly relocated and we no longer have to
fix them up during runtime. Remove the now unnecessary
arm_fixup_vectors().

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_32.S       | 54 +++++---------------------------------
 arch/arm/cpu/interrupts_32.c       |  5 +---
 arch/arm/cpu/mmu_32.c              |  2 --
 arch/arm/cpu/no-mmu.c              |  2 --
 arch/arm/include/asm/barebox-arm.h |  4 ---
 5 files changed, 8 insertions(+), 59 deletions(-)

diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index dc3d42663c..68eb696fc7 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -127,58 +127,18 @@ fiq:
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
-.section .text_exceptions
+.section .text_exceptions, "ax"
 .globl extable
 extable:
 1:	b 1b				/* barebox_arm_reset_vector */
 #ifdef CONFIG_ARM_EXCEPTIONS
-	ldr pc, _undefined_instruction	/* undefined instruction */
-	ldr pc, _software_interrupt	/* software interrupt (SWI) */
-	ldr pc, _prefetch_abort		/* prefetch abort */
-	ldr pc, _data_abort		/* data abort */
+	ldr pc, =undefined_instruction	/* undefined instruction */
+	ldr pc, =software_interrupt	/* software interrupt (SWI) */
+	ldr pc, =prefetch_abort		/* prefetch abort */
+	ldr pc, =data_abort		/* data abort */
 1:	b 1b				/* (reserved) */
-	ldr pc, _irq			/* irq (interrupt) */
-	ldr pc, _fiq			/* fiq (fast interrupt) */
-.globl _undefined_instruction
-_undefined_instruction: .word undefined_instruction
-.globl _software_interrupt
-_software_interrupt: .word software_interrupt
-.globl _prefetch_abort
-_prefetch_abort: .word prefetch_abort
-.globl _data_abort
-_data_abort: .word data_abort
-.globl _irq
-_irq: .word irq
-.globl _fiq
-_fiq: .word fiq
+	ldr pc, =irq			/* irq (interrupt) */
+	ldr pc, =fiq			/* fiq (fast interrupt) */
 #else
 1:	b 1b				/* undefined instruction */
 1:	b 1b				/* software interrupt (SWI) */
diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 0b88db10fe..af2231f2a7 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -231,10 +231,8 @@ static __maybe_unused int arm_init_vectors(void)
 	 * First try to use the vectors where they actually are, works
 	 * on ARMv7 and later.
 	 */
-	if (!set_vector_table((unsigned long)__exceptions_start)) {
-		arm_fixup_vectors();
+	if (!set_vector_table((unsigned long)__exceptions_start))
 		return 0;
-	}
 
 	/*
 	 * Next try high vectors at 0xffff0000.
@@ -265,6 +263,5 @@ void arm_pbl_init_exceptions(void)
 		return;
 
 	set_vbar((unsigned long)__exceptions_start);
-	arm_fixup_vectors();
 }
 #endif
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index eee1385a8f..eae5a878e8 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -528,8 +528,6 @@ void create_vector_table(unsigned long adr)
 			      get_pte_flags(MAP_CACHED), true);
 	}
 
-	arm_fixup_vectors();
-
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
 }
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index c4ef5d1f9d..8e00cffebf 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -58,8 +58,6 @@ static int nommu_v7_vectors_init(void)
 	cr &= ~CR_V;
 	set_cr(cr);
 
-	arm_fixup_vectors();
-
 	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_size);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index e1d89d5684..99f8231194 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -45,12 +45,8 @@ unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
 #ifdef CONFIG_ARM_EXCEPTIONS
-void arm_fixup_vectors(void);
 ulong arm_get_vector_table(void);
 #else
-static inline void arm_fixup_vectors(void)
-{
-}
 static inline ulong arm_get_vector_table(void)
 {
 	return ~0;

-- 
2.47.3



