Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCOO-0001Ks-Ar
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 16:59:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 4522C26C2002
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 18:58:51 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:04:55 +0200
Message-Id: <1411664709-13699-2-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/15] pci: split out device init
To: barebox@lists.infradead.org

To make it reusable and the code more readable.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 137 +++++++++++++++++++++++++++++-------------------------
 1 file changed, 74 insertions(+), 63 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index a1b7680..ef998dc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -12,6 +12,8 @@ static struct pci_controller *hose_head, **hose_tail = &hose_head;
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
 static u8 bus_index;
+static resource_size_t last_mem;
+static resource_size_t last_io;
 
 static struct pci_bus *pci_alloc_bus(void)
 {
@@ -45,6 +47,10 @@ void register_pci_controller(struct pci_controller *hose)
 
 	if (hose->set_busno)
 		hose->set_busno(hose, bus->number);
+
+	last_mem = bus->resource[0]->start;
+	last_io = bus->resource[1]->start;
+
 	pci_scan_bus(bus);
 
 	list_add_tail(&bus->node, &pci_root_buses);
@@ -111,27 +117,80 @@ static struct pci_dev *alloc_pci_dev(void)
 	return dev;
 }
 
+static void setup_device(struct pci_dev *dev, int max_bar)
+{
+	int bar, size;
+	u32 mask;
+	u8 cmd;
+
+	pci_read_config_byte(dev, PCI_COMMAND, &cmd);
+	pci_write_config_byte(dev, PCI_COMMAND,
+			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
+
+	for (bar = 0; bar < max_bar; bar++) {
+		resource_size_t last_addr;
+
+		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
+		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
+
+		if (mask == 0 || mask == 0xffffffff) {
+			DBG("  PCI: pbar%d set bad mask\n", bar);
+			continue;
+		}
+
+		if (mask & 0x01) { /* IO */
+			size = -(mask & 0xfffffffe);
+			DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
+			if (last_mem + size > dev->bus->resource[0]->end) {
+				DBG("BAR does not fit within bus IO res\n");
+				return;
+			}
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
+			dev->resource[bar].flags = IORESOURCE_IO;
+			last_addr = last_io;
+			last_io += size;
+		} else { /* MEM */
+			size = -(mask & 0xfffffff0);
+			DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
+			if (last_mem + size > dev->bus->resource[0]->end) {
+				DBG("BAR does not fit within bus mem res\n");
+				return;
+			}
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
+			dev->resource[bar].flags = IORESOURCE_MEM;
+			last_addr = last_mem;
+			last_mem += size;
+
+			if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
+			    PCI_BASE_ADDRESS_MEM_TYPE_64) {
+				dev->resource[bar].flags |= IORESOURCE_MEM_64;
+				pci_write_config_dword(dev,
+				       PCI_BASE_ADDRESS_1 + bar * 4, 0);
+			}
+		}
+
+		dev->resource[bar].start = last_addr;
+		dev->resource[bar].end = last_addr + size - 1;
+		if (dev->resource[bar].flags & IORESOURCE_MEM_64)
+			bar++;
+	}
+
+	pci_write_config_byte(dev, PCI_COMMAND, cmd);
+	list_add_tail(&dev->bus_list, &dev->bus->devices);
+	pci_register_device(dev);
+}
+
 unsigned int pci_scan_bus(struct pci_bus *bus)
 {
+	struct pci_dev *dev;
 	unsigned int devfn, l, max, class;
 	unsigned char cmd, tmp, hdr_type, is_multi = 0;
-	struct pci_dev *dev;
-	resource_size_t last_mem;
-	resource_size_t last_io;
-
-	/* FIXME: use res_start() */
-	last_mem = bus->resource[0]->start;
-	last_io = bus->resource[1]->start;
 
 	DBG("pci_scan_bus for bus %d\n", bus->number);
 	DBG(" last_io = 0x%08x, last_mem = 0x%08x\n", last_io, last_mem);
 	max = bus->secondary;
 
 	for (devfn = 0; devfn < 0xff; ++devfn) {
-		int bar;
-		u32 old_bar, mask;
-		int size;
-
 		if (PCI_FUNC(devfn) && !is_multi) {
 			/* not a multi-function device */
 			continue;
@@ -169,6 +228,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->hdr_type = hdr_type;
 
 		DBG("PCI: class = %08x, hdr_type = %08x\n", class, hdr_type);
+		DBG("PCI: %02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
+		    dev->vendor, dev->device);
 
 		switch (hdr_type & 0x7f) {		    /* header type */
 		case PCI_HEADER_TYPE_NORMAL:		    /* standard header */
@@ -181,6 +242,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			 */
 			pci_read_config_dword(dev, PCI_ROM_ADDRESS, &l);
 			dev->rom_address = (l == 0xffffffff) ? 0 : l;
+
+			setup_device(dev, 6);
 			break;
 		default:				    /* unknown header */
 		bad:
@@ -189,62 +252,10 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			continue;
 		}
 
-		DBG("PCI: %02x:%02x [%04x/%04x]\n", bus->number, dev->devfn, dev->vendor, dev->device);
-
 		if (class == PCI_CLASS_BRIDGE_HOST) {
 			DBG("PCI: skip pci host bridge\n");
 			continue;
 		}
-
-		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
-		pci_write_config_byte(dev, PCI_COMMAND,
-				      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
-
-		for (bar = 0; bar < 6; bar++) {
-			resource_size_t last_addr;
-
-			pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &old_bar);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
-			pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, old_bar);
-
-			if (mask == 0 || mask == 0xffffffff) {
-				DBG("  PCI: pbar%d set bad mask\n", bar);
-				continue;
-			}
-
-			if (mask & 0x01) { /* IO */
-				size = -(mask & 0xfffffffe);
-				DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
-				dev->resource[bar].flags = IORESOURCE_IO;
-				last_addr = last_io;
-				last_io += size;
-			} else { /* MEM */
-				size = -(mask & 0xfffffff0);
-				DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
-				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
-				dev->resource[bar].flags = IORESOURCE_MEM;
-				last_addr = last_mem;
-				last_mem += size;
-
-				if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
-				    PCI_BASE_ADDRESS_MEM_TYPE_64) {
-					dev->resource[bar].flags |= IORESOURCE_MEM_64;
-					pci_write_config_dword(dev,
-					       PCI_BASE_ADDRESS_1 + bar * 4, 0);
-				}
-			}
-
-			dev->resource[bar].start = last_addr;
-			dev->resource[bar].end = last_addr + size - 1;
-			if (dev->resource[bar].flags & IORESOURCE_MEM_64)
-				bar++;
-		}
-
-		pci_write_config_byte(dev, PCI_COMMAND, cmd);
-		list_add_tail(&dev->bus_list, &bus->devices);
-		pci_register_device(dev);
 	}
 
 	/*
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
