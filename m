Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zj-0005j3-SD
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:01 +0200
Message-Id: <20200915070305.15763-3-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] powerpc: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

Add missing includes to avoid -Wmissing-prototypes warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c | 2 ++
 arch/powerpc/boards/freescale-p1022ds/p1022ds.c   | 2 ++
 arch/powerpc/mach-mpc5xxx/reginfo.c               | 1 +
 arch/powerpc/mach-mpc5xxx/speed.c                 | 1 +
 arch/powerpc/mach-mpc85xx/cpu.c                   | 1 +
 arch/powerpc/mach-mpc85xx/cpuid.c                 | 1 +
 arch/powerpc/mach-mpc85xx/fsl_i2c.c               | 1 +
 7 files changed, 9 insertions(+)

diff --git a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
index b163327597..f2f6d00b77 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
@@ -37,6 +37,8 @@
 #include <mach/early_udelay.h>
 #include <of.h>
 
+#include "p1010rdb.h"
+
 static struct gfar_info_struct gfar_info[] = {
 	{
 		.phyaddr = 1,
diff --git a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
index d80c234ea9..956b830c5d 100644
--- a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
@@ -34,6 +34,8 @@
 #include <mach/clock.h>
 #include <mach/early_udelay.h>
 
+#include "p1022ds.h"
+
 /* Define attributes for eTSEC1 and eTSEC2 */
 static struct gfar_info_struct gfar_info[] = {
 	{
diff --git a/arch/powerpc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
index e41d235a5d..8b646e7d04 100644
--- a/arch/powerpc/mach-mpc5xxx/reginfo.c
+++ b/arch/powerpc/mach-mpc5xxx/reginfo.c
@@ -1,4 +1,5 @@
 #include <stdio.h>
+#include <common.h>
 #include <config.h>
 #include <mach/mpc5xxx.h>
 #include <asm/io.h>
diff --git a/arch/powerpc/mach-mpc5xxx/speed.c b/arch/powerpc/mach-mpc5xxx/speed.c
index 0cec9522e5..8aa20bd373 100644
--- a/arch/powerpc/mach-mpc5xxx/speed.c
+++ b/arch/powerpc/mach-mpc5xxx/speed.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <asm/processor.h>
 #include <types.h>
+#include <mach/clock.h>
 
 /* Bus-to-Core Multipliers */
 
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index 7c8a59edc9..1d5a69c999 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -28,6 +28,7 @@
 #include <asm-generic/memory_layout.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
+#include <mach/mpc85xx.h>
 
 static void __noreturn mpc85xx_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/powerpc/mach-mpc85xx/cpuid.c b/arch/powerpc/mach-mpc85xx/cpuid.c
index ae82e3fd3f..28f08ca292 100644
--- a/arch/powerpc/mach-mpc85xx/cpuid.c
+++ b/arch/powerpc/mach-mpc85xx/cpuid.c
@@ -23,6 +23,7 @@
 #include <asm/cache.h>
 #include <asm/io.h>
 #include <mach/immap_85xx.h>
+#include <mach/mpc85xx.h>
 
 struct cpu_type cpu_type_list[] = {
 	CPU_TYPE_ENTRY(8544, 8544, 1),
diff --git a/arch/powerpc/mach-mpc85xx/fsl_i2c.c b/arch/powerpc/mach-mpc85xx/fsl_i2c.c
index 51fcc64c26..8cf80713f6 100644
--- a/arch/powerpc/mach-mpc85xx/fsl_i2c.c
+++ b/arch/powerpc/mach-mpc85xx/fsl_i2c.c
@@ -21,6 +21,7 @@
 #include <mach/clock.h>
 #include <mach/immap_85xx.h>
 #include <mach/early_udelay.h>
+#include <mach/fsl_i2c.h>
 
 /* FSL I2C registers */
 #define FSL_I2C_ADR	0x00
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
