Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLBE-0006Td-6U
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id q1so644262pfi.5
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:39 -0800
Message-Id: <20181213071144.31691-54-andrew.smirnov@gmail.com>
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
Subject: [PATCH 53/58] PCI: dwc: designware: Handle ->host_init() failures
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4a301766f5263dd94c1b95d1b1bbdf338afb1a37

  In several dwc-based drivers, ->host_init() can fail, so make sure to
  propagate and handle this to avoid continuing operation of a driver or
  hardware in an invalid state.

  Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c             | 4 +++-
 drivers/pci/pcie-designware-host.c | 7 +++++--
 drivers/pci/pcie-designware.h      | 2 +-
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 78aa5215a..1807f29c9 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -477,7 +477,7 @@ err_reset_phy:
        return ret;
 }
 
-static void imx6_pcie_host_init(struct pcie_port *pp)
+static int imx6_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pci);
@@ -487,6 +487,8 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 	imx6_pcie_deassert_core_reset(imx6_pcie);
 	dw_pcie_setup_rc(pp);
 	imx6_pcie_establish_link(imx6_pcie);
+
+	return 0;
 }
 
 static int imx6_pcie_link_up(struct dw_pcie *pci)
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index c00c6626f..9a9d4f9ae 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -164,8 +164,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		pci->num_viewport = 2;
 
-	if (pp->ops->host_init)
-		pp->ops->host_init(pp);
+	if (pp->ops->host_init) {
+		ret = pp->ops->host_init(pp);
+		if (ret)
+			return ret;
+	}
 
 	pp->pci.parent = dev;
 	pp->pci.pci_ops = &dw_pcie_ops;
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index f45d89a25..10f64b101 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -78,7 +78,7 @@ struct dw_pcie_host_ops {
 			     unsigned int devfn, int where, int size, u32 *val);
 	int (*wr_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
 			     unsigned int devfn, int where, int size, u32 val);
-	void (*host_init)(struct pcie_port *pp);
+	int (*host_init)(struct pcie_port *pp);
 	void (*scan_bus)(struct pcie_port *pp);
 };
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
