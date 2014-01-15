Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3Oxu-0004eo-JG
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:59 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:44 +0000
Message-Id: <1389786464-22085-6-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/5] cpu-85xx: start.S: clean up imported code
To: barebox@lists.infradead.org

Correct double spaces, indentation and vocabulary in the imported
start-up code.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index d32cb62..0402cf0 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -180,9 +180,9 @@ _start_e500:
 
 /*
  * Search for the TLB that covers the code we're executing, and shrink it
- * so that it covers only this 4K page.  That will ensure that any other
- * TLB we create won't interfere with it.  We assume that the TLB exists,
- * which is why we don't check the Valid bit of MAS1.  We also assume
+ * so that it covers only this 4K page. That will ensure that any other
+ * TLB we create won't interfere with it. We assume that the TLB exists,
+ * which is why we don't check the Valid bit of MAS1. We also assume
  * it is in TLB1.
  *
  * This is necessary, for example, when booting from the on-chip ROM,
@@ -209,7 +209,7 @@ nexti:	mflr	r1		/* R1 = our PC */
 
 	/*
 	 * Set the base address of the TLB to our PC.  We assume that
-	 * virtual == physical.  We also assume that MAS2_EPN == MAS3_RPN.
+	 * virtual == physical. We also assume that MAS2_EPN == MAS3_RPN.
 	 */
 	lis	r3, MAS2_EPN@h
 	ori	r3, r3, MAS2_EPN@l	/* R3 = MAS2_EPN */
@@ -230,10 +230,10 @@ nexti:	mflr	r1		/* R1 = our PC */
 	msync
 	tlbwe
 
-/*
- * Clear out any other TLB entries that may exist, to avoid conflicts.
- * Our TLB entry is in r14.
- */
+	/*
+	 * Clear out any other TLB entries that may exist, to avoid conflicts.
+	 * Our TLB entry is in r14.
+	 */
 	li	r0, TLBIVAX_ALL | TLBIVAX_TLB0
 	tlbivax 0, r0
 	tlbsync
@@ -268,7 +268,7 @@ nexti:	mflr	r1		/* R1 = our PC */
  * in AS1.
  *
  * TLB entry is created for IVPR + IVOR15 to map on valid OP code address
- * bacause flash's virtual address maps to 0xff800000 - 0xffffffff.
+ * because flash's virtual address maps to 0xff800000 - 0xffffffff.
  * and this window is outside of 4K boot window.
  */
 	create_tlb1_entry PPC_E500_DEBUG_TLB, \
@@ -316,8 +316,8 @@ nexti:	mflr	r1		/* R1 = our PC */
 	beq	2b
 
 create_init_ram_area:
-	lis     r6,FSL_BOOKE_MAS0(1, 15, 0)@h
-	ori     r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
+	lis	r6,FSL_BOOKE_MAS0(1, 15, 0)@h
+	ori	r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
 
 	/* create a temp mapping in AS=1 to the 4M boot window */
 	create_tlb1_entry 15, \
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
