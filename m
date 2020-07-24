Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyvcx-0000fZ-8c
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 11:12:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jyvcw-0001UT-1p
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 13:12:34 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Jul 2020 13:12:31 +0200
Message-Id: <20200724111233.23725-2-l.stach@pengutronix.de>
In-Reply-To: <20200724111233.23725-1-l.stach@pengutronix.de>
References: <20200724111233.23725-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: imx8m: make debug UART selection available on i.MX8MM
To: barebox@lists.infradead.org

i.MX8MM/MN has UARTs in the same place in the MMIO address space as
the i.MX8MQ, so make the lowlevel debug a bit more generic across the
i.MX8M family.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h |  6 +++---
 common/Kconfig                            | 10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 5eed01631c9d..1593dd018e13 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -15,7 +15,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx8m-regs.h>
 #include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
@@ -48,8 +48,8 @@
 #define IMX_DEBUG_SOC MX6
 #elif defined CONFIG_DEBUG_IMX7D_UART
 #define IMX_DEBUG_SOC MX7
-#elif defined CONFIG_DEBUG_IMX8MQ_UART
-#define IMX_DEBUG_SOC MX8MQ
+#elif defined CONFIG_DEBUG_IMX8M_UART
+#define IMX_DEBUG_SOC MX8M
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
 #else
diff --git a/common/Kconfig b/common/Kconfig
index ac282d8955eb..3dff47d4c1f6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1188,12 +1188,12 @@ config DEBUG_IMX7D_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX7D.
 
-config DEBUG_IMX8MQ_UART
-	bool "i.MX8MQ Debug UART"
-	depends on ARCH_IMX8MQ
+config DEBUG_IMX8M_UART
+	bool "i.MX8M Debug UART"
+	depends on ARCH_IMX8M
 	help
 	  Say Y here if you want barebox low-level debugging support
-	  on i.MX8MQ.
+	  on i.MX8M*.
 
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
@@ -1285,7 +1285,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX6SL_UART || \
 						DEBUG_IMX7D_UART || \
-						DEBUG_IMX8MQ_UART || \
+						DEBUG_IMX8M_UART || \
 						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
