Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXGP-0006iG-CU
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 07:59:06 +0000
From: sendpatch@qq.com
Date: Mon,  4 Nov 2019 15:57:33 +0800
Message-Id: <1572854253-17721-1-git-send-email-sendpatch@qq.com>
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
Subject: [PATCH] MIPS: loongsonl: pull headers from linux kernel
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/mach-loongson/include/mach/loongson1.h |  50 ++++++---
 arch/mips/mach-loongson/include/mach/regs-clk.h  |  81 +++++++++++++++
 arch/mips/mach-loongson/include/mach/regs-mux.h  | 124 +++++++++++++++++++++++
 arch/mips/mach-loongson/include/mach/regs-pwm.h  |  25 +++++
 arch/mips/mach-loongson/include/mach/regs-rtc.h  |  19 ++++
 arch/mips/mach-loongson/include/mach/regs-wdt.h  |  15 +++
 arch/mips/mach-loongson/loongson1_reset.c        |   6 +-
 7 files changed, 305 insertions(+), 15 deletions(-)
 create mode 100644 arch/mips/mach-loongson/include/mach/regs-clk.h
 create mode 100644 arch/mips/mach-loongson/include/mach/regs-mux.h
 create mode 100644 arch/mips/mach-loongson/include/mach/regs-pwm.h
 create mode 100644 arch/mips/mach-loongson/include/mach/regs-rtc.h
 create mode 100644 arch/mips/mach-loongson/include/mach/regs-wdt.h

diff --git a/arch/mips/mach-loongson/include/mach/loongson1.h b/arch/mips/mach-loongson/include/mach/loongson1.h
index 75e1a55..8b53f47 100644
--- a/arch/mips/mach-loongson/include/mach/loongson1.h
+++ b/arch/mips/mach-loongson/include/mach/loongson1.h
@@ -1,28 +1,54 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
- * Copyright (c) 2011 Zhang, Keguang <keguang.zhang at gmail.com>
+ * Copyright (c) 2011 Zhang, Keguang <keguang.zhang@gmail.com>
  *
  * Register mappings for Loongson 1
  */
 
-#ifndef __ASM_MACH_LOONGSON1_LOONGSON1_H
-#define __ASM_MACH_LOONGSON1_LOONGSON1_H
+#ifndef __ASM_MACH_LOONGSON32_LOONGSON1_H
+#define __ASM_MACH_LOONGSON32_LOONGSON1_H
 
-#include <asm/addrspace.h>
+#if defined(CONFIG_LOONGSON1_LS1B)
+#define DEFAULT_MEMSIZE			64	/* If no memsize provided */
+#elif defined(CONFIG_LOONGSON1_LS1C)
+#define DEFAULT_MEMSIZE			32
+#endif
 
 /* Loongson 1 Register Bases */
+#define LS1X_MUX_BASE			0x1fd00420
+#define LS1X_INTC_BASE			0x1fd01040
+#define LS1X_GPIO0_BASE			0x1fd010c0
+#define LS1X_GPIO1_BASE			0x1fd010c4
+#define LS1X_DMAC_BASE			0x1fd01160
+#define LS1X_CBUS_BASE			0x1fd011c0
+#define LS1X_EHCI_BASE			0x1fe00000
+#define LS1X_OHCI_BASE			0x1fe08000
+#define LS1X_GMAC0_BASE			0x1fe10000
+#define LS1X_GMAC1_BASE			0x1fe20000
+
 #define LS1X_UART0_BASE			0x1fe40000
 #define LS1X_UART1_BASE			0x1fe44000
 #define LS1X_UART2_BASE			0x1fe48000
 #define LS1X_UART3_BASE			0x1fe4c000
