Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLi-0003VX-HT
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:28 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EPARq031163
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:17 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:51 +0530
Message-Id: <1294064695-10865-5-git-send-email-premi@ti.com>
In-Reply-To: <1294064695-10865-1-git-send-email-premi@ti.com>
References: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 4/8] omap36x: Add DPLL tables and functions to access them
To: barebox@lists.infradead.org

This patch adds the DPLL tables for OMAP36XX and the
necessary functions to access these tables.

Both definitions follow the conventions used for
OMAP34XX.

All tables, currently, correspond to SYSCLK at 26MHz.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h |    4 +
 arch/arm/mach-omap/omap3_clock_core.S         |   88 +++++++++++++++++++++++++
 2 files changed, 92 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index aa420f8..b9e2714 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -142,6 +142,10 @@ extern struct dpll_param *get_iva_dpll_param_34x(u32);
 extern struct dpll_param *get_core_dpll_param_34x(u32);
 extern struct dpll_param *get_per_dpll_param_34x(u32);
 
+extern struct dpll_param *get_mpu_dpll_param_36x(u32);
+extern struct dpll_param *get_iva_dpll_param_36x(u32);
+extern struct dpll_param *get_core_dpll_param_36x(u32);
+extern struct dpll_param_per_36x *get_per_dpll_param_36x(u32);
 #endif /* __ASSEMBLY__ */
 
 #endif  /* endif _OMAP343X_CLOCKS_H_ */
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index 5a1f068..eb13c2f 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -336,3 +336,91 @@ per_dpll_param_34x:
 get_per_dpll_param_34x:
 	adr r0, per_dpll_param_34x
 	mov pc, lr
+
+.globl mpu_dpll_param_36x
+mpu_dpll_param_36x:
+/* FIXME: All values correspond to 26MHz only */
+/*    	M	N	FREQSEL	M2	*/
+.word	0x12C,	0x0C,	0x00,	0x01		/* 12   MHz	*/
+.word	0x12C,	0x0C,	0x00,	0x01		/* 13   MHz	*/
+.word	0x12C,	0x0C,	0x00,	0x01		/* 19.2 MHz	*/
+.word	0x12C,	0x0C,	0x00,	0x01		/* 26   MHz	*/
+.word	0x12C,	0x0C,	0x00,	0x01		/* 38.4 MHz	*/
+
+/**
+ * @brief Get address of MPU DPLL param table (OMAP36XX).
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
+.globl get_mpu_dpll_param_36x
+get_mpu_dpll_param_36x:
+	adr r0, mpu_dpll_param_36x
+	mov pc, lr
+
+.globl iva_dpll_param_36x
+iva_dpll_param_36x:
+/* FIXME: All values correspond to 26MHz only */
+/*    	M	N	FREQSEL	M2	*/
+.word	0x00A,	0x00,	0x00,	0x01		/* 12   MHz	*/
+.word	0x00A,	0x00,	0x00,	0x01		/* 13   MHz	*/
+.word	0x00A,	0x00,	0x00,	0x01		/* 19.2 MHz	*/
+.word	0x00A,	0x00,	0x00,	0x01		/* 26   MHz	*/
+.word	0x00A,	0x00,	0x00,	0x01		/* 38.4 MHz	*/
+
+/**
+ * @brief Get address of IVA DPLL param table (OMAP36XX).
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
+.globl get_iva_dpll_param_36x
+get_iva_dpll_param_36x:
+	adr r0, iva_dpll_param_36x
+	mov pc, lr
+
+.globl core_dpll_param_36x
+core_dpll_param_36x:
+/* FIXME: All values correspond to 26MHz only */
+/*    	M	N	FREQSEL	M2	*/
+.word	0x0C8,	0x0C,	0x00,	0x01		/* 12   MHz	*/
+.word	0x0C8,	0x0C,	0x00,	0x01		/* 13   MHz	*/
+.word	0x0C8,	0x0C,	0x00,	0x01		/* 19.2 MHz	*/
+.word	0x0C8,	0x0C,	0x00,	0x01		/* 26   MHz	*/
+.word	0x0C8,	0x0C,	0x00,	0x01		/* 38.4 MHz	*/
+
+/**
+ * @brief Get address of IVA DPLL param table (OMAP36XX).
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
+.globl get_core_dpll_param_36x
+get_core_dpll_param_36x:
+	adr r0, core_dpll_param_36x
+	mov pc, lr
+
+.globl per_dpll_param_36x
+per_dpll_param_36x:
+/* FIXME: All values correspond to 26MHz only */
+/*	M	N	M2	M3	M4	M5	M6	m2DIV */
+.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 12   MHz */
+.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 13   MHz */
+.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 19.2 MHz */
+.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 26   MHz */
+.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 38.4 MHz */
+
+/**
+ * @brief Get address of PER DPLL param table (OMAP36XX).
+ *
+ * @param rev Silicon revision.
+ *
+ * @return Address of the param table
+ */
+.globl get_per_dpll_param_36x
+get_per_dpll_param_36x:
+	adr r0, per_dpll_param_36x
+	mov pc, lr
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
