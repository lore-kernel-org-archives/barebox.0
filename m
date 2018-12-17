Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKC-0001do-UG
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id b7so5753379pfi.8
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:13 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:45 -0800
Message-Id: <20181217051925.17582-26-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 25/65] PCI: designware: Rename dw_pcie_valid_config() to
 dw_pcie_valid_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 1034023606d0e971f4dee6f725e441b785a846b5

  Rename dw_pcie_valid_config() to dw_pcie_valid_device() and use the result
  directly as a boolean value instead of testing against 0.  No functional
  change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 2f868828b..c548ae87e 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -502,8 +502,8 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	return ret;
 }
 
-static int dw_pcie_valid_config(struct pcie_port *pp,
-				struct pci_bus *bus, int dev)
+static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
+				int dev)
 {
 	/* If there is no link, then there is no device */
 	if (bus->number != pp->root_bus_nr) {
@@ -533,7 +533,7 @@ static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 
 	*val = 0xffffffff;
 
-	if (dw_pcie_valid_config(pp, bus, PCI_SLOT(devfn)) == 0)
+	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
 		return PCIBIOS_DEVICE_NOT_FOUND;
 
 	data_abort_mask();
@@ -556,7 +556,7 @@ static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
 	struct pcie_port *pp = host_to_pcie(bus->host);
 	int ret;
 
-	if (dw_pcie_valid_config(pp, bus, PCI_SLOT(devfn)) == 0)
+	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
 		return PCIBIOS_DEVICE_NOT_FOUND;
 
 	data_abort_mask();
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
