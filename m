Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNW-0005xL-MQ
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:45 +0100
Message-Id: <20191127112051.9427-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] PCI: dwc: Fix ATU identification for designware version
 >= 4.80
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 2aadcb0cd39198833fabe1c45084f78686e71a6c

    Synopsys designware version >= 4.80 uses a separate register space
    for programming ATU. The current code identifies if there exists a
    separate register space by accessing the register address of ATUs
    in designware version < 4.80. Accessing this address results in
    abort in the case of K2G.

    Fix it here by adding "version" member to struct dw_pcie. This should be
    set by platform specific drivers and designware core will use it to
    identify if the platform has a separate ATU space. For platforms which
    have not populated the version member, the old method of identification
    will still be used.

    Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 14 ++++++++------
 drivers/pci/pcie-designware.h |  1 +
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 91aac8dec0..f9a759b8fd 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -257,13 +257,15 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	struct device_d *dev = pci->dev;
 	struct device_node *np = dev->device_node;
 
-	/* Get iATU unroll support */
-	pci->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pci);
-	dev_dbg(pci->dev, "iATU unroll: %s\n",
-		pci->iatu_unroll_enabled ? "enabled" : "disabled");
+	if (pci->version >= 0x480A || (!pci->version &&
+				       dw_pcie_iatu_unroll_enabled(pci))) {
+		pci->iatu_unroll_enabled = true;
+		if (!pci->atu_base)
+			pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
+	}
+	dev_dbg(pci->dev, "iATU unroll: %s\n", pci->iatu_unroll_enabled ?
+		"enabled" : "disabled");
 
-	if (pci->iatu_unroll_enabled && !pci->atu_base)
-		pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
 
 	ret = of_property_read_u32(np, "num-lanes", &lanes);
 	if (ret)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 30bdc0ed6e..8cd48a27c1 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -164,6 +164,7 @@ struct dw_pcie {
 	u8                      iatu_unroll_enabled;
 	struct pcie_port        pp;
 	const struct dw_pcie_ops *ops;
+	unsigned int		version;
 };
 
 #define to_dw_pcie_from_pp(port) container_of((port), struct dw_pcie, pp)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
