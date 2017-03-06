Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1X4-0001LO-6I
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:10 +0000
Received: by mail-pf0-x243.google.com with SMTP id o126so4812466pfb.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:52 -0800
Message-Id: <20170306225356.31475-42-andrew.smirnov@gmail.com>
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
Subject: [PATCH 41/45] usb: echi-atmel: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-atmel.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index f075b50..1132879 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -65,6 +65,9 @@ static int atmel_ehci_probe(struct device_d *dev)
 	struct resource *iores;
 	struct ehci_data data;
 	struct atmel_ehci_priv *atehci;
+	const char *uclk_name;
+
+	uclk_name = (dev->device_node) ? "usb_clk" : "uhpck";
 
 	atehci = xzalloc(sizeof(*atehci));
 	atehci->dev = dev;
@@ -76,7 +79,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 		return -ENOENT;
 	}
 
-	atehci->uclk = clk_get(dev, "uhpck");
+	atehci->uclk = clk_get(dev, uclk_name);
 	if (IS_ERR(atehci->iclk)) {
 		dev_err(dev, "Error getting function clock\n");
 		return -ENOENT;
@@ -107,9 +110,15 @@ static void atmel_ehci_remove(struct device_d *dev)
 	atmel_stop_clock(dev->priv);
 }
 
+static const struct of_device_id atmel_ehci_dt_ids[] = {
+	{ .compatible = "atmel,at91sam9g45-ehci" },
+	{ /* sentinel */ }
+};
+
 static struct driver_d atmel_ehci_driver = {
 	.name = "atmel-ehci",
 	.probe = atmel_ehci_probe,
 	.remove = atmel_ehci_remove,
+	.of_compatible = DRV_OF_COMPAT(atmel_ehci_dt_ids),
 };
 device_platform_driver(atmel_ehci_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
