Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTEH-0003pu-J2
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:34:50 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 144BE26C2007
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:12 +0200
Message-Id: <1412444425-2569-7-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 06/19] pci: defer device registration until after bridge
 setup
To: barebox@lists.infradead.org

Otherwise the drivers for a device may probe before the
devices parent bridge is fully configured, which leads
to errors when accessing the BARs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 59f942d..943d0e8 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -208,7 +208,6 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
 	pci_write_config_byte(dev, PCI_COMMAND, cmd);
 	list_add_tail(&dev->bus_list, &dev->bus->devices);
-	pci_register_device(dev);
 }
 
 static void prescan_setup_bridge(struct pci_dev *dev)
@@ -362,6 +361,11 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			prescan_setup_bridge(dev);
 			pci_scan_bus(child_bus);
 			postscan_setup_bridge(dev);
+			/* first activate bridge then all devices on it's bus */
+			pci_register_device(dev);
+			list_for_each_entry(dev, &child_bus->devices, bus_list)
+				if (!dev->subordinate)
+					pci_register_device(dev);
 			break;
 		default:
 		bad:
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
