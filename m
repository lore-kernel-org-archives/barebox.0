Delivery-date: Wed, 06 Aug 2025 14:47:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYZ-007dmt-37
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:47:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYY-0002QF-Ea
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:47:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DBNhmdPVJ0FoGm6HziR2AsRvlbIFsNBWamnPg5TiYQc=; b=aBAYddpFvFbC8SM7vMufBgonPY
	MyjPHSRF6Ko4/NSBhMEBBfrbcgbcvssBSMuSreTMfSzjO4BqPdma+WRtRftp+Qm6fRjh2/1gtFlsi
	VQ04UwP0nC8el+yI8CN4A6u0bjVR8+Nb1qt61Kz69xAGxO58EOaiILO/A3MgwfDR551Grc8StDPRd
	gSqD/KhQr0SWjZeycbIq8+UnD8syLGnK+7qt2OixA2Y3hygjv9HBFkz3PT6xK+vbrxkaw+5eIctDT
	udcmCY9dlGSgKny2l3Ut7vDvg5PAOfk7DxYpaa3jetQMbCXsRztNhIpEev2goV/zjMG4pfHH33uLt
	CPMWRLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdYA-0000000FCdj-0lZC;
	Wed, 06 Aug 2025 12:47:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdY7-0000000FCbc-14Yb
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:47:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujdY6-0002Ek-01; Wed, 06 Aug 2025 14:47:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:47:16 +0200
Message-Id: <20250806124716.2800716-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806124716.2800716-1-a.fatoum@barebox.org>
References: <20250806124716.2800716-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_054719_291027_B9EEA3F6 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: interrupts: unify panic output on unhandled exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM32 and ARM64 exceptions look slightly different making it cumbersome
to match against in the test suite. Let's unify them to a common scheme.

For example, on ARM64 instead of:

  NULL pointer dereference: DABT (current EL) exception \
    (ESR 0x9600004b) at 0x0000000000000800

We now have:

  PANIC: unable to handle NULL pointer dereference at address $addr
  DABT (current EL) (ESR 0x9600004b)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/interrupts_32.c | 24 +++++++++-----------
 arch/arm/cpu/interrupts_64.c | 44 +++++++++++++++++++-----------------
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index b8b9210197ea..185646e38195 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -67,8 +67,11 @@ void show_regs (struct pt_regs *regs)
 #endif
 }
 
-static void __noreturn do_exception(struct pt_regs *pt_regs)
+static void __noreturn do_exception(const char *reason, struct pt_regs *pt_regs)
 {
+	if (reason)
+		eprintf("PANIC: unable to handle %s\n", reason);
+
 	show_regs(pt_regs);
 
 	panic_no_stacktrace("");
@@ -80,8 +83,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
  */
 void do_undefined_instruction (struct pt_regs *pt_regs)
 {
-	eprintf("undefined instruction\n");
-	do_exception(pt_regs);
+	do_exception("undefined instruction", pt_regs);
 }
 
 /**
@@ -93,8 +95,7 @@ void do_undefined_instruction (struct pt_regs *pt_regs)
  */
 void do_software_interrupt (struct pt_regs *pt_regs)
 {
-	eprintf("software interrupt\n");
-	do_exception(pt_regs);
+	do_exception("software interrupt", pt_regs);
 }
 
 /**
@@ -105,8 +106,7 @@ void do_software_interrupt (struct pt_regs *pt_regs)
  */
 void do_prefetch_abort (struct pt_regs *pt_regs)
 {
-	eprintf("prefetch abort\n");
-	do_exception(pt_regs);
+	do_exception("prefetch abort", pt_regs);
 }
 
 static const char *data_abort_reason(ulong far)
@@ -131,10 +131,10 @@ void do_data_abort (struct pt_regs *pt_regs)
 
 	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
 
-	eprintf("unable to handle %s at address 0x%08x\n",
+	eprintf("PANIC: unable to handle %s at address 0x%08x\n",
 		data_abort_reason(far), far);
 
-	do_exception(pt_regs);
+	do_exception(NULL, pt_regs);
 }
 
 /**
@@ -145,8 +145,7 @@ void do_data_abort (struct pt_regs *pt_regs)
  */
 void do_fiq (struct pt_regs *pt_regs)
 {
-	eprintf("fast interrupt request\n");
-	do_exception(pt_regs);
+	do_exception("fast interrupt request", pt_regs);
 }
 
 /**
@@ -157,8 +156,7 @@ void do_fiq (struct pt_regs *pt_regs)
  */
 void do_irq (struct pt_regs *pt_regs)
 {
-	eprintf("interrupt request\n");
-	do_exception(pt_regs);
+	do_exception("interrupt request", pt_regs);
 }
 
 extern volatile int arm_ignore_data_abort;
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index b4787783978e..24eb1516ed6e 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -84,14 +84,17 @@ void show_regs(struct pt_regs *regs)
 	eprintf("\n");
 }
 
