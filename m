Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T4W-0006qa-B3
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:42:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2019 10:42:37 +0100
Message-Id: <20190306094239.29413-4-s.hauer@pengutronix.de>
In-Reply-To: <20190306094239.29413-1-s.hauer@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] debug_ll: Add ns16550 early debugging functions
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/debug_ll/ns16550.h | 56 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 include/debug_ll/ns16550.h

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
new file mode 100644
index 0000000000..7e4dbeb453
--- /dev/null
+++ b/include/debug_ll/ns16550.h
@@ -0,0 +1,56 @@
+#ifndef __DEBUG_LL_NS16550_H
+#define __DEBUG_LL_NS16550_H
+
+/*
+ * Early debugging functions for the NS16550
+ * This file needs register access functions declared as:
+ *
+ * uint8_t debug_ll_read_reg(int reg);
+ * void debug_ll_write_reg(int reg, uint8_t val);
+ */
+#define NS16550_THR	0x0
+#define NS16550_RBR	0x0
+#define NS16550_DLL	0x0
+#define NS16550_IER	0x1
+#define NS16550_DLM	0x1
+#define NS16550_FCR	0x2
+#define NS16550_LCR	0x3
+#define NS16550_MCR	0x4
+#define NS16550_LSR	0x5
+
+#define NS16550_LCR_VAL		0x3 /* 8 data, 1 stop, no parity */
+#define NS16550_MCR_VAL		0x3 /* RTS/DTR */
+#define NS16550_FCR_VAL		0x7 /* Clear & enable FIFOs */
+
+#define NS16550_LSR_DR		0x01 /* UART received data present */
+#define NS16550_LSR_THRE	0x20 /* Xmit holding register empty */
+
+#define NS16550_LCR_BKSE	0x80 /* Bank select enable */
+
+static inline void PUTC_LL(char ch)
+{
+        while (!(debug_ll_read_reg(NS16550_LSR) & NS16550_LSR_THRE))
+                ;
+
+        debug_ll_write_reg(NS16550_THR, ch);
+}
+
+static inline uint16_t debug_ll_ns16550_calc_divisor(unsigned long clk)
+{
+	return clk / (115200 * 16);
+}
+
+static inline void debug_ll_ns16550_init(uint16_t divisor)
+{
+	debug_ll_write_reg(NS16550_LCR, 0x0); /* select ier reg */
+        debug_ll_write_reg(0x00, NS16550_IER);
+
+	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_BKSE);
+	debug_ll_write_reg(NS16550_DLL, divisor & 0xff);
+	debug_ll_write_reg(NS16550_DLM, (divisor >> 8) & 0xff);
+	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_VAL);
+	debug_ll_write_reg(NS16550_MCR, NS16550_MCR_VAL);
+	debug_ll_write_reg(NS16550_FCR, NS16550_FCR_VAL);
+}
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
