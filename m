Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2PoT-0006qJ-QT
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 17:26:41 +0000
Received: from alto.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:9d4])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1U2PoR-0004Lz-SX
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 18:26:35 +0100
Received: from mgr by alto.hi.pengutronix.de with local (Exim 4.75)
 (envelope-from <mgr@pengutronix.de>) id 1U2PoR-0008KE-No
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 18:26:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 Feb 2013 18:26:19 +0100
Message-Id: <1359998781-31956-2-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1359998781-31956-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1359998781-31956-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/3] mxs: ssp move to common register layout
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/imx23-regs.h |   16 ++++
 arch/arm/mach-mxs/include/mach/imx28-regs.h |   21 +++++
 arch/arm/mach-mxs/include/mach/ssp.h        |   77 +++++++++++++++++
 drivers/mci/mxs.c                           |  118 +--------------------------
 4 files changed, 115 insertions(+), 117 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/ssp.h

diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
index 7fb664b..9e8e86c 100644
--- a/arch/arm/mach-mxs/include/mach/imx23-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx23-regs.h
@@ -36,4 +36,20 @@
 #define IMX_DIGCTL_BASE		0x8001c000
 #define IMX_USB_BASE		0x80080000
 
+#define HW_SSP_CTRL0		0x000
+#define HW_SSP_CMD0		0x010
+#define HW_SSP_CMD1		0x020
+#define HW_SSP_COMPREF		0x030
+#define HW_SSP_COMPMASK		0x040
+#define HW_SSP_TIMING		0x050
+#define HW_SSP_CTRL1		0x060
+#define HW_SSP_DATA		0x070
+#define HW_SSP_SDRESP0		0x080
+#define HW_SSP_SDRESP1		0x090
+#define HW_SSP_SDRESP2		0x0A0
+#define HW_SSP_SDRESP3		0x0B0
+#define HW_SSP_STATUS		0x0C0
+#define HW_SSP_DEBUG		0x100
+#define HW_SSP_VERSION		0x110
+
 #endif /* __ASM_ARCH_MX23_REGS_H */
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index fa8edd7..bbe1848 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -45,4 +45,25 @@
 #define IMX_FEC0_BASE		0x800F0000
 #define IMX_FEC1_BASE		0x800F4000
 
+#define HW_SSP_CTRL0		0x000
+#define HW_SSP_CMD0		0x010
+#define HW_SSP_CMD1		0x020
+#define HW_SSP_XFER_COUNT	0x030
+#define HW_SSP_BLOCK_SIZE	0x040
+#define HW_SSP_COMPREF		0x050
+#define HW_SSP_COMPMASK		0x060
+#define HW_SSP_TIMING		0x070
+#define HW_SSP_CTRL1		0x080
+#define HW_SSP_DATA		0x090
+#define HW_SSP_SDRESP0		0x0A0
+#define HW_SSP_SDRESP1		0x0B0
+#define HW_SSP_SDRESP2		0x0C0
+#define HW_SSP_SDRESP3		0x0D0
+#define HW_SSP_DDR_CTRL		0x0E0
+#define HW_SSP_DLL_CTRL		0x0F0
+#define HW_SSP_STATUS		0x100
+#define HW_SSP_DLL_STS		0x110
+#define HW_SSP_DEBUG		0x120
+#define HW_SSP_VERSION		0x130
+
 #endif /* __ASM_ARCH_MX28_REGS_H */
