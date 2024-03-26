Delivery-date: Tue, 26 Mar 2024 11:36:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4At-0054Yi-34
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:36:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4At-0002fV-5N
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:36:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0og+GretmoKkiNpj6rZwin04KNCKPUGM4gsUEoqljTs=; b=JjauWoCBD+4hHRProuWNRzsbb6
	Cc17FesWTHJwyxCQ0kkorSu4IQ6VzUwFnfU59sABUImkvCPd0+FCX1TNrd9ErRbnJRoDapfD/x0Xi
	lz+fIWxonDXEWTgKPj29oBaXmcK1CEENb9foTWe7/Wwc/f8XL04I3X2A4VjsYQtHL5yJ4/7euvtV6
	4tfCf+kl9JhNcV+9MXRdjsBS1ULTbh7ZNfXO/Ax1tO4ZOD+V8WPii9dHrIX6Bq4bUDqPGz3tmMVJx
	LIphjGP1Cmpjq6nfwcLx5uVMj0hJL1hZ5F4BQy16K1KcBaIpPzjwx6ufnhdeqqYw4GWbB2SZVtKpS
	XB5BnCTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4AF-000000045Tn-2sWD;
	Tue, 26 Mar 2024 10:36:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4A2-000000045Km-45iz
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023R-NC; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b6q-JM; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-1Y;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:41 +0100
Message-Id: <20240326100746.471532-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033607_174915_5F67205D 
X-CRM114-Status: GOOD (  17.38  )
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
Subject: [PATCH 11/16] pci: drop resources from struct pci_bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct pci_bus has resources attached to it. They pointers are copied
from the pci_controller to the pci_bus and from there to the child
buses. Drop them and use the resources from the pci_controller directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c   | 32 +++++++++++---------------------
 include/linux/pci.h |  1 -
 2 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 5113abe0fc..0a238cd190 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -54,27 +54,24 @@ void register_pci_controller(struct pci_controller *hose)
 	bus = pci_alloc_bus();
 	hose->bus = bus;
 	bus->host = hose;
-	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
-	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
-	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
 
 	if (pcibios_assign_all_busses()) {
 		bus->number = bus_index++;
 		if (hose->set_busno)
 			hose->set_busno(hose, bus->number);
 
-		if (bus->resource[PCI_BUS_RESOURCE_MEM])
-			last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
+		if (hose->mem_resource)
+			last_mem = hose->mem_resource->start;
 		else
 			last_mem = 0;
 
-		if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
-			last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
+		if (hose->mem_pref_resource)
+			last_mem_pref = hose->mem_pref_resource->start;
 		else
 			last_mem_pref = 0;
 
-		if (bus->resource[PCI_BUS_RESOURCE_IO])
-			last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
+		if (hose->io_resource)
+			last_io = hose->io_resource->start;
 		else
 			last_io = 0;
 	}
@@ -360,7 +357,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		u32 orig, mask, size;
 		unsigned long flags;
 		const char *kind;
-		int busres;
+		struct resource *busres;
 
 		pci_read_config_dword(dev, pci_base_address_0, &orig);
 		pci_write_config_dword(dev, pci_base_address_0, 0xfffffffe);
@@ -377,20 +374,20 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			flags     = IORESOURCE_IO;
 			kind      = "IO";
 			last_addr = &last_io;
-			busres    = PCI_BUS_RESOURCE_IO;
+			busres    = dev->bus->host->io_resource;
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
 		           last_mem_pref) /* prefetchable MEM */ {
 			size      = pci_size(orig, mask, 0xfffffff0);
 			flags     = IORESOURCE_MEM | IORESOURCE_PREFETCH;
 			kind      = "P-MEM";
 			last_addr = &last_mem_pref;
-			busres    = PCI_BUS_RESOURCE_MEM_PREF;
+			busres    = dev->bus->host->mem_pref_resource;;
 		} else { /* non-prefetch MEM */
 			size      = pci_size(orig, mask, 0xfffffff0);
 			flags     = IORESOURCE_MEM;
 			kind      = "NP-MEM";
 			last_addr = &last_mem;
-			busres    = PCI_BUS_RESOURCE_MEM;
+			busres    = dev->bus->host->mem_resource;
 		}
 
 		if (!size) {
@@ -405,8 +402,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			struct resource res;
 			struct pci_bus_region region;
 
-			if (ALIGN(*last_addr, size) + size >
-			    dev->bus->resource[busres]->end) {
+			if (ALIGN(*last_addr, size) + size > busres->end) {
 				pr_debug("BAR does not fit within bus %s res\n", kind);
 				return;
 			}
@@ -678,12 +674,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			/* inherit parent properties */
 			child_bus->host = bus->host;
 			child_bus->parent = bus;
-			child_bus->resource[PCI_BUS_RESOURCE_MEM] =
-				bus->resource[PCI_BUS_RESOURCE_MEM];
-			child_bus->resource[PCI_BUS_RESOURCE_MEM_PREF] =
-				bus->resource[PCI_BUS_RESOURCE_MEM_PREF];
-			child_bus->resource[PCI_BUS_RESOURCE_IO] =
-				bus->resource[PCI_BUS_RESOURCE_IO];
 
 			child_bus->self = dev;
 
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 73117afa08..11a60f66a9 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -148,7 +148,6 @@ struct pci_bus {
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
 	struct list_head devices;	/* list of devices on this bus */
-	struct resource *resource[PCI_BRIDGE_RESOURCE_NUM];
 
 	unsigned char	number;		/* bus number */
 	unsigned char	primary;	/* number of primary bridge */
-- 
2.39.2



