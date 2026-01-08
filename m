Delivery-date: Thu, 08 Jan 2026 17:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTG-002fhC-0v
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTE-0001Ee-Nr
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkHMZ2C6sq6YQ6jsf5B+uKhpKVerVZx0VfVvClFuAmw=; b=YxFU3fVDrWQ9JDmeGQa1jcmBH7
	qS5yrpNpj3NOOv9cIfonrci4dCk4xZ0E6aUTKEy0ppfIDu3u9eQOE28k9e681BHsr7ij0/76ZqCyI
	Y24cJuQX3lKdE1vN6fapklTPn8ZvsfE/2QJvUAgrmrqwTR7nIVpTwp6tsIgi3sxzNYneJgdTZzfcB
	YK6oNRgwMHl2gvWRFXQbpfki4UbCIxGE9s1/aINSZBZ9I0z/JBIYbT6JXyN6UhvhFAg7mW3MhPfnb
	q6FIM9lGzbQ2OIxtE7lep6NPpWW5MKVlhoncCf8AAtm3j9Z+0tEDdpHIpkYv8oRudMkc6awg3MMD5
	hcI5cfHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSL-0000000020n-3gKo;
	Thu, 08 Jan 2026 16:01:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS8-000000001tg-1cUR
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YkHMZ2C6sq6YQ6jsf5B+uKhpKVerVZx0VfVvClFuAmw=; b=R8a1VdbLI7uc4YoEq65BB4oBeY
	+nWr9WK9yvwN1K/CAszhtogmOH2W1sZRvEpMK8vGai6yKILlczp4zHk9KB/6qnszsfAM/dvOp5C0f
	7dKF3DHmhRfk1Q7Wqy/sL0IdK36zSYaTRI8zlLyHOFyCIByKoMZVcjcUqI2qOhfxKEakwC2D7K2IN
	ITikPm9euVyo4J5JmArRZdQMTZJS8KThJknLZpspoxth1z7NQh4MXa1LPFL/OBSFtgbvHMxawMl1v
	1ONxb0DLT/AmzFVHz+xzWvDhQDTYwxX0Q3WrXVCpfHH0IoQYHvSE4UDB6FCLPz5v5UWd+v2e5NcD+
	wzUuRUGw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaVX-44T6
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000Th-Kq; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXd-1P;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1Ygp;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-14-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=5165;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Bxj4kAWOSnvYzrI5FDt7q50z0Z2ZBs71CrVXcwLmx3M=;
 b=eNAgCbWCbnmlS0D6lb7HoSF0ORjpHWhMYVDoP+lzXKUnwGYcEXazqKzLsPjlmpqs7WeHJkxBS
 ilot+QvpwtUCKUTmftQBSxa06hCbEXbi+VFZO/o6Ip+uOmDnZv26ly7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160131_075653_1A3B7DFF 
X-CRM114-Status: GOOD (  14.56  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 14/23] ARM: drop arm_fixup_vectors()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the missing "ax" flag for the exception table. With this the jumps
in the exception table are correctly relocated and we no longer have to
fix them up during runtime. Remove the now unnecessary
arm_fixup_vectors().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_32.S       | 54 +++++---------------------------------
 arch/arm/cpu/interrupts_32.c       |  5 +---
 arch/arm/cpu/mmu_32.c              |  2 --
 arch/arm/cpu/no-mmu.c              |  2 --
 arch/arm/include/asm/barebox-arm.h |  4 ---
 5 files changed, 8 insertions(+), 59 deletions(-)

diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index dc3d42663cbedd37947e27d449eb4ac8c3d8c3f1..68eb696fc7b78924156172a8867d3c9ed1dce588 100644
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
index 0b88db10fe487378fe08018701bc672f63139fc1..af2231f2a78059f7dc6b4a786a384fb870e9f14c 100644
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
index 981202b789befbd04e212f48490aebb41dfb6b98..1d2ead9160cf3b921c2900d4edaad0d465f636d9 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -534,8 +534,6 @@ void create_vector_table(unsigned long adr)
 			      get_pte_flags(MAP_CACHED), true);
 	}
 
-	arm_fixup_vectors();
-
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
 }
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index c4ef5d1f9d55136d606c244309dbeeb8fd988784..8e00cffebfd9193a45f5b5ab1863e4e6b13464d8 100644
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
index e1d89d5684d36f003ba8da3651ae86bda1d9b34c..99f82311945ceb0d06ef9e36ba34a9be54f1ae8e 100644
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



