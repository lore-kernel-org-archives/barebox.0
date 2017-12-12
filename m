Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOonI-0004xn-DZ
 for barebox@lists.infradead.org; Tue, 12 Dec 2017 17:56:47 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 12 Dec 2017 18:55:55 +0100
Message-Id: <20171212175557.20067-4-linux@rempel-privat.de>
In-Reply-To: <20171212175557.20067-1-linux@rempel-privat.de>
References: <20171212175557.20067-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 3/5] MIPS: ath79: ar9331: add generic RAM macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

with this macro, we should be able to cover most of existing
ar9331 based boards.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  1 +
 arch/mips/mach-ath79/include/mach/pbl_macros.h  | 37 +++++++++++++++++++++++--
 2 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index 31d33b3c4..f73700b5b 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -139,6 +139,7 @@
 
 #define AR71XX_RESET_FULL_CHIP		BIT(24)
 
+#define AR933X_BOOTSTRAP_MEM_TYPE	BIT(13)
 #define AR933X_BOOTSTRAP_REF_CLK_40	BIT(0)
 
 #endif /* __ASM_MACH_AR71XX_REGS_H */
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 680fcbb86..9e4859b19 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -172,6 +172,40 @@
 	.set	pop
 .endm
 
+#define RESET_REG_BOOTSTRAP	((KSEG1 | AR71XX_RESET_BASE) \
+					| AR933X_RESET_REG_BOOTSTRAP)
+
+.macro	pbl_ar9331_ram_generic_config
+	.set	push
+	.set	noreorder
+
+	li	t5,	RESET_REG_BOOTSTRAP
+	/* Documentation and source code of existing boot loaders disagree at
+	 * this place. Doc says: MEM_TYPE[13:12]:
+	 * - 00 = SDRAM
+	 * - 01 = DDR1
+	 * - 10 = DDR2
+	 * The source code of most loaders do not care about BIT(12). So we do
+	 * the same.
+	 */
+	li	t6,	AR933X_BOOTSTRAP_MEM_TYPE
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	beq	zero,	t6,	pbl_ar9331_ram_generic_ddr1
+	nop
+
+pbl_ar9331_ram_generic_ddr2:
+	pbl_ar9331_ddr2_config
+	b	pbl_ar9331_ram_generic_config
+	nop
+
+pbl_ar9331_ram_generic_ddr1:
+	pbl_ar9331_ddr1_config
+
+pbl_ar9331_ram_generic_config:
+	.set	pop
+.endm
+
 #define GPIO_FUNC	((KSEG1 | AR71XX_GPIO_BASE) | AR71XX_GPIO_REG_FUNC)
 
 .macro	pbl_ar9331_uart_enable
@@ -179,9 +213,6 @@
 			| AR933X_GPIO_FUNC_RSRV15, GPIO_FUNC
 .endm
 
-#define RESET_REG_BOOTSTRAP	((KSEG1 | AR71XX_RESET_BASE) \
-					| AR933X_RESET_REG_BOOTSTRAP)
-
 .macro	pbl_ar9331_mdio_gpio_enable
 	/* Bit 18 enables MDC and MDIO function on GPIO26 and GPIO28 */
 	pbl_reg_set (1 << 18), RESET_REG_BOOTSTRAP
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
