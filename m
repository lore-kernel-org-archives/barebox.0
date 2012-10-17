Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027U-1x
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:19 +0200
Message-Id: <1350507817-7819-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/28] ARM Samsung boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

All Samsung boards automatically detect their SDRAM size. The size detection
code can't be called safely from lowlevel C code, so instead the minimum SDRAM
size is guessed from the defconfig files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/lowlevel_init.S              |    9 +++++++--
 arch/arm/boards/a9m2440/lowlevel_init.S              |    9 +++++++--
 arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S |    9 +++++++--
 arch/arm/boards/friendlyarm-mini6410/Makefile        |    2 ++
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c      |   11 +++++++++++
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c       |    4 +++-
 arch/arm/boards/friendlyarm-tiny6410/Makefile        |    3 ++-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c      |   11 +++++++++++
 8 files changed, 50 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c

diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 502ecdd..178e73a 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <asm/barebox-arm-head.h>
 
@@ -21,7 +22,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -33,4 +34,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 8f6cfcb..bd51717 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-gpio.h>
 #include <asm/barebox-arm-head.h>
@@ -225,7 +226,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -237,4 +238,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
index 5c06b1c..a6e06ed 100644
--- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
+++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <asm/barebox-arm-head.h>
 
@@ -22,7 +23,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -34,4 +35,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
index cd7a427..d5fa853 100644
--- a/arch/arm/boards/friendlyarm-mini6410/Makefile
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -1 +1,3 @@
 obj-y += mini6410.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
new file mode 100644
index 0000000..61ed757
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/s3c-iomap.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 695f97d..5d9582e 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -23,6 +23,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <sizes.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/sections.h>
@@ -61,7 +62,8 @@ void __bare_init reset(void)
 #endif
 
 	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
-		board_init_lowlevel_return(); /* No, we don't. */
+		/* No, we don't. */
+		barebox_arm_entry(S3C_SDRAM_BASE, SZ_64M, 0);
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
index b3ab12e..eb0e0ed 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -1,3 +1,4 @@
 obj-y += tiny6410.o
-
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-$(CONFIG_MACH_TINY6410_FA) += development-board.o
diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
new file mode 100644
index 0000000..61ed757
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/s3c-iomap.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
