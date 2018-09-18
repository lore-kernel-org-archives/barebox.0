Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sy-0000BD-4t
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id x26-v6so404004pge.12
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:21 -0700
Message-Id: <20180918052122.12248-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180918052122.12248-1-andrew.smirnov@gmail.com>
References: <20180918052122.12248-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] net: fec_imx: Make use of readx_poll_timeout() macros
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Condense a bit of code by using vairous readx_poll_timeout() macros.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 61 ++++++++++++++++---------------------------
 1 file changed, 22 insertions(+), 39 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 843eba71f..33f2da84a 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -30,6 +30,7 @@
 #include <of_net.h>
 #include <of_gpio.h>
 #include <gpio.h>
+#include <linux/iopoll.h>
 
 #include "fec_imx.h"
 
@@ -43,7 +44,6 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
-	uint64_t start;
 
 	writel(((clk_get_rate(fec->clk[FEC_CLK_IPG]) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
@@ -60,12 +60,10 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	/*
 	 * wait for the related interrupt
 	 */
-	start = get_time_ns();
-	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_MII)) {
-		if (is_timeout(start, MSECOND)) {
-			dev_err(&fec->edev.dev, "Read MDIO failed...\n");
-			return -1;
-		}
+	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
+			       reg & FEC_IEVENT_MII, MSECOND)) {
+		dev_err(&fec->edev.dev, "Read MDIO failed...\n");
+		return -1;
 	}
 
 	/*
@@ -86,7 +84,6 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
-	uint64_t start;
 
 	writel(((clk_get_rate(fec->clk[FEC_CLK_IPG]) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
@@ -100,12 +97,10 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	/*
 	 * wait for the MII interrupt
 	 */
-	start = get_time_ns();
-	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_MII)) {
-		if (is_timeout(start, MSECOND)) {
-			dev_err(&fec->edev.dev, "Write MDIO failed...\n");
-			return -1;
-		}
+	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
+			       reg & FEC_IEVENT_MII, MSECOND)) {
+		dev_err(&fec->edev.dev, "Write MDIO failed...\n");
+		return -1;
 	}
 
 	/*
@@ -408,20 +403,16 @@ static int fec_open(struct eth_device *edev)
 static void fec_halt(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
-	uint64_t tmo;
+	uint32_t reg;
 
 	/* issue graceful stop command to the FEC transmitter if necessary */
 	writel(readl(fec->regs + FEC_X_CNTRL) | FEC_ECNTRL_RESET,
 			fec->regs + FEC_X_CNTRL);
 
 	/* wait for graceful stop to register */
-	tmo = get_time_ns();
-	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_GRA)) {
-		if (is_timeout(tmo, 1 * SECOND)) {
-			dev_err(&dev->dev, "graceful stop timeout\n");
-			break;
-		}
-	}
+	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
+			       reg & FEC_IEVENT_GRA, SECOND))
+		dev_err(&dev->dev, "graceful stop timeout\n");
 
 	/* Disable SmartDMA tasks */
 	fec_tx_task_disable(fec);
@@ -446,7 +437,6 @@ static void fec_halt(struct eth_device *dev)
 static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 {
 	unsigned int status;
-	uint64_t tmo;
 	dma_addr_t dma;
 
 	/*
@@ -494,14 +484,10 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	/* Enable SmartDMA transmit task */
 	fec_tx_task_enable(fec);
 
-	/* wait until frame is sent */
-	tmo = get_time_ns();
-	while (readw(&fec->tbd_base[fec->tbd_index].status) & FEC_TBD_READY) {
-		if (is_timeout(tmo, 1 * SECOND)) {
-			dev_err(&dev->dev, "transmission timeout\n");
-			break;
-		}
-	}
+	if (readw_poll_timeout(&fec->tbd_base[fec->tbd_index].status,
+			       status, !(status & FEC_TBD_READY), SECOND))
+		dev_err(&dev->dev, "transmission timeout\n");
+
 	dma_unmap_single(fec->dev, dma, data_length, DMA_TO_DEVICE);
 
 	/* for next transmission use the other buffer */
@@ -735,7 +721,7 @@ static int fec_probe(struct device_d *dev)
 	enum fec_type type;
 	int phy_reset;
 	u32 msec = 1, phy_post_delay = 0;
-	u64 start;
+	u32 reg;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -797,14 +783,11 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	/* Reset chip. */
-	start = get_time_ns();
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
-	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
-		if (is_timeout(start, SECOND)) {
-			ret = -ETIMEDOUT;
-			goto free_gpio;
-		}
-	}
+	ret = readl_poll_timeout(fec->regs + FEC_ECNTRL, reg,
+				 !(reg & FEC_ECNTRL_RESET), SECOND);
+	if (ret)
+		goto free_gpio;
 
 	/*
 	 * reserve memory for both buffer descriptor chains at once
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
