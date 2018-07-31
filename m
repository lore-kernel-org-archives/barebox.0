Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084K-Ci
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:06 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS90-0001C5-TV
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:46 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eO-Jk
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:26 +0200
Message-Id: <20180731104442.2451-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 03/19] mci: dw: move defines to headerfile
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 115 +-----------------------------------------
 drivers/mci/dw_mmc.h | 140 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 141 insertions(+), 114 deletions(-)
 create mode 100644 drivers/mci/dw_mmc.h

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 473942cbe0f9..e4c550c3edda 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -30,121 +30,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/errno.h>
+#include "dw_mmc.h"
 
-#define DWMCI_CTRL		0x000
-#define	DWMCI_PWREN		0x004
-#define DWMCI_CLKDIV		0x008
-#define DWMCI_CLKSRC		0x00C
-#define DWMCI_CLKENA		0x010
-#define DWMCI_TMOUT		0x014
-#define DWMCI_CTYPE		0x018
-#define DWMCI_BLKSIZ		0x01C
-#define DWMCI_BYTCNT		0x020
-#define DWMCI_INTMASK		0x024
-#define DWMCI_CMDARG		0x028
-#define DWMCI_CMD		0x02C
-#define DWMCI_RESP0		0x030
-#define DWMCI_RESP1		0x034
-#define DWMCI_RESP2		0x038
-#define DWMCI_RESP3		0x03C
-#define DWMCI_MINTSTS		0x040
-#define DWMCI_RINTSTS		0x044
-#define DWMCI_STATUS		0x048
-#define DWMCI_FIFOTH		0x04C
-#define DWMCI_CDETECT		0x050
-#define DWMCI_WRTPRT		0x054
-#define DWMCI_GPIO		0x058
-#define DWMCI_TCMCNT		0x05C
-#define DWMCI_TBBCNT		0x060
-#define DWMCI_DEBNCE		0x064
-#define DWMCI_USRID		0x068
-#define DWMCI_VERID		0x06C
-#define DWMCI_HCON		0x070
-#define DWMCI_UHS_REG		0x074
-#define DWMCI_BMOD		0x080
-#define DWMCI_PLDMND		0x084
-#define DWMCI_DBADDR		0x088
-#define DWMCI_IDSTS		0x08C
-#define DWMCI_IDINTEN		0x090
-#define DWMCI_DSCADDR		0x094
-#define DWMCI_BUFADDR		0x098
-#define DWMCI_DATA		0x200
-
-/* Interrupt Mask register */
-#define DWMCI_INTMSK_ALL	0xffffffff
-#define DWMCI_INTMSK_RE		BIT(1)
-#define DWMCI_INTMSK_CDONE	BIT(2)
-#define DWMCI_INTMSK_DTO	BIT(3)
-#define DWMCI_INTMSK_TXDR	BIT(4)
-#define DWMCI_INTMSK_RXDR	BIT(5)
-#define DWMCI_INTMSK_RCRC	BIT(6)
-#define DWMCI_INTMSK_DCRC	BIT(7)
-#define DWMCI_INTMSK_RTO	BIT(8)
-#define DWMCI_INTMSK_DRTO	BIT(9)
-#define DWMCI_INTMSK_HTO	BIT(10)
-#define DWMCI_INTMSK_FRUN	BIT(11)
-#define DWMCI_INTMSK_HLE	BIT(12)
-#define DWMCI_INTMSK_SBE	BIT(13)
-#define DWMCI_INTMSK_ACD	BIT(14)
-#define DWMCI_INTMSK_EBE	BIT(15)
-
-/* Raw interrupt Register */
-#define DWMCI_DATA_ERR	(DWMCI_INTMSK_EBE | DWMCI_INTMSK_SBE | DWMCI_INTMSK_HLE |\
-			DWMCI_INTMSK_FRUN | DWMCI_INTMSK_DCRC)
-#define DWMCI_DATA_TOUT	(DWMCI_INTMSK_HTO | DWMCI_INTMSK_DRTO)
-
-/* CTRL register */
-#define DWMCI_CTRL_RESET	BIT(0)
-#define DWMCI_CTRL_FIFO_RESET	BIT(1)
-#define DWMCI_CTRL_DMA_RESET	BIT(2)
-#define DWMCI_DMA_EN		BIT(5)
-#define DWMCI_CTRL_SEND_AS_CCSD	BIT(10)
-#define DWMCI_IDMAC_EN		BIT(25)
-#define DWMCI_RESET_ALL		(DWMCI_CTRL_RESET | DWMCI_CTRL_FIFO_RESET |	\
-				DWMCI_CTRL_DMA_RESET)
-
-/* CMD register */
-#define DWMCI_CMD_RESP_EXP	BIT(6)
-#define DWMCI_CMD_RESP_LENGTH	BIT(7)
-#define DWMCI_CMD_CHECK_CRC	BIT(8)
-#define DWMCI_CMD_DATA_EXP	BIT(9)
-#define DWMCI_CMD_RW		BIT(10)
-#define DWMCI_CMD_SEND_STOP	BIT(12)
-#define DWMCI_CMD_ABORT_STOP	BIT(14)
-#define DWMCI_CMD_PRV_DAT_WAIT	BIT(13)
-#define DWMCI_CMD_UPD_CLK	BIT(21)
-#define DWMCI_CMD_USE_HOLD_REG	BIT(29)
-#define DWMCI_CMD_START		BIT(31)
-
-/* CLKENA register */
-#define DWMCI_CLKEN_ENABLE	BIT(0)
-#define DWMCI_CLKEN_LOW_PWR	BIT(16)
-
-/* Card-type register */
-#define DWMCI_CTYPE_1BIT	0
-#define DWMCI_CTYPE_4BIT	BIT(0)
-#define DWMCI_CTYPE_8BIT	BIT(16)
-
-/* Status Register */
-#define DWMCI_STATUS_FIFO_EMPTY	BIT(2)
-#define DWMCI_STATUS_FIFO_FULL	BIT(3)
-#define DWMCI_STATUS_BUSY	BIT(9)
-
-/* FIFOTH Register */
-#define DWMCI_FIFOTH_MSIZE(x)		((x) << 28)
-#define DWMCI_FIFOTH_RX_WMARK(x)	((x) << 16)
-#define DWMCI_FIFOTH_TX_WMARK(x)	(x)
-#define DWMCI_FIFOTH_FIFO_DEPTH(x)	((((x) >> 16) & 0x3ff) + 1)
-
-#define DWMCI_IDMAC_OWN	BIT(31)
-#define DWMCI_IDMAC_CH	BIT(4)
-#define DWMCI_IDMAC_FS	BIT(3)
-#define DWMCI_IDMAC_LD	BIT(2)
-
-/* Bus Mode Register */
-#define DWMCI_BMOD_IDMAC_RESET	BIT(0)
-#define DWMCI_BMOD_IDMAC_FB	BIT(1)
-#define DWMCI_BMOD_IDMAC_EN	BIT(7)
 
 struct dwmci_host {
 	struct mci_host mci;
diff --git a/drivers/mci/dw_mmc.h b/drivers/mci/dw_mmc.h
new file mode 100644
index 000000000000..23b0f0fe2680
--- /dev/null
+++ b/drivers/mci/dw_mmc.h
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2013 Altera Corporation <www.altera.com>
+ *
+ * (C) Copyright 2012 SAMSUNG Electronics
+ * Jaehoon Chung <jh80.chung@samsung.com>
+ * Rajeshawari Shinde <rajeshwari.s@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef  __DW_MMC_H__
+#define	__DW_MMC_H__
+
+#include <linux/bitops.h>
+
+#define DWMCI_CTRL		0x000
+#define	DWMCI_PWREN		0x004
+#define DWMCI_CLKDIV		0x008
+#define DWMCI_CLKSRC		0x00C
+#define DWMCI_CLKENA		0x010
+#define DWMCI_TMOUT		0x014
+#define DWMCI_CTYPE		0x018
+#define DWMCI_BLKSIZ		0x01C
+#define DWMCI_BYTCNT		0x020
+#define DWMCI_INTMASK		0x024
+#define DWMCI_CMDARG		0x028
+#define DWMCI_CMD		0x02C
+#define DWMCI_RESP0		0x030
+#define DWMCI_RESP1		0x034
+#define DWMCI_RESP2		0x038
+#define DWMCI_RESP3		0x03C
+#define DWMCI_MINTSTS		0x040
+#define DWMCI_RINTSTS		0x044
+#define DWMCI_STATUS		0x048
+#define DWMCI_FIFOTH		0x04C
+#define DWMCI_CDETECT		0x050
+#define DWMCI_WRTPRT		0x054
+#define DWMCI_GPIO		0x058
+#define DWMCI_TCMCNT		0x05C
+#define DWMCI_TBBCNT		0x060
+#define DWMCI_DEBNCE		0x064
+#define DWMCI_USRID		0x068
+#define DWMCI_VERID		0x06C
+#define DWMCI_HCON		0x070
+#define DWMCI_UHS_REG		0x074
+#define DWMCI_BMOD		0x080
+#define DWMCI_PLDMND		0x084
+#define DWMCI_DBADDR		0x088
+#define DWMCI_IDSTS		0x08C
+#define DWMCI_IDINTEN		0x090
+#define DWMCI_DSCADDR		0x094
+#define DWMCI_BUFADDR		0x098
+#define DWMCI_DATA		0x200
+
+/* Interrupt Mask register */
+#define DWMCI_INTMSK_ALL	0xffffffff
+#define DWMCI_INTMSK_RE		BIT(1)
+#define DWMCI_INTMSK_CDONE	BIT(2)
+#define DWMCI_INTMSK_DTO	BIT(3)
+#define DWMCI_INTMSK_TXDR	BIT(4)
+#define DWMCI_INTMSK_RXDR	BIT(5)
+#define DWMCI_INTMSK_RCRC	BIT(6)
+#define DWMCI_INTMSK_DCRC	BIT(7)
+#define DWMCI_INTMSK_RTO	BIT(8)
+#define DWMCI_INTMSK_DRTO	BIT(9)
+#define DWMCI_INTMSK_HTO	BIT(10)
+#define DWMCI_INTMSK_FRUN	BIT(11)
+#define DWMCI_INTMSK_HLE	BIT(12)
+#define DWMCI_INTMSK_SBE	BIT(13)
+#define DWMCI_INTMSK_ACD	BIT(14)
+#define DWMCI_INTMSK_EBE	BIT(15)
+
+/* Raw interrupt Register */
+#define DWMCI_DATA_ERR	(DWMCI_INTMSK_EBE | DWMCI_INTMSK_SBE | DWMCI_INTMSK_HLE |\
+			DWMCI_INTMSK_FRUN | DWMCI_INTMSK_DCRC)
+#define DWMCI_DATA_TOUT	(DWMCI_INTMSK_HTO | DWMCI_INTMSK_DRTO)
+
+/* CTRL register */
+#define DWMCI_CTRL_RESET	BIT(0)
+#define DWMCI_CTRL_FIFO_RESET	BIT(1)
+#define DWMCI_CTRL_DMA_RESET	BIT(2)
+#define DWMCI_DMA_EN		BIT(5)
+#define DWMCI_CTRL_SEND_AS_CCSD	BIT(10)
+#define DWMCI_IDMAC_EN		BIT(25)
+#define DWMCI_RESET_ALL		(DWMCI_CTRL_RESET | DWMCI_CTRL_FIFO_RESET |	\
+				DWMCI_CTRL_DMA_RESET)
+
+/* CMD register */
+#define DWMCI_CMD_RESP_EXP	BIT(6)
+#define DWMCI_CMD_RESP_LENGTH	BIT(7)
+#define DWMCI_CMD_CHECK_CRC	BIT(8)
+#define DWMCI_CMD_DATA_EXP	BIT(9)
+#define DWMCI_CMD_RW		BIT(10)
+#define DWMCI_CMD_SEND_STOP	BIT(12)
+#define DWMCI_CMD_ABORT_STOP	BIT(14)
+#define DWMCI_CMD_PRV_DAT_WAIT	BIT(13)
+#define DWMCI_CMD_UPD_CLK	BIT(21)
+#define DWMCI_CMD_USE_HOLD_REG	BIT(29)
+#define DWMCI_CMD_START		BIT(31)
+
+/* CLKENA register */
+#define DWMCI_CLKEN_ENABLE	BIT(0)
+#define DWMCI_CLKEN_LOW_PWR	BIT(16)
+
+/* Card-type register */
+#define DWMCI_CTYPE_1BIT	0
+#define DWMCI_CTYPE_4BIT	BIT(0)
+#define DWMCI_CTYPE_8BIT	BIT(16)
+
+/* Status Register */
+#define DWMCI_STATUS_FIFO_EMPTY	BIT(2)
+#define DWMCI_STATUS_FIFO_FULL	BIT(3)
+#define DWMCI_STATUS_BUSY	BIT(9)
+
+/* FIFOTH Register */
+#define DWMCI_FIFOTH_MSIZE(x)		((x) << 28)
+#define DWMCI_FIFOTH_RX_WMARK(x)	((x) << 16)
+#define DWMCI_FIFOTH_TX_WMARK(x)	(x)
+#define DWMCI_FIFOTH_FIFO_DEPTH(x)	((((x) >> 16) & 0x3ff) + 1)
+
+#define DWMCI_IDMAC_OWN	BIT(31)
+#define DWMCI_IDMAC_CH	BIT(4)
+#define DWMCI_IDMAC_FS	BIT(3)
+#define DWMCI_IDMAC_LD	BIT(2)
+
+/* Bus Mode Register */
+#define DWMCI_BMOD_IDMAC_RESET	BIT(0)
+#define DWMCI_BMOD_IDMAC_FB	BIT(1)
+#define DWMCI_BMOD_IDMAC_EN	BIT(7)
+
+#endif
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
