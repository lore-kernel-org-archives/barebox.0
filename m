Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjPy-0005Hd-PB
 for barebox@lists.infradead.org; Tue, 24 Mar 2020 13:16:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Mar 2020 14:16:19 +0100
Message-Id: <20200324131620.10864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: Layerscape: Be less noisy when no iommu node found
To: Barebox List <barebox@lists.infradead.org>

The IOMMU node is not present in the upstream dts files. Do not complain
too loudly when we are presented such a device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index b574a554ab..aec57f4b3f 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -495,8 +495,10 @@ static int icid_of_fixup(struct device_node *root, void *context)
 	phandle iommu_handle;
 
 	iommu = of_find_compatible_node(root, NULL, "arm,mmu-500");
-	if (!iommu)
-		return -ENOENT;
+	if (!iommu) {
+		pr_info("No \"arm,mmu-500\" node found, won't fixup\n");
+		return 0;
+	}
 
 	iommu_handle = of_node_create_phandle(iommu);
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
