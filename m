Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007r9-St
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:47 +0100
Message-Id: <20200217124623.14520-7-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/42] ARM: i.MX8M: Add imx8mm-regs.h
To: Barebox List <barebox@lists.infradead.org>

Add various base addresses for the i.MX8MM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx8mm-regs.h | 46 ++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mm-regs.h

diff --git a/arch/arm/mach-imx/include/mach/imx8mm-regs.h b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
new file mode 100644
index 0000000000..1325c78dbc
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8mm-regs.h
@@ -0,0 +1,46 @@
+#ifndef __MACH_IMX8MM_REGS_H
+#define __MACH_IMX8MM_REGS_H
+
+#include <mach/imx8m-regs.h>
+
+#define MX8MM_M4_BOOTROM_BASE_ADDR	0x007e0000
+
+#define MX8MM_GPIO1_BASE_ADDR		0x30200000
+#define MX8MM_GPIO2_BASE_ADDR		0x30210000
+#define MX8MM_GPIO3_BASE_ADDR		0x30220000
+#define MX8MM_GPIO4_BASE_ADDR		0x30230000
+#define MX8MM_GPIO5_BASE_ADDR		0x30240000
+#define MX8MM_WDOG1_BASE_ADDR		0x30280000
+#define MX8MM_WDOG2_BASE_ADDR		0x30290000
+#define MX8MM_WDOG3_BASE_ADDR		0x302a0000
+#define MX8MM_IOMUXC_BASE_ADDR		0x30330000
+#define MX8MM_IOMUXC_GPR_BASE_ADDR	0x30340000
+#define MX8MM_OCOTP_BASE_ADDR		0x30350000
+#define MX8MM_ANATOP_BASE_ADDR		0x30360000
+#define MX8MM_CCM_BASE_ADDR		0x30380000
+#define MX8MM_SRC_BASE_ADDR		0x30390000
+#define MX8MM_GPC_BASE_ADDR		0x303a0000
+#define MX8MM_SYSCNT_RD_BASE_ADDR	0x306a0000
+#define MX8MM_SYSCNT_CMP_BASE_ADDR	0x306b0000
+#define MX8MM_SYSCNT_CTRL_BASE_ADDR	0x306c0000
+#define MX8MM_UART1_BASE_ADDR		0x30860000
+#define MX8MM_UART3_BASE_ADDR		0x30880000
+#define MX8MM_UART2_BASE_ADDR		0x30890000
+#define MX8MM_I2C1_BASE_ADDR		0x30a20000
+#define MX8MM_I2C2_BASE_ADDR		0x30a30000
+#define MX8MM_I2C3_BASE_ADDR		0x30a40000
+#define MX8MM_I2C4_BASE_ADDR		0x30a50000
+#define MX8MM_UART4_BASE_ADDR		0x30a60000
+#define MX8MM_USDHC1_BASE_ADDR		0x30b40000
+#define MX8MM_USDHC2_BASE_ADDR		0x30b50000
+#define MX8MM_USDHC3_BASE_ADDR		0x30b60000
+#define MX8MM_USB1_BASE_ADDR		0x32e40000
+#define MX8MM_USB2_BASE_ADDR		0x32e50000
+#define MX8MM_TZASC_BASE_ADDR		0x32f80000
+#define MX8MM_SRC_IPS_BASE_ADDR		0x30390000
+#define MX8MM_SRC_DDRC_RCR_ADDR		0x30391000
+#define MX8MM_SRC_DDRC2_RCR_ADDR	0x30391004
+#define MX8MM_DDRC_DDR_SS_GPR0		0x3d000000
+#define MX8MM_DDR_CSD1_BASE_ADDR	0x40000000
+
+#endif /* __MACH_IMX8MM_REGS_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
