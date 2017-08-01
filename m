Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcbZQ-0004Qr-NB
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 18:07:10 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  1 Aug 2017 20:06:20 +0200
Message-Id: <20170801180621.25325-3-linux@rempel-privat.de>
In-Reply-To: <20170801180621.25325-1-linux@rempel-privat.de>
References: <20170801180621.25325-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/3] MIPS: ath79: add initial QCA AR9344 SoC support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

According to the documentation:
"The AR9344 is a highly integrated and feature-rich IEEE 802.11n 2x2 2.4/5 GHz
System-on-a-Chip (SoC) for advanced WLAN platforms.

It includes a MIPS 74Kc processor, PCI Express 1.1 Root Complex and Endpoint
interfaces, five port IEEE 802.3 Fast Ethernet Switch with MAC/PHY,
one MII/RMII/RGMII interface, one USB 2.0 MAC/PHY, and external memory
interface for serial Flash, SDRAM, DDR1 or DDR2, I2S/SPDIF-Out audio interface,
SLIC VOIP/PCM interface, two UARTs, and GPIOs that can be used for LED
controls or other general purpose interface configurations.
The AR9344 supports 802.11n operations up to 144 Mbps for 20 MHz and 300 Mbps
for 40 MHz respectively, and 802.11a/b/g data rates.
Additional features include Maximal Likelihood (ML) decoding, Low-Density
Parity Check (LDPC), Maximal Ratio Combining (MRC), Tx Beamforming (TxBF), and
On-Chip One-Time Programmable (OTP) memory."

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi                          |  53 ++
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |   9 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       | 167 +------
 .../mips/mach-ath79/include/mach/debug_ll_ar9331.h | 176 +++++++
 .../mips/mach-ath79/include/mach/debug_ll_ar9344.h | 191 ++++++++
 .../include/mach/pbl_ll_init_ar9344_1.1.h          | 540 +++++++++++++++++++++
 6 files changed, 978 insertions(+), 158 deletions(-)
 create mode 100644 arch/mips/dts/ar9344.dtsi
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
new file mode 100644
index 000000000..0838e8d7f
--- /dev/null
+++ b/arch/mips/dts/ar9344.dtsi
@@ -0,0 +1,53 @@
+#include <dt-bindings/clock/ath79-clk.h>
+
+/ {
+	compatible = "qca,ar9344";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "mips,mips74Kc";
+			reg = <0>;
+		};
+	};
+
+	ref: ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+
+	ahb {
+		compatible = "simple-bus";
+		ranges;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		uart0: uart@18020000 {
+			compatible = "ns16550a", "qca,ar9344-uart0";
+			reg = <0x18020000 0x20>;
+
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			big-endian;
+
+			status = "disabled";
+		};
+
+		spi: spi@1f000000 {
+			compatible = "qca,ar7100-spi", "qca,ar9344-spi";
+			reg = <0x1f000000 0x1c>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index de96c565a..f56c3f724 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -37,6 +37,15 @@
 #define AR933X_UART_BASE	(AR71XX_APB_BASE + 0x00020000)
 #define AR933X_UART_SIZE	0x14
 
+#define AR934X_UART0_BASE	(AR71XX_APB_BASE + 0x00020000)
+#define AR934X_UART0_SIZE	0x18
+#define AR934X_UART0_SHIFT	2
+
+/* WASP BootStrap Register */
+#define WASP_BOOTSTRAP_REG		(AR71XX_RESET_BASE + 0xb0)
+#define WASP_REF_CLK_25			(1 << 4) /* 0 - 25MHz	1 - 40 MHz */
+#define WASP_RAM_TYPE(a)		((a) & 0x3)
+
 /*
  * RTC block
  */
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index 04bd3ea72..0ab8a82b1 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -1,5 +1,5 @@
 /*
- * based on linux.git/drivers/tty/serial/ar933x_uart.c
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
  *
  * This file is part of barebox.
  * See file CREDITS for list of people who contributed to this project.
@@ -15,162 +15,13 @@
  *
  */
 
-#ifndef __AR933X_DEBUG_LL__
-#define __AR933X_DEBUG_LL__
+#ifndef __MACH_AR9344_DEBUG_LL__
+#define __MACH_AR9344_DEBUG_LL__
 
-#include <asm/addrspace.h>
-#include <mach/ar71xx_regs.h>
+#if defined(CONFIG_SOC_QCA_AR9331)
+#include <mach/debug_ll_ar9331.h>
+#elif defined(CONFIG_SOC_QCA_AR9344)
+#include <mach/debug_ll_ar9344.h>
+#endif
 
-#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
-
-#define AR933X_UART_DATA_REG            0x00
-#define AR933X_UART_DATA_TX_RX_MASK     0xff
-#define AR933X_UART_DATA_TX_CSR		0x200
-#define AR933X_UART_DATA_RX_CSR		0x100
-
-#ifndef __ASSEMBLY__
-
-#include <io.h>
-
-/*
- * C macros
- */
-
-static inline void ar933x_debug_ll_writel(u32 b, int offset)
-{
-	__raw_writel(b, (u8 *)DEBUG_LL_UART_ADDR + offset);
-}
-
-static inline u32 ar933x_debug_ll_readl(int offset)
-{
-	return __raw_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
-}
-
-static inline void PUTC_LL(int ch)
-{
-	u32 data;
-
-	/* wait transmitter ready */
-	data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
-	while (!(data & AR933X_UART_DATA_TX_CSR))
-		data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
-
-	data = (ch & AR933X_UART_DATA_TX_RX_MASK) | AR933X_UART_DATA_TX_CSR;
-	ar933x_debug_ll_writel(data, AR933X_UART_DATA_REG);
-}
-#else /* __ASSEMBLY__ */
-/*
- * Macros for use in assembly language code
- */
-
-#define AR933X_UART_CS_REG		0x04
-#define UART_CS_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CS_REG)
-#define AR933X_UART_CS_IF_MODE_S	2
-#define	  AR933X_UART_CS_IF_MODE_DCE	2
-#define AR933X_UART_CS_TX_READY_ORIDE	BIT(7)
-#define AR933X_UART_CS_RX_READY_ORIDE	BIT(8)
-
-/*
- * simple uart clock setup
- * from u-boot_mod/u-boot/cpu/mips/ar7240/hornet_serial.c
- */
-#define BAUD_CLOCK 25000000
-#define CLOCK_SCALE ((BAUD_CLOCK / (16 * CONFIG_BAUDRATE)) - 1)
-#define CLOCK_STEP 0x2000
-
-#define AR933X_UART_CLOCK_REG		0x08
-#define CLOCK_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CLOCK_REG)
-
-.macro debug_ll_ar9331_init
-#ifdef CONFIG_DEBUG_LL
-
-	pbl_reg_writel ((AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S) \
-			| AR933X_UART_CS_TX_READY_ORIDE \
-			| AR933X_UART_CS_RX_READY_ORIDE), UART_CS_REG
-	pbl_reg_writel ((CLOCK_SCALE << 16) | CLOCK_STEP), CLOCK_REG
-
-#endif /* CONFIG_DEBUG_LL */
-.endm
-
-/*
- * output a character in a0
- */
-.macro	debug_ll_outc_a0
-#ifdef CONFIG_DEBUG_LL
-	.set	push
-	.set	reorder
-
-	la	t0, DEBUG_LL_UART_ADDR
-201:
-	lw	t1, AR933X_UART_DATA_REG(t0)	/* get line status */
-	andi	t1, t1, AR933X_UART_DATA_TX_CSR	/* check for transmitter empty */
-	beqz	t1, 201b	/* try again */
-	andi	a0, a0, AR933X_UART_DATA_TX_RX_MASK
-	ori	a0, a0, AR933X_UART_DATA_TX_CSR
-	sw	a0, 0(t0)	/* write the character */
-	.set	pop
-#endif /* CONFIG_DEBUG_LL */
-.endm
-
-/*
- * output a character
- */
-.macro	debug_ll_outc chr
-#ifdef CONFIG_DEBUG_LL
-	li	a0, \chr
-	debug_ll_outc_a0
-#endif /* CONFIG_DEBUG_LL */
-.endm
-
-/*
- * check character in input buffer
- * return value:
- *  v0 = 0   no character in input buffer
- *  v0 != 0  character in input buffer
- */
-/* FIXME: use tstc */
-.macro	debug_ll_tstc
-#ifdef CONFIG_DEBUG_LL
-	.set	push
-	.set	reorder
-
-	la	t0, DEBUG_LL_UART_ADDR
-
-	/* get line status and check for data present */
-	lw	v0, AR933X_UART_DATA_REG(t0)
-	andi	v0, v0, AR933X_UART_DATA_RX_CSR
-
-	.set	pop
-#endif /* CONFIG_DEBUG_LL */
-.endm
-
-/*
- * get character to v0
- */
-.macro	debug_ll_getc
-#ifdef CONFIG_DEBUG_LL
-	.set	push
-	.set	reorder
-
-	la	t0, DEBUG_LL_UART_ADDR
-204:
-	lw	v0, AR933X_UART_DATA_REG(t0)
-	andi	v0, v0, AR933X_UART_DATA_RX_CSR
-
-	/* try again */
-	beqz	v0, 204b
-
-	/* read a character */
-	lw	v0, AR933X_UART_DATA_REG(t0)
-	andi	v0, v0, AR933X_UART_DATA_TX_RX_MASK
-
-	/* remove the character from the FIFO */
-	li	t1, AR933X_UART_DATA_RX_CSR
-	sw  t1, AR933X_UART_DATA_REG(t0)
-
-	.set	pop
-#endif /* CONFIG_DEBUG_LL */
-.endm
-#endif /* __ASSEMBLY__ */
-
-#endif /* __AR933X_DEBUG_LL__ */
+#endif /* __MACH_AR9344_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
new file mode 100644
index 000000000..04bd3ea72
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
@@ -0,0 +1,176 @@
+/*
+ * based on linux.git/drivers/tty/serial/ar933x_uart.c
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __AR933X_DEBUG_LL__
+#define __AR933X_DEBUG_LL__
+
+#include <asm/addrspace.h>
+#include <mach/ar71xx_regs.h>
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
+
+#define AR933X_UART_DATA_REG            0x00
+#define AR933X_UART_DATA_TX_RX_MASK     0xff
+#define AR933X_UART_DATA_TX_CSR		0x200
+#define AR933X_UART_DATA_RX_CSR		0x100
+
+#ifndef __ASSEMBLY__
+
+#include <io.h>
+
+/*
+ * C macros
+ */
+
+static inline void ar933x_debug_ll_writel(u32 b, int offset)
+{
+	__raw_writel(b, (u8 *)DEBUG_LL_UART_ADDR + offset);
+}
+
+static inline u32 ar933x_debug_ll_readl(int offset)
+{
+	return __raw_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
+}
+
+static inline void PUTC_LL(int ch)
+{
+	u32 data;
+
+	/* wait transmitter ready */
+	data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
+	while (!(data & AR933X_UART_DATA_TX_CSR))
+		data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
+
+	data = (ch & AR933X_UART_DATA_TX_RX_MASK) | AR933X_UART_DATA_TX_CSR;
+	ar933x_debug_ll_writel(data, AR933X_UART_DATA_REG);
+}
+#else /* __ASSEMBLY__ */
+/*
+ * Macros for use in assembly language code
+ */
+
+#define AR933X_UART_CS_REG		0x04
+#define UART_CS_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CS_REG)
+#define AR933X_UART_CS_IF_MODE_S	2
+#define	  AR933X_UART_CS_IF_MODE_DCE	2
+#define AR933X_UART_CS_TX_READY_ORIDE	BIT(7)
+#define AR933X_UART_CS_RX_READY_ORIDE	BIT(8)
+
+/*
+ * simple uart clock setup
+ * from u-boot_mod/u-boot/cpu/mips/ar7240/hornet_serial.c
+ */
+#define BAUD_CLOCK 25000000
+#define CLOCK_SCALE ((BAUD_CLOCK / (16 * CONFIG_BAUDRATE)) - 1)
+#define CLOCK_STEP 0x2000
+
+#define AR933X_UART_CLOCK_REG		0x08
+#define CLOCK_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CLOCK_REG)
+
+.macro debug_ll_ar9331_init
+#ifdef CONFIG_DEBUG_LL
+
+	pbl_reg_writel ((AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S) \
+			| AR933X_UART_CS_TX_READY_ORIDE \
+			| AR933X_UART_CS_RX_READY_ORIDE), UART_CS_REG
+	pbl_reg_writel ((CLOCK_SCALE << 16) | CLOCK_STEP), CLOCK_REG
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_outc_a0
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+201:
+	lw	t1, AR933X_UART_DATA_REG(t0)	/* get line status */
+	andi	t1, t1, AR933X_UART_DATA_TX_CSR	/* check for transmitter empty */
+	beqz	t1, 201b	/* try again */
+	andi	a0, a0, AR933X_UART_DATA_TX_RX_MASK
+	ori	a0, a0, AR933X_UART_DATA_TX_CSR
+	sw	a0, 0(t0)	/* write the character */
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_outc_a0
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * check character in input buffer
+ * return value:
+ *  v0 = 0   no character in input buffer
+ *  v0 != 0  character in input buffer
+ */
+/* FIXME: use tstc */
+.macro	debug_ll_tstc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_RX_CSR
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_getc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+204:
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_RX_CSR
+
+	/* try again */
+	beqz	v0, 204b
+
+	/* read a character */
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_TX_RX_MASK
+
+	/* remove the character from the FIFO */
+	li	t1, AR933X_UART_DATA_RX_CSR
+	sw  t1, AR933X_UART_DATA_REG(t0)
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+#endif /* __ASSEMBLY__ */
+
+#endif /* __AR933X_DEBUG_LL__ */
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
new file mode 100644
index 000000000..d156ce9f3
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
@@ -0,0 +1,191 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
+ * Copyright (C) 2012, 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __AR9344_DEBUG_LL__
+#define __AR9344_DEBUG_LL__
+
+#include <asm/addrspace.h>
+#include <mach/ar71xx_regs.h>
+
+#define DEBUG_LL_UART_ADDR		KSEG1ADDR(AR934X_UART0_BASE)
+#define DEBUG_LL_UART_SHIFT		AR934X_UART0_SHIFT
+
+#define DEBUG_LL_UART_DIVISOR_40	(40000000 / (16 * CONFIG_BAUDRATE))
+#define DEBUG_LL_UART_DIVISOR_25	(25000000 / (16 * CONFIG_BAUDRATE))
+
+#define UART_THR			(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_RBR			(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_DLL			(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_IER			(0x1 << DEBUG_LL_UART_SHIFT)
+#define UART_DLM			(0x1 << DEBUG_LL_UART_SHIFT)
+#define UART_FCR			(0x2 << DEBUG_LL_UART_SHIFT)
+#define UART_LCR			(0x3 << DEBUG_LL_UART_SHIFT)
+#define UART_LSR			(0x5 << DEBUG_LL_UART_SHIFT)
+
+#define UART_LCR_W			0x07	/* Set UART to 8,N,2 & DLAB = 0 */
+#define UART_LCR_DLAB			0x87	/* Set UART to 8,N,2 & DLAB = 1 */
+
+#define UART_LSR_DR     		0x01    /* UART received data present */
+#define UART_LSR_THRE			0x20	/* Xmit holding register empty */
+
+#define UART_FCR_RST			0x07	/* FIFO_EN | RCVR_FIFO_RST | XMIT_FIFO_RST */
+
+#ifndef __ASSEMBLY__
+
+/*
+ * C macros
+ */
+
+#include <asm/io.h>
+
+static inline void PUTC_LL(char ch)
+{
+#ifdef CONFIG_DEBUG_LL
+	while (!(__raw_readl((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
+		;
+	__raw_writel(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
+#endif /* CONFIG_DEBUG_LL */
+}
+#else /* __ASSEMBLY__ */
+/*
+ * Macros for use in assembly language code
+ */
+
+.macro	debug_ll_ar9344_init
+#ifdef CONFIG_DEBUG_LL
+
+	/* find out the ref clock */
+	li	t5,	KSEG1ADDR(WASP_BOOTSTRAP_REG);
+	li	t6,	WASP_REF_CLK_25
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	beq	zero,	t6,	uart_setup_ref25_val
+	nop
+uart_setup_ref40_val:
+	li	t5, DEBUG_LL_UART_DIVISOR_40
+	b	1f
+	nop
+
+uart_setup_ref25_val:
+	li	t5, DEBUG_LL_UART_DIVISOR_25
+1:
+
+	la	t0, DEBUG_LL_UART_ADDR
+
+	li	t1, UART_LCR_DLAB		/* DLAB on */
+	sw	t1, UART_LCR(t0)		/* Write it out */
+
+	sw	t5, UART_DLL(t0)		/* write low order byte */
+	li	t1, 0
+	sw	t1, UART_DLM(t0)		/* write high order byte */
+
+	li	t1, UART_LCR_W			/* DLAB off */
+	sw	t1, UART_LCR(t0)		/* Write it out */
+
+	li	t1, UART_FCR_RST		/* reset FIFOs */
+	sw	t1, UART_FCR(t0)		/* Write it out */
+
+	li	t1, 0				/* disable interrupts */
+	sw	t1, UART_IER(t0)		/* Write it out */
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_outc_a0
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+
+201:	lw	t1, UART_LSR(t0)	/* get line status */
+	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
+	beqz	t1, 201b			/* try again */
+
+	sw	a0, UART_THR(t0)	/* write the character */
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_outc_a0
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output CR + NL
+ */
+.macro	debug_ll_outnl
+#ifdef CONFIG_DEBUG_LL
+	debug_ll_outc '\r'
+	debug_ll_outc '\n'
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * check character in input buffer
+ * return value:
+ *  v0 = 0   no character in input buffer
+ *  v0 != 0  character in input buffer
+ */
+.macro	debug_ll_tstc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la      t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lw	t1, UART_LSR(t0)
+	andi	v0, t1, UART_LSR_DR
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_getc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+204:
+	debug_ll_tstc
+
+	/* try again */
+	beqz	v0, 204b
+
+	/* read a character */
+	lw	v0, UART_RBR(t0)
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+#endif /* __ASSEMBLY__ */
+
+#endif /* __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__ */
diff --git a/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h b/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h
new file mode 100644
index 000000000..594ec1155
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/pbl_ll_init_ar9344_1.1.h
@@ -0,0 +1,540 @@
+#ifndef __ASM_MACH_ATH79_PBL_LL_INIT_AR9344_1_1_H
+#define __ASM_MACH_ATH79_PBL_LL_INIT_AR9344_1_1_H
+
+#include <asm/addrspace.h>
+#include <asm/regdef.h>
+
+#define AR7240_APB_BASE			(KSEG1 | 0x18000000)  /* 384M */
+#define AR7240_DDR_CTL_BASE		AR7240_APB_BASE+0x00000000
+#define AR7240_PLL_BASE			AR7240_APB_BASE+0x00050000
+
+#define	ATH_DDR_COUNT_LOC		(KSEG1 | 0x1d000000)
+#define	ATH_CPU_COUNT_LOC		(KSEG1 | 0x1d000004)
+
+/*
+ * DDR block
+ */
+#define AR7240_DDR_CONFIG		AR7240_DDR_CTL_BASE+0
+#define AR7240_DDR_CONFIG2		AR7240_DDR_CTL_BASE+4
+#define AR7240_DDR_MODE			AR7240_DDR_CTL_BASE+0x08
+#define AR7240_DDR_EXT_MODE		AR7240_DDR_CTL_BASE+0x0c
+#define AR7240_DDR_CONTROL		AR7240_DDR_CTL_BASE+0x10
+#define AR7240_DDR_REFRESH		AR7240_DDR_CTL_BASE+0x14
+#define AR7240_DDR_RD_DATA_THIS_CYCLE	AR7240_DDR_CTL_BASE+0x18
+#define AR7240_DDR_TAP_CONTROL0		AR7240_DDR_CTL_BASE+0x1c
+#define AR7240_DDR_TAP_CONTROL1		AR7240_DDR_CTL_BASE+0x20
+#define AR7240_DDR_TAP_CONTROL2		AR7240_DDR_CTL_BASE+0x24
+#define AR7240_DDR_TAP_CONTROL3		AR7240_DDR_CTL_BASE+0x28
+#define AR7240_DDR_DDR2_CONFIG		AR7240_DDR_CTL_BASE+0x8c
+#define AR7240_DDR_BURST		AR7240_DDR_CTL_BASE+0xc4
+#define AR7240_DDR_BURST2		AR7240_DDR_CTL_BASE+0xc8
+#define AR7240_AHB_MASTER_TIMEOUT	AR7240_DDR_CTL_BASE+0xcc
+#define AR7240_DDR_CTL_CONFIG		AR7240_DDR_CTL_BASE+0x108
+#define AR7240_DDR_DEBUG_RD_CNTL	AR7240_DDR_CTL_BASE+0x118
+
+#define AR934X_CPU_PLL_DITHER		AR7240_PLL_BASE+0x0048
+
+#define AR934X_CPU_PLL_CONFIG		AR7240_PLL_BASE+0x0000
+#define AR934X_DDR_PLL_CONFIG		AR7240_PLL_BASE+0x0004
+#define AR934X_CPU_DDR_CLOCK_CONTROL	AR7240_PLL_BASE+0x0008
+#define AR934X_DDR_PLL_DITHER		AR7240_PLL_BASE+0x0044
+
+#define CPU_DPLL3_ADDRESS		(KSEG1 | 0x181161c8)
+#define CPU_DPLL4_ADDRESS		(KSEG1 | 0x181161cc)
+#define DDR_DPLL3_ADDRESS		(KSEG1 | 0x18116248)
+#define DDR_DPLL4_ADDRESS		(KSEG1 | 0x1811624c)
+
+#define DPLL2_ADDRESS_c4		(KSEG1 | 0x181161c4)
+#define DPLL2_ADDRESS_44		(KSEG1 | 0x18116244)
+#define DPLL3_ADDRESS_88		(KSEG1 | 0x18116188)
+
+#define CPU_PLL_CONFIG_NINT_VAL_40	0x380
+#define DDR_PLL_CONFIG_NINT_VAL_40	0x3000
+#define CPU_PLL_NFRAC_40		0
+#define DDR_PLL_NFRAC_40		0
+
+#define CPU_PLL_CONFIG_NINT_VAL_25	0x580
+#define DDR_PLL_CONFIG_NINT_VAL_25	0x4c00
+#define CPU_PLL_NFRAC_25		0x659
+#define DDR_PLL_NFRAC_25		0x330cc
+
+#define CPU_PLL_DITHER_DITHER_EN_LSB		31
+#define CPU_PLL_DITHER_DITHER_EN_MASK		0x80000000
+#define CPU_PLL_DITHER_DITHER_EN_SET(x)	\
+	(((x) << CPU_PLL_DITHER_DITHER_EN_LSB) \
+	  & CPU_PLL_DITHER_DITHER_EN_MASK)
+
+#define CPU_PLL_DITHER_NFRAC_STEP_LSB		12
+#define CPU_PLL_DITHER_NFRAC_STEP_MASK		0x0003f000
+#define CPU_PLL_DITHER_NFRAC_STEP_SET(x) \
+	(((x) << CPU_PLL_DITHER_NFRAC_STEP_LSB) \
+	  & CPU_PLL_DITHER_NFRAC_STEP_MASK)
+
+#define CPU_PLL_DITHER_UPDATE_COUNT_LSB		18
+#define CPU_PLL_DITHER_UPDATE_COUNT_MASK	0x00fc0000
+#define CPU_PLL_DITHER_UPDATE_COUNT_SET(x) \
+	(((x) << CPU_PLL_DITHER_UPDATE_COUNT_LSB) \
+	  & CPU_PLL_DITHER_UPDATE_COUNT_MASK)
+
+#define DDR_PLL_DITHER_DITHER_EN_LSB		31
+#define DDR_PLL_DITHER_DITHER_EN_MASK		0x80000000
+#define DDR_PLL_DITHER_DITHER_EN_SET(x)	\
+	(((x) << DDR_PLL_DITHER_DITHER_EN_LSB) \
+	  & DDR_PLL_DITHER_DITHER_EN_MASK)
+
+#define DDR_PLL_DITHER_NFRAC_STEP_LSB		20
+#define DDR_PLL_DITHER_NFRAC_STEP_MASK		0x07f00000
+#define DDR_PLL_DITHER_NFRAC_STEP_SET(x) \
+	(((x) << DDR_PLL_DITHER_NFRAC_STEP_LSB) \
+	  & DDR_PLL_DITHER_NFRAC_STEP_MASK)
+
+#define DDR_PLL_DITHER_UPDATE_COUNT_LSB		27
+#define DDR_PLL_DITHER_UPDATE_COUNT_MASK	0x78000000
+#define DDR_PLL_DITHER_UPDATE_COUNT_SET(x) \
+	(((x) << DDR_PLL_DITHER_UPDATE_COUNT_LSB) \
+	  & DDR_PLL_DITHER_UPDATE_COUNT_MASK)
+
+#define CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_LSB	2
+#define CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_MASK	0x00000004
+#define CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_SET(x) \
+	 (((x) << CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_LSB) \
+	   & CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_MASK)
+
+#define CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_LSB	3
+#define CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_MASK	0x00000008
+#define CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_SET(x) \
+	(((x) << CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_LSB) \
+	  & CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_MASK)
+
+#define CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_LSB	4
+#define CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_MASK	0x00000010
+#define CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_SET(x) \
+	(((x) << CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_LSB) \
+	  & CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_MASK)
+
+#define CPU_DPLL3_DO_MEAS_LSB			30
+#define CPU_DPLL3_DO_MEAS_MASK			0x40000000
+#define CPU_DPLL3_DO_MEAS_SET(x) \
+	(((x) << CPU_DPLL3_DO_MEAS_LSB) & CPU_DPLL3_DO_MEAS_MASK)
+
+#define CPU_DPLL3_SQSUM_DVC_LSB			3
+#define CPU_DPLL3_SQSUM_DVC_MASK		0x007ffff8
+#define CPU_DPLL3_SQSUM_DVC_SET(x) \
+	(((x) << CPU_DPLL3_SQSUM_DVC_LSB) & CPU_DPLL3_SQSUM_DVC_MASK)
+
+#define CPU_DPLL4_MEAS_DONE_LSB			3
+#define CPU_DPLL4_MEAS_DONE_MASK		0x00000008
+#define CPU_DPLL4_MEAS_DONE_SET(x) \
+	(((x) << CPU_DPLL4_MEAS_DONE_LSB) & CPU_DPLL4_MEAS_DONE_MASK)
+
+#define CPU_PLL_CONFIG_PLLPWD_LSB		30
+#define CPU_PLL_CONFIG_PLLPWD_MASK		0x40000000
+#define CPU_PLL_CONFIG_PLLPWD_SET(x) \
+	(((x) << CPU_PLL_CONFIG_PLLPWD_LSB) & CPU_PLL_CONFIG_PLLPWD_MASK)
+
+#define DDR_DPLL3_DO_MEAS_LSB			30
+#define DDR_DPLL3_DO_MEAS_MASK			0x40000000
+#define DDR_DPLL3_DO_MEAS_SET(x) \
+	(((x) << DDR_DPLL3_DO_MEAS_LSB) & DDR_DPLL3_DO_MEAS_MASK)
+
+#define DDR_DPLL3_SQSUM_DVC_LSB			3
+#define DDR_DPLL3_SQSUM_DVC_MASK		0x007ffff8
+#define DDR_DPLL3_SQSUM_DVC_SET(x) \
+	(((x) << DDR_DPLL3_SQSUM_DVC_LSB) & DDR_DPLL3_SQSUM_DVC_MASK)
+
+#define DDR_DPLL4_MEAS_DONE_LSB			3
+#define DDR_DPLL4_MEAS_DONE_MASK		0x00000008
+#define DDR_DPLL4_MEAS_DONE_SET(x) \
+	(((x) << DDR_DPLL4_MEAS_DONE_LSB) & DDR_DPLL4_MEAS_DONE_MASK)
+
+#define DDR_PLL_CONFIG_PLLPWD_LSB		30
+#define DDR_PLL_CONFIG_PLLPWD_MASK		0x40000000
+#define DDR_PLL_CONFIG_PLLPWD_SET(x) \
+	(((x) << DDR_PLL_CONFIG_PLLPWD_LSB) & DDR_PLL_CONFIG_PLLPWD_MASK)
+
+/*
+ * Helper macros.
+ * These Clobber t7, t8 and t9
+ */
+#define set_val(_reg, _mask, _val)		\
+	li	t7,	KSEG1ADDR(_reg);	\
+	lw	t8,	0(t7);			\
+	li	t9,	~_mask;			\
+	and	t8,	t8,	t9;		\
+	li	t9,	_val;			\
+	or	t8,	t8,	t9;		\
+	sw	t8,	0(t7)
+
+#define cpu_ddr_control_set(_mask, _val)	\
+	set_val(AR934X_CPU_DDR_CLOCK_CONTROL, _mask, _val)
+
+#define set_srif_pll_reg(reg, _r)	\
+	li	t7,	KSEG1ADDR(reg);	\
+	sw	_r,	0(t7);
+
+#define inc_loop_count(loc)		\
+	li	t9,	loc;		\
+	lw	t7,	0(t9);		\
+	addi	t7,	t7,	1;	\
+	sw	t7,	0(t9);
+
+#define clear_loop_count(loc)	\
+	li	t9,	loc;	\
+	sw	zero,	0(t9);
+
+/******************************************************************************
+ * first level initialization:
+ *
+ * 0) If clock cntrl reset switch is already set, we're recovering from
+ *	"divider reset"; goto 3.
+ * 1) Setup divide ratios.
+ * 2) Reset.
+ * 3) Setup pll's, wait for lock.
+ *
+ *****************************************************************************/
+
+.macro	pbl_ar9344_v11_pll_config
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel	0x13210f00, DPLL2_ADDRESS_c4
+	pbl_reg_writel	0x03000000, CPU_DPLL3_ADDRESS
+	pbl_reg_writel	0x13210f00, DPLL2_ADDRESS_44
+	pbl_reg_writel	0x03000000, DDR_DPLL3_ADDRESS
+	pbl_reg_writel	0x03000000, DPLL3_ADDRESS_88
+
+	li	t5,	KSEG1ADDR(WASP_BOOTSTRAP_REG);
+	li	t6,	WASP_REF_CLK_25
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	beq	zero,	t6,	setup_ref25_val
+	nop
+
+setup_ref40_val:
+	li	t5,	CPU_PLL_CONFIG_NINT_VAL_40
+	li	t6,	DDR_PLL_CONFIG_NINT_VAL_40
+	li	t7,	CPU_PLL_NFRAC_40
+	li	t9,	DDR_PLL_NFRAC_40
+	b	1f
+	nop
+
+setup_ref25_val:
+	li	t5,	CPU_PLL_CONFIG_NINT_VAL_25
+	li	t6,	DDR_PLL_CONFIG_NINT_VAL_25
+	li	t7,	CPU_PLL_NFRAC_25
+	li	t9,	DDR_PLL_NFRAC_25
+
+1:
+	li	t4,	(CPU_PLL_DITHER_DITHER_EN_SET(0) | \
+			CPU_PLL_DITHER_NFRAC_STEP_SET(1) | \
+			CPU_PLL_DITHER_UPDATE_COUNT_SET(0xf));
+	or	t4,	t4,	t7
+
+	li	t8,	0x21000;
+	or	t5,	t5,	t8
+
+	li	t8,	0x210000;
+	or	t6,	t6,	t8
+
+	li	t3,	(DDR_PLL_DITHER_DITHER_EN_SET(0) | \
+			DDR_PLL_DITHER_NFRAC_STEP_SET(1) | \
+			DDR_PLL_DITHER_UPDATE_COUNT_SET(0xf));
+
+	or	t3,	t3,	t9
+
+pll_bypass_set:
+	/* reg, mask, val  */
+	/* 0xb8050008, 0xfffffffb, 0x4 */
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_SET(1));
+	/* 0xb8050008, 0xfffffff7, 0x8 */
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_SET(1));
+	/* 0xb8050008, 0xffffffef, 0x10 */
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_SET(1));
+
+init_cpu_pll:
+	li	t7,	AR934X_CPU_PLL_CONFIG
+	li	t8,	CPU_PLL_CONFIG_PLLPWD_SET(1)
+	or	t8,	t8,	t5
+	sw	t8,	0(t7);
+
+init_ddr_pll:
+	li	t7,	AR934X_DDR_PLL_CONFIG
+	li	t8,	DDR_PLL_CONFIG_PLLPWD_SET(1)
+	or	t8,	t8,	t6
+	sw	t8,	0(t7);
+
+init_ahb_pll:
+	pbl_reg_writel	0x0130801C, AR934X_CPU_DDR_CLOCK_CONTROL
+
+srif_set:
+	/* Use built in values, based on ref clock */
+	li	t5,	KSEG1ADDR(WASP_BOOTSTRAP_REG);
+	li	t6,	WASP_REF_CLK_25
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	/* jump to 25ref clk */
+	beq	zero,	t6,	1f
+	nop
+
+	/*		refdiv		nint		nfrac */
+	/* cpu freq = (40 MHz refclk/refdiv 8) * Nint */
+	li	t4,	((0x8 << 27) | (112 << 18) | 0);
+	/* ddr freq = (40 MHz refclk/refdiv 8) * Nint */
+	li	t5,	((0x8 << 27) | (90 << 18) | 0);
+	b	2f
+	nop
+1:
+
+	/* cpu freq = (25 MHz refclk/refdiv 5) * Nint */
+	li	t4,	((0x5 << 27) | (112 << 18) | 0);
+	/* ddr freq = (25 MHz refclk/refdiv 5) * Nint */
+	li	t5,	((0x5 << 27) | (90 << 18) | 0);
+
+2:
+
+	/* 0 to 0xbd000004 */
+	clear_loop_count(ATH_CPU_COUNT_LOC);
+
+cpu_pll_is_not_locked:
+	inc_loop_count(ATH_CPU_COUNT_LOC);
+
+	pbl_reg_writel 0x10810F00, DPLL2_ADDRESS_c4
+
+	set_srif_pll_reg(0xb81161c0, t4);
+
+	pbl_reg_writel 0xd0810f00, DPLL2_ADDRESS_c4
+	pbl_reg_writel 0x03000000, CPU_DPLL3_ADDRESS
+	pbl_reg_writel 0xd0800f00, DPLL2_ADDRESS_c4
+
+cpu_clear_do_meas1:
+	li	t7,	KSEG1ADDR(CPU_DPLL3_ADDRESS)
+	lw	t8,	0(t7)
+	li	t9,	~CPU_DPLL3_DO_MEAS_SET(1)
+	and	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+cpu_set_do_meas:
+	li	t7,	KSEG1ADDR(CPU_DPLL3_ADDRESS)
+	lw	t8,	0(t7)
+	li	t9,	CPU_DPLL3_DO_MEAS_SET(1)
+	or	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+	li	t7,	KSEG1ADDR(CPU_DPLL4_ADDRESS)
+cpu_wait_for_meas_done:
+	lw	t8,	0(t7)
+	andi	t8,	t8,	CPU_DPLL4_MEAS_DONE_SET(1)
+	beqz	t8,	cpu_wait_for_meas_done
+	nop
+
+cpu_clear_do_meas2:
+	li	t7,	KSEG1ADDR(CPU_DPLL3_ADDRESS)
+	lw	t8,	0(t7)
+	li	t9,	~CPU_DPLL3_DO_MEAS_SET(1)
+	and	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+cpu_read_sqsum_dvc:
+	li	t7,	KSEG1ADDR(CPU_DPLL3_ADDRESS)
+	lw	t8,	0(t7)
+	li	t9,	CPU_DPLL3_SQSUM_DVC_MASK
+	and	t8,	t8,	t9
+	sra	t8,	t8,	CPU_DPLL3_SQSUM_DVC_LSB
+	li	t9,	0x40000
+	subu	t8,	t8,	t9
+	bgez	t8,	cpu_pll_is_not_locked
+	nop
+
+	/* DDR */
+	clear_loop_count(ATH_DDR_COUNT_LOC)
+
+ddr_pll_is_not_locked:
+
+	inc_loop_count(ATH_DDR_COUNT_LOC)
+
+	pbl_reg_writel 0x10810F00, DPLL2_ADDRESS_44
+
+	set_srif_pll_reg(0xb8116240, t5);
+
+	pbl_reg_writel 0xD0810F00, DPLL2_ADDRESS_44
+	pbl_reg_writel 0x03000000, DDR_DPLL3_ADDRESS
+	pbl_reg_writel 0xD0800F00, DPLL2_ADDRESS_44
+
+ddr_clear_do_meas1:
+	li	t7,	DDR_DPLL3_ADDRESS
+	lw	t8,	0(t7)
+	li	t9,	~DDR_DPLL3_DO_MEAS_SET(1)
+	and	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+
+ddr_set_do_meas:
+	li	t7,	DDR_DPLL3_ADDRESS
+	lw	t8,	0(t7)
+	li	t9,	DDR_DPLL3_DO_MEAS_SET(1)
+	or	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+	li	t7,	KSEG1ADDR(DDR_DPLL4_ADDRESS)
+ddr_wait_for_meas_done:
+	lw	t8,	0(t7)
+	andi	t8,	t8,	DDR_DPLL4_MEAS_DONE_SET(1)
+	beqz	t8,	ddr_wait_for_meas_done
+	nop
+
+ddr_clear_do_meas2:
+	li	t7,	DDR_DPLL3_ADDRESS
+	lw	t8,	0(t7)
+	li	t9,	~DDR_DPLL3_DO_MEAS_SET(1)
+	and	t8,	t8,	t9
+	sw	t8,	0(t7)
+
+ddr_read_sqsum_dvc:
+	li	t7,	DDR_DPLL3_ADDRESS
+	lw	t8,	0(t7)
+	li	t9,	DDR_DPLL3_SQSUM_DVC_MASK
+	and	t8,	t8,	t9
+	sra	t8,	t8,	DDR_DPLL3_SQSUM_DVC_LSB
+	li	t9,	0x40000
+	subu	t8,	t8,	t9
+	bgez	t8,	ddr_pll_is_not_locked
+	nop
+
+pll_bypass_unset:
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_CPU_PLL_BYPASS_SET(0));
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_DDR_PLL_BYPASS_SET(0));
+	cpu_ddr_control_set(CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_MASK, \
+		CPU_DDR_CLOCK_CONTROL_AHB_PLL_BYPASS_SET(0));
+
+ddr_pll_dither_unset:
+	pbl_reg_writel	0x78180200, AR934X_DDR_PLL_DITHER
+
+cpu_pll_dither_unset:
+	li	t7,	AR934X_CPU_PLL_DITHER
+	sw	t4,	0(t7)
+
+	.set	pop
+.endm
+
+#define AR9344_DDR_DDR2_CONFIG			AR7240_DDR_CTL_BASE+0xb8
+#define CFG_934X_DDR2_EN_TWL_VAL		0x0e59
+#define USEC_MULT				1
+#define CFG_934X_DDR2_CONFIG_VAL		0xc7d48cd0
+#define CFG_934X_DDR2_CONFIG2_VAL		0x9dd0e6a8
+#define CFG_934X_DDR2_MODE_VAL_INIT		0x133
+#define CFG_934X_DDR2_EXT_MODE_VAL_INIT		0x382
+#define CFG_934X_DDR2_EXT_MODE_VAL		0x402
+#define CFG_934X_DDR2_MODE_VAL			0x33
+#define CFG_DDR_REFRESH_VAL			0x4270
+#define CFG_934X_DDR2_TAP_VAL			0x10012
+#define CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_32	0xff
+#define CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_16	0xffff
+
+.macro	pbl_ar9344_v11_ddr2_config
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel	CFG_934X_DDR2_EN_TWL_VAL, AR9344_DDR_DDR2_CONFIG
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x10, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	0x20, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	li	t5,	KSEG1ADDR(WASP_BOOTSTRAP_REG);
+	li	t6,	BIT(3)
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	beq	zero,	t6,	setup_16bit_1
+	nop
+setup_32bit_1:
+	pbl_reg_writel	BIT(6), AR7240_DDR_CTL_CONFIG
+	b	1f
+	nop
+setup_16bit_1:
+	pbl_reg_clr	BIT(6), AR7240_DDR_CTL_CONFIG
+1:
+
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_CONFIG_VAL, AR7240_DDR_CONFIG
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_CONFIG2_VAL, AR7240_DDR_CONFIG2
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x8, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_MODE_VAL_INIT, AR7240_DDR_MODE
+	pbl_sleep	t2, 1000 * USEC_MULT
+
+	pbl_reg_writel	0x1, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_EXT_MODE_VAL_INIT, AR7240_DDR_EXT_MODE
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x2, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_EXT_MODE_VAL, AR7240_DDR_EXT_MODE
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x2, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	0x8, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_MODE_VAL, AR7240_DDR_MODE
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x1, AR7240_DDR_CONTROL
+	pbl_sleep	t2, 10 * USEC_MULT
+
+	pbl_reg_writel	CFG_DDR_REFRESH_VAL, AR7240_DDR_REFRESH
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	CFG_934X_DDR2_TAP_VAL, AR7240_DDR_TAP_CONTROL0
+	pbl_reg_writel	CFG_934X_DDR2_TAP_VAL, AR7240_DDR_TAP_CONTROL1
+
+
+	li	t5,	KSEG1ADDR(WASP_BOOTSTRAP_REG);
+	li	t6,	BIT(3)
+	lw	t7,	0(t5);
+	and	t6,	t7,	t6
+	beq	zero,	t6,	setup_16bit_2
+	nop
+setup_32bit_2:
+	pbl_reg_writel	CFG_934X_DDR2_TAP_VAL, AR7240_DDR_TAP_CONTROL2
+	pbl_reg_writel	CFG_934X_DDR2_TAP_VAL, AR7240_DDR_TAP_CONTROL3
+	pbl_reg_writel	CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_32, AR7240_DDR_RD_DATA_THIS_CYCLE
+	b	1f
+	nop
+setup_16bit_2:
+	pbl_reg_writel	CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_16, AR7240_DDR_RD_DATA_THIS_CYCLE
+
+1:
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x74444444, AR7240_DDR_BURST
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel	0x222, AR7240_DDR_BURST2
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	pbl_reg_writel 0xfffff, AR7240_AHB_MASTER_TIMEOUT
+	pbl_sleep	t2, 100 * USEC_MULT
+
+	.set	pop
+.endm
+
+#endif /* __ASM_MACH_ATH79_PBL_LL_INIT_AR9344_1_1_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
