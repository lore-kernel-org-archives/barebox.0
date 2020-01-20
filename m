Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVPq-0002Hz-4t
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 11:40:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2020 12:40:15 +0100
Message-Id: <20200120114015.22179-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] PCI: layerscape: Allow to share stream_ids per host controller
To: Barebox List <barebox@lists.infradead.org>
Cc: lst@pengutronix.de

Normally every device gets its own stream_id. The stream_ids are
communicated to the kernel in the device tree and are also configured
in the controllers LUT table.

This only works when all PCI devices are known in the bootloader
which may not always be the case. For example, when a PCI device
is a FPGA and its firmware is only loaded under Linux, then the
device is not known to barebox and thus not assigned a stream_id.

With global.layerscape_pcie.share_stream_ids set to true all devices
on a host controller get the same stream_id assigned. This setup is
completely device agnostic and thus also works when not all devices
are known to barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-layerscape.c | 130 ++++++++++++++++++++++++-----------
 1 file changed, 89 insertions(+), 41 deletions(-)

diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index e20dd55b1f..c4ed529181 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -22,6 +22,8 @@
 #include <of_address.h>
 #include <of_pci.h>
 #include <regmap.h>
+#include <magicvar.h>
+#include <globalvar.h>
 #include <mfd/syscon.h>
 #include <linux/pci.h>
 #include <linux/phy/phy.h>
@@ -57,6 +59,13 @@ struct ls_pcie_drvdata {
 	const struct dw_pcie_ops *dw_pcie_ops;
 };
 
+#define PCIE_LUT_ENTRY_COUNT    32
+
+struct ls_pcie_lut_entry {
+	int stream_id;
+	uint16_t devid;
+};
+
 struct ls_pcie {
 	struct dw_pcie pci;
 	void __iomem *lut;
@@ -65,6 +74,7 @@ struct ls_pcie {
 	const struct ls_pcie_drvdata *drvdata;
 	int index;
 	int next_lut_index;
+	struct ls_pcie_lut_entry luts[PCIE_LUT_ENTRY_COUNT];
 };
 
 static struct ls_pcie *to_ls_pcie(struct dw_pcie *pci)
@@ -72,11 +82,6 @@ static struct ls_pcie *to_ls_pcie(struct dw_pcie *pci)
 	return container_of(pci, struct ls_pcie, pci);
 }
 
-static u32 lut_readl(struct ls_pcie *pcie, unsigned int offset)
-{
-	return in_be32(pcie->lut + offset);
-}
-
 static void lut_writel(struct ls_pcie *pcie, unsigned int value,
 		       unsigned int offset)
 {
@@ -98,8 +103,6 @@ static int ls_pcie_next_streamid(struct ls_pcie *pcie)
 	return current;
 }
 
-#define PCIE_LUT_ENTRY_COUNT    32
-
 static int ls_pcie_next_lut_index(struct ls_pcie *pcie)
 {
 	if (pcie->next_lut_index < PCIE_LUT_ENTRY_COUNT)
@@ -108,14 +111,6 @@ static int ls_pcie_next_lut_index(struct ls_pcie *pcie)
 		return -ENOSPC;  /* LUT is full */
 }
 
-static void ls_pcie_lut_set_mapping(struct ls_pcie *pcie, int index, u32 devid,
-				    u32 stream_id)
-{
-	/* leave mask as all zeroes, want to match all bits */
-	lut_writel(pcie, devid << 16, PCIE_LUT_UDR(index));
-	lut_writel(pcie, stream_id | PCIE_LUT_ENABLE, PCIE_LUT_LDR(index));
-}
-
 static bool ls_pcie_is_bridge(struct ls_pcie *pcie)
 {
 	struct dw_pcie *pci = &pcie->pci;
@@ -354,6 +349,24 @@ static phandle ls_pcie_get_iommu_handle(struct device_node *np, phandle *handle)
 	return 0;
 }
 
+/*
+ * Normally every device gets its own stream_id. The stream_ids are communicated
+ * to the kernel in the device tree and are also configured in the controllers
+ * LUT table.
+ * This only works when all PCI devices are known in the bootloader which may not
+ * always be the case. For example, when a PCI device is a FPGA and its firmware
+ * is only loaded under Linux, then the device is not known to barebox and thus
+ * not assigned a stream_id.
+ *
+ * With ls_pcie_share_stream_id = true all devices on a host controller get the
+ * same stream_id assigned.
+ */
+static int ls_pcie_share_stream_id;
+
+BAREBOX_MAGICVAR_NAMED(global_ls_pcie_share_stream_id,
+		       global.layerscape_pcie.share_stream_ids,
+		       "If true, use a stream_id per host controller and not per device");
+
 static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 {
 	struct ls_pcie *pcie = ctx;
@@ -375,8 +388,6 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 			return -ENODEV;
 	} while (!of_device_is_compatible(np, pcie->compatible));
 
-	nluts = pcie->next_lut_index;
-
 	ret = of_property_read_u32(np, "msi-parent", &phandle);
 	if (ret) {
 		dev_err(pcie->pci.dev, "Unable to get \"msi-parent\" phandle\n");
@@ -389,28 +400,56 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 		return ret;
 	}
 
