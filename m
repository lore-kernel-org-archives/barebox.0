Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmK-0006f1-5U
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:58 +0000
Received: by mail-pg0-x241.google.com with SMTP id b5so4632279pgg.1
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:01 -0800
Message-Id: <20170308220909.4560-13-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/20] usb: ohci-at91: Convert global variables to private data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Store driver data in per-device private variable as opposed to storing
it in global vairables.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 59 +++++++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index ca583ff..cd7b321 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -27,66 +27,81 @@
 
 #include "ohci.h"
 
-/* interface and function clocks; sometimes also an AHB clock */
-static struct clk *iclk, *fclk;
+struct ohci_at91_priv {
+	struct device_d *dev;
+	struct clk *iclk;
+	struct clk *fclk;
+	struct ohci_regs __iomem *regs;
+};
 
-static void at91_start_clock(void)
+static void at91_start_clock(struct ohci_at91_priv *ohci_at91)
 {
-	clk_enable(iclk);
-	clk_enable(fclk);
+	clk_enable(ohci_at91->iclk);
+	clk_enable(ohci_at91->fclk);
 }
 
-static void at91_stop_clock(void)
+static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
 {
-	clk_disable(fclk);
-	clk_disable(iclk);
+	clk_disable(ohci_at91->fclk);
+	clk_disable(ohci_at91->iclk);
 }
 
 static int at91_ohci_probe(struct device_d *dev)
 {
-	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
+	struct resource *io;
+	struct ohci_at91_priv *ohci_at91 = xzalloc(sizeof(*ohci_at91));
+
+	dev->priv = ohci_at91;
+	ohci_at91->dev = dev;
+
+	io = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(io)) {
+		dev_err(dev, "Failed to get IORESOURCE_MEM\n");
+		return PTR_ERR(io);
+	}
+	ohci_at91->regs = IOMEM(io->start);
 
-	iclk = clk_get(NULL, "ohci_clk");
-	if (IS_ERR(iclk)) {
+	ohci_at91->iclk = clk_get(NULL, "ohci_clk");
+	if (IS_ERR(ohci_at91->iclk)) {
 		dev_err(dev, "Failed to get 'ohci_clk'\n");
-		return PTR_ERR(iclk);
+		return PTR_ERR(ohci_at91->iclk);
 	}
 
-	fclk = clk_get(NULL, "uhpck");
-	if (IS_ERR(fclk)) {
+	ohci_at91->fclk = clk_get(NULL, "uhpck");
+	if (IS_ERR(ohci_at91->fclk)) {
 		dev_err(dev, "Failed to get 'uhpck'\n");
-		return PTR_ERR(fclk);
+		return PTR_ERR(ohci_at91->fclk);
 	}
 
 	/*
 	 * Start the USB clocks.
 	 */
-	at91_start_clock();
+	at91_start_clock(ohci_at91);
 
 	/*
 	 * The USB host controller must remain in reset.
 	 */
-	writel(0, &regs->control);
+	writel(0, &ohci_at91->regs->control);
 
-	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
-			   resource_size(&dev->resource[0]), IORESOURCE_MEM, NULL);
+	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, io->start,
+			   resource_size(io), IORESOURCE_MEM, NULL);
 
 	return 0;
 }
 
 static void at91_ohci_remove(struct device_d *dev)
 {
-	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
+	struct ohci_at91_priv *ohci_at91 = dev->priv;
 
 	/*
 	 * Put the USB host controller into reset.
 	 */
-	writel(0, &regs->control);
+	writel(0, &ohci_at91->regs->control);
 
 	/*
 	 * Stop the USB clocks.
 	 */
-	at91_stop_clock();
+	at91_stop_clock(ohci_at91);
 }
 
 static struct driver_d at91_ohci_driver = {
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
