Delivery-date: Tue, 26 Mar 2024 11:36:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4Ad-0054WL-0I
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:36:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4AW-0002PY-U4
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:36:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yN7glKagsCZK9GYcfUsNJoa9W05zEfq+hDJvXvWZIT4=; b=uaD2EwltP1cnSmklkeank02/qD
	C+q0kt4KHRp33c6bqIofdgmDWvhEq1hvYAArZLtWfGFBAnhzpIQNMtUqjchLDc3SogdcQZgo1VWdi
	82CasxjH1pHBuAfk8DMLLg9e8O4n68bwuB3rNAH080bKdnbxcruOZ3nKGjbZ+Cmgw6WwT2zxY3dqv
	7CShpR/QJyfx0VGLAl8teL7vd1GpaSpGwr9RWp/i4oj8S/jFG6FOo9NRYSpvjycWd2C8ewQIaop8R
	gzcqkSXpFsvCUIMZpo0x35FrIQppzyFL8ISt/GXMPe5UQMQg6RCNUT61PNutlUBvqFJaCMXo4rElp
	vBdlFLJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp49y-000000045J1-1yUj;
	Tue, 26 Mar 2024 10:36:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp49v-000000045Ht-3stH
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023W-ND; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b75-Ux; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-22;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:44 +0100
Message-Id: <20240326100746.471532-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033559_994886_27A9EF1A 
X-CRM114-Status: GOOD (  16.96  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/16] pci: pcie-designware: remove dra7xx quirks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pcie-designware driver has several quirks needed only for dra7xx
which we currently do not support in barebox. In Linux these quirks
have been moved to the dra7xx glue code over time. Remove the quirks
to cleanup the driver a bit.

See these Linux commits for more explanations:

9cdce1cdc0c4 ("Revert "PCI: designware: Program ATU with untranslated address"")
883cc17cb193 ("PCI: designware: Move calculation of bus addresses to DRA7xx")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 41 ++++++++----------------------
 drivers/pci/pcie-designware.h      |  5 +---
 2 files changed, 11 insertions(+), 35 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 66ae5b59a1..87842bf4ee 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -75,31 +75,17 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
 	struct resource *cfg_res;
-	u32 na, ns;
-	const __be32 *addrp;
-	int index, ret;
+	int ret;
 
 	pp->pci.parent = dev;
 	pci_controller_init(&pp->pci);
 
-	/* Find the address cell size and the number of cells in order to get
-	 * the untranslated address.
-	 */
-	of_property_read_u32(np, "#address-cells", &na);
-	ns = of_n_size_cells(np);
-
 	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
 	if (!IS_ERR(cfg_res)) {
 		pp->cfg0_size = resource_size(cfg_res) >> 1;
 		pp->cfg1_size = resource_size(cfg_res) >> 1;
 		pp->cfg0_base = cfg_res->start;
 		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
-
-		/* Find the untranslated configuration space address */
-		index = of_property_match_string(np, "reg-names", "config");
-		addrp = of_get_address(np, index, NULL, NULL);
-		pp->cfg0_mod_base = of_read_number(addrp, ns);
-		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
 	} else {
 		dev_err(dev, "Missing *config* reg space\n");
 		return -ENODEV;
@@ -118,18 +104,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 			pp->io_size = range.size;
 			pp->io_bus_addr = range.pci_addr;
 			pp->io_base = range.cpu_addr;
-
-			/* Find the untranslated IO space address */
-			pp->io_mod_base = of_read_number(parser.range -
-							 parser.np + na, ns);
 		}
 		if (restype == IORESOURCE_MEM) {
 			pp->mem_size = range.size;
 			pp->mem_bus_addr = range.pci_addr;
-
-			/* Find the untranslated MEM space address */
-			pp->mem_mod_base = of_read_number(parser.range -
-							  parser.np + na, ns);
+			pp->mem_base = range.cpu_addr;
 		}
 	}
 
@@ -179,12 +158,12 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 
 	if (bus->primary == pp->root_bus_nr) {
 		type = PCIE_ATU_TYPE_CFG0;
-		cpu_addr = pp->cfg0_mod_base;
+		cpu_addr = pp->cfg0_base;
 		cfg_size = pp->cfg0_size;
 		va_cfg_base = pp->va_cfg0_base;
 	} else {
 		type = PCIE_ATU_TYPE_CFG1;
-		cpu_addr = pp->cfg1_mod_base;
+		cpu_addr = pp->cfg1_base;
 		cfg_size = pp->cfg1_size;
 		va_cfg_base = pp->va_cfg1_base;
 	}
@@ -195,7 +174,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	ret = dw_pcie_read(va_cfg_base + where, size, val);
 	if (pci->num_viewport <= 2)
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  PCIE_ATU_TYPE_IO, pp->io_base,
 					  pp->io_bus_addr, pp->io_size);
 
 	return ret;
@@ -219,12 +198,12 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 
 	if (bus->primary == pp->root_bus_nr) {
 		type = PCIE_ATU_TYPE_CFG0;
-		cpu_addr = pp->cfg0_mod_base;
+		cpu_addr = pp->cfg0_base;
 		cfg_size = pp->cfg0_size;
 		va_cfg_base = pp->va_cfg0_base;
 	} else {
 		type = PCIE_ATU_TYPE_CFG1;
-		cpu_addr = pp->cfg1_mod_base;
+		cpu_addr = pp->cfg1_base;
 		cfg_size = pp->cfg1_size;
 		va_cfg_base = pp->va_cfg1_base;
 	}
@@ -235,7 +214,7 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	ret = dw_pcie_write(va_cfg_base + where, size, val);
 	if (pci->num_viewport <= 2)
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  PCIE_ATU_TYPE_IO, pp->io_base,
 					  pp->io_bus_addr, pp->io_size);
 
 	return ret;
@@ -350,7 +329,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         */
 	if (!pp->ops->rd_other_conf) {
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  PCIE_ATU_TYPE_MEM, pp->mem_base,
 					  pp->mem_bus_addr, pp->mem_size);
 		if (pci->num_viewport > 2)
 			dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX2,
@@ -370,4 +349,4 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
 	val |= PORT_LOGIC_SPEED_CHANGE;
 	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
-}
\ No newline at end of file
+}
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 96a269dc59..0c93e6f3b8 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -143,18 +143,15 @@ struct dw_pcie_host_ops {
 struct pcie_port {
 	u8			root_bus_nr;
 	u64			cfg0_base;
-	u64			cfg0_mod_base;
 	void __iomem		*va_cfg0_base;
 	u32			cfg0_size;
 	u64			cfg1_base;
-	u64			cfg1_mod_base;
 	void __iomem		*va_cfg1_base;
 	u32			cfg1_size;
 	u64			io_base;
-	u64			io_mod_base;
 	phys_addr_t		io_bus_addr;
 	u32			io_size;
-	u64			mem_mod_base;
+	u64			mem_base;
 	phys_addr_t		mem_bus_addr;
 	u32			mem_size;
 	struct resource		io;
-- 
2.39.2



