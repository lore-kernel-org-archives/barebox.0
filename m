Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Qoe-00015b-Lg
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 09:43:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1k5Qoc-0006AM-D2
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 11:43:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Aug 2020 11:43:28 +0200
Message-Id: <20200811094330.4754-2-l.stach@pengutronix.de>
In-Reply-To: <20200811094330.4754-1-l.stach@pengutronix.de>
References: <20200811094330.4754-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 2/4] ARM: imx8m: make debug UART selection available on
 i.MX8MM/MP
To: barebox@lists.infradead.org

i.MX8MM/MN/MP has UARTs in the same place in the MMIO address space as
the i.MX8MQ, so make the lowlevel debug a bit more generic across the
i.MX8M family.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2:
- rebase on top of i.MX8MP support
- remove unused and redundant UART base address defines in SoC specific
  headers, the shared define in the familiy header is fine
---
 arch/arm/mach-imx/include/mach/debug_ll.h    |  9 +++------
 arch/arm/mach-imx/include/mach/imx8mm-regs.h |  4 ----
 arch/arm/mach-imx/include/mach/imx8mp-regs.h |  4 ----
 arch/arm/mach-imx/include/mach/imx8mq-regs.h |  4 ----
 common/Kconfig                               | 18 +++++-------------
 5 files changed, 8 insertions(+), 31 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index f2114d50e91e..1593dd018e13 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -15,8 +15,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx8m-regs.h>
 #include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
@@ -49,10 +48,8 @@
 #define IMX_DEBUG_SOC MX6
 #elif defined CONFIG_DEBUG_IMX7D_UART
 #define IMX_DEBUG_SOC MX7
-#elif defined CONFIG_DEBUG_IMX8MP_UART
-#define IMX_DEBUG_SOC MX8MP
-#elif defined CONFIG_DEBUG_IMX8MQ_UART
-#define IMX_DEBUG_SOC MX8MQ
+#elif defined CONFIG_DEBUG_IMX8M_UART
+#define IMX_DEBUG_SOC MX8M
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
 #else
diff --git a/arch/arm/mach-imx/include/mach/imx8mm-regs.h b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
index 1325c78dbc00..e10ca42d2dd0 100644
--- a/arch/arm/mach-imx/include/mach/imx8mm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
@@ -23,14 +23,10 @@
 #define MX8MM_SYSCNT_RD_BASE_ADDR	0x306a0000
 #define MX8MM_SYSCNT_CMP_BASE_ADDR	0x306b0000
 #define MX8MM_SYSCNT_CTRL_BASE_ADDR	0x306c0000
-#define MX8MM_UART1_BASE_ADDR		0x30860000
-#define MX8MM_UART3_BASE_ADDR		0x30880000
-#define MX8MM_UART2_BASE_ADDR		0x30890000
 #define MX8MM_I2C1_BASE_ADDR		0x30a20000
 #define MX8MM_I2C2_BASE_ADDR		0x30a30000
 #define MX8MM_I2C3_BASE_ADDR		0x30a40000
 #define MX8MM_I2C4_BASE_ADDR		0x30a50000
-#define MX8MM_UART4_BASE_ADDR		0x30a60000
 #define MX8MM_USDHC1_BASE_ADDR		0x30b40000
 #define MX8MM_USDHC2_BASE_ADDR		0x30b50000
 #define MX8MM_USDHC3_BASE_ADDR		0x30b60000
diff --git a/arch/arm/mach-imx/include/mach/imx8mp-regs.h b/arch/arm/mach-imx/include/mach/imx8mp-regs.h
index 29e8a4570656..ad53abbc9d11 100644
--- a/arch/arm/mach-imx/include/mach/imx8mp-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mp-regs.h
@@ -23,14 +23,10 @@
 #define MX8MP_SYSCNT_RD_BASE_ADDR	0x306a0000
 #define MX8MP_SYSCNT_CMP_BASE_ADDR	0x306b0000
 #define MX8MP_SYSCNT_CTRL_BASE_ADDR	0x306c0000
-#define MX8MP_UART1_BASE_ADDR		0x30860000
-#define MX8MP_UART3_BASE_ADDR		0x30880000
-#define MX8MP_UART2_BASE_ADDR		0x30890000
 #define MX8MP_I2C1_BASE_ADDR		0x30a20000
 #define MX8MP_I2C2_BASE_ADDR		0x30a30000
 #define MX8MP_I2C3_BASE_ADDR		0x30a40000
 #define MX8MP_I2C4_BASE_ADDR		0x30a50000
-#define MX8MP_UART4_BASE_ADDR		0x30a60000
 #define MX8MP_USDHC1_BASE_ADDR		0x30b40000
 #define MX8MP_USDHC2_BASE_ADDR		0x30b50000
 #define MX8MP_USDHC3_BASE_ADDR		0x30b60000
diff --git a/arch/arm/mach-imx/include/mach/imx8mq-regs.h b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
index 2f6488af33c5..50d02ba6a288 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
@@ -59,9 +59,6 @@
 #define MX8MQ_ECSPI1_BASE_ADDR		0x30820000
 #define MX8MQ_ECSPI2_BASE_ADDR		0x30830000
 #define MX8MQ_ECSPI3_BASE_ADDR		0x30840000
-#define MX8MQ_UART1_BASE_ADDR		0x30860000
-#define MX8MQ_UART3_BASE_ADDR		0x30880000
-#define MX8MQ_UART2_BASE_ADDR		0x30890000
 #define MX8MQ_SPDIF2_BASE_ADDR		0x308A0000
 #define MX8MQ_SAI2_BASE_ADDR		0x308B0000
 #define MX8MQ_SAI3_BASE_ADDR		0x308C0000
@@ -74,7 +71,6 @@
 #define MX8MQ_I2C2_BASE_ADDR		0x30A30000
 #define MX8MQ_I2C3_BASE_ADDR		0x30A40000
 #define MX8MQ_I2C4_BASE_ADDR		0x30A50000
-#define MX8MQ_UART4_BASE_ADDR		0x30A60000
 #define MX8MQ_MIPI_CSI_BASE_ADDR	0x30A70000
 #define MX8MQ_MIPI_CSI_PHY1_BASE_ADDR	0x30A80000
 #define MX8MQ_CSI1_BASE_ADDR		0x30A90000
diff --git a/common/Kconfig b/common/Kconfig
index 658437f01c5e..b350f5c355fa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1197,19 +1197,12 @@ config DEBUG_IMX7D_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX7D.
 
-config DEBUG_IMX8MP_UART
-	bool "i.MX8MP Debug UART"
-	depends on ARCH_IMX8MP
+config DEBUG_IMX8M_UART
+	bool "i.MX8M Debug UART"
+	depends on ARCH_IMX8M
 	help
 	  Say Y here if you want barebox low-level debugging support
-	  on i.MX8MP.
-
-config DEBUG_IMX8MQ_UART
-	bool "i.MX8MQ Debug UART"
-	depends on ARCH_IMX8MQ
-	help
-	  Say Y here if you want barebox low-level debugging support
-	  on i.MX8MQ.
+	  on i.MX8M*.
 
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
@@ -1301,8 +1294,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX6SL_UART || \
 						DEBUG_IMX7D_UART || \
-						DEBUG_IMX8MP_UART || \
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
