Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gS-Az
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:36 +0100
Message-Id: <20180319091146.4112-5-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] aarch64: Add i.MX8 debug UART support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 3 +++
 common/Kconfig                            | 8 ++++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index d54d601db0..7212443ba4 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -15,6 +15,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mq-regs.h>
 #include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
@@ -47,6 +48,8 @@
 #define IMX_DEBUG_SOC MX6
 #elif defined CONFIG_DEBUG_IMX7D_UART
 #define IMX_DEBUG_SOC MX7
+#elif defined CONFIG_DEBUG_IMX8MQ_UART
+#define IMX_DEBUG_SOC MX8MQ
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
 #else
diff --git a/common/Kconfig b/common/Kconfig
index b7000c4d73..75aea460a3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1099,6 +1099,13 @@ config DEBUG_IMX7D_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX7D.
 
+config DEBUG_IMX8MQ_UART
+	bool "i.MX8MQ Debug UART"
+	depends on ARCH_IMX8MQ
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on i.MX8MQ.
+
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
 	depends on ARCH_VF610
@@ -1163,6 +1170,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX6SL_UART || \
 						DEBUG_IMX7D_UART || \
+						DEBUG_IMX8MQ_UART || \
 						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
