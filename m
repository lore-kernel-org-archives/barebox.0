Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYJBr-0000Yj-0L
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 14:09:16 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUE9AbB010941
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 08:09:12 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:39:07 +0530
Message-Id: <1293718147-6248-1-git-send-email-premi@ti.com>
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
Subject: [PATCH] omap34x: Add suffix to DPLL tables and related function
To: barebox@lists.infradead.org

This patch adds suffix 34x to DPLL tables and related functions to
indicate that they are applicable to OMAP34XX only.

The suffix was required to prepare for support of OMAP36XX in the
subsequent patch series.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h |    8 ++--
 arch/arm/mach-omap/omap3_clock.c              |    8 ++--
 arch/arm/mach-omap/omap3_clock_core.S         |   56 ++++++++++++------------
 3 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 1b42500..6613645 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -125,10 +125,10 @@ struct dpll_param {
 	unsigned int m2;
 };
 /* External functions see omap3_clock_core.S */
-extern struct dpll_param *get_mpu_dpll_param(u32);
-extern struct dpll_param *get_iva_dpll_param(u32);
-extern struct dpll_param *get_core_dpll_param(u32);
-extern struct dpll_param *get_per_dpll_param(u32);
+extern struct dpll_param *get_mpu_dpll_param_34x(u32);
+extern struct dpll_param *get_iva_dpll_param_34x(u32);
+extern struct dpll_param *get_core_dpll_param_34x(u32);
+extern struct dpll_param *get_per_dpll_param_34x(u32);
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index dad4ed1..c5a32e9 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -144,7 +144,7 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
  */
 static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_core_dpll_param(cpu_rev);
+	struct dpll_param *dp = get_core_dpll_param_34x(cpu_rev);
 #ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
 	int p0, p1, p2, p3;
 #endif
@@ -242,7 +242,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_per_dpll_param(cpu_rev);
+	struct dpll_param *dp = get_per_dpll_param_34x(cpu_rev);
 
 	dp += clk_sel;
 
@@ -300,7 +300,7 @@ static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_mpu_dpll_param(cpu_rev);
+	struct dpll_param *dp = get_mpu_dpll_param_34x(cpu_rev);
 
 	dp += clk_sel;
 
@@ -325,7 +325,7 @@ static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_iva_dpll_param(cpu_rev);
+	struct dpll_param *dp = get_iva_dpll_param_34x(cpu_rev);
 
 	dp += clk_sel;
 
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index f28069a..5a1f068 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -212,8 +212,8 @@ pll_div_val5:
  *
  * The tables are defined for separately each silicon revision.
  */
-.globl mpu_dpll_param_es1
-mpu_dpll_param_es1:
+.globl mpu_dpll_param_34x_es1
+mpu_dpll_param_34x_es1:
 /*    	M	N	FREQSEL	M2	*/
 .word	0x0FE,	0x07,	0x05,	0x01		/* 12   MHz	*/
 .word	0x17D,	0x0C,	0x03,	0x01		/* 13   MHz	*/
@@ -221,8 +221,8 @@ mpu_dpll_param_es1:
 .word	0x17D,	0x19,	0x03,	0x01		/* 26   MHz	*/
 .word	0x1FA,	0x32,	0x03,	0x01		/* 38.4 MHz	*/
 
-.globl mpu_dpll_param_es2
-mpu_dpll_param_es2:
+.globl mpu_dpll_param_34x_es2
+mpu_dpll_param_34x_es2:
 /*    	M	N	FREQSEL	M2	*/
 .word	0x0FA,	0x05,	0x07,	0x01		/* 12   MHz	*/
 .word	0x1F4,	0x0C,	0x03,	0x01		/* 13   MHz	*/
@@ -231,24 +231,24 @@ mpu_dpll_param_es2:
 .word	0x271,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
 /**
- * @brief Get address of MPU DPLL param table.
+ * @brief Get address of MPU DPLL param table (OMAP34XX).
  *
  * @param rev Silicon revision.
  *
  * @return Address of the param table
  */
-.globl get_mpu_dpll_param
-get_mpu_dpll_param:
+.globl get_mpu_dpll_param_34x
+get_mpu_dpll_param_34x:
 	mov	r3, r0
 	lsl	r3, r3, #16		/* Isolate silicon revision */
 	lsr	r3, r3, #16
 	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, mpu_dpll_param_es1
+	adr	r0, mpu_dpll_param_34x_es1
 	bxeq	lr
-	adr	r0, mpu_dpll_param_es2
+	adr	r0, mpu_dpll_param_34x_es2
 	mov	pc, lr
 
