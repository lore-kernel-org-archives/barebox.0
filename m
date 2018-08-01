Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkmeY-0007vT-R2
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 08:38:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fkmeN-0008Bs-6a
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 10:38:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Aug 2018 10:38:29 +0200
Message-Id: <20180801083831.12983-2-l.stach@pengutronix.de>
In-Reply-To: <20180801083831.12983-1-l.stach@pengutronix.de>
References: <20180801083831.12983-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] PCI: link PCI devices with potentially existing OF nodes
To: barebox@lists.infradead.org

The document "PCI Bus Binding to: IEEE Std 1275-1994 Standard for Boot
(Initialization Configuration) Firmware" describes how the PCI topology
can be described in the DT, in order to augment the PCI devices with
additional information via DT properties.

This patch links OF nodes to the corresponding PCI devices if they
exist, allowing PCI device drivers to query DT information like any
platform device.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index b2570eb15181..bd8b7278ef19 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -331,6 +331,31 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 	}
 }
 
+static struct device_node *
+pci_of_match_device(struct device_d *parent, unsigned int devfn)
+{
+	struct device_node *np;
+	u32 reg;
+
+	if (!IS_ENABLED(CONFIG_OFTREE) || !parent->device_node)
+		return NULL;
+
+	for_each_child_of_node(parent->device_node, np) {
+		if (!of_property_read_u32_array(np, "reg", &reg, 1)) {
+			/*
+			 * Only match device/function pair of the device
+			 * address, other properties are defined by the
+			 * PCI/OF node topology.
+			 */
+			reg = (reg >> 8) & 0xffff;
+			if (reg == devfn)
+				return np;
+		}
+	}
+
+	return NULL;
+}
+
 unsigned int pci_scan_bus(struct pci_bus *bus)
 {
 	struct pci_dev *dev;
@@ -368,6 +393,11 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->vendor = l & 0xffff;
 		dev->device = (l >> 16) & 0xffff;
 		dev->dev.parent = bus->parent;
+		dev->dev.device_node = pci_of_match_device(bus->parent, devfn);
+		if (dev->dev.device_node)
+			pr_debug("found DT node %s for device %04x:%04x\n",
+				 dev->dev.device_node->full_name,
+				 dev->vendor, dev->device);
 
 		/* non-destructively determine if device can be a master: */
 		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
