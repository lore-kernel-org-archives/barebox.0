Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBa-0005Ba-Dc
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:25 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id ABB3FFF97FF
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:23 +0200
Message-Id: <1311095849-16071-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] atmel/drivers: switch to dev_request_mem_region
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c       |    2 +-
 drivers/mtd/nand/atmel_nand.c |    2 +-
 drivers/net/macb.c            |    2 +-
 drivers/serial/atmel.c        |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 70041ba..b4489dd 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -456,7 +456,7 @@ static int mci_probe(struct device_d *hw_dev)
 	if (pd->bus_width == 8)
 		host->mci.host_caps |= MMC_MODE_8BIT;
 
-	host->base = (void __iomem *)hw_dev->resource[0].start;
+	host->base = dev_request_mem_region(hw_dev, 0);
 	host->hw_dev = hw_dev;
 	hw_dev->priv = host;
 	host->clk = clk_get(hw_dev, "mci_clk");
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 937bb70..f79be9a 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -381,7 +381,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	if (!host)
 		return -ENOMEM;
 
-	host->io_base = (void __iomem *)dev->resource[0].start;
+	host->io_base = dev_request_mem_region(dev, 0);
 
 	mtd = &host->mtd;
 	nand_chip = &host->nand_chip;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index e030154..95ad3d7 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -446,7 +446,7 @@ static int macb_probe(struct device_d *dev)
 	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
 	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
 
-	macb->regs = (void __iomem *)dev->resource[0].start;
+	macb->regs = dev_request_mem_region(dev, 0);
 
 	/*
 	 * Do some basic initialization so that we at least can talk
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index d8713b3..ff0e75e 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -375,7 +375,7 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	uart->base = (void __iomem *)dev->resource[0].start;
+	uart->base = dev_request_mem_region(dev, 0);
 	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
 	uart->uartclk = clk_get_rate(uart->clk);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
