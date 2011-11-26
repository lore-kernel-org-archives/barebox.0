Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUN26-0007h9-CC
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 18:31:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RUN1x-0001Yz-Gi
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 19:31:17 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 26 Nov 2011 19:30:29 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111261930.29836.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Mini2440: Fix leftover from A9M2440 copy
To: barebox@lists.infradead.org

These symbols where defined for the A9M2440 platform. Rename them to the
platform they now belong to.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/arm/boards/mini2440/config.h   |    9 +++++----
 arch/arm/boards/mini2440/mini2440.c |    3 ++-
 2 files changed, 7 insertions(+), 5 deletions(-)

Index: barebox-git/arch/arm/boards/mini2440/config.h
===================================================================
--- barebox-git.orig/arch/arm/boards/mini2440/config.h
+++ barebox-git/arch/arm/boards/mini2440/config.h
@@ -61,13 +61,14 @@
  * Twrph1 = 1 (-> 20ns)
  * Cycle time = 80ns
  */
-#define A9M2440_TACLS 1
-#define A9M2440_TWRPH0 3
-#define A9M2440_TWRPH1 1
+#define MINI2440_TACLS 1
+#define MINI2440_TWRPH0 3
+#define MINI2440_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
 #ifdef CONFIG_S3C24XX_NAND_BOOT
-# define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
+# define BOARD_DEFAULT_NAND_TIMING \
+	CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0, MINI2440_TWRPH1)
 #endif
 
 /*
Index: barebox-git/arch/arm/boards/mini2440/mini2440.c
===================================================================
--- barebox-git.orig/arch/arm/boards/mini2440/mini2440.c
+++ barebox-git/arch/arm/boards/mini2440/mini2440.c
@@ -45,7 +45,8 @@
 #include <mach/fb.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
-	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1),
+	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
+							MINI2440_TWRPH1),
 	.flash_bbt = 1,	/* same as the kernel */
 };
 

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
