Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22e.google.com ([2a00:1450:4010:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtMtm-00009d-RF
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 21:44:21 +0000
Received: by lfbf136 with SMTP id f136so54373758lfb.0
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 13:43:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 00:43:39 +0300
Message-Id: <1446500625-27907-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
References: <1446500625-27907-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/9] MIPS: mach-ath79: add pbl_ar9331_uart_enable macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h              | 11 +++++++++++
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  3 +++
 arch/mips/mach-ath79/include/mach/pbl_macros.h  |  7 +++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index db46d0d..681b40a 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -37,6 +37,17 @@
 	.set	pop
 	.endm
 
+	.macro	pbl_reg_set val addr
+	.set push
+	.set noreorder
+	li	t9, \addr
+	li	t8, \val
+	lw	t7, 0(t9)
+	or	t7, t8
+	sw	t7, 0(t9)
+	.set	pop
+	.endm
+
 	.macro	pbl_reg_clr clr addr
 	.set push
 	.set noreorder
diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index 0b84c55..4cbe94a 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -67,6 +67,9 @@
 #define AR71XX_GPIO_REG_INT_PENDING	0x20
 #define AR71XX_GPIO_REG_INT_ENABLE	0x24
 #define AR71XX_GPIO_REG_FUNC		0x28
+/* Warning! GPIO_FUNC[15] must be written with 1 */
+#define AR933X_GPIO_FUNC_RSRV15			BIT(15)
+#define AR933X_GPIO_FUNC_UART_EN		BIT(1)
 
 /*
  * PLL block
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index f0e0174..4ef90dc 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -129,4 +129,11 @@
 	.set	pop
 .endm
 
+#define GPIO_FUNC	((KSEG1 | AR71XX_GPIO_BASE) | AR71XX_GPIO_REG_FUNC)
+
+.macro	pbl_ar9331_uart_enable
+	pbl_reg_set AR933X_GPIO_FUNC_UART_EN \
+			| AR933X_GPIO_FUNC_RSRV15, GPIO_FUNC
+.endm
+
 #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
