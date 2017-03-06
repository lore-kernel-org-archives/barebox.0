Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wz-0007sh-AA
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:13 +0000
Received: by mail-pg0-x241.google.com with SMTP id 25so20992740pgy.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:49 -0800
Message-Id: <20170306225356.31475-39-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 38/45] usb: echi-atmel: Convert global variables to private
 data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-atmel.c | 42 ++++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index fa9ca7d..7a9d942 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -29,29 +29,34 @@
 
 #include "ehci.h"
 
-/* interface and function clocks; sometimes also an AHB clock */
-static struct clk *iclk, *fclk;
+struct atmel_ehci_priv {
+	struct device_d *dev;
+	struct clk *iclk;
+	struct clk *uclk;
+};
 
-static int atmel_start_clock(void)
+static int atmel_start_clock(struct atmel_ehci_priv *atehci)
 {
 	int ret;
-	ret = clk_enable(iclk);
+	ret = clk_enable(atehci->iclk);
 	if (ret < 0) {
-		pr_err("Error enabling interface clock\n");
+		dev_err(atehci->dev,
+			"Error enabling interface clock\n");
 		return ret;
 	}
 
-	ret = clk_enable(fclk);
+	ret = clk_enable(atehci->uclk);
 	if (ret < 0)
-		pr_err("Error enabling function clock\n");
+		dev_err(atehci->dev,
+			"Error enabling function clock\n");
 
 	return ret;
 }
 
-static void atmel_stop_clock(void)
+static void atmel_stop_clock(struct atmel_ehci_priv *atehci)
 {
-	clk_disable(fclk);
-	clk_disable(iclk);
+	clk_disable(atehci->iclk);
+	clk_disable(atehci->uclk);
 }
 
 static int atmel_ehci_probe(struct device_d *dev)
@@ -59,15 +64,20 @@ static int atmel_ehci_probe(struct device_d *dev)
 	int ret;
 	struct resource *iores;
 	struct ehci_data data;
+	struct atmel_ehci_priv *atehci;
+
+	atehci = xzalloc(sizeof(*atehci));
+	atehci->dev = dev;
+	dev->priv = atehci;
 
-	iclk = clk_get(dev, "ehci_clk");
-	if (IS_ERR(iclk)) {
+	atehci->iclk = clk_get(dev, "ehci_clk");
+	if (IS_ERR(atehci->iclk)) {
 		dev_err(dev, "Error getting interface clock\n");
 		return -ENOENT;
 	}
 
-	fclk = clk_get(dev, "uhpck");
-	if (IS_ERR(fclk)) {
+	atehci->uclk = clk_get(dev, "uhpck");
+	if (IS_ERR(atehci->iclk)) {
 		dev_err(dev, "Error getting function clock\n");
 		return -ENOENT;
 	}
@@ -75,7 +85,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 	/*
 	 * Start the USB clocks.
 	 */
-	ret = atmel_start_clock();
+	ret = atmel_start_clock(atehci);
 	if (ret < 0)
 		return ret;
 
@@ -96,7 +106,7 @@ static void atmel_ehci_remove(struct device_d *dev)
 	/*
 	 * Stop the USB clocks.
 	 */
-	atmel_stop_clock();
+	atmel_stop_clock(dev->priv);
 }
 
 static struct driver_d atmel_ehci_driver = {
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
