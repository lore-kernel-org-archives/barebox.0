Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Uua-0003O7-Um
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:59:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1UuF-0004c4-IU
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:58:55 +0100
Message-Id: <20161101085855.953-5-l.stach@pengutronix.de>
In-Reply-To: <20161101085855.953-1-l.stach@pengutronix.de>
References: <20161101085855.953-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] PCI: split PCI hierarchy enumeration and config from
 device registration
To: barebox@lists.infradead.org

This gets rid of some of the special cases in the bus scanning function
by splitting hierarchy enumeration and configuration and the actual
device registration into 2 passes.

This ensures that the PCI hierarchy below a root port is completely
set up before any device driver is probed.

This simplifies the code and makes it less error prone, while moving
the PCI address space layout closer to the one used by Linux.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 12aafccde578..b2570eb15181 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -28,6 +28,20 @@ static struct pci_bus *pci_alloc_bus(void)
 	return b;
 }
 
+static void pci_bus_register_devices(struct pci_bus *bus)
+{
+	struct pci_dev *dev;
+	struct pci_bus *child_bus;
+
+	/* activate all devices on this bus */
+	list_for_each_entry(dev, &bus->devices, bus_list)
+		pci_register_device(dev);
+
+	/* walk down the hierarchy */
+	list_for_each_entry(child_bus, &bus->children, node)
+		pci_bus_register_devices(child_bus);
+}
+
 void register_pci_controller(struct pci_controller *hose)
 {
 	struct pci_bus *bus;
@@ -64,6 +78,7 @@ void register_pci_controller(struct pci_controller *hose)
 		last_io = 0;
 
 	pci_scan_bus(bus);
+	pci_bus_register_devices(bus);
 
 	list_add_tail(&bus->node, &pci_root_buses);
 
@@ -384,16 +399,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			dev->rom_address = (l == 0xffffffff) ? 0 : l;
 
 			setup_device(dev, 6);
-			/*
-			 * If this device is on the root bus, there is no bridge
-			 * to configure, so we can activate it right away.
-			 */
-			if (!bus->parent_bus)
-				pci_register_device(dev);
 			break;
 		case PCI_HEADER_TYPE_BRIDGE:
-			setup_device(dev, 2);
-
 			child_bus = pci_alloc_bus();
 			/* inherit parent properties */
 			child_bus->host = bus->host;
@@ -412,18 +419,12 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
 
-			/* activate bridge device */
-			pci_register_device(dev);
-
 			/* scan pci hierarchy behind bridge */
 			prescan_setup_bridge(dev);
 			pci_scan_bus(child_bus);
 			postscan_setup_bridge(dev);
 
-			/* finally active all devices behind the bridge */
-			list_for_each_entry(dev, &child_bus->devices, bus_list)
-				if (!dev->subordinate)
-					pci_register_device(dev);
+			setup_device(dev, 2);
 			break;
 		default:
 		bad:
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
