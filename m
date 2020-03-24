Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjPr-0005FG-E7
 for barebox@lists.infradead.org; Tue, 24 Mar 2020 13:16:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Mar 2020 14:16:20 +0100
Message-Id: <20200324131620.10864-2-s.hauer@pengutronix.de>
In-Reply-To: <20200324131620.10864-1-s.hauer@pengutronix.de>
References: <20200324131620.10864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] PCI: layerscape: be less noisy when no iommu node is found
To: Barebox List <barebox@lists.infradead.org>

The upstream device tree files do not have the iommu nodes and
properties, so do not complain too loudly when they are not found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-layerscape.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index c4ed529181..53be43b28f 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -396,8 +396,8 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 
 	ret = ls_pcie_get_iommu_handle(np, &iommu_handle);
 	if (ret) {
-		dev_err(pcie->pci.dev, "Unable to get iommu phandle\n");
-		return ret;
+		dev_info(pcie->pci.dev, "No iommu phandle, won't fixup\n");
+		return 0;
 	}
 
 	if (ls_pcie_share_stream_id) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
