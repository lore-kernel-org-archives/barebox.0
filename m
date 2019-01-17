Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjxFU-0006et-34
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 02:17:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id z11so3709269pgu.0
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 18:17:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 18:16:55 -0800
Message-Id: <20190117021700.4443-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190117021700.4443-1-andrew.smirnov@gmail.com>
References: <20190117021700.4443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 12/17] PCI: imx6: Allow probe deferral by reset GPIO
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit bde4a5a00e761f55be92f62378cf5024ced79ee3

  Some designs implement reset GPIO via a GPIO expander connected to a
  peripheral bus.  One such example would be i.MX7 Sabre board where said
  GPIO is provided by SPI shift register connected to a bitbanged SPI bus.
  To support such designs, allow reset GPIO request to defer probing of the
  driver.

  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: yurovsky@gmail.com
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Dong Aisheng <dongas86@gmail.com>
  Cc: linux-arm-kernel@lists.infradead.org

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 6471f95b62..ce68b007ab 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -562,8 +562,8 @@ static const struct dw_pcie_host_ops imx6_pcie_host_ops = {
 	.host_init = imx6_pcie_host_init,
 };
 
-static int __init imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
-				     struct device_d *dev)
+static int imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
+			      struct device_d *dev)
 {
 	struct dw_pcie *pci = imx6_pcie->pci;
 	struct pcie_port *pp = &pci->pp;
@@ -581,7 +581,7 @@ static int __init imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 	return 0;
 }
 
-static int __init imx6_pcie_probe(struct device_d *dev)
+static int imx6_pcie_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct dw_pcie *pci;
@@ -599,13 +599,11 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 	imx6_pcie->variant =
 		(enum imx6_pcie_variants)of_device_get_match_data(dev);
 
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	pci->dbi_base = IOMEM(iores->start);
-
 	/* Fetch GPIOs */
 	imx6_pcie->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
+	if (imx6_pcie->reset_gpio == -EPROBE_DEFER)
+		return imx6_pcie->reset_gpio;
+
 	if (gpio_is_valid(imx6_pcie->reset_gpio)) {
 		ret = gpio_request_one(imx6_pcie->reset_gpio,
 					    GPIOF_OUT_INIT_LOW, "PCIe reset");
@@ -615,6 +613,11 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 		}
 	}
 
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	pci->dbi_base = IOMEM(iores->start);
+
 	/* Fetch clocks */
 	imx6_pcie->pcie_phy = clk_get(dev, "pcie_phy");
 	if (IS_ERR(imx6_pcie->pcie_phy)) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
