Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027b-Bs
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:21 +0200
Message-Id: <1350507817-7819-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/28] ARM ep93xx boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

This architecture is a bit strange. It has up to four SDRAM banks, but
all have a quite limited size. The SDRAM size for the different boards
currently is unknown as it's configurable with Kconfig. We use a SDRAM
size based on the value of the only board we have in the defconfigs:
edb9301. This likely breaks other ep93xx boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-ep93xx/Makefile        |    4 ++--
 arch/arm/mach-ep93xx/lowlevel_init.S |   11 ++++++++++-
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index 5615394..0ff0b66 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,4 +1,4 @@
 obj-y += clocksource.o gpio.o led.o header.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o led.o
+obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o led.o
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
index 6de53dd..154d38d 100644
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -20,6 +20,7 @@
  *
  */
 
+#include <sizes.h>
 #include <mach/ep93xx-regs.h>
 #include <asm/barebox-arm-head.h>
 
@@ -52,4 +53,12 @@ reset:
 	orr r0, r0, #0xc0000000
 	mcr p15, 0, r0, c1, c0, 0
 
-	b board_init_lowlevel_return
+	/*
+	 * FIXME: This is suitable for the edb9301, the
+	 * only ep93xx board we have in our defconfigs.
+	 * Other boards need different values here.
+	 */
+	mov	r0, #0x05000000
+	mov	r1, #SZ_8M
+	mov	r2, #0
+	b	barebox_arm_entry
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
