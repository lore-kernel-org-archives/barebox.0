Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHuI-0003ty-Ik
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 08:50:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Jan 2020 09:50:26 +0100
Message-Id: <20200114085027.30669-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] PCI: layerscape: rename variable
To: Barebox List <barebox@lists.infradead.org>

Rename 'arr' to 'msi_map' which is a better name when we add another
array in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-layerscape.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index ccdc025c2e..0e41321a9a 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -342,7 +342,7 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 	struct device_d *dev = pcie->pci.dev;
 	struct device_node *np;
 	char *name;
-	u32 *arr, phandle;
+	u32 *msi_map, phandle;
 	int nluts;
 	int ret, i;
 	u32 devid, stream_id;
@@ -364,7 +364,7 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 		return ret;
 	}
 
-	arr = xmalloc(nluts * sizeof(u32) * 4);
+	msi_map = xmalloc(nluts * sizeof(u32) * 4);
 
 	for (i = 0; i < nluts; i++) {
 		u32 udr = lut_readl(pcie, PCIE_LUT_UDR(i));
@@ -376,10 +376,10 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 		devid = udr >> 16;
 		stream_id = ldr & 0x7fff;
 
-		arr[i * 4] = devid;
-		arr[i * 4 + 1] = phandle;
-		arr[i * 4 + 2] = stream_id;
-		arr[i * 4 + 3] = 1;
+		msi_map[i * 4] = devid;
+		msi_map[i * 4 + 1] = phandle;
+		msi_map[i * 4 + 2] = stream_id;
+		msi_map[i * 4 + 3] = 1;
 	}
 
 	/*
@@ -391,7 +391,7 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 	 *                 [devid] [phandle-to-msi-ctrl] [stream-id] [count]>;
 	 */
 
-	ret = of_property_write_u32_array(np, "msi-map", arr, nluts * 4);
+	ret = of_property_write_u32_array(np, "msi-map", msi_map, nluts * 4);
 	if (ret)
 		goto out;
 
@@ -400,7 +400,7 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 	ret = 0;
 
 out:
-	free(arr);
+	free(msi_map);
 	return ret;
 }
 
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
