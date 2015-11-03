Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtU53-0005y6-7A
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 05:24:27 +0000
Received: by lffz202 with SMTP id z202so5446540lff.3
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 21:24:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 08:23:48 +0300
Message-Id: <1446528236-30236-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
References: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/9] MIPS: ath79: add pbl_ar9331_pll macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h              | 21 ++++++++++++
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  1 +
 arch/mips/mach-ath79/include/mach/pbl_macros.h  | 43 +++++++++++++++++++++++++
 3 files changed, 65 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 1d9d6ab..db46d0d 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -28,6 +28,27 @@
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
 
+	.macro	pbl_reg_writel val addr
+	.set push
+	.set noreorder
+	li	t9, \addr
+	li	t8, \val
+	sw	t8, 0(t9)
+	.set	pop
+	.endm
+
+	.macro	pbl_reg_clr clr addr
+	.set push
+	.set noreorder
+	li	t9, \addr
+	li	t8, \clr
+	lw	t7, 0(t9)
+	not	t8, t8
+	and	t7, t8
+	sw	t7, 0(t9)
+	.set	pop
+	.endm
+
 	.macro	pbl_sleep reg count
 	.set push
 	.set noreorder
diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index b82a8c3..a1d7db0 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -63,6 +63,7 @@
 #define AR933X_PLL_CPU_CONFIG_REFDIV_MASK	0x1f
 #define AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT	23
 #define AR933X_PLL_CPU_CONFIG_OUTDIV_MASK	0x7
+#define AR933X_PLL_CPU_CONFIG_PLLPWD		BIT(30)
 
 #define AR933X_PLL_CLOCK_CTRL_BYPASS		BIT(2)
 #define AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT	5
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
new file mode 100644
index 0000000..1fc6eb5
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -0,0 +1,43 @@
+#ifndef __ASM_MACH_ATH79_PBL_MACROS_H
+#define __ASM_MACH_ATH79_PBL_MACROS_H
+
+#include <asm/addrspace.h>
+#include <asm/regdef.h>
+#include <mach/ar71xx_regs.h>
+
+#define PLL_BASE		(KSEG1 | AR71XX_PLL_BASE)
+#define PLL_CPU_CONFIG_REG	(PLL_BASE | AR933X_PLL_CPU_CONFIG_REG)
+#define PLL_CPU_CONFIG2_REG	(PLL_BASE | AR933X_PLL_CPU_CONFIG2_REG)
+#define PLL_CLOCK_CTRL_REG	(PLL_BASE | AR933X_PLL_CLOCK_CTRL_REG)
+
+#define DEF_25MHZ_PLL_CLOCK_CTRL \
+				((2 - 1) << AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT \
+				| (1 - 1) << AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT \
+				| (1 - 1) << AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT)
+#define DEF_25MHZ_SETTLE_TIME	(34000 / 40)
+#define DEF_25MHZ_PLL_CONFIG	( 1 << AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT \
+				| 1 << AR933X_PLL_CPU_CONFIG_REFDIV_SHIFT \
+				| 32 << AR933X_PLL_CPU_CONFIG_NINT_SHIFT)
+
+.macro	pbl_ar9331_pll
+	.set	push
+	.set	noreorder
+
+	/* Most devices have 25 MHz Ref clock. */
+	pbl_reg_writel (DEF_25MHZ_PLL_CLOCK_CTRL | AR933X_PLL_CLOCK_CTRL_BYPASS), \
+		PLL_CLOCK_CTRL_REG
+	pbl_reg_writel DEF_25MHZ_SETTLE_TIME, PLL_CPU_CONFIG2_REG
+	pbl_reg_writel (DEF_25MHZ_PLL_CONFIG | AR933X_PLL_CPU_CONFIG_PLLPWD), \
+		PLL_CPU_CONFIG_REG
+
+	/* power on CPU PLL */
+	pbl_reg_clr	AR933X_PLL_CPU_CONFIG_PLLPWD, PLL_CPU_CONFIG_REG
+	/* disable PLL bypass */
+	pbl_reg_clr	AR933X_PLL_CLOCK_CTRL_BYPASS, PLL_CLOCK_CTRL_REG
+
+	pbl_sleep	t2, 40
+
+	.set	pop
+.endm
+
+#endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
