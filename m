Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDdJ-0006jY-H0
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:23:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so7986575pfe.13
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:23:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:32 -0800
Message-Id: <20190112072234.21878-15-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/16] PCI: Assume 1:1 mapping if .res_start callback is
 NULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Save a bit of no-op boilerplate by converting pci_iomap() to treat
absense of .res_start callback as an indicator that 1:1 mapping is
being used.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-tegra.c            | 6 ------
 drivers/pci/pci_iomap.c            | 6 +++++-
 drivers/pci/pcie-designware-host.c | 6 ------
 3 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index b6ccf8e5b5..7c9dd80c00 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -366,15 +366,9 @@ static int tegra_pcie_write_conf(struct pci_bus *bus, unsigned int devfn,
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static int tegra_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
-{
-	return res_addr;
-}
-
 static struct pci_ops tegra_pcie_ops = {
 	.read = tegra_pcie_read_conf,
 	.write = tegra_pcie_write_conf,
-	.res_start = tegra_pcie_res_start,
 };
 
 static unsigned long tegra_pcie_port_get_pex_ctrl(struct tegra_pcie_port *port)
diff --git a/drivers/pci/pci_iomap.c b/drivers/pci/pci_iomap.c
index 2c58c0c0f9..2f06e60e38 100644
--- a/drivers/pci/pci_iomap.c
+++ b/drivers/pci/pci_iomap.c
@@ -3,6 +3,7 @@
  *
  * (C) Copyright 2004 Linus Torvalds
  */
+#include <common.h>
 #include <linux/pci.h>
 #include <io.h>
 
@@ -24,6 +25,9 @@ void __iomem *pci_iomap(struct pci_dev *dev, int bar)
 	struct pci_bus *bus = dev->bus;
 	resource_size_t start = pci_resource_start(dev, bar);
 
-	return (void *)bus->host->pci_ops->res_start(bus, start);
+	if (bus->host->pci_ops->res_start)
+		start = bus->host->pci_ops->res_start(bus, start);
+
+	return IOMEM(start);
 }
 EXPORT_SYMBOL(pci_iomap);
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 6cc4b93a31..af37a502d8 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -335,15 +335,9 @@ static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
 	return ret;
 }
 
-static int dw_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
-{
-	return res_addr;
-}
-
 static struct pci_ops dw_pcie_ops = {
 	.read = dw_pcie_rd_conf,
 	.write = dw_pcie_wr_conf,
-	.res_start = dw_pcie_res_start,
 };
 
 static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