diff --git a/arch/arm/mach-mxs/include/mach/ssp.h b/arch/arm/mach-mxs/include/mach/ssp.h
new file mode 100644
index 0000000..f91770f
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/ssp.h
@@ -0,0 +1,77 @@
+/*
+ * Freescale MXS SSP
+ *
+ * Copyright (C) 2013 Michael Grzeschik <mgr@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ */
+
+#ifndef __SSP_H__
+#define __SSP_H__
+
+#define SSP_CTRL0_SFTRST		(1 << 31)
+#define SSP_CTRL0_CLKGATE		(1 << 30)
+#define SSP_CTRL0_RUN			(1 << 29)
+#define SSP_CTRL0_LOCK_CS		(1 << 27)
+#define SSP_CTRL0_READ			(1 << 25)
+#define SSP_CTRL0_IGNORE_CRC		(1 << 26)
+#define SSP_CTRL0_DATA_XFER		(1 << 24)
+#define SSP_CTRL0_BUS_WIDTH(x)		(((x) & 0x3) << 22)
+#define SSP_CTRL0_WAIT_FOR_IRQ		(1 << 21)
+#define SSP_CTRL0_WAIT_FOR_CMD		(1 << 20)
+#define SSP_CTRL0_LONG_RESP		(1 << 19)
+#define SSP_CTRL0_GET_RESP		(1 << 17)
+#define SSP_CTRL0_ENABLE		(1 << 16)
+
+#define SSP_CMD0_SLOW_CLK		(1 << 22)
+#define SSP_CMD0_CONT_CLK		(1 << 21)
+#define SSP_CMD0_APPEND_8CYC		(1 << 20)
+#ifdef CONFIG_ARCH_IMX23
+# define SSP_CTRL0_XFER_COUNT(x)	((x) & 0xffff)
+# define SSP_CMD0_BLOCK_SIZE(x)		(((x) & 0xf) << 16)
+# define SSP_CMD0_BLOCK_COUNT(x)	(((x) & 0xff) << 8)
+#endif
+#define SSP_CMD0_CMD(x)			((x) & 0xff)
+
+#ifdef CONFIG_ARCH_IMX28
+# define SSP_BLOCK_SIZE(x)		((x) & 0xf)
+# define SSP_BLOCK_COUNT(x)		(((x) & 0xffffff) << 4)
+#endif
+
+/* bit definition for register HW_SSP_TIMING */
+#define SSP_TIMING_TIMEOUT_MASK	(0xffff0000)
+#define SSP_TIMING_TIMEOUT(x)		((x) << 16)
+#define SSP_TIMING_CLOCK_DIVIDE(x)	(((x) & 0xff) << 8)
+#define SSP_TIMING_CLOCK_RATE(x)	((x) & 0xff)
+
+/* bit definition for register HW_SSP_CTRL1 */
+#define SSP_CTRL1_POLARITY		(1 << 9)
+#define SSP_CTRL1_PHASE			(1 << 10)
+#define SSP_CTRL1_WORD_LENGTH(x)	(((x) & 0xf) << 4)
+#define SSP_CTRL1_SSP_MODE(x)		((x) & 0xf)
+
+/* bit definition for register HW_SSP_STATUS */
+# define SSP_STATUS_PRESENT		(1 << 31)
+# define SSP_STATUS_SD_PRESENT		(1 << 29)
+# define SSP_STATUS_CARD_DETECT		(1 << 28)
+# define SSP_STATUS_RESP_CRC_ERR	(1 << 16)
+# define SSP_STATUS_RESP_ERR		(1 << 15)
+# define SSP_STATUS_RESP_TIMEOUT	(1 << 14)
+# define SSP_STATUS_DATA_CRC_ERR	(1 << 13)
+# define SSP_STATUS_TIMEOUT		(1 << 12)
+# define SSP_STATUS_FIFO_OVRFLW		(1 << 9)
+# define SSP_STATUS_FIFO_FULL		(1 << 8)
+# define SSP_STATUS_FIFO_EMPTY		(1 << 5)
+# define SSP_STATUS_FIFO_UNDRFLW	(1 << 4)
+# define SSP_STATUS_CMD_BUSY		(1 << 3)
+# define SSP_STATUS_DATA_BUSY		(1 << 2)
+# define SSP_STATUS_BUSY		(1 << 0)
+# define SSP_STATUS_ERROR		(SSP_STATUS_FIFO_OVRFLW | SSP_STATUS_FIFO_UNDRFLW | \
+	SSP_STATUS_RESP_CRC_ERR | SSP_STATUS_RESP_ERR | \
+	SSP_STATUS_RESP_TIMEOUT | SSP_STATUS_DATA_CRC_ERR | SSP_STATUS_TIMEOUT)
+
+#endif	/* __SSP_H__ */
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index ed644d1..5bdcd1b 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -40,127 +40,11 @@
 #include <mach/imx-regs.h>
 #include <mach/mci.h>
 #include <mach/clock.h>
+#include <mach/ssp.h>
 
 #define CLOCKRATE_MIN (1 * 1000 * 1000)
 #define CLOCKRATE_MAX (480 * 1000 * 1000)
 
