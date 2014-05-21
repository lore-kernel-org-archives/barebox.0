Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnE8C-0001Pl-Hu
 for barebox@lists.infradead.org; Wed, 21 May 2014 21:33:01 +0000
Received: by mail-wg0-f46.google.com with SMTP id n12so2531352wgh.17
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 14:32:36 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 21 May 2014 23:32:28 +0200
Message-Id: <1400707949-16521-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1400707949-16521-1-git-send-email-franck.jullien@gmail.com>
References: <1400707949-16521-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/3] openrisc: fix relocation code
To: barebox@lists.infradead.org

The relocation code can now relocate from anywhere to
the RAM.

The old code assumed that the binary was copied to the RAM
by some PBL and then it just relocated the .text section
from the loaded address to the linked address.

Now, it first checks if vectors are somewhere else than the
linked address. If yes, there are copied to address 0 (or
to the exception vector base address if register EVBAR is
present).

Then, the .text section is relocated from its current location
to the RAM.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/cpu/start.S |   61 ++++++++++++++++++++++++++++++++------------
 1 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
index 269abc0..7ac790b 100644
--- a/arch/openrisc/cpu/start.S
+++ b/arch/openrisc/cpu/start.S
@@ -46,9 +46,47 @@ __reset:
 	l.ori	r3,r0,SPR_SR_SM
 	l.mtspr	r0,r3,SPR_SR
 
+	l.jal	_cur
+	l.nop
+_cur:
+	l.ori	r8, r9, 0		/* Get _cur current address */
+
+	l.movhi	r3, hi(_cur)
+	l.ori	r3, r3, lo(_cur)
+	l.sfeq	r8, r3			/* If we are running at the linked address */
+	l.bf	_no_vector_reloc	/* there is not need for relocation */
+	 l.sub	r8, r8, r3
+
+	l.mfspr	r4, r0, SPR_CPUCFGR
+	l.andi	r4, r4, SPR_CPUCFGR_EVBARP	/* Exception Vector Base Address Register present ? */
+	l.sfnei	r4,0
+	l.bnf	_reloc_vectors
+	l.movhi	r5, 0			/* Destination */
+
+	l.mfspr	r4, r0, SPR_EVBAR
+	l.add	r5, r5, r4
+
+_reloc_vectors:
+	/* Relocate vectors*/
+	l.movhi	r6, hi(__start)		/* Length */
+	l.ori	r6, r6, lo(__start)
+	l.ori	r3, r8, 0
+
+.L_relocvectors:
+	l.lwz	r7, 0(r3)
+	l.sw	0(r5), r7
+	l.addi	r5, r5, 4
+	l.sfeq	r5, r6
+	l.bnf	.L_relocvectors
+	 l.addi	r3, r3, 4
+
+_no_vector_reloc:
+
 	/* Relocate barebox */
-	l.movhi	r3,hi(__start)		/* source start address */
+	l.movhi	r3,hi(__start)		/* source start offset */
 	l.ori	r3,r3,lo(__start)
+	l.add	r3,r8,r3
+
 	l.movhi	r4,hi(_stext)		/* dest start address */
 	l.ori	r4,r4,lo(_stext)
 	l.movhi	r5,hi(__end)		/* dest end address */
@@ -62,22 +100,11 @@ __reset:
 	l.bf	.L_reloc
 	l.addi	r4,r4,4			/*delay slot */
 
-#ifdef CONFIG_SYS_RELOCATE_VECTORS
-	/* Relocate vectors from 0xf0000000 to 0x00000000 */
-	l.movhi r4, 0xf000 /* source */
-	l.movhi r5, 0      /* destination */
-	l.addi	r6, r5, CONFIG_SYS_VECTORS_LEN /* length */
-.L_relocvectors:
-	l.lwz	r7, 0(r4)
-	l.sw	0(r5), r7
-	l.addi	r5, r5, 4
-	l.sfeq	r5,r6
-	l.bnf	.L_relocvectors
-	 l.addi	r4,r4, 4
-#endif
-
-	l.j	_start
-	 l.nop
+	/* JUMP TO RELOC ADDR */
+	l.movhi	r4, hi(_start)
+	l.ori	r4, r4, lo(_start)
+	l.jr	r4
+	l.nop
 
 	/* bus error */
 	.org	0x200
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