-iva_dpll_param_es1:
+iva_dpll_param_34x_es1:
 /*    	M	N	FREQSEL	M2				*/
 .word	0x07D,	0x05,	0x07,	0x01		/* 12   MHz	*/
 .word	0x0FA,	0x0C,	0x03,	0x01		/* 13   MHz	*/
@@ -256,7 +256,7 @@ iva_dpll_param_es1:
 .word	0x07D,	0x0C,	0x07,	0x01		/* 26   MHz	*/
 .word	0x13F,	0x30,	0x03,	0x01		/* 38.4 MHz	*/
 
-iva_dpll_param_es2:
+iva_dpll_param_34x_es2:
 /*    	M	N	FREQSEL	M2				*/
 .word	0x0B4,	0x05,	0x07,	0x01		/* 12   MHz	*/
 .word	0x168,	0x0C,	0x03,	0x01		/* 13   MHz	*/
@@ -265,24 +265,24 @@ iva_dpll_param_es2:
 .word	0x0E1,	0x17,	0x06,	0x01		/* 38.4 MHz	*/
 
 /**
- * @brief Get address of IVA DPLL param table.
+ * @brief Get address of IVA DPLL param table (OMAP34XX).
  *
  * @param rev Silicon revision.
  *
  * @return Address of the param table
  */
-.globl get_iva_dpll_param
-get_iva_dpll_param:
+.globl get_iva_dpll_param_34x
+get_iva_dpll_param_34x:
 	mov	r3, r0
 	lsl	r3, r3, #16		/* Isolate silicon revision */
 	lsr	r3, r3, #16
 	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, iva_dpll_param_es1
+	adr	r0, iva_dpll_param_34x_es1
 	bxeq	lr
-	adr	r0, iva_dpll_param_es2
+	adr	r0, iva_dpll_param_34x_es2
 	mov	pc, lr
 
-core_dpll_param_es1:
+core_dpll_param_34x_es1:
 /*    	M	N	FREQSEL	M2				*/
 .word	0x19F,	0x0E,	0x03,	0x01		/* 12   MHz	*/
 .word	0x1B2,	0x10,	0x03,	0x01		/* 13   MHz	*/
@@ -290,7 +290,7 @@ core_dpll_param_es1:
 .word	0x1B2,	0x21,	0x03,	0x01		/* 26   MHz	*/
 .word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
-core_dpll_param_es2:
+core_dpll_param_34x_es2:
 /*    	M	N	FREQSEL	M2				*/
 .word	0x0A6,	0x05,	0x07,	0x01		/* 12   MHz	*/
 .word	0x14C,	0x0C,	0x03,	0x01		/* 13   MHz	*/
@@ -299,25 +299,25 @@ core_dpll_param_es2:
 .word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
 /**
- * @brief Get address of CORE DPLL param table.
+ * @brief Get address of CORE DPLL param table (OMAP34XX).
  *
  * @param rev Silicon revision.
  *
  * @return Address of the param table
  */
-.globl get_core_dpll_param
-get_core_dpll_param:
+.globl get_core_dpll_param_34x
+get_core_dpll_param_34x:
 	mov	r3, r0
 	lsl	r3, r3, #16		/* Isolate silicon revision */
 	lsr	r3, r3, #16
 	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, core_dpll_param_es1
+	adr	r0, core_dpll_param_34x_es1
 	bxeq	lr
-	adr	r0, core_dpll_param_es2
+	adr	r0, core_dpll_param_34x_es2
 	mov	pc, lr
 
 /* PER DPLL values are same for both ES1 and ES2 */
-per_dpll_param:
+per_dpll_param_34x:
 /*    	M	N	FREQSEL	M2				*/
 .word	0x0D8,	0x05,	0x07,	0x09		/* 12   MHz	*/
 .word	0x1B0,	0x0C,	0x03,	0x09		/* 13   MHz	*/
@@ -326,13 +326,13 @@ per_dpll_param:
 .word	0x0E1,	0x13,	0x07,	0x09		/* 38.4 MHz	*/
 
 /**
- * @brief Get address of PER DPLL param table.
+ * @brief Get address of PER DPLL param table (OMAP34XX).
  *
  * @param rev Silicon revision (not used).
  *
  * @return Address of the param table
  */
-.globl get_per_dpll_param
-get_per_dpll_param:
-	adr r0, per_dpll_param
+.globl get_per_dpll_param_34x
+get_per_dpll_param_34x:
+	adr r0, per_dpll_param_34x
 	mov pc, lr
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
