Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00055H-2m
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:39 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 65D8226C2009
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:14 +0200
Message-Id: <1412444425-2569-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 08/19] pci: track parent<->child relationship
To: barebox@lists.infradead.org

So that PCI devices hang down from bridges and root
bridges down from the PCI host controller when
calling devinfo.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c   | 4 ++++
 include/linux/pci.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 943d0e8..ba9d097 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -40,6 +40,7 @@ void register_pci_controller(struct pci_controller *hose)
 
 	bus = pci_alloc_bus();
 	hose->bus = bus;
+	bus->parent = hose->parent;
 	bus->host = hose;
 	bus->ops = hose->pci_ops;
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
@@ -309,6 +310,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->devfn = devfn;
 		dev->vendor = l & 0xffff;
 		dev->device = (l >> 16) & 0xffff;
+		dev->dev.parent = bus->parent;
 
 		/* non-destructively determine if device can be a master: */
 		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
@@ -354,6 +356,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 				bus->resource[PCI_BUS_RESOURCE_MEM_PREF];
 			child_bus->resource[PCI_BUS_RESOURCE_IO] =
 				bus->resource[PCI_BUS_RESOURCE_IO];
+
+			child_bus->parent = &dev->dev;
 			child_bus->number = bus_index++;
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 932acf0..3d0e73b 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -122,6 +122,7 @@ enum {
 };
 struct pci_bus {
 	struct pci_controller *host;	/* associated host controller */
+	struct device_d *parent;
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
 	struct list_head devices;	/* list of devices on this bus */
@@ -158,6 +159,7 @@ extern struct pci_ops *pci_ops;
  */
 struct pci_controller {
 	struct pci_controller *next;
+	struct device_d *parent;
 	struct pci_bus *bus;
 
 	struct pci_ops *pci_ops;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
