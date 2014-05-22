Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WnNAZ-0008Mz-JR
 for barebox@lists.infradead.org; Thu, 22 May 2014 07:12:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2014 09:11:25 +0200
Message-Id: <1400742685-19144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: chipidea i.MX: relax phy_type requirements
To: barebox@lists.infradead.org

Some USB ports only have one possiblitly for the phy_type and
the type is not specified in the devicetree in this case.
Rely on the reset default instead of failing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a7ad734..9b6829b 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -33,6 +33,7 @@ struct imx_chipidea {
 	unsigned long flags;
 	enum imx_usb_mode mode;
 	int portno;
+	enum usb_phy_interface phymode;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -80,7 +81,6 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 {
 	struct of_phandle_args out_args;
 	enum usb_dr_mode mode;
-	enum usb_phy_interface phymode;
 
 	if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
 					"#index-cells", 0, &out_args))
@@ -101,8 +101,8 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 		break;
 	}
 
-	phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
-	switch (phymode) {
+	ci->phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
+	switch (ci->phymode) {
 	case USBPHY_INTERFACE_MODE_UTMI:
 		ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 		break;
@@ -119,8 +119,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 		ci->flags = MXC_EHCI_MODE_HSIC;
 		break;
 	default:
-		dev_err(ci->dev, "no or invalid phy mode setting\n");
-		return -EINVAL;
+		dev_dbg(ci->dev, "no phy_type setting. Relying on reset default\n");
 	}
 
 	if (of_find_property(ci->dev->device_node,
@@ -168,10 +167,12 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_HSIC)
 		imx_chipidea_port_init(ci);
 
-	portsc = readl(base + 0x184);
-	portsc &= ~MXC_EHCI_PORTSC_MASK;
-	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
-	writel(portsc, base + 0x184);
+	if (ci->phymode != USBPHY_INTERFACE_MODE_UNKNOWN) {
+		portsc = readl(base + 0x184);
+		portsc &= ~MXC_EHCI_PORTSC_MASK;
+		portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
+		writel(portsc, base + 0x184);
+	}
 
 	ci->data.hccr = base + 0x100;
 	ci->data.hcor = base + 0x140;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
