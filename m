Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNu-0006Io-Op
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:50 +0100
Message-Id: <20191127112051.9427-12-s.hauer@pengutronix.de>
In-Reply-To: <20191127112051.9427-1-s.hauer@pengutronix.de>
References: <20191127112051.9427-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] PCI: dwc: Return directly when num-lanes is not found
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 66de33f09fd97201847de7e1e2ec8a117242e1d6

    The num-lanes is optional since it is not needed on some platforms
    that bring up the link in firmware.

    The link programming is based on the num-lanes properties (which is
    optional); if it is not present code must return instead of fiddling
    with the lanes value to print an error message.

    Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Reviewed-by: Andrew Murray <andrew.murray@arm.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 72deeee4ed..e2007dba6d 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -295,8 +295,10 @@ void dw_pcie_setup(struct dw_pcie *pci)
 
 
 	ret = of_property_read_u32(np, "num-lanes", &lanes);
-	if (ret)
-		lanes = 0;
+	if (ret) {
+		dev_dbg(pci->dev, "property num-lanes isn't found\n");
+		return;
+	}
 
 	/* Set the number of lanes */
 	val = dw_pcie_readl_dbi(pci, PCIE_PORT_LINK_CONTROL);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
