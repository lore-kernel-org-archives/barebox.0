Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00054Q-2g
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:40 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 144F626C2005
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:56 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:10 +0200
Message-Id: <1412444425-2569-5-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 04/19] pci: properly populate prefetchable BARs
To: barebox@lists.infradead.org

Some host controllers provide a prefetchable
memory area and devices will prefer this for
some of their BARs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c   | 59 ++++++++++++++++++++++++++++++++++++++++-------------
 include/linux/pci.h |  1 +
 2 files changed, 46 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index e9f0cb5..115d8a3 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -13,6 +13,7 @@ LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
 static u8 bus_index;
 static resource_size_t last_mem;
+static resource_size_t last_mem_pref;
 static resource_size_t last_io;
 
 static struct pci_bus *pci_alloc_bus(void)
@@ -42,14 +43,27 @@ void register_pci_controller(struct pci_controller *hose)
 	bus->host = hose;
 	bus->ops = hose->pci_ops;
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
+	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
 	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
 	bus->number = bus_index++;
 
 	if (hose->set_busno)
 		hose->set_busno(hose, bus->number);
 
-	last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
-	last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
+	if (bus->resource[PCI_BUS_RESOURCE_MEM])
+		last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
+	else
+		last_mem = 0;
+
+	if (bus->resource[PCI_BUS_RESOURCE_MEM])
+		last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
+	else
+		last_mem_pref = 0;
+
+	if (bus->resource[PCI_BUS_RESOURCE_IO])
+		last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
+	else
+		last_io = 0;
 
 	pci_scan_bus(bus);
 
@@ -150,31 +164,46 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			dev->resource[bar].flags = IORESOURCE_IO;
 			last_addr = last_io;
 			last_io += size;
-		} else { /* MEM */
+		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
+		           last_mem_pref) /* prefetchable MEM */ {
 			size = -(mask & 0xfffffff0);
-			DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
+			DBG("  PCI: pbar%d: mask=%08x P memory %d bytes\n",
+			    bar, mask, size);
+			if (last_mem_pref + size >
+			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
+				DBG("BAR does not fit within bus p-mem res\n");
+				return;
+			}
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
+			dev->resource[bar].flags = IORESOURCE_MEM |
+			                           IORESOURCE_PREFETCH;
+			last_addr = last_mem_pref;
+			last_mem_pref += size;
+		} else { /* non-prefetch MEM */
+			size = -(mask & 0xfffffff0);
+			DBG("  PCI: pbar%d: mask=%08x NP memory %d bytes\n",
+			    bar, mask, size);
 			if (last_mem + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
-				DBG("BAR does not fit within bus mem res\n");
+				DBG("BAR does not fit within bus np-mem res\n");
 				return;
 			}
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
 			dev->resource[bar].flags = IORESOURCE_MEM;
 			last_addr = last_mem;
 			last_mem += size;
-
-			if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
-			    PCI_BASE_ADDRESS_MEM_TYPE_64) {
-				dev->resource[bar].flags |= IORESOURCE_MEM_64;
-				pci_write_config_dword(dev,
-				       PCI_BASE_ADDRESS_1 + bar * 4, 0);
-			}
 		}
 
 		dev->resource[bar].start = last_addr;
 		dev->resource[bar].end = last_addr + size - 1;
-		if (dev->resource[bar].flags & IORESOURCE_MEM_64)
+
+		if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
+		    PCI_BASE_ADDRESS_MEM_TYPE_64) {
+			dev->resource[bar].flags |= IORESOURCE_MEM_64;
+			pci_write_config_dword(dev,
+			       PCI_BASE_ADDRESS_1 + bar * 4, 0);
 			bar++;
+		}
 	}
 
 	pci_write_config_byte(dev, PCI_COMMAND, cmd);
@@ -189,7 +218,9 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	unsigned char cmd, tmp, hdr_type, is_multi = 0;
 
 	DBG("pci_scan_bus for bus %d\n", bus->number);
-	DBG(" last_io = 0x%08x, last_mem = 0x%08x\n", last_io, last_mem);
+	DBG(" last_io = 0x%08x, last_mem = 0x%08x, last_mem_pref = 0x%08x\n",
+	    last_io, last_mem, last_mem_pref);
+
 	max = bus->secondary;
 
 	for (devfn = 0; devfn < 0xff; ++devfn) {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index f5ef588..932acf0 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -162,6 +162,7 @@ struct pci_controller {
 
 	struct pci_ops *pci_ops;
 	struct resource *mem_resource;
+	struct resource *mem_pref_resource;
 	unsigned long mem_offset;
 	struct resource *io_resource;
 	unsigned long io_offset;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
