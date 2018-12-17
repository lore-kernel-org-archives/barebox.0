Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlJv-0000ov-Ms
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id u18so5548941plq.7
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:19:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:30 -0800
Message-Id: <20181217051925.17582-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/65] PCI: designware: Simplify control flow
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 116a489d78b30862a2dd04961d3ba98fe4704220

  Return values immediately when possible to simplify the control flow.

  No functional change intended.  Folded in unused variable removal as
  pointed out by Fabio Estevam <fabio.estevam@nxp.com>, Arnd Bergmann
  <arnd@arndb.de>, and Thierry Reding <thierry.reding@gmail.com>.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 53 ++++++++++++++---------------------
 1 file changed, 21 insertions(+), 32 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index f52b67f4f..782da2626 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -133,29 +133,19 @@ static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 val, u32 reg)
 static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
 			       u32 *val)
 {
-	int ret;
-
 	if (pp->ops->rd_own_conf)
-		ret = pp->ops->rd_own_conf(pp, where, size, val);
-	else
-		ret = dw_pcie_cfg_read(pp->dbi_base + where,
-				       size, val);
+		return pp->ops->rd_own_conf(pp, where, size, val);
 
-	return ret;
+	return dw_pcie_cfg_read(pp->dbi_base + where, size, val);
 }
 
 static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 			       u32 val)
 {
-	int ret;
-
 	if (pp->ops->wr_own_conf)
-		ret = pp->ops->wr_own_conf(pp, where, size, val);
-	else
-		ret = dw_pcie_cfg_write(pp->dbi_base + where,
-					size, val);
+		return pp->ops->wr_own_conf(pp, where, size, val);
 
-	return ret;
+	return dw_pcie_cfg_write(pp->dbi_base + where, size, val);
 }
 
 static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
@@ -185,8 +175,8 @@ int dw_pcie_link_up(struct pcie_port *pp)
 {
 	if (pp->ops->link_up)
 		return pp->ops->link_up(pp);
-	else
-		return 0;
+
+	return 0;
 }
 
 static inline struct pcie_port *host_to_pcie(struct pci_controller *host)
@@ -430,16 +420,16 @@ static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 
 	data_abort_mask();
 
-	if (bus->number != pp->root_bus_nr)
-		if (pp->ops->rd_other_conf)
-			ret = pp->ops->rd_other_conf(pp, bus, devfn,
-						where, size, val);
-		else
-			ret = dw_pcie_rd_other_conf(pp, bus, devfn,
-						where, size, val);
-	else
+	if (bus->number == pp->root_bus_nr)
 		ret = dw_pcie_rd_own_conf(pp, where, size, val);
 
+	else if (pp->ops->rd_other_conf)
+		ret = pp->ops->rd_other_conf(pp, bus, devfn,
+					     where, size, val);
+	else
+		ret = dw_pcie_rd_other_conf(pp, bus, devfn,
+					    where, size, val);
+
 	if (data_abort_unmask())
 		return PCIBIOS_DEVICE_NOT_FOUND;
 
@@ -457,15 +447,14 @@ static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
 
 	data_abort_mask();
 
-	if (bus->number != pp->root_bus_nr)
-		if (pp->ops->wr_other_conf)
-			ret = pp->ops->wr_other_conf(pp, bus, devfn,
-						where, size, val);
-		else
-			ret = dw_pcie_wr_other_conf(pp, bus, devfn,
-						where, size, val);
-	else
+	if (bus->number == pp->root_bus_nr)
 		ret = dw_pcie_wr_own_conf(pp, where, size, val);
+	else if (pp->ops->wr_other_conf)
+		ret = pp->ops->wr_other_conf(pp, bus, devfn,
+					     where, size, val);
+	else
+		ret = dw_pcie_wr_other_conf(pp, bus, devfn,
+					    where, size, val);
 
 	if (data_abort_unmask())
 		return PCIBIOS_DEVICE_NOT_FOUND;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
