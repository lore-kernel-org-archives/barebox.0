Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abFdW-0008AI-65
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 22:52:57 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed,  2 Mar 2016 23:51:28 +0100
Message-Id: <1456959088-9609-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] arm/cpu/lowlevel: fix: possible processor mode change
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

This is a re-application of fix 17644b55.
arm_cpu_lowlevel_init() will set the processor mode to 0x13 (supervisor).
When this function is entered via a different processor mode, register
banking will happen to lr (r14), resulting in an invalid return address.
This fix will preserve the return address manually.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/cpu/lowlevel.S | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index b76222d..e5baa12 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -4,6 +4,8 @@
 
 .section ".text_bare_init_","ax"
 ENTRY(arm_cpu_lowlevel_init)
+	/* save lr, since it may be banked away with a processor mode change */
+	mov	r2, lr
 	/* set the cpu to SVC32 mode, mask irq and fiq */
 	mrs	r12, cpsr
 	bic	r12, r12, #0x1f
@@ -54,5 +56,5 @@ ENTRY(arm_cpu_lowlevel_init)
 
 	mcr	p15, 0, r12, c1, c0, 0		/* SCTLR */
 
-	mov	pc, lr
+	mov	pc, r2
 ENDPROC(arm_cpu_lowlevel_init)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
