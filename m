Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og119.obsmtp.com ([64.18.0.189])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3OxZ-0004dP-LN
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:39 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:42 +0000
Message-Id: <1389786464-22085-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
References: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] ppc: mpc85xx: change bss relocation
To: barebox@lists.infradead.org

The linker script and start up code are updated so that the bss
section is located above the barebox binary in memory. This removes
the reliance on a hard-coded value.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S           | 36 ++++++++++++++----------------------
 arch/ppc/mach-mpc85xx/barebox.lds.S |  7 +++++--
 2 files changed, 19 insertions(+), 24 deletions(-)

diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index 5bcba5f..638b6b8 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -52,8 +52,8 @@
 	GOT_ENTRY(_end_of_vectors)
 	GOT_ENTRY(transfer_to_handler)
 	GOT_ENTRY(__init_end)
-	GOT_ENTRY(_end)
 	GOT_ENTRY(__bss_start)
+	GOT_ENTRY(__bss_stop)
 	END_GOT
 
 /*
@@ -775,27 +775,19 @@ e500_write_tlb:
 relocate_code:
 	mr	r9, r3			/* Save end of RAM 	*/
 
-	lis	r10, (_end - _start)@h	/* Size			*/
-	ori	r10, r10, (_end - _start)@l
-	sub	r3,  r3, r10
-
-	/* 64KB aligned */
-	lis	r10, 0xffff0000@h
-	ori	r10, r10, 0xffff0000@l
-	and	r3, r3, r10
-
-	mr	r1, r3		/* Set new stack just below barebox code */
-	mr	r10, r3 	/* Save copy of Destination Address */
-
-	bl 	calc_source
-calc_source:
-	mfspr	r4, LR	/* r4 = address in memory (flash, RAM) */
-	subi	r4, r4, (calc_source - _start)
-
 	GET_GOT
-	lis	r5, __init_size@h
-	ori	r5, r5, __init_size@l
-
+	lis	r4,TEXT_BASE@h
+	ori	r4,r4,TEXT_BASE@l
+	lwz	r5,GOT(__bss_stop)	/* size */
+	sub	r5,r5,r4
+	sub	r3, r3, r5
+	lwz	r5,GOT(__init_end)	/* Copy to init_end only */
+	sub	r5,r5,r4
+	lis	r10, 0xffff0000@h	/* Round down to 64KB */
+	ori	r10, r10, 0xffff0000@l
+	and	r3, r3, r10		/* Destination */
+	mr	r1, r3
+	mr	r10, r3
 	li	r6,CACHELINE_SIZE
 
 	/*
@@ -921,7 +913,7 @@ clear_bss:
 	 * Now clear BSS segment
 	 */
 	lwz	r3,GOT(__bss_start)
-	lwz	r4,GOT(_end)
+	lwz	r4,GOT(__bss_stop)
 
 	cmplw	0,r3,r4
 	beq	6f
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 4d156e8..980359e 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -20,7 +20,6 @@
 #else
 #define RESET_VECTOR_ADDRESS    0xfffffffc
 #endif
-#define BSS_START_ADDRESS       0x2000
 
 OUTPUT_ARCH("powerpc")
 
@@ -143,7 +142,11 @@ SECTIONS
 
   . = RESET_VECTOR_ADDRESS + 0x4;
 
-  . = BSS_START_ADDRESS;
+#if (RESET_VECTOR_ADDRESS == 0xfffffffc)
+  /* This avoids wrapping around to offset 0 */
+  . |= 0x10;
+#endif
+
   __bss_start = .;
   .bss        :
   {
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
