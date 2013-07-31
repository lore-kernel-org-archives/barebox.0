Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V4Swn-0000pe-4y
 for barebox@lists.infradead.org; Wed, 31 Jul 2013 09:43:58 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 31 Jul 2013 10:43:14 +0100
Message-Id: <1375263795-5348-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1375263795-5348-1-git-send-email-renaud.barbier@ge.com>
References: <1375263795-5348-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] mpc85xx: remove local bus initialisation
To: barebox@lists.infradead.org

The early initialisation of chip select 0 (boot flash) is removed
from cpu initialisation. This removes the dependency on board
base address definition.

Consequently, cpu_init_f is not called in the start-up code but
added to the init call list as cpu_init_r. Also the file
arch/ppc/mach-mpc85xx/fsl_lbc.c is deleted.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/start.S        |    1 -
 arch/ppc/include/asm/fsl_lbc.h   |    2 --
 arch/ppc/mach-mpc85xx/Makefile   |    1 -
 arch/ppc/mach-mpc85xx/cpu_init.c |    5 +++--
 arch/ppc/mach-mpc85xx/fsl_lbc.c  |   17 -----------------
 5 files changed, 3 insertions(+), 23 deletions(-)
 delete mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c

diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index c0e5ec0..5bcba5f 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -300,7 +300,6 @@ _start_cont:
 	mtmsr	r3
 	isync
 
-	bl      cpu_init_f
 	bl      initdram
 	b       relocate_code
 	isync
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
index 47205e7..58cd080 100644
--- a/arch/ppc/include/asm/fsl_lbc.h
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -44,8 +44,6 @@
 #ifndef __ASSEMBLY__
 #include <asm/io.h>
 
-extern void fsl_init_early_memctl_regs(void);
-
 /* LBC register offsets. */
 #define FSL_LBC_BRX(x)	((x) * 8)	/* bank register offsets.  */
 #define FSL_LBC_ORX(x)	(4 + ((x) * 8)) /* option register offset. */
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index af9be29..cc412c5 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -1,7 +1,6 @@
 obj-y 			+= cpuid.o
 obj-y 			+= cpu.o
 obj-y 			+= cpu_init.o
-obj-y			+= fsl_lbc.o
 obj-y			+= fsl_law.o
 obj-y			+= speed.o
 obj-y			+=time.o
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/ppc/mach-mpc85xx/cpu_init.c
index ec9763e..8372b7f 100644
--- a/arch/ppc/mach-mpc85xx/cpu_init.c
+++ b/arch/ppc/mach-mpc85xx/cpu_init.c
@@ -114,10 +114,11 @@ void cpu_init_early_f(void)
 	e500_init_tlbs();
 }
 
-void cpu_init_f(void)
+static int cpu_init_r(void)
 {
 	e500_disable_tlb(14);
 	e500_disable_tlb(15);
 
-	fsl_init_early_memctl_regs();
+	return 0;
 }
+core_initcall(cpu_init_r);
diff --git a/arch/ppc/mach-mpc85xx/fsl_lbc.c b/arch/ppc/mach-mpc85xx/fsl_lbc.c
deleted file mode 100644
index ac9ca74..0000000
--- a/arch/ppc/mach-mpc85xx/fsl_lbc.c
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * Copyright 2010-2011 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * Version 2 as published by the Free Software Foundation.
- */
-
-#include <common.h>
-#include <asm/fsl_lbc.h>
-#include <mach/immap_85xx.h>
-
-void fsl_init_early_memctl_regs(void)
-{
-	fsl_set_lbc_br(0, CFG_BR0_PRELIM);
-	fsl_set_lbc_or(0, CFG_OR0_PRELIM);
-}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
