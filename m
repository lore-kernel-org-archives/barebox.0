Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPk-0003AT-GU
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:57:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id t13so4304047pgr.11
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:57:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:20 -0800
Message-Id: <20190110045739.19399-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/21] PCI: Replace last_* variables with an array
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of codepaths in pci.c perform almost exactly the same
operations on variables with different names. In order to replace
those paths with loops, replace last_mem, last_mem_perf, last_io,
bus_index with a single last[] array indexed with PCI_BUS_RESOURCE_*
constants. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 115 +++++++++++++++++++++++-----------------------
 1 file changed, 58 insertions(+), 57 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 1f9d360d79..6a327c6f88 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -8,10 +8,7 @@ static struct pci_controller *hose_head, **hose_tail = &hose_head;
 
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
-static u8 bus_index;
-static resource_size_t last_mem;
-static resource_size_t last_mem_pref;
-static resource_size_t last_io;
+static resource_size_t last[PCI_BRIDGE_RESOURCE_NUM];
 
 static struct pci_bus *pci_alloc_bus(void)
 {
@@ -57,25 +54,25 @@ void register_pci_controller(struct pci_controller *hose)
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
 	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
 	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
-	bus->number = bus_index++;
+	bus->number = last[PCI_BUS_RESOURCE_BUSN]++;
 
 	if (hose->set_busno)
 		hose->set_busno(hose, bus->number);
 
 	if (bus->resource[PCI_BUS_RESOURCE_MEM])
-		last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
+		last[PCI_BUS_RESOURCE_MEM] = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
 	else
-		last_mem = 0;
+		last[PCI_BUS_RESOURCE_MEM] = 0;
 
 	if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
-		last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
+		last[PCI_BUS_RESOURCE_MEM_PREF] = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
 	else
-		last_mem_pref = 0;
+		last[PCI_BUS_RESOURCE_MEM_PREF] = 0;
 
 	if (bus->resource[PCI_BUS_RESOURCE_IO])
-		last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
+		last[PCI_BUS_RESOURCE_IO] = bus->resource[PCI_BUS_RESOURCE_IO]->start;
 	else
-		last_io = 0;
+		last[PCI_BUS_RESOURCE_IO] = 0;
 
 	pci_scan_bus(bus);
 	pci_bus_register_devices(bus);
@@ -189,19 +186,19 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				continue;
 			}
 			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-			if (ALIGN(last_io, size) + size >
+			if (ALIGN(last[PCI_BUS_RESOURCE_IO], size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
 				pr_debug("BAR does not fit within bus IO res\n");
 				return;
 			}
-			last_io = ALIGN(last_io, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_io);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
+			last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], size);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_IO]);
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_IO]);
 			dev->resource[bar].flags = IORESOURCE_IO;
-			last_addr = last_io;
-			last_io += size;
+			last_addr = last[PCI_BUS_RESOURCE_IO];
+			last[PCI_BUS_RESOURCE_IO] += size;
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
-		           last_mem_pref) /* prefetchable MEM */ {
+		           last[PCI_BUS_RESOURCE_MEM_PREF]) /* prefetchable MEM */ {
 			size = pci_size(orig, mask, 0xfffffff0);
 			if (!size) {
 				pr_debug("pbar%d bad P-MEM mask\n", bar);
@@ -209,18 +206,18 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			}
 			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
 			    bar, mask, size);
-			if (ALIGN(last_mem_pref, size) + size >
+			if (ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
 				pr_debug("BAR does not fit within bus p-mem res\n");
 				return;
 			}
-			last_mem_pref = ALIGN(last_mem_pref, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem_pref);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
+			last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], size);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_MEM_PREF]);
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_MEM_PREF]);
 			dev->resource[bar].flags = IORESOURCE_MEM |
 			                           IORESOURCE_PREFETCH;
-			last_addr = last_mem_pref;
-			last_mem_pref += size;
+			last_addr = last[PCI_BUS_RESOURCE_MEM_PREF];
+			last[PCI_BUS_RESOURCE_MEM_PREF] += size;
 		} else { /* non-prefetch MEM */
 			size = pci_size(orig, mask, 0xfffffff0);
 			if (!size) {
@@ -229,17 +226,17 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			}
 			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
 			    bar, mask, size);
-			if (ALIGN(last_mem, size) + size >
+			if (ALIGN(last[PCI_BUS_RESOURCE_MEM], size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
 				pr_debug("BAR does not fit within bus np-mem res\n");
 				return;
 			}
-			last_mem = ALIGN(last_mem, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
+			last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], size);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_MEM]);
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_MEM]);
 			dev->resource[bar].flags = IORESOURCE_MEM;
-			last_addr = last_mem;
-			last_mem += size;
+			last_addr = last[PCI_BUS_RESOURCE_MEM];
+			last[PCI_BUS_RESOURCE_MEM] += size;
 		}
 
 		dev->resource[bar].start = last_addr;
