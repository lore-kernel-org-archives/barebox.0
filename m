Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQGsN-0004YG-Pn
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 14:54:21 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Tue, 24 Feb 2015 15:53:48 +0100
Message-Id: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 1/3] ARM Samsung: fix booting from NAND without pbl
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

This was broken in 558d72dc5116 (ARM Samsung: fix booting from NAND with
pbl). '_text' is TEXT_BASE when building without pbl and (TEXT_BASE -
SZ_2M) when building with pbl, so this works in both cases.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

I hope I understood how this should work and this is correct now. It worked
for me with and without pbl. Anything else that could mess this up?

Michael

 arch/arm/mach-samsung/lowlevel-s3c24x0.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-samsung/lowlevel-s3c24x0.S b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
index 626ad0418778..d43cdff52863 100644
--- a/arch/arm/mach-samsung/lowlevel-s3c24x0.S
+++ b/arch/arm/mach-samsung/lowlevel-s3c24x0.S
@@ -15,7 +15,6 @@
  */
 
 #include <config.h>
-#include <linux/sizes.h>
 #include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.s3c24x0_disable_wd","ax"
@@ -251,7 +250,7 @@ s3c24x0_nand_boot:
 	beq 2f
 	mov pc, lr	/* NOR case: nothing to do here */
 
-2:	ldr sp, =(TEXT_BASE - SZ_2M)	/* Setup a temporary stack in SDRAM */
+2:	ldr sp, =_text	/* Setup a temporary stack in SDRAM */
 /*
  * We still run at a location we are not linked to. But lets still running
  * from the internal SRAM, this may speed up the boot
@@ -262,7 +261,7 @@ s3c24x0_nand_boot:
 /*
  * Adjust the return address to the correct address in SDRAM
  */
-	ldr r1, =(TEXT_BASE - SZ_2M)
+	ldr r1, =_text
 	add lr, lr, r1
 
 	mov pc, lr
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
