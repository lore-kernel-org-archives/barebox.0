Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YojcW-0004im-Fz
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:05 +0000
Received: by pabsx10 with SMTP id sx10so128763677pab.3
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:13 -0700
Message-Id: <1430619980-26243-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] i.MX: Move UART definitions into a separate file
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move UART definitions into a separate file to avoid redefinition in
<mach/debug_ll.h> and magical constants in low level UART
initialization code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/debug_ll.h |   9 +--
 arch/arm/mach-imx/include/mach/serial.h   | 112 ++++++++++++++++++++++++++++++
 drivers/serial/serial_imx.c               | 108 +---------------------------
 3 files changed, 114 insertions(+), 115 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/serial.h

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index f34eaa1..1c9f3a6 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -12,6 +12,7 @@
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
+#include <mach/serial.h>

 #ifdef CONFIG_DEBUG_LL

@@ -40,14 +41,6 @@
 #define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
 #define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)

-#define URTX0		0x40		/* Transmitter Register */
-
-#define UCR1		0x80		/* Control Register 1 */
-#define UCR1_UARTEN	(1 << 0)	/* UART enabled */
-
-#define USR2		0x98		/* Status Register 2 */
-#define USR2_TXDC	(1 << 3)	/* Transmitter complete */
-
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
diff --git a/arch/arm/mach-imx/include/mach/serial.h b/arch/arm/mach-imx/include/mach/serial.h
new file mode 100644
index 0000000..b999c58
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/serial.h
@@ -0,0 +1,112 @@
+#ifndef __MACH_SERIAL_H__
+#define __MACH_SERIAL_H__
+
+#define URXD0	0x0	/* Receiver Register */
+#define URTX0	0x40	/* Transmitter Register */
+#define UCR1	0x80	/* Control Register 1 */
+#define UCR2	0x84	/* Control Register 2 */
+#define UCR3	0x88	/* Control Register 3 */
+#define UCR4	0x8c	/* Control Register 4 */
+#define UFCR	0x90	/* FIFO Control Register */
+#define USR1	0x94	/* Status Register 1 */
+#define USR2	0x98	/* Status Register 2 */
+#define UESC	0x9c	/* Escape Character Register */
+#define UTIM	0xa0	/* Escape Timer Register */
+#define UBIR	0xa4	/* BRM Incremental Register */
+#define UBMR	0xa8	/* BRM Modulator Register */
+#define UBRC	0xac	/* Baud Rate Count Register */
+
+/* UART Control Register Bit Fields.*/
+#define  URXD_CHARRDY    (1<<15)
+#define  URXD_ERR        (1<<14)
+#define  URXD_OVRRUN     (1<<13)
+#define  URXD_FRMERR     (1<<12)
+#define  URXD_BRK        (1<<11)
+#define  URXD_PRERR      (1<<10)
+#define  UCR1_ADEN       (1<<15) /* Auto dectect interrupt */
+#define  UCR1_ADBR       (1<<14) /* Auto detect baud rate */
+#define  UCR1_TRDYEN     (1<<13) /* Transmitter ready interrupt enable */
+#define  UCR1_IDEN       (1<<12) /* Idle condition interrupt */
+#define  UCR1_RRDYEN     (1<<9)	 /* Recv ready interrupt enable */
+#define  UCR1_RDMAEN     (1<<8)	 /* Recv ready DMA enable */
+#define  UCR1_IREN       (1<<7)	 /* Infrared interface enable */
+#define  UCR1_TXMPTYEN   (1<<6)	 /* Transimitter empty interrupt enable */
+#define  UCR1_RTSDEN     (1<<5)	 /* RTS delta interrupt enable */
+#define  UCR1_SNDBRK     (1<<4)	 /* Send break */
+#define  UCR1_TDMAEN     (1<<3)	 /* Transmitter ready DMA enable */
+#define  UCR1_UARTCLKEN  (1<<2)	 /* UART clock enabled */
+#define  UCR1_DOZE       (1<<1)	 /* Doze */
+#define  UCR1_UARTEN     (1<<0)	 /* UART enabled */
+#define  UCR2_ESCI     	 (1<<15) /* Escape seq interrupt enable */
+#define  UCR2_IRTS  	 (1<<14) /* Ignore RTS pin */
+#define  UCR2_CTSC  	 (1<<13) /* CTS pin control */
+#define  UCR2_CTS        (1<<12) /* Clear to send */
+#define  UCR2_ESCEN      (1<<11) /* Escape enable */
+#define  UCR2_PREN       (1<<8)  /* Parity enable */
+#define  UCR2_PROE       (1<<7)  /* Parity odd/even */
+#define  UCR2_STPB       (1<<6)	 /* Stop */
+#define  UCR2_WS         (1<<5)	 /* Word size */
+#define  UCR2_RTSEN      (1<<4)	 /* Request to send interrupt enable */
+#define  UCR2_TXEN       (1<<2)	 /* Transmitter enabled */
+#define  UCR2_RXEN       (1<<1)	 /* Receiver enabled */
+#define  UCR2_SRST 	 (1<<0)	 /* SW reset */
+#define  UCR3_DTREN 	 (1<<13) /* DTR interrupt enable */
+#define  UCR3_PARERREN   (1<<12) /* Parity enable */
+#define  UCR3_FRAERREN   (1<<11) /* Frame error interrupt enable */
+#define  UCR3_DSR        (1<<10) /* Data set ready */
+#define  UCR3_DCD        (1<<9)  /* Data carrier detect */
+#define  UCR3_RI         (1<<8)  /* Ring indicator */
+#define  UCR3_ADNIMP     (1<<7)  /* Autobaud Detection Not Improved */
+#define  UCR3_RXDSEN	 (1<<6)  /* Receive status interrupt enable */
+#define  UCR3_AIRINTEN   (1<<5)  /* Async IR wake interrupt enable */
+#define  UCR3_AWAKEN	 (1<<4)  /* Async wake interrupt enable */
+#define  UCR3_REF25 	 (1<<3)  /* Ref freq 25 MHz (i.MXL / i.MX1) */
+#define  UCR3_REF30 	 (1<<2)  /* Ref Freq 30 MHz (i.MXL / i.MX1) */
+#define  UCR3_RXDMUXSEL  (1<<2)  /* RXD Muxed input select (i.MX27) */
+#define  UCR3_INVT  	 (1<<1)  /* Inverted Infrared transmission */
+#define  UCR3_BPEN  	 (1<<0)  /* Preset registers enable */
+#define  UCR4_CTSTL_32   (32<<10) /* CTS trigger level (32 chars) */
+#define  UCR4_INVR  	 (1<<9)  /* Inverted infrared reception */
+#define  UCR4_ENIRI 	 (1<<8)  /* Serial infrared interrupt enable */
+#define  UCR4_WKEN  	 (1<<7)  /* Wake interrupt enable */
+#define  UCR4_REF16 	 (1<<6)  /* Ref freq 16 MHz */
+#define  UCR4_IRSC  	 (1<<5)  /* IR special case */
+#define  UCR4_TCEN  	 (1<<3)  /* Transmit complete interrupt enable */
+#define  UCR4_BKEN  	 (1<<2)  /* Break condition interrupt enable */
+#define  UCR4_OREN  	 (1<<1)  /* Receiver overrun interrupt enable */
+#define  UCR4_DREN  	 (1<<0)  /* Recv data ready interrupt enable */
+#define  UFCR_RXTL_SHF   0       /* Receiver trigger level shift */
+#define  UFCR_RFDIV      (7<<7)  /* Reference freq divider mask */
+#define  UFCR_TXTL_SHF   10      /* Transmitter trigger level shift */
+#define  USR1_PARITYERR  (1<<15) /* Parity error interrupt flag */
+#define  USR1_RTSS  	 (1<<14) /* RTS pin status */
+#define  USR1_TRDY  	 (1<<13) /* Transmitter ready interrupt/dma flag */
+#define  USR1_RTSD  	 (1<<12) /* RTS delta */
+#define  USR1_ESCF  	 (1<<11) /* Escape seq interrupt flag */
+#define  USR1_FRAMERR    (1<<10) /* Frame error interrupt flag */
+#define  USR1_RRDY       (1<<9)	 /* Receiver ready interrupt/dma flag */
+#define  USR1_TIMEOUT    (1<<7)	 /* Receive timeout interrupt status */
+#define  USR1_RXDS  	 (1<<6)	 /* Receiver idle interrupt flag */
+#define  USR1_AIRINT	 (1<<5)	 /* Async IR wake interrupt flag */
+#define  USR1_AWAKE 	 (1<<4)	 /* Aysnc wake interrupt flag */
+#define  USR2_ADET  	 (1<<15) /* Auto baud rate detect complete */
+#define  USR2_TXFE  	 (1<<14) /* Transmit buffer FIFO empty */
+#define  USR2_DTRF  	 (1<<13) /* DTR edge interrupt flag */
+#define  USR2_IDLE  	 (1<<12) /* Idle condition */
+#define  USR2_IRINT 	 (1<<8)	 /* Serial infrared interrupt flag */
+#define  USR2_WAKE  	 (1<<7)	 /* Wake */
+#define  USR2_RTSF  	 (1<<4)	 /* RTS edge interrupt flag */
+#define  USR2_TXDC  	 (1<<3)	 /* Transmitter complete */
+#define  USR2_BRCD  	 (1<<2)	 /* Break condition */
+#define  USR2_ORE        (1<<1)	 /* Overrun error */
+#define  USR2_RDR        (1<<0)	 /* Recv data ready */
+#define  UTS_FRCPERR	 (1<<13) /* Force parity error */
+#define  UTS_LOOP        (1<<12) /* Loop tx and rx */
+#define  UTS_TXEMPTY	 (1<<6)	 /* TxFIFO empty */
+#define  UTS_RXEMPTY	 (1<<5)	 /* RxFIFO empty */
+#define  UTS_TXFULL 	 (1<<4)	 /* TxFIFO full */
+#define  UTS_RXFULL 	 (1<<3)	 /* RxFIFO full */
+#define  UTS_SOFTRST	 (1<<0)	 /* Software reset */
+
+
+#endif	/* __MACH_SERIAL_H__ */
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index cd954c2..e197be8 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -23,113 +23,7 @@
 #include <of.h>
 #include <linux/err.h>
 #include <linux/clk.h>