+#define LS1X_CAN0_BASE			0x1fe50000
+#define LS1X_CAN1_BASE			0x1fe54000
+#define LS1X_I2C0_BASE			0x1fe58000
+#define LS1X_I2C1_BASE			0x1fe68000
+#define LS1X_I2C2_BASE			0x1fe70000
+#define LS1X_PWM0_BASE			0x1fe5c000
+#define LS1X_PWM1_BASE			0x1fe5c010
+#define LS1X_PWM2_BASE			0x1fe5c020
+#define LS1X_PWM3_BASE			0x1fe5c030
 #define LS1X_WDT_BASE			0x1fe5c060
+#define LS1X_RTC_BASE			0x1fe64000
+#define LS1X_AC97_BASE			0x1fe74000
+#define LS1X_NAND_BASE			0x1fe78000
+#define LS1X_CLK_BASE			0x1fe78030
 
-/* Loongson 1 watchdog register definitions */
-#define LS1X_WDT_REG(x) \
-		((void __iomem *)KSEG1ADDR(LS1X_WDT_BASE + (x)))
-
-#define LS1X_WDT_EN			LS1X_WDT_REG(0x0)
-#define LS1X_WDT_SET			LS1X_WDT_REG(0x4)
-#define LS1X_WDT_TIMER			LS1X_WDT_REG(0x8)
+#include <mach/regs-clk.h>
+#include <mach/regs-mux.h>
+#include <mach/regs-pwm.h>
+#include <mach/regs-rtc.h>
+#include <mach/regs-wdt.h>
 
