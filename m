Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2Mj-00079i-Cx
 for barebox@lists.infradead.org; Sun, 18 May 2014 14:47:06 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sun, 18 May 2014 16:46:29 +0200
Message-Id: <1400424390-24736-4-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
References: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 3/4] ARM Samsung: fix booting from NAND with pbl
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

The ARM pbl is linked at (TEXT_BASE - SZ_2M). This conflicts with the temporary
stack used in s3c24x0_nand_boot. Moving the stack to (TEXT_BASE - SZ_2M) fixes
this problem. With this patch a compressed barebox with pbl can boot on
mini2440 from NAND.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

This seems to work with and without a pbl, but isn't really nice. Is there
a better address that could be used here?

 arch/arm/mach-samsung/lowlevel-s3c24x0.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-samsung/lowlevel-s3c24x0.S b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
index b59ba67..e2efd86 100644
--- a/arch/arm/mach-samsung/lowlevel-s3c24x0.S
+++ b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
@@ -15,6 +15,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.s3c24x0_disable_wd","ax"
@@ -258,7 +259,7 @@ s3c24x0_nand_boot:
 	beq 2f
 	mov pc, lr	/* NOR case: nothing to do here */
 
-2:	ldr sp, =TEXT_BASE	/* Setup a temporary stack in SDRAM */
+2:	ldr sp, =(TEXT_BASE - SZ_2M)	/* Setup a temporary stack in SDRAM */
 /*
  * We still run at a location we are not linked to. But lets still running
  * from the internal SRAM, this may speed up the boot
@@ -269,7 +270,7 @@ s3c24x0_nand_boot:
 /*
  * Adjust the return address to the correct address in SDRAM
  */
-	ldr r1, =TEXT_BASE
+	ldr r1, =(TEXT_BASE - SZ_2M)
 	add lr, lr, r1
 
 	mov pc, lr
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
