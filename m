Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDdL-0006lv-Hl
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:23:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so7986606pfe.13
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:23:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:34 -0800
Message-Id: <20190112072234.21878-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/16] PCI: Consify pci_ops in struct pci_controller
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-mvebu.c            | 2 +-
 drivers/pci/pci-tegra.c            | 2 +-
 drivers/pci/pcie-designware-host.c | 4 ++--
 include/linux/pci.h                | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index c17ef3898b..ae2e83dacd 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -154,7 +154,7 @@ static resource_size_t mvebu_pcie_res_start(struct pci_bus *bus,
 		(res_addr & (resource_size(&pcie->mem) - 1));
 }
 
-static struct pci_ops mvebu_pcie_indirect_ops = {
+static const struct pci_ops mvebu_pcie_indirect_ops = {
 	.read = mvebu_pcie_indirect_rd_conf,
 	.write = mvebu_pcie_indirect_wr_conf,
 	.res_start = mvebu_pcie_res_start,
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 7c9dd80c00..7f10b7af2e 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -366,7 +366,7 @@ static int tegra_pcie_write_conf(struct pci_bus *bus, unsigned int devfn,
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static struct pci_ops tegra_pcie_ops = {
+static const struct pci_ops tegra_pcie_ops = {
 	.read = tegra_pcie_read_conf,
 	.write = tegra_pcie_write_conf,
 };
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index af37a502d8..0c6ace0928 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -29,7 +29,7 @@
 
 #include <abort.h>
 
-static struct pci_ops dw_pcie_ops;
+static const struct pci_ops dw_pcie_ops;
 static unsigned long global_io_offset;
 
 static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
@@ -335,7 +335,7 @@ static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
 	return ret;
 }
 
-static struct pci_ops dw_pcie_ops = {
+static const struct pci_ops dw_pcie_ops = {
 	.read = dw_pcie_rd_conf,
 	.write = dw_pcie_wr_conf,
 };
diff --git a/include/linux/pci.h b/include/linux/pci.h
index c00a866a48..478f10207a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -158,7 +158,7 @@ struct pci_controller {
 	struct device_d *parent;
 	struct pci_bus *bus;
 
-	struct pci_ops *pci_ops;
+	const struct pci_ops *pci_ops;
 	struct resource *mem_resource;
 	struct resource *mem_pref_resource;
 	unsigned long mem_offset;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