-#endif /* __ASM_MACH_LOONGSON1_LOONGSON1_H */
+#endif /* __ASM_MACH_LOONGSON32_LOONGSON1_H */
diff --git a/arch/mips/mach-loongson/include/mach/regs-clk.h b/arch/mips/mach-loongson/include/mach/regs-clk.h
new file mode 100644
index 0000000..98136fa
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/regs-clk.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2011 Zhang, Keguang <keguang.zhang@gmail.com>
+ *
+ * Loongson 1 Clock Register Definitions.
+ */
+
+#ifndef __ASM_MACH_LOONGSON32_REGS_CLK_H
+#define __ASM_MACH_LOONGSON32_REGS_CLK_H
+
+#define LS1X_CLK_REG(x) \
+		((void __iomem *)KSEG1ADDR(LS1X_CLK_BASE + (x)))
+
+#define LS1X_CLK_PLL_FREQ		LS1X_CLK_REG(0x0)
+#define LS1X_CLK_PLL_DIV		LS1X_CLK_REG(0x4)
+
+#if defined(CONFIG_LOONGSON1_LS1B)
+/* Clock PLL Divisor Register Bits */
+#define DIV_DC_EN			BIT(31)
+#define DIV_DC_RST			BIT(30)
+#define DIV_CPU_EN			BIT(25)
+#define DIV_CPU_RST			BIT(24)
+#define DIV_DDR_EN			BIT(19)
+#define DIV_DDR_RST			BIT(18)
+#define RST_DC_EN			BIT(5)
+#define RST_DC				BIT(4)
+#define RST_DDR_EN			BIT(3)
+#define RST_DDR				BIT(2)
+#define RST_CPU_EN			BIT(1)
+#define RST_CPU				BIT(0)
+
+#define DIV_DC_SHIFT			26
+#define DIV_CPU_SHIFT			20
+#define DIV_DDR_SHIFT			14
+
+#define DIV_DC_WIDTH			4
+#define DIV_CPU_WIDTH			4
+#define DIV_DDR_WIDTH			4
+
+#define BYPASS_DC_SHIFT			12
+#define BYPASS_DDR_SHIFT		10
+#define BYPASS_CPU_SHIFT		8
+
+#define BYPASS_DC_WIDTH			1
+#define BYPASS_DDR_WIDTH		1
+#define BYPASS_CPU_WIDTH		1
+
+#elif defined(CONFIG_LOONGSON1_LS1C)
+/* PLL/SDRAM Frequency configuration register Bits */
+#define PLL_VALID			BIT(31)
+#define FRAC_N				GENMASK(23, 16)
+#define RST_TIME			GENMASK(3, 2)
+#define SDRAM_DIV			GENMASK(1, 0)
+
+/* CPU/CAMERA/DC Frequency configuration register Bits */
+#define DIV_DC_EN			BIT(31)
+#define DIV_DC				GENMASK(30, 24)
+#define DIV_CAM_EN			BIT(23)
+#define DIV_CAM				GENMASK(22, 16)
+#define DIV_CPU_EN			BIT(15)
+#define DIV_CPU				GENMASK(14, 8)
+#define DIV_DC_SEL_EN			BIT(5)
+#define DIV_DC_SEL			BIT(4)
+#define DIV_CAM_SEL_EN			BIT(3)
+#define DIV_CAM_SEL			BIT(2)
+#define DIV_CPU_SEL_EN			BIT(1)
+#define DIV_CPU_SEL			BIT(0)
+
+#define DIV_DC_SHIFT			24
+#define DIV_CAM_SHIFT			16
+#define DIV_CPU_SHIFT			8
+#define DIV_DDR_SHIFT			0
+
+#define DIV_DC_WIDTH			7
+#define DIV_CAM_WIDTH			7
+#define DIV_CPU_WIDTH			7
+#define DIV_DDR_WIDTH			2
+
+#endif
+
+#endif /* __ASM_MACH_LOONGSON32_REGS_CLK_H */
diff --git a/arch/mips/mach-loongson/include/mach/regs-mux.h b/arch/mips/mach-loongson/include/mach/regs-mux.h
new file mode 100644
index 0000000..95788a4
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/regs-mux.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2014 Zhang, Keguang <keguang.zhang@gmail.com>
+ *
+ * Loongson 1 MUX Register Definitions.
+ */
+
+#ifndef __ASM_MACH_LOONGSON32_REGS_MUX_H
+#define __ASM_MACH_LOONGSON32_REGS_MUX_H
+
+#define LS1X_MUX_REG(x) \
+		((void __iomem *)KSEG1ADDR(LS1X_MUX_BASE + (x)))
+
+#define LS1X_MUX_CTRL0			LS1X_MUX_REG(0x0)
+#define LS1X_MUX_CTRL1			LS1X_MUX_REG(0x4)
+
+#if defined(CONFIG_LOONGSON1_LS1B)
+/* MUX CTRL0 Register Bits */
+#define UART0_USE_PWM23			BIT(28)
+#define UART0_USE_PWM01			BIT(27)
+#define UART1_USE_LCD0_5_6_11		BIT(26)
+#define I2C2_USE_CAN1			BIT(25)
+#define I2C1_USE_CAN0			BIT(24)
+#define NAND3_USE_UART5			BIT(23)
+#define NAND3_USE_UART4			BIT(22)
+#define NAND3_USE_UART1_DAT		BIT(21)
+#define NAND3_USE_UART1_CTS		BIT(20)
+#define NAND3_USE_PWM23			BIT(19)
+#define NAND3_USE_PWM01			BIT(18)
+#define NAND2_USE_UART5			BIT(17)
+#define NAND2_USE_UART4			BIT(16)
+#define NAND2_USE_UART1_DAT		BIT(15)
+#define NAND2_USE_UART1_CTS		BIT(14)
+#define NAND2_USE_PWM23			BIT(13)
+#define NAND2_USE_PWM01			BIT(12)
+#define NAND1_USE_UART5			BIT(11)
+#define NAND1_USE_UART4			BIT(10)
+#define NAND1_USE_UART1_DAT		BIT(9)
+#define NAND1_USE_UART1_CTS		BIT(8)
+#define NAND1_USE_PWM23			BIT(7)
+#define NAND1_USE_PWM01			BIT(6)
+#define GMAC1_USE_UART1			BIT(4)
+#define GMAC1_USE_UART0			BIT(3)
+#define LCD_USE_UART0_DAT		BIT(2)
+#define LCD_USE_UART15			BIT(1)
+#define LCD_USE_UART0			BIT(0)
+
+/* MUX CTRL1 Register Bits */
+#define USB_RESET			BIT(31)
+#define SPI1_CS_USE_PWM01		BIT(24)
+#define SPI1_USE_CAN			BIT(23)
+#define DISABLE_DDR_CONFSPACE		BIT(20)
+#define DDR32TO16EN			BIT(16)
+#define GMAC1_SHUT			BIT(13)
+#define GMAC0_SHUT			BIT(12)
+#define USB_SHUT			BIT(11)
+#define UART1_3_USE_CAN1		BIT(5)
+#define UART1_2_USE_CAN0		BIT(4)
+#define GMAC1_USE_TXCLK			BIT(3)
+#define GMAC0_USE_TXCLK			BIT(2)
+#define GMAC1_USE_PWM23			BIT(1)
+#define GMAC0_USE_PWM01			BIT(0)
+
+#elif defined(CONFIG_LOONGSON1_LS1C)
+
+/* SHUT_CTRL Register Bits */
+#define UART_SPLIT			GENMASK(31, 30)
+#define OUTPUT_CLK			GENMASK(29, 26)
+#define ADC_SHUT			BIT(25)
+#define SDIO_SHUT			BIT(24)
+#define DMA2_SHUT			BIT(23)
+#define DMA1_SHUT			BIT(22)
+#define DMA0_SHUT			BIT(21)
+#define SPI1_SHUT			BIT(20)
+#define SPI0_SHUT			BIT(19)
+#define I2C2_SHUT			BIT(18)
+#define I2C1_SHUT			BIT(17)
+#define I2C0_SHUT			BIT(16)
+#define AC97_SHUT			BIT(15)
+#define I2S_SHUT			BIT(14)
+#define UART3_SHUT			BIT(13)
+#define UART2_SHUT			BIT(12)
+#define UART1_SHUT			BIT(11)
+#define UART0_SHUT			BIT(10)
+#define CAN1_SHUT			BIT(9)
+#define CAN0_SHUT			BIT(8)
+#define ECC_SHUT			BIT(7)
+#define GMAC_SHUT			BIT(6)
+#define USBHOST_SHUT			BIT(5)
+#define USBOTG_SHUT			BIT(4)
+#define SDRAM_SHUT			BIT(3)
+#define SRAM_SHUT			BIT(2)
+#define CAM_SHUT			BIT(1)
+#define LCD_SHUT			BIT(0)
+
+#define UART_SPLIT_SHIFT                        30
+#define OUTPUT_CLK_SHIFT                        26
+
+/* MISC_CTRL Register Bits */
+#define USBHOST_RSTN			BIT(31)
+#define PHY_INTF_SELI			GENMASK(30, 28)
+#define AC97_EN				BIT(25)
+#define SDIO_DMA_EN			GENMASK(24, 23)
+#define ADC_DMA_EN			BIT(22)
+#define SDIO_USE_SPI1			BIT(17)
+#define SDIO_USE_SPI0			BIT(16)
+#define SRAM_CTRL			GENMASK(15, 0)
+
+#define PHY_INTF_SELI_SHIFT                     28
+#define SDIO_DMA_EN_SHIFT                       23
+#define SRAM_CTRL_SHIFT				0
+
+#define LS1X_CBUS_REG(n, x) \
+		((void __iomem *)KSEG1ADDR(LS1X_CBUS_BASE + (n * 0x04) + (x)))
+
+#define LS1X_CBUS_FIRST(n)		LS1X_CBUS_REG(n, 0x00)
+#define LS1X_CBUS_SECOND(n)		LS1X_CBUS_REG(n, 0x10)
+#define LS1X_CBUS_THIRD(n)		LS1X_CBUS_REG(n, 0x20)
+#define LS1X_CBUS_FOURTHT(n)		LS1X_CBUS_REG(n, 0x30)
+#define LS1X_CBUS_FIFTHT(n)		LS1X_CBUS_REG(n, 0x40)
+
+#endif
+
+#endif /* __ASM_MACH_LOONGSON32_REGS_MUX_H */
diff --git a/arch/mips/mach-loongson/include/mach/regs-pwm.h b/arch/mips/mach-loongson/include/mach/regs-pwm.h
new file mode 100644
index 0000000..ec870c8
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/regs-pwm.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2014 Zhang, Keguang <keguang.zhang@gmail.com>
+ *
+ * Loongson 1 PWM Register Definitions.
+ */
+
+#ifndef __ASM_MACH_LOONGSON32_REGS_PWM_H
+#define __ASM_MACH_LOONGSON32_REGS_PWM_H
+
+/* Loongson 1 PWM Timer Register Definitions */
+#define PWM_CNT			0x0
+#define PWM_HRC			0x4
+#define PWM_LRC			0x8
+#define PWM_CTRL		0xc
+
+/* PWM Control Register Bits */
+#define CNT_RST			BIT(7)
+#define INT_SR			BIT(6)
+#define INT_EN			BIT(5)
+#define PWM_SINGLE		BIT(4)
+#define PWM_OE			BIT(3)
+#define CNT_EN			BIT(0)
+
+#endif /* __ASM_MACH_LOONGSON32_REGS_PWM_H */
diff --git a/arch/mips/mach-loongson/include/mach/regs-rtc.h b/arch/mips/mach-loongson/include/mach/regs-rtc.h
new file mode 100644
index 0000000..a3d096b
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/regs-rtc.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2016 Yang Ling <gnaygnil@gmail.com>
+ *
+ * Loongson 1 RTC timer Register Definitions.
+ */
+
+#ifndef __ASM_MACH_LOONGSON32_REGS_RTC_H
+#define __ASM_MACH_LOONGSON32_REGS_RTC_H
+
+#define LS1X_RTC_REG(x) \
+		((void __iomem *)KSEG1ADDR(LS1X_RTC_BASE + (x)))
+
+#define LS1X_RTC_CTRL	LS1X_RTC_REG(0x40)
+
+#define RTC_EXTCLK_OK	(BIT(5) | BIT(8))
+#define RTC_EXTCLK_EN	BIT(8)
+
+#endif /* __ASM_MACH_LOONGSON32_REGS_RTC_H */
diff --git a/arch/mips/mach-loongson/include/mach/regs-wdt.h b/arch/mips/mach-loongson/include/mach/regs-wdt.h
new file mode 100644
index 0000000..c6d345f
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/regs-wdt.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2011 Zhang, Keguang <keguang.zhang@gmail.com>
+ *
+ * Loongson 1 Watchdog Register Definitions.
+ */
+
+#ifndef __ASM_MACH_LOONGSON32_REGS_WDT_H
+#define __ASM_MACH_LOONGSON32_REGS_WDT_H
+
+#define WDT_EN			0x0
+#define WDT_TIMER		0x4
+#define WDT_SET			0x8
+
+#endif /* __ASM_MACH_LOONGSON32_REGS_WDT_H */
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index 3763a10..a6c0590 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -11,9 +11,9 @@
 
 static void __noreturn longhorn_restart_soc(struct restart_handler *rst)
 {
-	__raw_writel(0x1, LS1X_WDT_EN);
-	__raw_writel(0x1, LS1X_WDT_SET);
-	__raw_writel(0x1, LS1X_WDT_TIMER);
+	__raw_writel(0x1, WDT_EN);
+	__raw_writel(0x1, WDT_SET);
+	__raw_writel(0x1, WDT_TIMER);
 
 	hang();
 }
-- 
2.7.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
