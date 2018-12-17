Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKp-0003Zu-Br
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id z11so5543029pgu.0
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:09 -0800
Message-Id: <20181217051925.17582-50-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 49/65] PCI: dwc: designware: Parse "num-lanes" property in
 dw_pcie_setup_rc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 5f334db665173facf2213854408bb5fa2445d0b3

  The "num-lanes" DT property is parsed in dw_pcie_host_init(). However
  num-lanes is applicable to both root complex mode and endpoint mode. As a
  first step, move the parsing of this property outside dw_pcie_host_init().
  This is in preparation for splitting pcie-designware.c to pcie-designware.c
  and pcie-designware-host.c

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 18 +++++++++++-------
 drivers/pci/pcie-designware.h |  1 -
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index f44046245..59884d514 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -332,10 +332,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (!pp->va_cfg1_base)
 		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
 
-	ret = of_property_read_u32(np, "num-lanes", &pci->lanes);
-	if (ret)
-		pci->lanes = 0;
-
 	ret = of_property_read_u32(np, "num-viewport", &pci->num_viewport);
 	if (ret)
 		pci->num_viewport = 2;
@@ -521,13 +517,21 @@ static struct pci_ops dw_pcie_ops = {
 
 void dw_pcie_setup_rc(struct pcie_port *pp)
 {
+	int ret;
+	u32 lanes;
 	u32 val;
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct device_d *dev = pci->dev;
+	struct device_node *np = dev->device_node;
+
+	ret = of_property_read_u32(np, "num-lanes", &lanes);
+	if (ret)
+		lanes = 0;
 
 	/* set the number of lanes */
 	val = dw_pcie_readl_dbi(pci, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
-	switch (pci->lanes) {
+	switch (lanes) {
 	case 1:
 		val |= PORT_LINK_MODE_1_LANES;
 		break;
@@ -538,7 +542,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		val |= PORT_LINK_MODE_4_LANES;
 		break;
        default:
-               dev_err(pci->dev, "num-lanes %u: invalid value\n", pci->lanes);
+               dev_err(pci->dev, "num-lanes %u: invalid value\n", lanes);
                return;
 	}
 	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
@@ -546,7 +550,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	/* set link width speed control register */
 	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	val &= ~PORT_LOGIC_LINK_WIDTH_MASK;
-	switch (pci->lanes) {
+	switch (lanes) {
 	case 1:
 		val |= PORT_LOGIC_LINK_WIDTH_1_LANES;
 		break;
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index b1b8e0554..06d8c769c 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -142,7 +142,6 @@ struct dw_pcie_ops {
 struct dw_pcie {
 	struct device_d         *dev;
 	void __iomem            *dbi_base;
-	u32                     lanes;
 	u32                     num_viewport;
 	u8                      iatu_unroll_enabled;
 	struct pcie_port        pp;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
