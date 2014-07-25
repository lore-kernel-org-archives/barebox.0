Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAhR8-0007XA-BT
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 15:29:39 +0000
Received: from pps.filterd (m0047961.ppops.net [127.0.0.1])
 by m0047961.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6PFReWf041041
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:03 -0400
Received: from alpmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0047961.ppops.net-00176a03. with ESMTP id 1nbs3y8886-2
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:02 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 25 Jul 2014 16:28:53 +0100
Message-Id: <1406302136-26747-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
References: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/4] ppc: 85xx: CCSRBAR mapping moved to start-up code.
To: barebox@lists.infradead.org

Move the configuration, control and status register base address
(CCSRBAR) relocation to the start-up processing. This addresses
TLB faults found during testing  on the Freescale P1010RDB and
also matches the current U-Boot functionality.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S        | 106 +++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/cpu_init.c |  31 ++----------
 2 files changed, 111 insertions(+), 26 deletions(-)

diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index 514fd8c..82c2c0a 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -105,6 +105,29 @@ _start_e500:
 	isync
 	.endm
 
+	.macro  create_tlb0_entry esel ts tsize epn wimg rpn perm phy_high \
+				scratch
+	lis \scratch, FSL_BOOKE_MAS0(0, \esel, 0)@h
+	ori \scratch, \scratch, FSL_BOOKE_MAS0(0, \esel, 0)@l
+	mtspr   MAS0, \scratch
+	lis \scratch, FSL_BOOKE_MAS1(1, 0, 0, \ts, \tsize)@h
+	ori \scratch, \scratch, FSL_BOOKE_MAS1(1, 0, 0, \ts, \tsize)@l
+	mtspr   MAS1, \scratch
+	lis \scratch, FSL_BOOKE_MAS2(\epn, \wimg)@h
+	ori \scratch, \scratch, FSL_BOOKE_MAS2(\epn, \wimg)@l
+	mtspr   MAS2, \scratch
+	lis \scratch, FSL_BOOKE_MAS3(\rpn, 0, \perm)@h
+	ori \scratch, \scratch, FSL_BOOKE_MAS3(\rpn, 0, \perm)@l
+	mtspr   MAS3, \scratch
+	lis \scratch, \phy_high@h
+	ori \scratch, \scratch, \phy_high@l
+	mtspr   MAS7, \scratch
+	isync
+	msync
+	tlbwe
+	isync
+	.endm
+
 	/* Setup interrupt vectors */
 	lis	r1,TEXT_BASE@h
 	mtspr	IVPR,r1
@@ -278,6 +301,89 @@ nexti:	mflr	r1		/* R1 = our PC */
 		0, r6
 
 #endif
