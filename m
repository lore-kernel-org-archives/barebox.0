Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBITu-0000sn-4l
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 04:53:51 +0000
Received: from mail425.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CBE3DFF92E8
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 07:01:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 11 Sep 2012 06:51:09 +0200
Message-Id: <1347339069-14799-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347339069-14799-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120911044733.GD31207@game.jcrosoft.org>
 <1347339069-14799-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] amba-pl011: add st specific init
To: barebox@lists.infradead.org

This is need on the new IP for ux500

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c |   40 ++++++++++++++++++++++++++++++++++++++--
 include/linux/amba/serial.h |   29 +++++++++++++++++++++++++++++
 2 files changed, 67 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 77f8c8a..b62dc9f 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -45,6 +45,23 @@ struct amba_uart_port {
 	struct console_device	uart;		/* uart */
 	struct clk		*clk;		/* uart clock */
 	u32			uartclk;
+	struct vendor_data	*vendor;
+};
+
+/* There is by now at least one vendor with differing details, so handle it */
+struct vendor_data {
+	unsigned int		lcrh_tx;
+	unsigned int		lcrh_rx;
+};
+
+static struct vendor_data vendor_arm = {
+	.lcrh_tx		= UART011_LCRH,
+	.lcrh_rx		= UART011_LCRH,
+};
+
+static struct vendor_data vendor_st = {
+	.lcrh_tx		= ST_UART011_LCRH_TX,
+	.lcrh_rx		= ST_UART011_LCRH_RX,
 };
 
 static inline struct amba_uart_port *
@@ -117,6 +134,23 @@ static int pl011_tstc(struct console_device *cdev)
 	return !(readl(uart->base + UART01x_FR) & UART01x_FR_RXFE);
 }
 
+static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
+{
+	struct vendor_data	*vendor = uart->vendor;
+
+	writew(lcr, uart->base + vendor->lcrh_rx);
+	if (vendor->lcrh_tx != vendor->lcrh_rx) {
+		int i;
+		/*
+		 * Wait 10 PCLKs before writing LCRH_TX register,
+		 * to get this delay write read only register 10 times
+		 */
+		for (i = 0; i < 10; ++i)
+			writew(0xff, uart->base + UART011_MIS);
+		writew(lcr, uart->base +  vendor->lcrh_tx);
+	}
+}
+
 int pl011_init_port (struct console_device *cdev)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
@@ -140,8 +174,7 @@ int pl011_init_port (struct console_device *cdev)
 	/*
 	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
 	 */
-	writel((UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN),
-	       uart->base + UART011_LCRH);
+	pl011_rlcr(uart, UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN);
 
 	/*
 	 ** Finally, enable the UART
@@ -160,6 +193,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	uart = xzalloc(sizeof(struct amba_uart_port));
 	uart->clk = clk_get(&dev->dev, NULL);
 	uart->base = amba_get_mem_region(dev);
+	uart->vendor = (void*)id->data;
 
 	if (IS_ERR(uart->clk))
 		return PTR_ERR(uart->clk);
@@ -185,10 +219,12 @@ static struct amba_id pl011_ids[] = {
 	{
 		.id	= 0x00041011,
 		.mask	= 0x000fffff,
+		.data	= &vendor_arm,
 	},
 	{
 		.id	= 0x00380802,
 		.mask	= 0x00ffffff,
+		.data	= &vendor_st,
 	},
 	{ 0, 0 },
 };
diff --git a/include/linux/amba/serial.h b/include/linux/amba/serial.h
index f4d7bf8..6670f1f 100644
--- a/include/linux/amba/serial.h
+++ b/include/linux/amba/serial.h
@@ -32,16 +32,20 @@
 #define UART01x_RSR		0x04	/* Receive status register (Read). */
 #define UART01x_ECR		0x04	/* Error clear register (Write). */
 #define UART010_LCRH		0x08	/* Line control register, high byte. */
+#define ST_UART011_DMAWM	0x08    /* DMA watermark configure register. */
 #define UART010_LCRM		0x0C	/* Line control register, middle byte. */
