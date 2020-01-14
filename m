Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHuB-0003rx-7L
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 08:50:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Jan 2020 09:50:27 +0100
Message-Id: <20200114085027.30669-2-s.hauer@pengutronix.de>
In-Reply-To: <20200114085027.30669-1-s.hauer@pengutronix.de>
References: <20200114085027.30669-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] PCI: layerscape: Fixup iommu-map properties
To: Barebox List <barebox@lists.infradead.org>

The iommu-map properties are needed for proper PCI support under Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-layerscape.c | 39 +++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 0e41321a9a..e20dd55b1f 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -336,13 +336,32 @@ static int __init ls_add_pcie_port(struct ls_pcie *pcie)
 	return 0;
 }
 
+static phandle ls_pcie_get_iommu_handle(struct device_node *np, phandle *handle)
+{
+	u32 arr[4];
+	int ret;
+
+	/*
+	 * We expect an existing "iommu-map" property with bogus values. All we
+	 * use from it is the phandle to the iommu.
+	 */
+	ret = of_property_read_u32_array(np, "iommu-map", arr, 4);
+	if (ret)
+		return -ENOENT;
+
+	*handle = arr[1];
+
+	return 0;
+}
+
 static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 {
 	struct ls_pcie *pcie = ctx;
 	struct device_d *dev = pcie->pci.dev;
 	struct device_node *np;
+	phandle iommu_handle = 0;
 	char *name;
-	u32 *msi_map, phandle;
+	u32 *msi_map, *iommu_map, phandle;
 	int nluts;
 	int ret, i;
 	u32 devid, stream_id;
@@ -364,7 +383,14 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 		return ret;
 	}
 
+	ret = ls_pcie_get_iommu_handle(np, &iommu_handle);
+	if (ret) {
+		dev_err(pcie->pci.dev, "Unable to get iommu phandle\n");
+		return ret;
+	}
+
 	msi_map = xmalloc(nluts * sizeof(u32) * 4);
+	iommu_map = xmalloc(nluts * sizeof(u32) * 4);
 
 	for (i = 0; i < nluts; i++) {
 		u32 udr = lut_readl(pcie, PCIE_LUT_UDR(i));
@@ -380,6 +406,11 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 		msi_map[i * 4 + 1] = phandle;
 		msi_map[i * 4 + 2] = stream_id;
 		msi_map[i * 4 + 3] = 1;
+
+		iommu_map[i * 4] = devid;
+		iommu_map[i * 4 + 1] = iommu_handle;
+		iommu_map[i * 4 + 2] = stream_id;
+		iommu_map[i * 4 + 3] = 1;
 	}
 
 	/*
@@ -395,12 +426,18 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		goto out;
 
+	ret = of_property_write_u32_array(np, "iommu-map", iommu_map, nluts * 4);
+	if (ret)
+		goto out;
+
 	of_device_enable(np);
 
 	ret = 0;
 
 out:
 	free(msi_map);
+	free(iommu_map);
+
 	return ret;
 }
 
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