+/*
+ * Relocate CCSR, if necessary. We relocate CCSR if (obviously) the default
+ * location is not where we want it. This typically happens on a 36-bit
+ * system, where we want to move CCSR to near the top of 36-bit address space.
+ *
+ * To move CCSR, we create two temporary TLBs, one for the old location, and
+ * another for the new location. On CoreNet systems, we also need to create
+ * a special, temporary LAW.
+ *
+ * As a general rule, TLB0 is used for short-term TLBs, and TLB1 is used for
+ * long-term TLBs, so we use TLB0 here.
+ */
+#if (CFG_CCSRBAR_DEFAULT != CFG_CCSRBAR_PHYS)
+create_ccsr_new_tlb:
+	/*
+	 * Create a TLB for the new location of CCSR. Register R8 is reserved
+	 * for the virtual address of this TLB (CFG_CCSRBAR).
+	 */
+	lis	r8, CFG_CCSRBAR@h
+	ori	r8, r8, CFG_CCSRBAR@l
+	lis	r9, (CFG_CCSRBAR + 0x1000)@h
+	ori	r9, r9, (CFG_CCSRBAR + 0x1000)@l
+	create_tlb0_entry 0, \
+	0, BOOKE_PAGESZ_4K, \
+	CFG_CCSRBAR, MAS2_I|MAS2_G, \
+	CFG_CCSRBAR_PHYS, MAS3_SW|MAS3_SR, \
+	0, r3
+
+	/*
+	 * Create a TLB for the current location of CCSR. Register R9 is
+	 * reserved for the virtual address of this TLB (CFG_CCSRBAR + 0x1000).
+	 */
+create_ccsr_old_tlb:
+	create_tlb0_entry 1, \
+	0, BOOKE_PAGESZ_4K, \
+	CFG_CCSRBAR + 0x1000, MAS2_I|MAS2_G, \
+	CFG_CCSRBAR_DEFAULT, MAS3_SW|MAS3_SR, \
+	0, r3
+
+	/*
+	 * We have a TLB for what we think is the current (old) CCSR. Let's
+	 * verify that, otherwise we won't be able to move it.
+	 * CFG_CCSRBAR_DEFAULT is always a 32-bit number, so we only
+	 * need to compare the lower 32 bits of CCSRBAR on CoreNet systems.
+	 */
+verify_old_ccsr:
+	lis	r0, CFG_CCSRBAR_DEFAULT@h
+	ori	r0, r0, CFG_CCSRBAR_DEFAULT@l
+	lwz	r1, 0(r9)
+	slwi	r1, r1, 12
+	cmpl	0, r0, r1
+
+	/*
+	 * If the value we read from CCSRBAR is not what we expect, then
+	 * enter an infinite loop. This will at least allow a debugger to
+	 * halt execution and examine TLBs, etc. There's no point in going
+	 * on.
+	 */
+infinite_debug_loop:
+	bne infinite_debug_loop
+
+	/*
+	 * Read the current value of CCSRBAR using a load word instruction
+	 * followed by an isync. This forces all accesses to configuration
+	 * space to complete.
+	 */
+write_new_ccsrbar:
+	sync
+	lwz r0, 0(r9)
+	isync
+	lis	r0, (CFG_CCSRBAR_PHYS >> 12)@h
+	ori	r0, r0, (CFG_CCSRBAR_PHYS >> 12)@l
+	stw	r0, 0(r9)
+	sync
+	isync
+
+	/*
+	 * Read the contents of CCSRBAR from its new location, followed by
+	 * another isync.
+	 */
+	 lwz	r0, 0(r8)
+	 isync
+#endif
 
 	/* Enable/invalidate the I-Cache */
 	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/ppc/mach-mpc85xx/cpu_init.c
index 7b50cef..0ba2113 100644
--- a/arch/ppc/mach-mpc85xx/cpu_init.c
+++ b/arch/ppc/mach-mpc85xx/cpu_init.c
@@ -32,24 +32,6 @@
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
 
-static void fsl_setup_ccsrbar(void)
-{
-	u32 temp;
-	u32 mas0, mas1, mas2, mas3, mas7;
-	u32 *ccsr_virt = (u32 *)(CFG_CCSRBAR + 0x1000);
-
-	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(1);
-	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
-	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR + 0x1000, MAS2_I|MAS2_G);
-	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_DEFAULT, 0, MAS3_SW|MAS3_SR);
-	mas7 = FSL_BOOKE_MAS7(CFG_CCSRBAR_DEFAULT);
-
-	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
-
-	temp = in_be32(ccsr_virt);
-	out_be32(ccsr_virt, CFG_CCSRBAR_PHYS >> 12);
-	temp = in_be32((u32 *)CFG_CCSRBAR);
-}
 
 int fsl_l2_cache_init(void)
 {
@@ -97,18 +79,15 @@ void cpu_init_early_f(void)
 {
 	u32 mas0, mas1, mas2, mas3, mas7;
 
-	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(0);
-	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
-	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR, MAS2_I|MAS2_G);
-	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_PHYS, 0, MAS3_SW|MAS3_SR);
+	mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(13);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS |
+			MAS1_TSIZE(BOOKE_PAGESZ_1M);
+	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR, MAS2_I | MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_PHYS, 0, MAS3_SW | MAS3_SR);
 	mas7 = FSL_BOOKE_MAS7(CFG_CCSRBAR_PHYS);
 
 	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
 
-	/* set up CCSR if we want it moved */
-	if (CFG_CCSRBAR_DEFAULT != CFG_CCSRBAR_PHYS)
-		fsl_setup_ccsrbar();
-
 	fsl_init_laws();
 	e500_invalidate_tlb(1);
 	e500_init_tlbs();
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
