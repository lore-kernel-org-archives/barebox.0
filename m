Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6n-0006Vn-VY
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:10 +0200
Message-Id: <1404809417-21477-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/21] serial: ns16550: Add mmiobase to private data
To: barebox@lists.infradead.org

We have a private data struct, so use it for storing the
base address instead of abusing the dev->priv field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 709f704..27fae9b 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -50,6 +50,7 @@ struct ns16550_priv {
 	int mmio;
 	struct clk *clk;
 	uint32_t fcrval;
+	void __iomem *mmiobase;
 };
 
 static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
@@ -157,7 +158,6 @@ static inline void ns16550_sys_writel(uint32_t val, void __iomem *addr,
 static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 {
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
-	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = &priv->plat;
 	int width = priv->access_width;
 
@@ -165,11 +165,11 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 
 	switch (width) {
 	case IORESOURCE_MEM_8BIT:
-		return ns16550_sys_readb(dev->priv + off, priv->mmio);
+		return ns16550_sys_readb(priv->mmiobase + off, priv->mmio);
 	case IORESOURCE_MEM_16BIT:
-		return ns16550_sys_readw(dev->priv + off, priv->mmio);
+		return ns16550_sys_readw(priv->mmiobase + off, priv->mmio);
 	case IORESOURCE_MEM_32BIT:
-		return ns16550_sys_readl(dev->priv + off, priv->mmio);
+		return ns16550_sys_readl(priv->mmiobase + off, priv->mmio);
 	}
 	return -1;
 }
@@ -185,7 +185,6 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 			  uint32_t off)
 {
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
-	struct device_d *dev = cdev->dev;
 	struct NS16550_plat *plat = &priv->plat;
 	int width = priv->access_width;
 
@@ -193,13 +192,13 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 
 	switch (width) {
 	case IORESOURCE_MEM_8BIT:
-		ns16550_sys_writeb(val & 0xff, dev->priv + off, priv->mmio);
+		ns16550_sys_writeb(val & 0xff, priv->mmiobase + off, priv->mmio);
 		break;
 	case IORESOURCE_MEM_16BIT:
-		ns16550_sys_writew(val & 0xffff, dev->priv + off, priv->mmio);
+		ns16550_sys_writew(val & 0xffff, priv->mmiobase + off, priv->mmio);
 		break;
 	case IORESOURCE_MEM_32BIT:
-		ns16550_sys_writel(val, dev->priv + off, priv->mmio);
+		ns16550_sys_writel(val, priv->mmiobase + off, priv->mmio);
 		break;
 	}
 }
@@ -395,7 +394,7 @@ static int ns16550_probe(struct device_d *dev)
 	}
 	if (!res)
 		goto err;
-	dev->priv = (void __force __iomem *) res->start;
+	priv->mmiobase = (void __force __iomem *) res->start;
 
 
 	if (plat)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