-static void __noreturn do_exception(struct pt_regs *pt_regs)
+static void __noreturn do_exception(const char *reason, struct pt_regs *pt_regs)
 {
+	if (reason)
+		eprintf("PANIC: unable to handle %s\n", reason);
+
 	show_regs(pt_regs);
 
 	if (IN_PROPER)
 		unwind_backtrace(pt_regs);
 
-	panic_no_stacktrace("panic: unhandled exception");
+	panic_no_stacktrace("");
 }
 
 /**
@@ -102,8 +105,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
  */
 void do_fiq(struct pt_regs *pt_regs)
 {
-	eprintf("fast interrupt request\n");
-	do_exception(pt_regs);
+	do_exception("fast interrupt request", pt_regs);
 }
 
 /**
@@ -114,32 +116,27 @@ void do_fiq(struct pt_regs *pt_regs)
  */
 void do_irq(struct pt_regs *pt_regs)
 {
-	eprintf("interrupt request\n");
-	do_exception(pt_regs);
+	do_exception("interrupt request", pt_regs);
 }
 
 void do_bad_sync(struct pt_regs *pt_regs)
 {
-	eprintf("bad sync\n");
-	do_exception(pt_regs);
+	do_exception("bad sync", pt_regs);
 }
 
 void do_bad_irq(struct pt_regs *pt_regs)
 {
-	eprintf("bad irq\n");
-	do_exception(pt_regs);
+	do_exception("bad irq", pt_regs);
 }
 
 void do_bad_fiq(struct pt_regs *pt_regs)
 {
-	eprintf("bad fiq\n");
-	do_exception(pt_regs);
+	do_exception("bad fiq", pt_regs);
 }
 
 void do_bad_error(struct pt_regs *pt_regs)
 {
-	eprintf("bad error\n");
-	do_exception(pt_regs);
+	do_exception("bad error", pt_regs);
 }
 
 extern volatile int arm_ignore_data_abort;
@@ -148,9 +145,10 @@ extern volatile int arm_data_abort_occurred;
 static const char *data_abort_reason(ulong far)
 {
 	if (far < PAGE_SIZE)
-		return "NULL pointer dereference: ";
+		return "NULL pointer dereference";
+
 	if (inside_stack_guard_page(far))
-		return "Stack overflow: ";
+		return "stack overflow";
 
 	return NULL;
 }
@@ -169,16 +167,20 @@ void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
 		extra = data_abort_reason(far);
 	}
 
-	eprintf("%s%s exception (ESR 0x%08x) at 0x%016lx\n", extra ?: "",
-		esr_get_class_string(esr), esr, far);
-	do_exception(pt_regs);
+	if (!extra)
+		extra = "paging request";
+
+	eprintf("PANIC: unable to handle %s at address 0x%016lx\n",
+		extra, far);
+
+	eprintf("%s (ESR 0x%08x)\n", esr_get_class_string(esr), esr);
+	do_exception(NULL, pt_regs);
 }
 
 
 void do_error(struct pt_regs *pt_regs)
 {
-	eprintf("error exception\n");
-	do_exception(pt_regs);
+	do_exception("error exception", pt_regs);
 }
 
 void data_abort_mask(void)
-- 
2.39.5



