Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXpK9-0006ch-44
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 15:24:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gXpJx-0002mW-Lw
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:24:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gXpJx-0000nC-EO
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:24:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Dec 2018 16:23:08 +0100
Message-Id: <20181214152305.30412-2-a.fatoum@pengutronix.de>
In-Reply-To: <20181214152305.30412-1-a.fatoum@pengutronix.de>
References: <20181214152305.30412-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec_imx: fix timeout off by *1000 error
To: barebox@lists.infradead.org

read*_poll_timeout's final timeout parameter is in microseconds,
but the supplied arguments in fec_imx.c were in nanoseconds,
which might lead to barebox getting seemingly stuck in fec_halt
(loops for a thousand seconds instead of one).

I've tested this still works on an i.MX6D by copying a file over
TFTP and verifying the hash is correct.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fec_imx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index d304b94c567b..642517de6e98 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -61,7 +61,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	 * wait for the related interrupt
 	 */
 	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
-			       reg & FEC_IEVENT_MII, MSECOND)) {
+			       reg & FEC_IEVENT_MII, USEC_PER_MSEC)) {
 		dev_err(&fec->edev.dev, "Read MDIO failed...\n");
 		return -1;
 	}
@@ -98,7 +98,7 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	 * wait for the MII interrupt
 	 */
 	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
-			       reg & FEC_IEVENT_MII, MSECOND)) {
+			       reg & FEC_IEVENT_MII, USEC_PER_MSEC)) {
 		dev_err(&fec->edev.dev, "Write MDIO failed...\n");
 		return -1;
 	}
@@ -411,7 +411,7 @@ static void fec_halt(struct eth_device *dev)
 
 	/* wait for graceful stop to register */
 	if (readl_poll_timeout(fec->regs + FEC_IEVENT, reg,
-			       reg & FEC_IEVENT_GRA, SECOND))
+			       reg & FEC_IEVENT_GRA, USEC_PER_SEC))
 		dev_err(&dev->dev, "graceful stop timeout\n");
 
 	/* Disable SmartDMA tasks */
@@ -485,7 +485,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	fec_tx_task_enable(fec);
 
 	if (readw_poll_timeout(&fec->tbd_base[fec->tbd_index].status,
-			       status, !(status & FEC_TBD_READY), SECOND))
+			       status, !(status & FEC_TBD_READY), USEC_PER_SEC))
 		dev_err(&dev->dev, "transmission timeout\n");
 
 	dma_unmap_single(fec->dev, dma, data_length, DMA_TO_DEVICE);
@@ -806,7 +806,7 @@ static int fec_probe(struct device_d *dev)
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
 	ret = readl_poll_timeout(fec->regs + FEC_ECNTRL, reg,
-				 !(reg & FEC_ECNTRL_RESET), SECOND);
+				 !(reg & FEC_ECNTRL_RESET), USEC_PER_SEC);
 	if (ret)
 		goto free_gpio;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
