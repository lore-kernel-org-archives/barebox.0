Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5dJd-0001Xj-MP
 for barebox@lists.infradead.org; Wed, 25 May 2016 18:13:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 25 May 2016 21:13:24 +0300
Message-Id: <1464200006-7963-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] usb: ohci: Clear control register at driver startup
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/host/ohci-at91.c | 7 -------
 drivers/usb/host/ohci-hcd.c  | 7 ++++---
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 0f5c8f1..0a6e5ca 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -44,8 +44,6 @@ static void at91_stop_clock(void)
 
 static int at91_ohci_probe(struct device_d *dev)
 {
-	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
-
 	iclk = clk_get(NULL, "ohci_clk");
 	fclk = clk_get(NULL, "uhpck");
 
@@ -54,11 +52,6 @@ static int at91_ohci_probe(struct device_d *dev)
 	 */
 	at91_start_clock();
 
-	/*
-	 * The USB host controller must remain in reset.
-	 */
-	writel(0, &regs->control);
-
 	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
 			   resource_size(&dev->resource[0]), IORESOURCE_MEM, NULL);
 
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 612c3a1..a4795bb 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1817,14 +1817,15 @@ static int ohci_probe(struct device_d *dev)
 		return -ENOMEM;
 	memset(ohci->ohci_dev, 0, sizeof(*ohci->ohci_dev));
 
-	usb_register_host(host);
-
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	ohci->regs = IOMEM(iores->start);
 
-	return 0;
+	/* Put the USB host controller into reset */
+	writel(0, &ohci->regs->control);
+
+	return usb_register_host(host);
 }
 
 static struct driver_d ohci_driver = {
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
