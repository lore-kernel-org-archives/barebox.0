Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084E-9O
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:04 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS90-0001C4-R1
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:46 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eL-I1
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:25 +0200
Message-Id: <20180731104442.2451-3-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 02/19] mci: dw_mmc: convert to BIT() macro
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 99 ++++++++++++++++++++++++++--------------------------
 1 file changed, 50 insertions(+), 49 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 0dd4c1f44154..473942cbe0f9 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -26,6 +26,7 @@
 #include <mci.h>
 #include <io.h>
 #include <platform_data/dw_mmc.h>
+#include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/errno.h>
@@ -70,22 +71,22 @@
 #define DWMCI_DATA		0x200
 
 /* Interrupt Mask register */
-#define DWMCI_INTMSK_ALL		0xffffffff
-#define DWMCI_INTMSK_RE			(1 << 1)
-#define DWMCI_INTMSK_CDONE		(1 << 2)
-#define DWMCI_INTMSK_DTO		(1 << 3)
-#define DWMCI_INTMSK_TXDR		(1 << 4)
-#define DWMCI_INTMSK_RXDR		(1 << 5)
-#define DWMCI_INTMSK_RCRC		(1 << 6)
-#define DWMCI_INTMSK_DCRC		(1 << 7)
-#define DWMCI_INTMSK_RTO		(1 << 8)
-#define DWMCI_INTMSK_DRTO		(1 << 9)
-#define DWMCI_INTMSK_HTO		(1 << 10)
-#define DWMCI_INTMSK_FRUN		(1 << 11)
-#define DWMCI_INTMSK_HLE		(1 << 12)
-#define DWMCI_INTMSK_SBE		(1 << 13)
-#define DWMCI_INTMSK_ACD		(1 << 14)
-#define DWMCI_INTMSK_EBE		(1 << 15)
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
 
 /* Raw interrupt Register */
 #define DWMCI_DATA_ERR	(DWMCI_INTMSK_EBE | DWMCI_INTMSK_SBE | DWMCI_INTMSK_HLE |\
@@ -93,41 +94,41 @@
 #define DWMCI_DATA_TOUT	(DWMCI_INTMSK_HTO | DWMCI_INTMSK_DRTO)
 
 /* CTRL register */
-#define DWMCI_CTRL_RESET		(1 << 0)
-#define DWMCI_CTRL_FIFO_RESET		(1 << 1)
-#define DWMCI_CTRL_DMA_RESET		(1 << 2)
-#define DWMCI_DMA_EN			(1 << 5)
-#define DWMCI_CTRL_SEND_AS_CCSD		(1 << 10)
-#define DWMCI_IDMAC_EN			(1 << 25)
-#define DWMCI_RESET_ALL			(DWMCI_CTRL_RESET | DWMCI_CTRL_FIFO_RESET |\
+#define DWMCI_CTRL_RESET	BIT(0)
+#define DWMCI_CTRL_FIFO_RESET	BIT(1)
+#define DWMCI_CTRL_DMA_RESET	BIT(2)
+#define DWMCI_DMA_EN		BIT(5)
+#define DWMCI_CTRL_SEND_AS_CCSD	BIT(10)
+#define DWMCI_IDMAC_EN		BIT(25)
+#define DWMCI_RESET_ALL		(DWMCI_CTRL_RESET | DWMCI_CTRL_FIFO_RESET |	\
 				DWMCI_CTRL_DMA_RESET)
 
 /* CMD register */
-#define DWMCI_CMD_RESP_EXP		(1 << 6)
-#define DWMCI_CMD_RESP_LENGTH		(1 << 7)
-#define DWMCI_CMD_CHECK_CRC		(1 << 8)
-#define DWMCI_CMD_DATA_EXP		(1 << 9)
-#define DWMCI_CMD_RW			(1 << 10)
-#define DWMCI_CMD_SEND_STOP		(1 << 12)
-#define DWMCI_CMD_ABORT_STOP		(1 << 14)
-#define DWMCI_CMD_PRV_DAT_WAIT		(1 << 13)
-#define DWMCI_CMD_UPD_CLK		(1 << 21)
-#define DWMCI_CMD_USE_HOLD_REG		(1 << 29)
-#define DWMCI_CMD_START			(1 << 31)
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
 
 /* CLKENA register */
-#define DWMCI_CLKEN_ENABLE		(1 << 0)
-#define DWMCI_CLKEN_LOW_PWR		(1 << 16)
+#define DWMCI_CLKEN_ENABLE	BIT(0)
+#define DWMCI_CLKEN_LOW_PWR	BIT(16)
 
 /* Card-type register */
-#define DWMCI_CTYPE_1BIT		0
-#define DWMCI_CTYPE_4BIT		(1 << 0)
-#define DWMCI_CTYPE_8BIT		(1 << 16)
+#define DWMCI_CTYPE_1BIT	0
+#define DWMCI_CTYPE_4BIT	BIT(0)
+#define DWMCI_CTYPE_8BIT	BIT(16)
 
 /* Status Register */
-#define DWMCI_STATUS_FIFO_EMPTY		(1 << 2)
-#define DWMCI_STATUS_FIFO_FULL		(1 << 3)
-#define DWMCI_STATUS_BUSY		(1 << 9)
+#define DWMCI_STATUS_FIFO_EMPTY	BIT(2)
+#define DWMCI_STATUS_FIFO_FULL	BIT(3)
+#define DWMCI_STATUS_BUSY	BIT(9)
 
 /* FIFOTH Register */
 #define DWMCI_FIFOTH_MSIZE(x)		((x) << 28)
@@ -135,15 +136,15 @@
 #define DWMCI_FIFOTH_TX_WMARK(x)	(x)
 #define DWMCI_FIFOTH_FIFO_DEPTH(x)	((((x) >> 16) & 0x3ff) + 1)
 
-#define DWMCI_IDMAC_OWN			(1 << 31)
-#define DWMCI_IDMAC_CH			(1 << 4)
-#define DWMCI_IDMAC_FS			(1 << 3)
-#define DWMCI_IDMAC_LD			(1 << 2)
+#define DWMCI_IDMAC_OWN	BIT(31)
+#define DWMCI_IDMAC_CH	BIT(4)
+#define DWMCI_IDMAC_FS	BIT(3)
+#define DWMCI_IDMAC_LD	BIT(2)
 
 /* Bus Mode Register */
-#define DWMCI_BMOD_IDMAC_RESET		(1 << 0)
-#define DWMCI_BMOD_IDMAC_FB		(1 << 1)
-#define DWMCI_BMOD_IDMAC_EN		(1 << 7)
+#define DWMCI_BMOD_IDMAC_RESET	BIT(0)
+#define DWMCI_BMOD_IDMAC_FB	BIT(1)
+#define DWMCI_BMOD_IDMAC_EN	BIT(7)
 
 struct dwmci_host {
 	struct mci_host mci;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
