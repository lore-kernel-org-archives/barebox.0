Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrA8a-0007Lw-6Z
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 17:01:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 19:00:40 +0200
Message-Id: <1372093242-11699-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
References: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] usb: i.MX chipidea: probe ULPI phys later
To: barebox@lists.infradead.org

Probe ULPI phys during USB initialization and not during driver
probe. This lowers the pressure to have the necessary board specific
setup in place early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 2006649..13e29ac 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -26,6 +26,7 @@
 
 struct imx_chipidea {
 	struct device_d *dev;
+	void __iomem *base;
 	struct ehci_data data;
 	unsigned long flags;
 	enum imx_usb_mode mode;
@@ -38,6 +39,19 @@ static int imx_chipidea_port_init(void *drvdata)
 	struct imx_chipidea *ci = drvdata;
 	int ret;
 
+	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
+		dev_dbg(ci->dev, "using ULPI phy\n");
+		if (IS_ENABLED(CONFIG_USB_ULPI)) {
+			ret = ulpi_setup(ci->base + 0x170, 1);
+		} else {
+			dev_err(ci->dev, "no ULPI support available\n");
+			ret = -ENODEV;
+		}
+
+		if (ret)
+			return ret;
+	}
+
 	ret = imx_usbmisc_port_init(ci->portno, ci->flags);
 	if (ret)
 		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
@@ -144,30 +158,17 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (!base)
 		return -ENODEV;
 
+	ci->base = base;
+
 	ci->data.init = imx_chipidea_port_init;
 	ci->data.post_init = imx_chipidea_port_post_init;
 	ci->data.drvdata = ci;
 
-	imx_chipidea_port_init(ci);
-
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
 	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
-	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
-		dev_dbg(dev, "using ULPI phy\n");
-		if (IS_ENABLED(CONFIG_USB_ULPI)) {
-			ret = ulpi_setup(base + 0x170, 1);
-		} else {
-			dev_err(dev, "no ULPI support available\n");
-			ret = -ENODEV;
-		}
-
-		if (ret)
-			return ret;
-	}
-
 	ci->data.hccr = base + 0x100;
 	ci->data.hcor = base + 0x140;
 	ci->data.flags = EHCI_HAS_TT;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
