Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNX-0005xW-12
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:42 +0100
Message-Id: <20191127112051.9427-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] PCI: dwc: Add dw_pcie_disable_atu()
To: Barebox List <barebox@lists.infradead.org>

This adds dw_pcie_disable_atu() taken from Linux-5.4. This is needed by
the upcoming Layerscape driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 20 ++++++++++++++++++++
 drivers/pci/pcie-designware.h |  8 ++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 5747704cd5..9728964ec9 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -188,6 +188,26 @@ void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 	dev_err(pci->dev, "Outbound iATU is not being enabled\n");
 }
 
+void dw_pcie_disable_atu(struct dw_pcie *pci, int index,
+			 enum dw_pcie_region_type type)
+{
+	int region;
+
+	switch (type) {
+	case DW_PCIE_REGION_INBOUND:
+		region = PCIE_ATU_REGION_INBOUND;
+		break;
+	case DW_PCIE_REGION_OUTBOUND:
+		region = PCIE_ATU_REGION_OUTBOUND;
+		break;
+	default:
+		return;
+	}
+
+	dw_pcie_writel_dbi(pci, PCIE_ATU_VIEWPORT, region | index);
+	dw_pcie_writel_dbi(pci, PCIE_ATU_CR2, (u32)~PCIE_ATU_ENABLE);
+}
+
 int dw_pcie_wait_for_link(struct dw_pcie *pci)
 {
 	int retries;
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index f989ef2bd9..1659d8f60b 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -103,6 +103,12 @@
 struct pcie_port;
 struct dw_pcie;
 
+enum dw_pcie_region_type {
+	DW_PCIE_REGION_UNKNOWN,
+	DW_PCIE_REGION_INBOUND,
+	DW_PCIE_REGION_OUTBOUND,
+};
+
 struct dw_pcie_host_ops {
 	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
 	int (*wr_own_conf)(struct pcie_port *pp, int where, int size, u32 val);
@@ -176,6 +182,8 @@ int dw_pcie_wait_for_link(struct dw_pcie *pci);
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 			       int type, u64 cpu_addr, u64 pci_addr,
 			       u32 size);
+void dw_pcie_disable_atu(struct dw_pcie *pci, int index,
+			 enum dw_pcie_region_type type);
 void dw_pcie_setup(struct dw_pcie *pci);
 
 static inline void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