-	msi_map = xmalloc(nluts * sizeof(u32) * 4);
-	iommu_map = xmalloc(nluts * sizeof(u32) * 4);
-
-	for (i = 0; i < nluts; i++) {
-		u32 udr = lut_readl(pcie, PCIE_LUT_UDR(i));
-		u32 ldr = lut_readl(pcie, PCIE_LUT_LDR(i));
-
-		if (!(ldr & PCIE_LUT_ENABLE))
-			break;
-
-		devid = udr >> 16;
-		stream_id = ldr & 0x7fff;
-
-		msi_map[i * 4] = devid;
-		msi_map[i * 4 + 1] = phandle;
-		msi_map[i * 4 + 2] = stream_id;
-		msi_map[i * 4 + 3] = 1;
+	if (ls_pcie_share_stream_id) {
+		nluts = 1;
+		iommu_map = xmalloc(nluts * sizeof(u32) * 4);
+		msi_map = xmalloc(nluts * sizeof(u32) * 4);
+		stream_id = pcie->luts[0].stream_id;
+
+		dev_dbg(pcie->pci.dev, "Using stream_id %d\n", stream_id);
+
+		msi_map[0] = 0;
+		msi_map[1] = phandle;
+		msi_map[2] = stream_id;
+		msi_map[3] = 0x10000;
+
+		iommu_map[0] = 0;
+		iommu_map[1] = iommu_handle;
+		iommu_map[2] = stream_id;
+		iommu_map[3] = 0x10000;
+
+		lut_writel(pcie, 0xffff, PCIE_LUT_UDR(0));
+		lut_writel(pcie, pcie->luts[0].stream_id | PCIE_LUT_ENABLE, PCIE_LUT_LDR(0));
+	} else {
+		nluts = pcie->next_lut_index;
+		iommu_map = xmalloc(nluts * sizeof(u32) * 4);
+		msi_map = xmalloc(nluts * sizeof(u32) * 4);
+
+		for (i = 0; i < nluts; i++) {
+			devid = pcie->luts[i].devid;
+			stream_id = pcie->luts[i].stream_id;
+
+			dev_dbg(pcie->pci.dev, "Using stream_id %d for device 0x%04x\n",
+				stream_id, devid);
+
+			msi_map[i * 4] = devid;
+			msi_map[i * 4 + 1] = phandle;
+			msi_map[i * 4 + 2] = stream_id;
+			msi_map[i * 4 + 3] = 1;
+
+			iommu_map[i * 4] = devid;
+			iommu_map[i * 4 + 1] = iommu_handle;
+			iommu_map[i * 4 + 2] = stream_id;
+			iommu_map[i * 4 + 3] = 1;
+
+			lut_writel(pcie, pcie->luts[i].devid << 16, PCIE_LUT_UDR(i));
+			lut_writel(pcie, pcie->luts[i].stream_id | PCIE_LUT_ENABLE, PCIE_LUT_LDR(i));
+		}
+	}
 
-		iommu_map[i * 4] = devid;
-		iommu_map[i * 4 + 1] = iommu_handle;
-		iommu_map[i * 4 + 2] = stream_id;
-		iommu_map[i * 4 + 3] = 1;
+	for (i = nluts; i < PCIE_LUT_ENTRY_COUNT; i++) {
+		lut_writel(pcie, 0, PCIE_LUT_UDR(i));
+		lut_writel(pcie, 0, PCIE_LUT_LDR(i));
 	}
 
 	/*
@@ -448,6 +487,13 @@ static int __init ls_pcie_probe(struct device_d *dev)
 	struct resource *dbi_base;
 	const struct of_device_id *match;
 	int ret;
+	static int once;
+
+	if (!once) {
+		globalvar_add_simple_bool("layerscape_pcie.share_stream_ids",
+					  &ls_pcie_share_stream_id);
+		once = 1;
+	}
 
 	pcie = xzalloc(sizeof(*pcie));
 	if (!pcie)
@@ -502,6 +548,7 @@ static void ls_pcie_fixup(struct pci_dev *pcidev)
 	struct dw_pcie *dwpcie = container_of(pp, struct dw_pcie, pp);
 	struct ls_pcie *lspcie = container_of(dwpcie, struct ls_pcie, pci);
 	int stream_id, index;
+	uint32_t devid;
 	int base_bus_num = 0;
 
 	stream_id = ls_pcie_next_streamid(lspcie);
@@ -513,9 +560,10 @@ static void ls_pcie_fixup(struct pci_dev *pcidev)
 		p = p->parent_bus;
 	}
 
-	ls_pcie_lut_set_mapping(lspcie, index,
-				(pcidev->bus->number - base_bus_num) << 8 | pcidev->devfn,
-				stream_id);
+	devid = (pcidev->bus->number - base_bus_num) << 8 | pcidev->devfn;
+
+	lspcie->luts[index].devid = devid;
+	lspcie->luts[index].stream_id = stream_id;
 }
 
 DECLARE_PCI_FIXUP_EARLY(PCI_ANY_ID, PCI_ANY_ID, ls_pcie_fixup);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
