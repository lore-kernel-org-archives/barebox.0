Delivery-date: Tue, 26 Mar 2024 11:09:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3k0-0051pw-2p
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:09:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jy-0003A0-Kk
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:09:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LWdr/A9zb9MnInHml06F89nNPc8uarkGb2UeT3jMbjA=; b=etwmSER4Mru3gCOc+nwqnmVASW
	j3HrNhd9l+E9MGM2LFjUiaxL04Lwu7q2P3UpN24WOD0nAXnYLZXWpIbJuyuMeb7kb1wTaH828cprP
	OFHl8vV9UtDe5okH97IVhbU8KEz/v+agvdgghY6dDzgw5eSHBr5YKCFhZx3xLfO1HKm2wY/tZ95oU
	g+p+04CYDWX90kaIcspexOdpd+UUWZ8mE+jJJ19my01ORaf4MqTkhmAUWior8UGQj11fftUcPaqUq
	bL3sD7Lc+W6dw70QnWDWwCLP5lt+M26cHmQEYIIlTCxz4BNsHZChDsRUerR31UosU59JuFzGsogeT
	I/o0hBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3jM-00000003xsR-2JOZ;
	Tue, 26 Mar 2024 10:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRx-0e4N
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002Gf-PZ; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0j-C7; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-0q;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:37 +0100
Message-Id: <20240326100746.471532-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_405179_1817B74C 
X-CRM114-Status: GOOD (  18.31  )
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
Subject: [PATCH 07/16] pci: add pci_controller_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming patches will add a list to struct pci_controller. To make
sure we have a single point to initialize the list introduce a
pci_controller_init() and call it from all drivers which use
register_pci_controller(). Make sure host->parent is set correctly
before calling register_pci_controller() as that will be needed for
device tree parsing later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/mach-malta/pci.c         | 2 ++
 drivers/pci/pci-ecam-generic.c     | 2 ++
 drivers/pci/pci-efi.c              | 4 +++-
 drivers/pci/pci-mvebu.c            | 3 +++
 drivers/pci/pci-tegra.c            | 4 +++-
 drivers/pci/pci.c                  | 4 ++++
 drivers/pci/pcie-designware-host.c | 4 +++-
 include/linux/pci.h                | 1 +
 8 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index c9c1c7790b..200d3c907c 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -154,6 +154,8 @@ static int pcibios_init(void)
 {
 	resource_size_t start, end, map, start1, end1, map1, mask;
 
+	pci_controller_init(&gt64120_controller);
+
 	/*
 	 * Due to a bug in the Galileo system controller, we need
 	 * to setup the PCI BAR for the Galileo internal registers.
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
index e8609bd4b0..4db40975e2 100644
--- a/drivers/pci/pci-ecam-generic.c
+++ b/drivers/pci/pci-ecam-generic.c
@@ -186,6 +186,8 @@ static int pcie_ecam_probe(struct device *dev)
 	ecam->pci.io_resource = &ecam->io;
 	ecam->pci.mem_pref_resource = &ecam->prefetch;
 
+	pci_controller_init(&ecam->pci);
+
 	ret = pcie_ecam_parse_dt(ecam);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index 67868d09b6..b8cd663161 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -277,6 +277,9 @@ static int efi_pci_probe(struct efi_device *efidev)
 
 	priv = xzalloc(sizeof(*priv));
 
+	priv->pci.parent = &efidev->dev;
+	pci_controller_init(&priv->pci);
+
 	BS->handle_protocol(efidev->handle, &EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID,
 			(void **)&priv->protocol);
 	if (!priv->protocol)
@@ -310,7 +313,6 @@ static int efi_pci_probe(struct efi_device *efidev)
 		}
 	}
 
-	priv->pci.parent = &efidev->dev;
 	priv->pci.pci_ops = &efi_pci_ops;
 
 	INIT_LIST_HEAD(&priv->children);
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 9e2c7dc648..988465a344 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -322,6 +322,9 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struct device *dev,
 	}
 
 	pcie = xzalloc(sizeof(*pcie));
+
+	pci_controller_init(&pcie->pci);
+
 	pcie->port = port;
 	pcie->lane = lane;
 	pcie->lane_mask = lane_mask;
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index fba8b47ece..9ef50207ab 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1167,7 +1167,6 @@ static int tegra_pcie_enable(struct tegra_pcie *pcie)
 		tegra_pcie_port_free(port);
 	}
 
-	pcie->pci.parent = pcie->dev;
 	pcie->pci.pci_ops = &tegra_pcie_ops;
 	pcie->pci.mem_resource = &pcie->mem;
 	pcie->pci.mem_pref_resource = &pcie->prefetch;
@@ -1241,6 +1240,9 @@ static int tegra_pcie_probe(struct device *dev)
 	if (!pcie)
 		return -ENOMEM;
 
+	pcie->pci.parent = pcie->dev;
+	pci_controller_init(&pcie->pci);
+
 	INIT_LIST_HEAD(&pcie->buses);
 	INIT_LIST_HEAD(&pcie->ports);
 	dev_get_drvdata(dev, (const void **)&pcie->soc_data);
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 15e8cd46bd..67a085d34e 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -42,6 +42,10 @@ static void pci_bus_register_devices(struct pci_bus *bus)
 		pci_bus_register_devices(child_bus);
 }
 
+void pci_controller_init(struct pci_controller *hose)
+{
+}
+
 void register_pci_controller(struct pci_controller *hose)
 {
 	struct pci_bus *bus;
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 644971d4a8..387fac5c0e 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -80,6 +80,9 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	const __be32 *addrp;
 	int index, ret;
 
+	pp->pci.parent = dev;
+	pci_controller_init(&pp->pci);
+
 	/* Find the address cell size and the number of cells in order to get
 	 * the untranslated address.
 	 */
@@ -156,7 +159,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 			return ret;
 	}
 
-	pp->pci.parent = dev;
 	pp->pci.pci_ops = &dw_pcie_ops;
 	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
 	pp->pci.mem_resource = &pp->mem;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 4d4ab818f8..2fea9ba6c7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -278,6 +278,7 @@ int pci_register_device(struct pci_dev *pdev);
 
 extern struct list_head pci_root_buses; /* list of all known PCI buses */
 
+extern void pci_controller_init(struct pci_controller *hose);
 extern void register_pci_controller(struct pci_controller *hose);
 
 int pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
-- 
2.39.2