-#define HW_SSP_CTRL0 0x000
-# define SSP_CTRL0_SFTRST (1 << 31)
-# define SSP_CTRL0_CLKGATE (1 << 30)
-# define SSP_CTRL0_RUN (1 << 29)
-# define SSP_CTRL0_LOCK_CS (1 << 27)
-# define SSP_CTRL0_READ (1 << 25)
-# define SSP_CTRL0_IGNORE_CRC (1 << 26)
-# define SSP_CTRL0_DATA_XFER (1 << 24)
-# define SSP_CTRL0_BUS_WIDTH(x) (((x) & 0x3) << 22)
-# define SSP_CTRL0_WAIT_FOR_IRQ (1 << 21)
-# define SSP_CTRL0_LONG_RESP (1 << 19)
-# define SSP_CTRL0_GET_RESP (1 << 17)
-# define SSP_CTRL0_ENABLE (1 << 16)
-#ifdef CONFIG_ARCH_IMX23
-# define SSP_CTRL0_XFER_COUNT(x) ((x) & 0xffff)
-#endif
-
-#define HW_SSP_CMD0 0x010
-# define SSP_CMD0_SLOW_CLK (1 << 22)
-# define SSP_CMD0_CONT_CLK (1 << 21)
-# define SSP_CMD0_APPEND_8CYC (1 << 20)
-#ifdef CONFIG_ARCH_IMX23
-# define SSP_CMD0_BLOCK_SIZE(x) (((x) & 0xf) << 16)
-# define SSP_CMD0_BLOCK_COUNT(x) (((x) & 0xff) << 8)
-#endif
-# define SSP_CMD0_CMD(x) ((x) & 0xff)
-
-#define HW_SSP_CMD1 0x020
-
-#ifdef CONFIG_ARCH_IMX23
-# define HW_SSP_COMPREF 0x030
-# define HW_SSP_COMPMASK 0x040
-# define HW_SSP_TIMING 0x050
-# define HW_SSP_CTRL1 0x060
-# define HW_SSP_DATA 0x070
-#endif
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_XFER_COUNT 0x30
-# define HW_SSP_BLOCK_SIZE 0x40
-#  define SSP_BLOCK_SIZE(x) ((x) & 0xf)
-#  define SSP_BLOCK_COUNT(x) (((x) & 0xffffff) << 4)
-# define HW_SSP_COMPREF 0x050
-# define HW_SSP_COMPMASK 0x060
-# define HW_SSP_TIMING 0x070
-# define HW_SSP_CTRL1 0x080
-# define HW_SSP_DATA 0x090
-#endif
-/* bit definition for register HW_SSP_TIMING */
-# define SSP_TIMING_TIMEOUT_MASK (0xffff0000)
-# define SSP_TIMING_TIMEOUT(x) ((x) << 16)
-# define SSP_TIMING_CLOCK_DIVIDE(x) (((x) & 0xff) << 8)
-# define SSP_TIMING_CLOCK_RATE(x) ((x) & 0xff)
-
-/* bit definition for register HW_SSP_CTRL1 */
-# define SSP_CTRL1_POLARITY (1 << 9)
-# define SSP_CTRL1_WORD_LENGTH(x) (((x) & 0xf) << 4)
-# define SSP_CTRL1_SSP_MODE(x) ((x) & 0xf)
-
-#ifdef CONFIG_ARCH_IMX23
-# define HW_SSP_SDRESP0 0x080
-# define HW_SSP_SDRESP1 0x090
-# define HW_SSP_SDRESP2 0x0A0
-# define HW_SSP_SDRESP3 0x0B0
-#endif
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_SDRESP0 0x0A0
-# define HW_SSP_SDRESP1 0x0B0
-# define HW_SSP_SDRESP2 0x0C0
-# define HW_SSP_SDRESP3 0x0D0
-#endif
-
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_DDR_CTRL 0x0E0
-# define HW_SSP_DLL_CTRL 0x0F0
-#endif
-
-#ifdef CONFIG_ARCH_IMX23
-# define HW_SSP_STATUS 0x0C0
-#endif
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_STATUS 0x100
-#endif
-
-/* bit definition for register HW_SSP_STATUS */
-# define SSP_STATUS_PRESENT (1 << 31)
-# define SSP_STATUS_SD_PRESENT (1 << 29)
-# define SSP_STATUS_CARD_DETECT (1 << 28)
-# define SSP_STATUS_RESP_CRC_ERR (1 << 16)
-# define SSP_STATUS_RESP_ERR (1 << 15)
-# define SSP_STATUS_RESP_TIMEOUT (1 << 14)
-# define SSP_STATUS_DATA_CRC_ERR (1 << 13)
-# define SSP_STATUS_TIMEOUT (1 << 12)
-# define SSP_STATUS_FIFO_OVRFLW (1 << 9)
-# define SSP_STATUS_FIFO_FULL (1 << 8)
-# define SSP_STATUS_FIFO_EMPTY (1 << 5)
-# define SSP_STATUS_FIFO_UNDRFLW (1 << 4)
-# define SSP_STATUS_CMD_BUSY (1 << 3)
-# define SSP_STATUS_DATA_BUSY (1 << 2)
-# define SSP_STATUS_BUSY (1 << 0)
-# define SSP_STATUS_ERROR (SSP_STATUS_FIFO_OVRFLW | SSP_STATUS_FIFO_UNDRFLW | \
-	SSP_STATUS_RESP_CRC_ERR | SSP_STATUS_RESP_ERR | \
-	SSP_STATUS_RESP_TIMEOUT | SSP_STATUS_DATA_CRC_ERR | SSP_STATUS_TIMEOUT)
-
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_DLL_STS 0x110
-#endif
-
-#ifdef CONFIG_ARCH_IMX23
-# define HW_SSP_DEBUG 0x100
-# define HW_SSP_VERSION 0x110
-#endif
-
-#ifdef CONFIG_ARCH_IMX28
-# define HW_SSP_DEBUG 0x120
-# define HW_SSP_VERSION 0x130
-#endif
-
 struct mxs_mci_host {
 	struct mci_host	host;
 	void __iomem	*regs;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
