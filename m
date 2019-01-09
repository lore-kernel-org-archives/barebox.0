Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82k-00045u-RN
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:13:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id r136so3222356pfc.6
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:12:05 -0800
Message-Id: <20190109071210.18896-17-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/21] PCI: imx6: Allow probe deferral by reset GPIO
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
 drivers/pci/pci-imx6.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 6471f95b6..517c6bef8 100644
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
@@ -606,6 +606,9 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 
 	/* Fetch GPIOs */
 	imx6_pcie->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
+	if (imx6_pcie->reset_gpio == -EPROBE_DEFER)
+		return imx6_pcie->reset_gpio;
+
 	if (gpio_is_valid(imx6_pcie->reset_gpio)) {
 		ret = gpio_request_one(imx6_pcie->reset_gpio,
 					    GPIOF_OUT_INIT_LOW, "PCIe reset");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
