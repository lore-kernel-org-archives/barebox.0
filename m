Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCOO-0001Mq-Ap
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 16:59:45 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id F00BF26C2003
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 18:58:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:05:00 +0200
Message-Id: <1411664709-13699-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 06/15] pci: track parent<->child relationship
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
index 59f942d..695fdfd 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -40,6 +40,7 @@ void register_pci_controller(struct pci_controller *hose)
 
 	bus = pci_alloc_bus();
 	hose->bus = bus;
+	bus->parent = hose->parent;
 	bus->host = hose;
 	bus->ops = hose->pci_ops;
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
@@ -310,6 +311,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->devfn = devfn;
 		dev->vendor = l & 0xffff;
 		dev->device = (l >> 16) & 0xffff;
+		dev->dev.parent = bus->parent;
 
 		/* non-destructively determine if device can be a master: */
 		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
@@ -355,6 +357,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
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
