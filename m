Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLBJ-0006YS-5k
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id z10so608008pgp.7
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:13:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:43 -0800
Message-Id: <20181213071144.31691-58-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 57/58] PCI: dwc: Small computation improvement
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 6995de2168edc6e58a350e7eb76e02dd191b64f4

  Replace a division by 2 operation for a right shift rotation of 1 bit.

  Probably any recent and decent compiler does this kind of substitution
  in order to improve code performance. Nevertheless it's a coding good
  practice whenever there is a division / multiplication by multiple of 2
  to replace it by the equivalent operation in this case, the shift
  rotation.

  Signed-off-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 390960ab8..9a9c8eb69 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -88,8 +88,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 
 	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
 	if (cfg_res) {
-		pp->cfg0_size = resource_size(cfg_res) / 2;
-		pp->cfg1_size = resource_size(cfg_res) / 2;
+		pp->cfg0_size = resource_size(cfg_res) >> 1;
+		pp->cfg1_size = resource_size(cfg_res) >> 1;
 		pp->cfg0_base = cfg_res->start;
 		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
 
@@ -136,8 +136,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		}
 		if (restype == 0) {
 			of_pci_range_to_resource(&range, np, &pp->cfg);
-			pp->cfg0_size = resource_size(&pp->cfg) / 2;
-			pp->cfg1_size = resource_size(&pp->cfg) / 2;
+			pp->cfg0_size = resource_size(&pp->cfg) >> 1;
+			pp->cfg1_size = resource_size(&pp->cfg) >> 1;
 			pp->cfg0_base = pp->cfg.start;
 			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