+#define ST_UART011_TIMEOUT	0x0C    /* Timeout period register. */
 #define UART010_LCRL		0x10	/* Line control register, low byte. */
 #define UART010_CR		0x14	/* Control register. */
 #define UART01x_FR		0x18	/* Flag register (Read only). */
 #define UART010_IIR		0x1C	/* Interrupt indentification register (Read). */
 #define UART010_ICR		0x1C	/* Interrupt clear register (Write). */
+#define ST_UART011_LCRH_RX	0x1C    /* Rx line control register. */
 #define UART01x_ILPR		0x20	/* IrDA low power counter register. */
 #define UART011_IBRD		0x24	/* Integer baud rate divisor register. */
 #define UART011_FBRD		0x28	/* Fractional baud rate divisor register. */
 #define UART011_LCRH		0x2c	/* Line control register. */
+#define ST_UART011_LCRH_TX	0x2c    /* Tx Line control register. */
 #define UART011_CR		0x30	/* Control register. */
 #define UART011_IFLS		0x34	/* Interrupt fifo level select. */
 #define UART011_IMSC		0x38	/* Interrupt mask. */
@@ -49,6 +53,15 @@
 #define UART011_MIS		0x40	/* Masked interrupt status. */
 #define UART011_ICR		0x44	/* Interrupt clear register. */
 #define UART011_DMACR		0x48	/* DMA control register. */
+#define ST_UART011_XFCR		0x50	/* XON/XOFF control register. */
+#define ST_UART011_XON1		0x54	/* XON1 register. */
+#define ST_UART011_XON2		0x58	/* XON2 register. */
+#define ST_UART011_XOFF1	0x5C	/* XON1 register. */
+#define ST_UART011_XOFF2	0x60	/* XON2 register. */
+#define ST_UART011_ITCR		0x80	/* Integration test control register. */
+#define ST_UART011_ITIP		0x84	/* Integration test input register. */
+#define ST_UART011_ABCR		0x100	/* Autobaud control register. */
+#define ST_UART011_ABIMSC	0x15C	/* Autobaud interrupt mask/clear register. */
 
 #define UART011_DR_OE		(1 << 11)
 #define UART011_DR_BE		(1 << 10)
@@ -84,6 +97,7 @@
 #define UART010_CR_TIE		0x0020
 #define UART010_CR_RIE		0x0010
 #define UART010_CR_MSIE		0x0008
+#define ST_UART011_CR_OVSFACT	0x0008	/* Oversampling factor */
 #define UART01x_CR_IIRLP	0x0004	/* SIR low power mode */
 #define UART01x_CR_SIREN	0x0002	/* SIR enable */
 #define UART01x_CR_UARTEN	0x0001	/* UART enable */
@@ -99,6 +113,21 @@
 #define UART01x_LCRH_PEN	0x02
 #define UART01x_LCRH_BRK	0x01
 
+#define ST_UART011_DMAWM_RX_1	(0 << 3)
+#define ST_UART011_DMAWM_RX_2	(1 << 3)
+#define ST_UART011_DMAWM_RX_4	(2 << 3)
+#define ST_UART011_DMAWM_RX_8	(3 << 3)
+#define ST_UART011_DMAWM_RX_16	(4 << 3)
+#define ST_UART011_DMAWM_RX_32	(5 << 3)
+#define ST_UART011_DMAWM_RX_48	(6 << 3)
+#define ST_UART011_DMAWM_TX_1	0
+#define ST_UART011_DMAWM_TX_2	1
+#define ST_UART011_DMAWM_TX_4	2
+#define ST_UART011_DMAWM_TX_8	3
+#define ST_UART011_DMAWM_TX_16	4
+#define ST_UART011_DMAWM_TX_32	5
+#define ST_UART011_DMAWM_TX_48	6
+
 #define UART010_IIR_RTIS	0x08
 #define UART010_IIR_TIS		0x04
 #define UART010_IIR_RIS		0x02
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
