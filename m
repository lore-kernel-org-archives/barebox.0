Delivery-date: Fri, 05 Jun 2026 14:59:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9A-002cXV-2d
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 14:59:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU99-0003sA-V4
	for lore@pengutronix.de; Fri, 05 Jun 2026 14:59:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HITOB2/qnqNnhkHhj7ywvrWunIxARpvoQrvMQcF/lyA=; b=lT84kQgPjG/7PRszm02Plb1sxi
	wy8fJKkyAvKeVvQccY848KKHjxaoVxfQnP0TsUfTKzcg0iRmzsOErPEt3STwfgXfisiR7bmyIzGrH
	PsHMUnDl6xgwL/TtnjFWNPmJTtI6uNy72gORXIdbC8i2+nfF7C1kpzTcKXmmAOZLlPMiTjMjX8KY8
	dz0lismcYXAzH75w25K9NtzPGkxdLd6sLva5pkV2Dy9T+2bAIcRR2tXITUg/96VH9WCm/x57ll6S/
	4vo2Fe7RQiWf2Jmyc2CQo1/RSM+YMPqWm6S7FMoHp8fNq/PCnResXya+EQ+0vyuPJHZLnp4vlfLeh
	epTGZeYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7w-00000000e5S-2UyI;
	Fri, 05 Jun 2026 12:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7s-00000000e3f-2Hax
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 12:58:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVU7p-0003Xw-M5; Fri, 05 Jun 2026 14:58:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 14:58:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-debug-uart-v1-1-8454bfc709bf@pengutronix.de>
References: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
In-Reply-To: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_055816_591147_F9B4C8DE 
X-CRM114-Status: GOOD (  12.29  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] arm: socfpga: replace custom UART with ns16550
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is nothing special in the SoCFPGA UART, but it is compatible with
an ns16550 uart. Remove the custom implementation.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/debug_ll.h | 104 ++++++++++++++--------------------------
 1 file changed, 35 insertions(+), 69 deletions(-)

diff --git a/include/mach/socfpga/debug_ll.h b/include/mach/socfpga/debug_ll.h
index 698cca60373f..86f6256af995 100644
--- a/include/mach/socfpga/debug_ll.h
+++ b/include/mach/socfpga/debug_ll.h
@@ -4,97 +4,63 @@
 #define   __MACH_SOCFPGA_DEBUG_LL_H__
 
 #include <io.h>
-#include <errno.h>
 
 #ifdef CONFIG_DEBUG_LL
 #define UART_BASE	CONFIG_DEBUG_SOCFPGA_UART_PHYS_ADDR
+
+#if defined(CONFIG_ARCH_SOCFPGA_CYCLONE5)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
+{
+	return readb(base + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
+{
+	writeb(val, base + (reg << 2));
+}
+#else
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
+{
+	return readl(base + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
+{
+	writel(val, base + (reg << 2));
+}
 #endif
 
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-#define LSR_TEMT	0x40
+#include <debug_ll/ns16550.h>
 
-#define LCR_BKSE	0x80	/* Bank select enable */
-#define LCRVAL		0x3
-#define MCRVAL		0x3
-#define FCRVAL		0xc1
-
-#define RBR		0x0
-#define DLL		0x0
-#define IER		0x4
-#define DLM		0x4
-#define FCR		0x8
-#define LCR		0xc
-#define MCR		0x10
-#define LSR		0x14
-#define MSR		0x18
-#define SCR		0x1c
-#define THR		0x30
-
-static inline void socfpga_gen5_uart_putc(void *base, int c)
+static inline void socfpga_uart_setup(void *base)
 {
-	/* Wait until there is space in the FIFO */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writeb(c, base + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
-}
+	unsigned int div;
 
-static inline void socfpga_uart_putc(void *base, int c)
-{
-	/* Wait until there is space in the FIFO */
-	while ((readl(base + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writel(c, base + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readl(base + LSR) & LSR_THRE) == 0);
-}
-
-#ifdef CONFIG_DEBUG_LL
-static inline unsigned int ns16550_calc_divisor(unsigned int clk,
-					 unsigned int baudrate)
-{
-	return (clk / 16 / baudrate);
+	div = debug_ll_ns16550_calc_divisor(CONFIG_DEBUG_SOCFPGA_UART_CLOCK);
+	debug_ll_ns16550_init(base, div);
 }
 
 static inline void socfpga_uart_setup_ll(void)
-{
-	unsigned int div = ns16550_calc_divisor(CONFIG_DEBUG_SOCFPGA_UART_CLOCK,
-						115200);
-
-	writel(0x00, UART_BASE + IER);
-
-	writel(LCR_BKSE, UART_BASE + LCR);
-	writel(div & 0xff, UART_BASE + DLL);
-	writel((div >> 8) & 0xff, UART_BASE + DLM);
-	writel(LCRVAL, UART_BASE + LCR);
-
-	writel(MCRVAL, UART_BASE + MCR);
-	writel(FCRVAL, UART_BASE + FCR);
-}
-
-#if defined(CONFIG_ARCH_SOCFPGA_CYCLONE5)
-static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(UART_BASE);
 
-	socfpga_gen5_uart_putc(base, c);
+	socfpga_uart_setup(base);
 }
-#else
+
+static inline void socfpga_uart_putc(void *base, int c)
+{
+	debug_ll_ns16550_putc(base, c);
+}
+
 static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(UART_BASE);
 
 	socfpga_uart_putc(base, c);
 }
-#endif
-
 #else
-static inline unsigned int ns16550_calc_divisor(unsigned int clk,
-					 unsigned int baudrate) {
-	return -ENOSYS;
-}
 static inline void socfpga_uart_setup_ll(void) {}
-static inline void PUTC_LL(char c) {}
+static inline void socfpga_uart_putc(void *base, int c) {}
+static inline void socfpga_uart_setup(void *base) {}
 #endif
 #endif /* __MACH_SOCFPGA_DEBUG_LL_H__ */

-- 
2.47.3



