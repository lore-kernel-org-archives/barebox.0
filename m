Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIu4-0000FZ-7a
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:53 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDom7Y008510
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:51 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:56 +0530
Message-Id: <1293716998-5154-4-git-send-email-premi@ti.com>
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
Subject: [PATCH 4/6] omap3: Add DPLL tables for silicon rev 1 and 2
To: barebox@lists.infradead.org

This patch adds DPLL tables for OMAP34xx ES1.0 and ES2.0.

When more than one table is added, the get_xxx_dpll_param()
was updated to use the tables corresponding to ES2.0 to
ensure that current functionality doesn't break.

In addition, the tables have been reformatted for better
readability.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/omap3_clock_core.S |  144 ++++++++++++++-------------------
 1 files changed, 62 insertions(+), 82 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index 872ae5a..207d43a 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -205,106 +205,86 @@ pll_div_val5:
 	/* the literal pools origin */
 	.ltorg
 
-/* DPLL(1-4) PARAM TABLES */
-/* Each of the tables has M, N, FREQSEL, M2 values defined for nominal
- * OPP (1.2V). The fields are defined according to dpll_param
- * struct(omap3_clock.c). MAX index is as per omap3_clock.h
+/* MPU DPLL Parameter table
+ *
+ * This table defines the DPLL parameter table for the MPU as defined by
+ * "struct dpll_param defined" in "omap3-clock.h"
+ *
+ * The tables are defined for separately each silicon revision.
  */
-
-mpu_dpll_param:
-/* 12MHz */
-/* ES2 */
-.word 0x0FA,0x05,0x07,0x01
-
-/* 13MHz */
-/* ES2 */
-.word 0x1F4,0x0C,0x03,0x01
-
-/* 19.2MHz */
-/* ES2 */
-.word 0x271,0x17,0x03,0x01
-
-/* 26MHz */
-/* ES2 */
-.word 0x0FA,0x0C,0x07,0x01
-
-/* 38.4MHz */
-/* ES2 */
-.word 0x271,0x2F,0x03,0x01
+.globl mpu_dpll_param_es1
+mpu_dpll_param_es1:
+/*    	M	N	FREQSEL	M2	*/
+.word	0x0FE,	0x07,	0x05,	0x01		/* 12   MHz	*/
+.word	0x17D,	0x0C,	0x03,	0x01		/* 13   MHz	*/
+.word	0x179,	0x12,	0x04,	0x01		/* 19.2 MHz	*/
+.word	0x17D,	0x19,	0x03,	0x01		/* 26   MHz	*/
+.word	0x1FA,	0x32,	0x03,	0x01		/* 38.4 MHz	*/
+
+.globl mpu_dpll_param_es2
+mpu_dpll_param_es2:
+/*    	M	N	FREQSEL	M2	*/
+.word	0x0FA,	0x05,	0x07,	0x01		/* 12   MHz	*/
+.word	0x1F4,	0x0C,	0x03,	0x01		/* 13   MHz	*/
+.word	0x271,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
+.word	0x0FA,	0x0C,	0x07,	0x01		/* 26   MHz	*/
+.word	0x271,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
 .globl get_mpu_dpll_param
 get_mpu_dpll_param:
-	adr r0, mpu_dpll_param
+	adr r0, mpu_dpll_param_es2
 	mov pc, lr
 
