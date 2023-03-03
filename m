Delivery-date: Fri, 03 Mar 2023 10:25:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1fb-007NhJ-Nu
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:25:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1fa-0002BJ-7R
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:25:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dCjPqBGuiaObv7IKNm5Frb/urvMgGrBJD3N05MLl1sk=; b=wEZg4hhvn9cXTse6YiyDTIBmjS
	yi8rci0DxZ4PyQqo4bYO843TjEvRwTzp95LbHIx46r05JDBmSP9aWE533CT26nMmOA5J12w9IUJbA
	Xv7XhrbKUE9BRZlbk6LHhfQdRcmXLm2tZdHaN4XVT9YbXZ1y1h8tx+jlYYxz14aaSQOMWnWwTozyU
	+c5FR6Xa1HAS90oq89q92b8OPZCbza12dxxxzNyOEfFezZvKZjxqoh3c8i8uAYKoTRBqVxQ4oXJT+
	o91Acj0mTyvqR8EM34szI4lsGwLFttgyLrNVPSwEfMpvwFWVN5j9PeO7PDVJxCYLlAP46mjSzzlf5
	qQhPihdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1e9-005g5W-Ro; Fri, 03 Mar 2023 09:24:14 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bl-005eOx-4e
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000EG-HZ; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wip-Lw; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2iE-QY; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:09 +0100
Message-Id: <20230303092131.3063587-29-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012145_241847_20621F22 
X-CRM114-Status: GOOD (  14.57  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 28/50] ARM: Rockchip: Use ns16550 debug_ll helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Rockchip UART is ns16550 compatible, so use the existing helper
functions to provide debug_ll functionality. While at it rename
INIT_LL() to be Rockchip specific.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-rk3288/lowlevel.c |  2 +-
 include/mach/rockchip/debug_ll.h             | 74 +++++++-------------
 2 files changed, 27 insertions(+), 49 deletions(-)

diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index dc29113c39..8fc8f700f9 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -26,7 +26,7 @@ ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
 			     GPIO7C6_MASK << GPIO7C6_SHIFT,
 			     GPIO7C7_UART2DBG_SOUT << GPIO7C7_SHIFT |
 			     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
-		INIT_LL();
+		rockchip_debug_ll_init();
 	}
 	fdt = __dtb_rk3288_phycore_som_start + get_runtime_offset();
 
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index c859c3f199..a4b203794f 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -14,84 +14,62 @@
 
 #ifdef CONFIG_DEBUG_ROCKCHIP_RK3188_UART
 
-#define UART_CLOCK		100000000
+#define RK_DEBUG_UART_CLOCK	100000000
 #define RK_DEBUG_SOC		RK3188
-#define serial_out(a, v)	writeb(v, a)
-#define serial_in(a)		readb(a)
 
 #elif defined CONFIG_DEBUG_ROCKCHIP_RK3288_UART
 
-#define UART_CLOCK		24000000
+#define RK_DEBUG_UART_CLOCK	24000000
 #define RK_DEBUG_SOC		RK3288
-#define serial_out(a, v)	writel(v, a)
-#define serial_in(a)		readl(a)
 
 #elif defined CONFIG_DEBUG_ROCKCHIP_RK3568_UART
 
-#define UART_CLOCK		24000000
+#define RK_DEBUG_UART_CLOCK	24000000
 #define RK_DEBUG_SOC		RK3568
-#define serial_out(a, v)	writel(v, a)
-#define serial_in(a)		readl(a)
 
 #elif defined CONFIG_DEBUG_ROCKCHIP_RK3399_UART
 
-#define UART_CLOCK		24000000
+#define RK_DEBUG_UART_CLOCK	24000000
 #define RK_DEBUG_SOC		RK3399
-#define serial_out(a, v)	writel(v, a)
-#define serial_in(a)		readl(a)
 
 #endif
 
 #define __RK_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define RK_UART_BASE(soc, num) __RK_UART_BASE(soc, num)
 
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-#define LCR_BKSE	0x80	/* Bank select enable */
-#define LSR		(5 << 2)
-#define THR		(0 << 2)
-#define DLL		(0 << 2)
-#define IER		(1 << 2)
-#define DLM		(1 << 2)
-#define FCR		(2 << 2)
-#define LCR		(3 << 2)
-#define MCR		(4 << 2)
-#define MDR		(8 << 2)
-
-static inline void INIT_LL(void)
+static inline uint8_t debug_ll_read_reg(int reg)
 {
 	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
 		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
-	unsigned int divisor = DIV_ROUND_CLOSEST(UART_CLOCK,
-		16 * CONFIG_BAUDRATE);
-
-	serial_out(base + LCR, 0x00);
-	serial_out(base + IER, 0x00);
-	serial_out(base + MDR, 0x07);
-	serial_out(base + LCR, LCR_BKSE);
-	serial_out(base + DLL, divisor & 0xff);
-	serial_out(base + DLM, divisor >> 8);
-	serial_out(base + LCR, 0x03);
-	serial_out(base + MCR, 0x03);
-	serial_out(base + FCR, 0x07);
-	serial_out(base + MDR, 0x00);
+
+	return readb(base + (reg << 2));
 }
 
-static inline void PUTC_LL(char c)
+static inline void debug_ll_write_reg(int reg, uint8_t val)
 {
 	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
 		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
 
-	/* Wait until there is space in the FIFO */
-	while ((serial_in(base + LSR) & LSR_THRE) == 0)
-		;
-	/* Send the character */
-	serial_out(base + THR, c);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((serial_in(base + LSR) & LSR_THRE) == 0)
-		;
+	writeb(val, base + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void rockchip_debug_ll_init(void)
+{
+	unsigned int divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(RK_DEBUG_UART_CLOCK * 2);
+	debug_ll_ns16550_init(divisor);
 }
+
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
 #else
-static inline void INIT_LL(void)
+static inline void rockchip_debug_ll_init(void)
 {
 }
 #endif
-- 
2.30.2



