Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tcvgx-0001UH-SW
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 10:13:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Nov 2012 11:13:27 +0100
Message-Id: <1353924807-519-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1353924807-519-1-git-send-email-s.hauer@pengutronix.de>
References: <1353924807-519-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] i.MX debug_ll support
To: barebox@lists.infradead.org

This adds lowlevel debug functions for i.MX. As we have a great variety
of different UARTs on i.MX currently no Kconfig support for chosing the
correct one is added. Instead we expect the user to add the correct
define and issue a compiler warning if he hasn't.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                          |    1 +
 arch/arm/mach-imx/include/mach/debug_ll.h |   46 +++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3afd885..cdb5081 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -57,6 +57,7 @@ config ARCH_IMX
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
+	select HAS_DEBUG_LL
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
new file mode 100644
index 0000000..cb6dd03
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -0,0 +1,46 @@
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+#include <config.h>
+#include <mach/imx1-regs.h>
+#include <mach/imx21-regs.h>
+#include <mach/imx25-regs.h>
+#include <mach/imx27-regs.h>
+#include <mach/imx31-regs.h>
+#include <mach/imx35-regs.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
+#include <mach/imx6-regs.h>
+
+/* #define IMX_DEBUG_LL_UART_BASE MXxy_UARTx_BASE_ADDR */
+
+#ifndef IMX_DEBUG_LL_UART_BASE
+#warning define IMX_DEBUG_LL_UART_BASE properly for debug_ll
+#define IMX_DEBUG_LL_UART_BASE 0
+#endif
+
+#define URTX0		0x40		/* Transmitter Register */
+
+#define UCR1		0x80		/* Control Register 1 */
+#define UCR1_UARTEN	(1 << 0)	/* UART enabled */
+
+#define USR2		0x98		/* Status Register 2 */
+#define USR2_TXDC	(1 << 3)	/* Transmitter complete */
+
+static inline void PUTC_LL(int c)
+{
+	void __iomem *base = (void *)IMX_DEBUG_LL_UART_BASE;
+
+	if (!base)
+		return;
+
+	if (!(readl(base + UCR1) & UCR1_UARTEN))
+		return;
+
+	while (!(readl(base + USR2) & USR2_TXDC));
+
+	writel(c, base + URTX0);
+}
+
+#endif /* __MACH_DEBUG_LL_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
