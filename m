Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f51.google.com ([209.85.215.51])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc88I-0006Z2-Il
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 08:32:03 +0000
Received: by lamp12 with SMTP id p12so122631436lam.0
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 01:31:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 Sep 2015 11:31:29 +0300
Message-Id: <1442392292-15898-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
References: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/4] MIPS: ar933x: pbl: add pbl_ar9331_pll macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h              | 21 ++++++++++++
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  5 +++
 arch/mips/mach-ath79/include/mach/pbl_macros.h  | 43 +++++++++++++++++++++++++
 3 files changed, 69 insertions(+)

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
index 0c6ddd6..5082502 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -15,7 +15,11 @@
 #ifndef __ASM_MACH_AR71XX_REGS_H
 #define __ASM_MACH_AR71XX_REGS_H
 
+#ifndef __ASSEMBLER__
 #include <linux/bitops.h>
+#else
+#define BIT(nr)  (1 << (nr))
+#endif
 
 #define AR71XX_APB_BASE		0x18000000
 
@@ -42,6 +46,7 @@
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
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
