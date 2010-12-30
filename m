Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIu6-0000GA-Iw
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:56 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDopwL030513
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:53 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:58 +0530
Message-Id: <1293716998-5154-6-git-send-email-premi@ti.com>
In-Reply-To: <1293716998-5154-1-git-send-email-premi@ti.com>
References: <1293716998-5154-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 6/6] omap3: Select DPLL tables based on cpu revision
To: barebox@lists.infradead.org

This patch updates the DPLL functions to return correct
DPLL table based on the cpu revision.

The DPLL table for PER domain is same across all revisions,
but the function signature has been updated to maintain
consistency in the API definition.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h |    8 ++--
 arch/arm/mach-omap/omap3_clock.c              |    8 ++--
 arch/arm/mach-omap/omap3_clock_core.S         |   58 ++++++++++++++++++++++---
 3 files changed, 60 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index b655fe3..1b42500 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -125,10 +125,10 @@ struct dpll_param {
 	unsigned int m2;
 };
 /* External functions see omap3_clock_core.S */
-extern struct dpll_param *get_mpu_dpll_param(void);
-extern struct dpll_param *get_iva_dpll_param(void);
-extern struct dpll_param *get_core_dpll_param(void);
-extern struct dpll_param *get_per_dpll_param(void);
+extern struct dpll_param *get_mpu_dpll_param(u32);
+extern struct dpll_param *get_iva_dpll_param(u32);
+extern struct dpll_param *get_core_dpll_param(u32);
+extern struct dpll_param *get_per_dpll_param(u32);
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index ff99b2c..dad4ed1 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -144,7 +144,7 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
  */
 static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_core_dpll_param();
+	struct dpll_param *dp = get_core_dpll_param(cpu_rev);
 #ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
 	int p0, p1, p2, p3;
 #endif
@@ -242,7 +242,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_per_dpll_param();
+	struct dpll_param *dp = get_per_dpll_param(cpu_rev);
 
 	dp += clk_sel;
 
@@ -300,7 +300,7 @@ static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_mpu_dpll_param();
+	struct dpll_param *dp = get_mpu_dpll_param(cpu_rev);
 
 	dp += clk_sel;
 
@@ -325,7 +325,7 @@ static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_iva_dpll_param();
+	struct dpll_param *dp = get_iva_dpll_param(cpu_rev);
 
 	dp += clk_sel;
 
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index 207d43a..f28069a 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -230,10 +230,23 @@ mpu_dpll_param_es2:
 .word	0x0FA,	0x0C,	0x07,	0x01		/* 26   MHz	*/
 .word	0x271,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
+/**
+ * @brief Get address of MPU DPLL param table.
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
 .globl get_mpu_dpll_param
 get_mpu_dpll_param:
-	adr r0, mpu_dpll_param_es2
-	mov pc, lr
+	mov	r3, r0
+	lsl	r3, r3, #16		/* Isolate silicon revision */
+	lsr	r3, r3, #16
+	cmp	r3, #0			/* Revision 1 ? */
+	adr	r0, mpu_dpll_param_es1
+	bxeq	lr
+	adr	r0, mpu_dpll_param_es2
+	mov	pc, lr
 
 iva_dpll_param_es1:
 /*    	M	N	FREQSEL	M2				*/
@@ -251,10 +264,23 @@ iva_dpll_param_es2:
 .word	0x0B4,	0x0C,	0x07,	0x01		/* 26   MHz	*/
 .word	0x0E1,	0x17,	0x06,	0x01		/* 38.4 MHz	*/
 
+/**
+ * @brief Get address of IVA DPLL param table.
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
 .globl get_iva_dpll_param
 get_iva_dpll_param:
-	adr r0, iva_dpll_param_es2
-	mov pc, lr
+	mov	r3, r0
+	lsl	r3, r3, #16		/* Isolate silicon revision */
+	lsr	r3, r3, #16
+	cmp	r3, #0			/* Revision 1 ? */
+	adr	r0, iva_dpll_param_es1
+	bxeq	lr
+	adr	r0, iva_dpll_param_es2
+	mov	pc, lr
 
 core_dpll_param_es1:
 /*    	M	N	FREQSEL	M2				*/
@@ -272,10 +298,23 @@ core_dpll_param_es2:
 .word	0x0A6,	0x0C,	0x07,	0x01		/* 26   MHz	*/
 .word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
+/**
+ * @brief Get address of CORE DPLL param table.
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
 .globl get_core_dpll_param
 get_core_dpll_param:
-	adr r0, core_dpll_param_es2
-	mov pc, lr
+	mov	r3, r0
+	lsl	r3, r3, #16		/* Isolate silicon revision */
+	lsr	r3, r3, #16
+	cmp	r3, #0			/* Revision 1 ? */
+	adr	r0, core_dpll_param_es1
+	bxeq	lr
+	adr	r0, core_dpll_param_es2
+	mov	pc, lr
 
 /* PER DPLL values are same for both ES1 and ES2 */
 per_dpll_param:
@@ -286,6 +325,13 @@ per_dpll_param:
 .word	0x0D8,	0x0C,	0x07,	0x09		/* 26   MHz	*/
 .word	0x0E1,	0x13,	0x07,	0x09		/* 38.4 MHz	*/
 
+/**
+ * @brief Get address of PER DPLL param table.
+ *
+ * @param rev Silicon revision (not used).
+ *
+ * @return Address of the param table
+ */
 .globl get_per_dpll_param
 get_per_dpll_param:
 	adr r0, per_dpll_param
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
