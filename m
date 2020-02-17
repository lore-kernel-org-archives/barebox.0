Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007qX-9l
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:43 +0100
Message-Id: <20200217124623.14520-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/42] ARM: i.MX8M: Add base addresses common to i.MX8M
To: Barebox List <barebox@lists.infradead.org>

This adds defines for the base addresses common to all currently
existing i.MX8M SoCs. Only the base addresses that are known to be
needed for the early SoC code are added. With this we can reuse the
early code for all variants without guessing that the base addresses
are the same for the other variants.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx8m-regs.h  | 37 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx8mq-regs.h |  2 ++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8m-regs.h

diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/arch/arm/mach-imx/include/mach/imx8m-regs.h
new file mode 100644
index 0000000000..e5f466c291
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8m-regs.h
@@ -0,0 +1,37 @@
+#ifndef __MACH_IMX8M_REGS_H
+#define __MACH_IMX8M_REGS_H
+
+#define MX8M_GPIO1_BASE_ADDR		0X30200000
+#define MX8M_GPIO2_BASE_ADDR		0x30210000
+#define MX8M_GPIO3_BASE_ADDR		0x30220000
+#define MX8M_GPIO4_BASE_ADDR		0x30230000
+#define MX8M_GPIO5_BASE_ADDR		0x30240000
+#define MX8M_WDOG1_BASE_ADDR		0x30280000
+#define MX8M_WDOG2_BASE_ADDR		0x30290000
+#define MX8M_WDOG3_BASE_ADDR		0x302A0000
+#define MX8M_IOMUXC_BASE_ADDR		0x30330000
+#define MX8M_IOMUXC_GPR_BASE_ADDR	0x30340000
+#define MX8M_OCOTP_BASE_ADDR		0x30350000
+#define MX8M_ANATOP_BASE_ADDR		0x30360000
+#define MX8M_CCM_BASE_ADDR		0x30380000
+#define MX8M_SRC_BASE_ADDR		0x30390000
+#define MX8M_SRC_DDRC_RCR_ADDR		0x30391000
+#define MX8M_GPC_BASE_ADDR		0x303A0000
+#define MX8M_SYSCNT_CTRL_BASE_ADDR	0x306C0000
+#define MX8M_UART1_BASE_ADDR		0x30860000
+#define MX8M_UART3_BASE_ADDR		0x30880000
+#define MX8M_UART2_BASE_ADDR		0x30890000
+#define MX8M_I2C1_BASE_ADDR		0x30A20000
+#define MX8M_I2C2_BASE_ADDR		0x30A30000
+#define MX8M_I2C3_BASE_ADDR		0x30A40000
+#define MX8M_I2C4_BASE_ADDR		0x30A50000
+#define MX8M_UART4_BASE_ADDR		0x30A60000
+#define MX8M_USDHC1_BASE_ADDR		0x30B40000
+#define MX8M_USDHC2_BASE_ADDR		0x30B50000
+#define MX8M_DDRC_PHY_BASE_ADDR		0x3c000000
+#define MX8M_DDRC_DDR_SS_GPR0		(MX8M_DDRC_PHY_BASE_ADDR + 0x01000000)
+#define MX8M_DDRC_IPS_BASE_ADDR(X)	(0x3d400000 + ((X) * 0x2000000))
+#define MX8M_DDRC_CTL_BASE_ADDR		MX8M_DDRC_IPS_BASE_ADDR(0)
+#define MX8M_DDR_CSD1_BASE_ADDR		0x40000000
+
+#endif /* __MACH_IMX8M_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx8mq-regs.h b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
index 51936f526e..2f6488af33 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq-regs.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_IMX8MQ_REGS_H
 #define __MACH_IMX8MQ_REGS_H
 
+#include <mach/imx8m-regs.h>
+
 #define MX8MQ_M4_BOOTROM_BASE_ADDR	0x007E0000
 
 #define MX8MQ_SAI1_BASE_ADDR		0x30010000
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
