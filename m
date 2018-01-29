Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egCK3-0002wd-CK
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 16:30:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egCJo-0001SG-77
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 17:30:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Subject: [PATCH 02/10] ARM: safely switch from HYP to SVC mode if required
Date: Mon, 29 Jan 2018 17:29:56 +0100
Message-Id: <20180129163004.10512-3-l.stach@pengutronix.de>
In-Reply-To: <20180129163004.10512-1-l.stach@pengutronix.de>
References: <20180129163004.10512-1-l.stach@pengutronix.de>
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
To: barebox@lists.infradead.org

This is a port of the Linux safe_svcmode_maskall macro to
the Barebox lowlevel init.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/lowlevel.S       | 20 ++++++++++++++++----
 arch/arm/include/asm/system.h | 26 ++++++++++++++++++++++++++
 2 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 7696a198e764..194ce0e7c274 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -1,16 +1,28 @@
 #include <linux/linkage.h>
 #include <init.h>
 #include <asm/system.h>
+#include <asm/opcodes-virt.h>
 
 .section ".text_bare_init_","ax"
 ENTRY(arm_cpu_lowlevel_init)
 	/* save lr, since it may be banked away with a processor mode change */
 	mov	r2, lr
+
 	/* set the cpu to SVC32 mode, mask irq and fiq */
-	mrs	r12, cpsr
-	bic	r12, r12, #0x1f
-	orr	r12, r12, #0xd3
-	msr	cpsr, r12
+	mrs	r12 , cpsr
+	eor	r12, r12, #HYP_MODE
+	tst	r12, #MODE_MASK
+	bic	r12 , r12 , #MODE_MASK
+	orr	r12 , r12 , #(PSR_I_BIT | PSR_F_BIT | SVC_MODE)
+THUMB(	orr	r12 , r12 , #PSR_T_BIT	)
+	bne	1f
+	orr	r12, r12, #PSR_A_BIT
+	adr	lr, 2f
+	msr	spsr_cxsf, r12
+	__MSR_ELR_HYP(14)
+	__ERET
+1:	msr	cpsr_c, r12
+2:
 
 #if __LINUX_ARM_ARCH__ >= 6
 	/*
diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 57c76186b499..55e0f4090295 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -60,6 +60,32 @@
 #define CR_AFE  (1 << 29)	/* Access flag enable			*/
 #define CR_TE   (1 << 30)	/* Thumb exception enable		*/
 
+/*
+ * PSR bits
+ */
+#define USR_MODE	0x00000010
+#define FIQ_MODE	0x00000011
+#define IRQ_MODE	0x00000012
+#define SVC_MODE	0x00000013
+#define ABT_MODE	0x00000017
+#define HYP_MODE	0x0000001a
+#define UND_MODE	0x0000001b
+#define SYSTEM_MODE	0x0000001f
+#define MODE32_BIT	0x00000010
+#define MODE_MASK	0x0000001f
+
+#define PSR_T_BIT	0x00000020
+#define PSR_F_BIT	0x00000040
+#define PSR_I_BIT	0x00000080
+#define PSR_A_BIT	0x00000100
+#define PSR_E_BIT	0x00000200
+#define PSR_J_BIT	0x01000000
+#define PSR_Q_BIT	0x08000000
+#define PSR_V_BIT	0x10000000
+#define PSR_C_BIT	0x20000000
+#define PSR_Z_BIT	0x40000000
+#define PSR_N_BIT	0x80000000
+
 #ifndef __ASSEMBLY__
 #if __LINUX_ARM_ARCH__ >= 7
 static inline unsigned int current_el(void)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