@@ -270,19 +267,21 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 	pci_write_config_byte(dev, PCI_SECONDARY_BUS, dev->subordinate->number);
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, 0xff);
 
-	if (last_mem) {
+	if (last[PCI_BUS_RESOURCE_MEM]) {
 		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
-		last_mem = ALIGN(last_mem, SZ_1M);
+		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
 		pci_write_config_word(dev, PCI_MEMORY_BASE,
-				      (last_mem & 0xfff00000) >> 16);
+				      (last[PCI_BUS_RESOURCE_MEM] & 0xfff00000) >> 16);
 		cmdstat |= PCI_COMMAND_MEMORY;
 	}
 
-	if (last_mem_pref) {
+	if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
 		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
-		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
+		last[PCI_BUS_RESOURCE_MEM_PREF] =
+			ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF],
+			      SZ_1M);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE,
-				      (last_mem_pref & 0xfff00000) >> 16);
+				      (last[PCI_BUS_RESOURCE_MEM_PREF] & 0xfff00000) >> 16);
 		cmdstat |= PCI_COMMAND_MEMORY;
 	} else {
 
@@ -291,12 +290,12 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT, 0x0);
 	}
 
-	if (last_io) {
-		last_io = ALIGN(last_io, SZ_4K);
+	if (last[PCI_BUS_RESOURCE_IO]) {
+		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
 		pci_write_config_byte(dev, PCI_IO_BASE,
-				      (last_io & 0x0000f000) >> 8);
+				      (last[PCI_BUS_RESOURCE_IO] & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_BASE_UPPER16,
-				      (last_io & 0xffff0000) >> 16);
+				      (last[PCI_BUS_RESOURCE_IO] & 0xffff0000) >> 16);
 		cmdstat |= PCI_COMMAND_IO;
 	}
 
@@ -307,29 +306,29 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 static void postscan_setup_bridge(struct pci_dev *dev)
 {
 	/* limit subordinate to last used bus number */
-	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, bus_index - 1);
+	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, last[PCI_BUS_RESOURCE_BUSN] - 1);
 
-	if (last_mem) {
-		last_mem = ALIGN(last_mem, SZ_1M);
-		pr_debug("bridge NP limit at %pa\n", &last_mem);
+	if (last[PCI_BUS_RESOURCE_MEM]) {
+		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
+		pr_debug("bridge NP limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM]);
 		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
-				      ((last_mem - 1) & 0xfff00000) >> 16);
+				      ((last[PCI_BUS_RESOURCE_MEM] - 1) & 0xfff00000) >> 16);
 	}
 
-	if (last_mem_pref) {
-		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
-		pr_debug("bridge P limit at %pa\n", &last_mem_pref);
+	if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
+		last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], SZ_1M);
+		pr_debug("bridge P limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM_PREF]);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
-				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
+				      ((last[PCI_BUS_RESOURCE_MEM_PREF] - 1) & 0xfff00000) >> 16);
 	}
 
-	if (last_io) {
-		last_io = ALIGN(last_io, SZ_4K);
-		pr_debug("bridge IO limit at %pa\n", &last_io);
+	if (last[PCI_BUS_RESOURCE_IO]) {
+		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
+		pr_debug("bridge IO limit at %pa\n", &last[PCI_BUS_RESOURCE_IO]);
 		pci_write_config_byte(dev, PCI_IO_LIMIT,
-				((last_io - 1) & 0x0000f000) >> 8);
+				((last[PCI_BUS_RESOURCE_IO] - 1) & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
-				((last_io - 1) & 0xffff0000) >> 16);
+				((last[PCI_BUS_RESOURCE_IO] - 1) & 0xffff0000) >> 16);
 	}
 }
 
@@ -367,7 +366,9 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 
 	pr_debug("pci_scan_bus for bus %d\n", bus->number);
 	pr_debug(" last_io = %pa, last_mem = %pa, last_mem_pref = %pa\n",
-	    &last_io, &last_mem, &last_mem_pref);
+		 &last[PCI_BUS_RESOURCE_IO],
+		 &last[PCI_BUS_RESOURCE_MEM],
+		 &last[PCI_BUS_RESOURCE_MEM_PREF]);
 
 	max = bus->secondary;
 
@@ -450,7 +451,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 				bus->resource[PCI_BUS_RESOURCE_IO];
 
 			child_bus->parent = &dev->dev;
-			child_bus->number = bus_index++;
+			child_bus->number = last[PCI_BUS_RESOURCE_BUSN]++;
 			child_bus->primary = bus->number;
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
@@ -477,7 +478,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	 *
 	 * Return how far we've got finding sub-buses.
 	 */
-	max = bus_index;
+	max = last[PCI_BUS_RESOURCE_BUSN];
 	pr_debug("pci_scan_bus returning with max=%02x\n", max);
 
 	return max;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
