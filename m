Delivery-date: Fri, 10 Nov 2023 13:59:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6j-005rSY-1K
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6i-0003AA-3c
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xHFarF1DWnu1/RP2FblqmdLag98I1hAHSL6qNzvHu7g=; b=Py5O14dfV7Ix4w11hXuxRxin0a
	kbzbZkzJEAQ438LS1PNsQkV+X/TuDHszHhmA9sJHUjCTD+0yqf+gfqUGxIpEt9jc57/K+j7VSVeHl
	EkrQ65WFJBwwvV+2HIzGp76ZCsb3iBocKQGF37vthoOl1ilCyiqzcyPWb+xTJfEmKe7zkiE1R4QNx
	uQM2v4LixlyS6D9HMqz9lGBSNAfcmvWq0MbQK4cTe92HbkkB43JyJGphqwwJucGfytttuYf+6rEFu
	ca6hSJvtuzS4Ag878YgYjnuSXC6UQqv6QgApKG5jXJK3guU7wm8tLdf9OSIIGLsGCSAmCPV5jCSW7
	2JR8LfIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5e-008k4j-0c;
	Fri, 10 Nov 2023 12:58:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-008jtF-0N
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026g-RX; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XW-VS; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s15-2s;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:50 +0100
Message-Id: <20231110125800.1901232-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045813_176128_17F79D10 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 15/25] ARM: i.MX: add i.MX9 debug_ll support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for debug_ll output on i.MX9 SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig              |  5 +++++
 include/mach/imx/debug_ll.h | 13 +++++++++++++
 include/serial/lpuart32.h   | 10 ++++++++++
 3 files changed, 28 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 15c648de5d..792f93d381 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1365,6 +1365,10 @@ config DEBUG_IMX8M_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX8M*.
 
+config DEBUG_IMX9_UART
+	bool "i.MX9 Debug UART"
+	select DEBUG_IMX_UART
+
 config DEBUG_VEXPRESS_UART
 	bool "Vexpress Debug UART"
 	depends on ARCH_VEXPRESS
@@ -1571,6 +1575,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX7D_UART || \
 						DEBUG_IMX8M_UART || \
+						DEBUG_IMX9_UART || \
 						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index d25631d116..618cbc784e 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -18,10 +18,12 @@
 #include <mach/imx/imx6-regs.h>
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx9-regs.h>
 #include <mach/imx/vf610-regs.h>
 
 #include <serial/imx-uart.h>
 #include <serial/lpuart.h>
+#include <serial/lpuart32.h>
 
 #ifdef CONFIG_DEBUG_IMX_UART
 
@@ -54,6 +56,8 @@
 #define IMX_DEBUG_SOC MX8M
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
+#elif defined CONFIG_DEBUG_IMX9_UART
+#define IMX_DEBUG_SOC MX9
 #else
 #error "unknown i.MX debug uart soc type"
 #endif
@@ -107,6 +111,13 @@ static inline void imx8m_uart_setup_ll(void)
 	imx8m_uart_setup(base);
 }
 
+static inline void imx9_uart_setup_ll(void)
+{
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+					 CONFIG_DEBUG_IMX_UART_PORT));
+	lpuart32_setup(base + 0x10, 24000000);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
@@ -117,6 +128,8 @@ static inline void PUTC_LL(int c)
 
 	if (IS_ENABLED(CONFIG_DEBUG_VF610_UART))
 		lpuart_putc(base, c);
+	else if (IS_ENABLED(CONFIG_DEBUG_IMX9_UART))
+		lpuart32_putc(base + 0x10, c);
 	else
 		imx_uart_putc(base, c);
 }
diff --git a/include/serial/lpuart32.h b/include/serial/lpuart32.h
index bcfd067113..12526ee0ae 100644
--- a/include/serial/lpuart32.h
+++ b/include/serial/lpuart32.h
@@ -155,4 +155,14 @@ static inline void lpuart32_putc(void __iomem *base, int c)
 	writel(c, base + LPUART32_UARTDATA);
 }
 
+static inline void imx9_uart_setup(void __iomem *uartbase)
+{
+	/*
+	 * On i.MX9 the registers start at offset 0x10
+	 */
+	BUG_ON((unsigned long)uartbase & 0x10);
+
+	lpuart32_setup(uartbase + 0x10, 24000000);
+}
+
 #endif
-- 
2.39.2



