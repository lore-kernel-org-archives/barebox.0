Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux9ok-0006dL-EF
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 05:53:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jul 2013 07:52:58 +0200
Message-Id: <1373521979-7719-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: mxs: implement debug_ll support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                          |  1 +
 arch/arm/mach-mxs/include/mach/debug_ll.h | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 arch/arm/mach-mxs/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e7d8cdd..8b95696 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -90,6 +90,7 @@ config ARCH_MXS
 	select GENERIC_GPIO
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
+	select HAS_DEBUG_LL
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
diff --git a/arch/arm/mach-mxs/include/mach/debug_ll.h b/arch/arm/mach-mxs/include/mach/debug_ll.h
new file mode 100644
index 0000000..9e3ce1c
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/debug_ll.h
@@ -0,0 +1,22 @@
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+#include <mach/imx-regs.h>
+
+#define UARTDBGDR 0x00
+#define UARTDBGFR 0x18
+# define TXFE (1 << 7)
+# define TXFF (1 << 5)
+
+static inline void PUTC_LL(int c)
+{
+	void __iomem *base = (void *)IMX_DBGUART_BASE;
+
+	/* Wait for room in TX FIFO */
+	while (!(readl(base + UARTDBGFR) & TXFE));
+
+	writel(c, base + UARTDBGDR);
+}
+
+#endif /* __MACH_DEBUG_LL_H__ */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
