Delivery-date: Wed, 31 Jul 2024 09:14:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xv-004j0g-2B
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xu-0006e1-GE
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oDP6GyM6KojCEI6T3Egf0xfbLdlp1NsU6beNIL5k9Ik=; b=34egkOFj0a/2MGBiewqid+Ow96
	9qCB6KdGy5PAtpg7lvrsY+K+8VGPoborsq3wJHXfJK7jSB/2o20JubEMrbYG0B0uTYJzLboT4S6RD
	vH9XwUBmQiEHC/rjKnXFL1jy/Sm1d508TjL+nhM9APE79pWhm+zVLLV3haNIdvdMWzCSo3vr1nVN8
	5RPVNOkmGBPGgC47MT5ig0b1i9LCKTcQCj5aYMnGjYTCVK2rSBodR0QQpChOOOOY+kinB+q4P1wo2
	AMcujKVObshbBgL0sqyxZRDNeRN5JEnwx1KtNaTvoey6FXTEw4JtwlK7BiRIf/Uss0ZMeoYv2l7OH
	4E0Jck0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XT-000000004ww-4BLO;
	Wed, 31 Jul 2024 07:14:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XP-000000004uS-2SW4
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XO-0006Lj-7x; Wed, 31 Jul 2024 09:14:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-003T7F-PF; Wed, 31 Jul 2024 09:14:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-00AjVP-2D;
	Wed, 31 Jul 2024 09:14:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 09:14:14 +0200
Message-Id: <20240731071416.2558182-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
References: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001419_679232_EB490FC3 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] ARM: print exception reports to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already print stack traces to stderr, but exception cause and
register dump is printed to stdout still. Fix that by using eprintf
instead of printf.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/interrupts_32.c | 26 +++++++++++++-------------
 arch/arm/cpu/interrupts_64.c | 24 ++++++++++++------------
 2 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 468dcdd30e93..623efb3966f0 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -42,21 +42,21 @@ void show_regs (struct pt_regs *regs)
 
 	flags = condition_codes (regs);
 
