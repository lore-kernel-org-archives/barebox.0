Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkkB-0003nV-8q
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:30:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:30:03 +0200
Message-Id: <1350307804-5365-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM a9m2440: Fix lowlevel init
To: barebox@lists.infradead.org

board_init_lowlevel is no longer called from generic code, so we can't
just return from in. Instead we have to jump to board_init_lowlevel_return
manually. For the a9m2440 board one case was missed to convert. This
is broken since:

| commit faf7b7af6e51a33b88453821d792c89a84f72b1d
| Author: Jan Luebbe <jlu@pengutronix.de>
| Date:   Mon Sep 24 10:18:34 2012 +0200
|
|     ARM: give boards control of the reset entry point
|
|     On some SoCs (for example AM35xx), the ROM bootloader passes useful
|     information in r0 when jumping to barebox.
|
|     To avoid overwriting this in the generic reset code, we introduce
|     common_reset as a C function and as an assembler macro. This is then
|     called form the reset entry point (either in common or in board code).
|
|     This patch is based on code by Sascha Hauer <s.hauer@pengutronix.de>.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2440/lowlevel_init.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index da29efd..8f6cfcb 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -225,7 +225,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	mov pc, r10
+	b board_init_lowlevel_return
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
