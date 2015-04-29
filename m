Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YnYA7-0003sn-LZ
 for barebox@lists.infradead.org; Wed, 29 Apr 2015 20:00:52 +0000
Received: from tellur.intern.lynxeye.de (p57B5F6E7.dip0.t-ipconnect.de
 [87.181.246.231]) by lynxeye.de (Postfix) with ESMTPA id 857C626C2001
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2015 21:59:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 29 Apr 2015 21:59:46 +0200
Message-Id: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] PCI: register and active bridge device before proceeding
 to scan
To: barebox@lists.infradead.org

The bridge device needs to be registered and activated before
the scanning can proceed, as the bridge is the parent for other
devices.

This fixes a NULL ptr derefernce when scanning PCI hierarchies
with bridges behind bridges.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Please apply to master, as this fixes a crash when activating
PCI support on the GW54xx board.
---
 drivers/pci/pci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 40e0fe7..470ea66 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -371,11 +371,15 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
 
+			/* activate bridge device */
+			pci_register_device(dev);
+
+			/* scan pci hierarchy behind bridge */
 			prescan_setup_bridge(dev);
 			pci_scan_bus(child_bus);
 			postscan_setup_bridge(dev);
-			/* first activate bridge then all devices on it's bus */
-			pci_register_device(dev);
+
+			/* finally active all devices behind the bridge */
 			list_for_each_entry(dev, &child_bus->devices, bus_list)
 				if (!dev->subordinate)
 					pci_register_device(dev);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