-iva_dpll_param:
-/* 12MHz */
-/* ES2 */
-.word 0x0B4,0x05,0x07,0x01
-
-/* 13MHz */
-/* ES2 */
-.word 0x168,0x0C,0x03,0x01
-
-/* 19.2MHz */
-/* ES2 */
-.word 0x0E1,0x0B,0x06,0x01
-
-/* 26MHz */
-/* ES2 */
-.word 0x0B4,0x0C,0x07,0x01
-
-/* 38.4MHz */
-/* ES2 */
-.word 0x0E1,0x17,0x06,0x01
+iva_dpll_param_es1:
+/*    	M	N	FREQSEL	M2				*/
+.word	0x07D,	0x05,	0x07,	0x01		/* 12   MHz	*/
+.word	0x0FA,	0x0C,	0x03,	0x01		/* 13   MHz	*/
+.word	0x082,	0x09,	0x07,	0x01		/* 19.2 MHz	*/
+.word	0x07D,	0x0C,	0x07,	0x01		/* 26   MHz	*/
+.word	0x13F,	0x30,	0x03,	0x01		/* 38.4 MHz	*/
+
+iva_dpll_param_es2:
+/*    	M	N	FREQSEL	M2				*/
+.word	0x0B4,	0x05,	0x07,	0x01		/* 12   MHz	*/
+.word	0x168,	0x0C,	0x03,	0x01		/* 13   MHz	*/
+.word	0x0E1,	0x0B,	0x06,	0x01		/* 19.2 MHz	*/
+.word	0x0B4,	0x0C,	0x07,	0x01		/* 26   MHz	*/
+.word	0x0E1,	0x17,	0x06,	0x01		/* 38.4 MHz	*/
 
 .globl get_iva_dpll_param
 get_iva_dpll_param:
-	adr r0, iva_dpll_param
+	adr r0, iva_dpll_param_es2
 	mov pc, lr
 
-core_dpll_param:
-/* 12MHz */
-/* ES2 */
-.word 0x0A6,0x05,0x07,0x01
-
-/* 13MHz */
-/* ES2 */
-.word 0x14C,0x0C,0x03,0x01
-
-/* 19.2MHz */
-/* ES2 */
-.word 0x19F,0x17,0x03,0x01
-
-/* 26MHz */
-/* ES2 */
-.word 0x0A6,0x0C,0x07,0x01
-
-/* 38.4MHz */
-/* ES2 */
-.word 0x19F,0x2F,0x03,0x01
+core_dpll_param_es1:
+/*    	M	N	FREQSEL	M2				*/
+.word	0x19F,	0x0E,	0x03,	0x01		/* 12   MHz	*/
+.word	0x1B2,	0x10,	0x03,	0x01		/* 13   MHz	*/
+.word	0x19F,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
+.word	0x1B2,	0x21,	0x03,	0x01		/* 26   MHz	*/
+.word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
+
+core_dpll_param_es2:
+/*    	M	N	FREQSEL	M2				*/
+.word	0x0A6,	0x05,	0x07,	0x01		/* 12   MHz	*/
+.word	0x14C,	0x0C,	0x03,	0x01		/* 13   MHz	*/
+.word	0x19F,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
+.word	0x0A6,	0x0C,	0x07,	0x01		/* 26   MHz	*/
+.word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
 
 .globl get_core_dpll_param
 get_core_dpll_param:
-	adr r0, core_dpll_param
+	adr r0, core_dpll_param_es2
 	mov pc, lr
 
 /* PER DPLL values are same for both ES1 and ES2 */
 per_dpll_param:
-/* 12MHz */
-.word 0xD8,0x05,0x07,0x09
-
-/* 13MHz */
-.word 0x1B0,0x0C,0x03,0x09
-
-/* 19.2MHz */
-.word 0xE1,0x09,0x07,0x09
-
-/* 26MHz */
-.word 0xD8,0x0C,0x07,0x09
-
-/* 38.4MHz */
-.word 0xE1,0x13,0x07,0x09
+/*    	M	N	FREQSEL	M2				*/
+.word	0x0D8,	0x05,	0x07,	0x09		/* 12   MHz	*/
+.word	0x1B0,	0x0C,	0x03,	0x09		/* 13   MHz	*/
+.word	0x0E1,	0x09,	0x07,	0x09		/* 19.2 MHz	*/
+.word	0x0D8,	0x0C,	0x07,	0x09		/* 26   MHz	*/
+.word	0x0E1,	0x13,	0x07,	0x09		/* 38.4 MHz	*/
 
 .globl get_per_dpll_param
 get_per_dpll_param:
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