-
-#define URXD0	0x0	/* Receiver Register */
-#define URTX0	0x40	/* Transmitter Register */
-#define UCR1	0x80	/* Control Register 1 */
-#define UCR2	0x84	/* Control Register 2 */
-#define UCR3	0x88	/* Control Register 3 */
-#define UCR4	0x8c	/* Control Register 4 */
-#define UFCR	0x90	/* FIFO Control Register */
-#define USR1	0x94	/* Status Register 1 */
-#define USR2	0x98	/* Status Register 2 */
-#define UESC	0x9c	/* Escape Character Register */
-#define UTIM	0xa0	/* Escape Timer Register */
-#define UBIR	0xa4	/* BRM Incremental Register */
-#define UBMR	0xa8	/* BRM Modulator Register */
-#define UBRC	0xac	/* Baud Rate Count Register */
-
-/* UART Control Register Bit Fields.*/
-#define  URXD_CHARRDY    (1<<15)
-#define  URXD_ERR        (1<<14)
-#define  URXD_OVRRUN     (1<<13)
-#define  URXD_FRMERR     (1<<12)
-#define  URXD_BRK        (1<<11)
-#define  URXD_PRERR      (1<<10)
-#define  UCR1_ADEN       (1<<15) /* Auto dectect interrupt */
-#define  UCR1_ADBR       (1<<14) /* Auto detect baud rate */
-#define  UCR1_TRDYEN     (1<<13) /* Transmitter ready interrupt enable */
-#define  UCR1_IDEN       (1<<12) /* Idle condition interrupt */
-#define  UCR1_RRDYEN     (1<<9)	 /* Recv ready interrupt enable */
-#define  UCR1_RDMAEN     (1<<8)	 /* Recv ready DMA enable */
-#define  UCR1_IREN       (1<<7)	 /* Infrared interface enable */
-#define  UCR1_TXMPTYEN   (1<<6)	 /* Transimitter empty interrupt enable */
-#define  UCR1_RTSDEN     (1<<5)	 /* RTS delta interrupt enable */
-#define  UCR1_SNDBRK     (1<<4)	 /* Send break */
-#define  UCR1_TDMAEN     (1<<3)	 /* Transmitter ready DMA enable */
-#define  UCR1_UARTCLKEN  (1<<2)	 /* UART clock enabled */
-#define  UCR1_DOZE       (1<<1)	 /* Doze */
-#define  UCR1_UARTEN     (1<<0)	 /* UART enabled */
-#define  UCR2_ESCI     	 (1<<15) /* Escape seq interrupt enable */
-#define  UCR2_IRTS  	 (1<<14) /* Ignore RTS pin */
-#define  UCR2_CTSC  	 (1<<13) /* CTS pin control */
-#define  UCR2_CTS        (1<<12) /* Clear to send */
-#define  UCR2_ESCEN      (1<<11) /* Escape enable */
-#define  UCR2_PREN       (1<<8)  /* Parity enable */
-#define  UCR2_PROE       (1<<7)  /* Parity odd/even */
-#define  UCR2_STPB       (1<<6)	 /* Stop */
-#define  UCR2_WS         (1<<5)	 /* Word size */
-#define  UCR2_RTSEN      (1<<4)	 /* Request to send interrupt enable */
-#define  UCR2_TXEN       (1<<2)	 /* Transmitter enabled */
-#define  UCR2_RXEN       (1<<1)	 /* Receiver enabled */
-#define  UCR2_SRST 	 (1<<0)	 /* SW reset */
-#define  UCR3_DTREN 	 (1<<13) /* DTR interrupt enable */
-#define  UCR3_PARERREN   (1<<12) /* Parity enable */
-#define  UCR3_FRAERREN   (1<<11) /* Frame error interrupt enable */
-#define  UCR3_DSR        (1<<10) /* Data set ready */
-#define  UCR3_DCD        (1<<9)  /* Data carrier detect */
-#define  UCR3_RI         (1<<8)  /* Ring indicator */
-#define  UCR3_ADNIMP     (1<<7)  /* Autobaud Detection Not Improved */
-#define  UCR3_RXDSEN	 (1<<6)  /* Receive status interrupt enable */
-#define  UCR3_AIRINTEN   (1<<5)  /* Async IR wake interrupt enable */
-#define  UCR3_AWAKEN	 (1<<4)  /* Async wake interrupt enable */
-#define  UCR3_REF25 	 (1<<3)  /* Ref freq 25 MHz (i.MXL / i.MX1) */
-#define  UCR3_REF30 	 (1<<2)  /* Ref Freq 30 MHz (i.MXL / i.MX1) */
-#define  UCR3_RXDMUXSEL  (1<<2)  /* RXD Muxed input select (i.MX27) */
-#define  UCR3_INVT  	 (1<<1)  /* Inverted Infrared transmission */
-#define  UCR3_BPEN  	 (1<<0)  /* Preset registers enable */
-#define  UCR4_CTSTL_32   (32<<10) /* CTS trigger level (32 chars) */
-#define  UCR4_INVR  	 (1<<9)  /* Inverted infrared reception */
-#define  UCR4_ENIRI 	 (1<<8)  /* Serial infrared interrupt enable */
-#define  UCR4_WKEN  	 (1<<7)  /* Wake interrupt enable */
-#define  UCR4_REF16 	 (1<<6)  /* Ref freq 16 MHz */
-#define  UCR4_IRSC  	 (1<<5)  /* IR special case */
-#define  UCR4_TCEN  	 (1<<3)  /* Transmit complete interrupt enable */
-#define  UCR4_BKEN  	 (1<<2)  /* Break condition interrupt enable */
-#define  UCR4_OREN  	 (1<<1)  /* Receiver overrun interrupt enable */
-#define  UCR4_DREN  	 (1<<0)  /* Recv data ready interrupt enable */
-#define  UFCR_RXTL_SHF   0       /* Receiver trigger level shift */
-#define  UFCR_RFDIV      (7<<7)  /* Reference freq divider mask */
-#define  UFCR_TXTL_SHF   10      /* Transmitter trigger level shift */
-#define  USR1_PARITYERR  (1<<15) /* Parity error interrupt flag */
-#define  USR1_RTSS  	 (1<<14) /* RTS pin status */
-#define  USR1_TRDY  	 (1<<13) /* Transmitter ready interrupt/dma flag */
-#define  USR1_RTSD  	 (1<<12) /* RTS delta */
-#define  USR1_ESCF  	 (1<<11) /* Escape seq interrupt flag */
-#define  USR1_FRAMERR    (1<<10) /* Frame error interrupt flag */
-#define  USR1_RRDY       (1<<9)	 /* Receiver ready interrupt/dma flag */
-#define  USR1_TIMEOUT    (1<<7)	 /* Receive timeout interrupt status */
-#define  USR1_RXDS  	 (1<<6)	 /* Receiver idle interrupt flag */
-#define  USR1_AIRINT	 (1<<5)	 /* Async IR wake interrupt flag */
-#define  USR1_AWAKE 	 (1<<4)	 /* Aysnc wake interrupt flag */
-#define  USR2_ADET  	 (1<<15) /* Auto baud rate detect complete */
-#define  USR2_TXFE  	 (1<<14) /* Transmit buffer FIFO empty */
-#define  USR2_DTRF  	 (1<<13) /* DTR edge interrupt flag */
-#define  USR2_IDLE  	 (1<<12) /* Idle condition */
-#define  USR2_IRINT 	 (1<<8)	 /* Serial infrared interrupt flag */
-#define  USR2_WAKE  	 (1<<7)	 /* Wake */
-#define  USR2_RTSF  	 (1<<4)	 /* RTS edge interrupt flag */
-#define  USR2_TXDC  	 (1<<3)	 /* Transmitter complete */
-#define  USR2_BRCD  	 (1<<2)	 /* Break condition */
-#define  USR2_ORE        (1<<1)	 /* Overrun error */
-#define  USR2_RDR        (1<<0)	 /* Recv data ready */
-#define  UTS_FRCPERR	 (1<<13) /* Force parity error */
-#define  UTS_LOOP        (1<<12) /* Loop tx and rx */
-#define  UTS_TXEMPTY	 (1<<6)	 /* TxFIFO empty */
-#define  UTS_RXEMPTY	 (1<<5)	 /* RxFIFO empty */
-#define  UTS_TXFULL 	 (1<<4)	 /* TxFIFO full */
-#define  UTS_RXFULL 	 (1<<3)	 /* RxFIFO full */
-#define  UTS_SOFTRST	 (1<<0)	 /* Software reset */
+#include <mach/serial.h>

 /*
  * create default values for different platforms
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