-	printf ("pc : [<%08lx>]    lr : [<%08lx>]\n"
+	eprintf("pc : [<%08lx>]    lr : [<%08lx>]\n"
 		"sp : %08lx  ip : %08lx  fp : %08lx\n",
 		instruction_pointer (regs),
 		regs->ARM_lr, regs->ARM_sp, regs->ARM_ip, regs->ARM_fp);
-	printf ("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
+	eprintf("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
 		regs->ARM_r10, regs->ARM_r9, regs->ARM_r8);
-	printf ("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
+	eprintf("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
 		regs->ARM_r7, regs->ARM_r6, regs->ARM_r5, regs->ARM_r4);
-	printf ("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
+	eprintf("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
 		regs->ARM_r3, regs->ARM_r2, regs->ARM_r1, regs->ARM_r0);
-	printf ("Flags: %c%c%c%c",
+	eprintf("Flags: %c%c%c%c",
 		flags & PSR_N_BIT ? 'N' : 'n',
 		flags & PSR_Z_BIT ? 'Z' : 'z',
 		flags & PSR_C_BIT ? 'C' : 'c', flags & PSR_V_BIT ? 'V' : 'v');
-	printf ("  IRQs %s  FIQs %s  Mode %s%s\n",
+	eprintf("  IRQs %s  FIQs %s  Mode %s%s\n",
 		interrupts_enabled (regs) ? "on" : "off",
 		fast_interrupts_enabled (regs) ? "on" : "off",
 		processor_modes[processor_mode (regs)],
@@ -79,7 +79,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
  */
 void do_undefined_instruction (struct pt_regs *pt_regs)
 {
-	printf ("undefined instruction\n");
+	eprintf("undefined instruction\n");
 	do_exception(pt_regs);
 }
 
@@ -92,7 +92,7 @@ void do_undefined_instruction (struct pt_regs *pt_regs)
  */
 void do_software_interrupt (struct pt_regs *pt_regs)
 {
-	printf ("software interrupt\n");
+	eprintf("software interrupt\n");
 	do_exception(pt_regs);
 }
 
@@ -104,7 +104,7 @@ void do_software_interrupt (struct pt_regs *pt_regs)
  */
 void do_prefetch_abort (struct pt_regs *pt_regs)
 {
-	printf ("prefetch abort\n");
+	eprintf("prefetch abort\n");
 	do_exception(pt_regs);
 }
 
@@ -136,8 +136,8 @@ void do_data_abort (struct pt_regs *pt_regs)
 
 	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
 
-	printf("unable to handle %s at address 0x%08x\n",
-	       data_abort_reason(far), far);
+	eprintf("unable to handle %s at address 0x%08x\n",
+		data_abort_reason(far), far);
 
 	do_exception(pt_regs);
 }
@@ -150,7 +150,7 @@ void do_data_abort (struct pt_regs *pt_regs)
  */
 void do_fiq (struct pt_regs *pt_regs)
 {
-	printf ("fast interrupt request\n");
+	eprintf("fast interrupt request\n");
 	do_exception(pt_regs);
 }
 
@@ -162,7 +162,7 @@ void do_fiq (struct pt_regs *pt_regs)
  */
 void do_irq (struct pt_regs *pt_regs)
 {
-	printf ("interrupt request\n");
+	eprintf("interrupt request\n");
 	do_exception(pt_regs);
 }
 
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 6262ba8872db..8933cfeb4288 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -76,12 +76,12 @@ void show_regs(struct pt_regs *regs)
 {
 	int i;
 
-	printf("elr: %016lx lr : %016lx\n", regs->elr, regs->regs[30]);
+	eprintf("elr: %016lx lr : %016lx\n", regs->elr, regs->regs[30]);
 
 	for (i = 0; i < 29; i += 2)
-		printf("x%-2d: %016lx x%-2d: %016lx\n",
+		eprintf("x%-2d: %016lx x%-2d: %016lx\n",
 			i, regs->regs[i], i + 1, regs->regs[i + 1]);
-	printf("\n");
+	eprintf("\n");
 }
 
 static void __noreturn do_exception(struct pt_regs *pt_regs)
@@ -101,7 +101,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
  */
 void do_fiq(struct pt_regs *pt_regs)
 {
-	printf ("fast interrupt request\n");
+	eprintf("fast interrupt request\n");
 	do_exception(pt_regs);
 }
 
@@ -113,31 +113,31 @@ void do_fiq(struct pt_regs *pt_regs)
  */
 void do_irq(struct pt_regs *pt_regs)
 {
-	printf ("interrupt request\n");
+	eprintf("interrupt request\n");
 	do_exception(pt_regs);
 }
 
 void do_bad_sync(struct pt_regs *pt_regs)
 {
-	printf("bad sync\n");
+	eprintf("bad sync\n");
 	do_exception(pt_regs);
 }
 
 void do_bad_irq(struct pt_regs *pt_regs)
 {
-	printf("bad irq\n");
+	eprintf("bad irq\n");
 	do_exception(pt_regs);
 }
 
 void do_bad_fiq(struct pt_regs *pt_regs)
 {
-	printf("bad fiq\n");
+	eprintf("bad fiq\n");
 	do_exception(pt_regs);
 }
 
 void do_bad_error(struct pt_regs *pt_regs)
 {
-	printf("bad error\n");
+	eprintf("bad error\n");
 	do_exception(pt_regs);
 }
 
@@ -174,15 +174,15 @@ void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
 		extra = data_abort_reason(far);
 	}
 
-	printf("%s%s exception (ESR 0x%08x) at 0x%016lx\n", extra ?: "",
-	       esr_get_class_string(esr), esr, far);
+	eprintf("%s%s exception (ESR 0x%08x) at 0x%016lx\n", extra ?: "",
+		esr_get_class_string(esr), esr, far);
 	do_exception(pt_regs);
 }
 
 
 void do_error(struct pt_regs *pt_regs)
 {
-	printf("error exception\n");
+	eprintf("error exception\n");
 	do_exception(pt_regs);
 }
 
-- 
2.39.2



