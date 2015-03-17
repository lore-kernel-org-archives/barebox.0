Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXl9m-00069v-8r
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:39:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:38:45 +0100
Message-Id: <1426574331-22797-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
References: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] pci: Use standard pr_debug
To: Barebox List <barebox@lists.infradead.org>

Use pr_debug instead of custom DBG macro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c | 34 +++++++++++++++-------------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 1f5dc78..cb8c539 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -1,13 +1,9 @@
+#define pr_fmt(fmt)  "pci: " fmt
+
 #include <common.h>
 #include <linux/sizes.h>
 #include <linux/pci.h>
 
-#ifdef DEBUG
-#define DBG(x...) printk(x)
-#else
-#define DBG(x...)
-#endif
-
 static struct pci_controller *hose_head, **hose_tail = &hose_head;
 
 LIST_HEAD(pci_root_buses);
@@ -150,16 +146,16 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
 
 		if (mask == 0 || mask == 0xffffffff) {
-			DBG("  PCI: pbar%d set bad mask\n", bar);
+			pr_debug("pbar%d set bad mask\n", bar);
 			continue;
 		}
 
 		if (mask & 0x01) { /* IO */
 			size = ((~(mask & 0xfffffffe)) & 0xffff) + 1;
-			DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
+			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
 			if (last_io + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
-				DBG("BAR does not fit within bus IO res\n");
+				pr_debug("BAR does not fit within bus IO res\n");
 				return;
 			}
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
@@ -169,11 +165,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
 		           last_mem_pref) /* prefetchable MEM */ {
 			size = (~(mask & 0xfffffff0)) + 1;
-			DBG("  PCI: pbar%d: mask=%08x P memory %d bytes\n",
+			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem_pref + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
-				DBG("BAR does not fit within bus p-mem res\n");
+				pr_debug("BAR does not fit within bus p-mem res\n");
 				return;
 			}
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
@@ -183,11 +179,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			last_mem_pref += size;
 		} else { /* non-prefetch MEM */
 			size = (~(mask & 0xfffffff0)) + 1;
-			DBG("  PCI: pbar%d: mask=%08x NP memory %d bytes\n",
+			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
-				DBG("BAR does not fit within bus np-mem res\n");
+				pr_debug("BAR does not fit within bus np-mem res\n");
 				return;
 			}
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
@@ -287,8 +283,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	unsigned int devfn, l, max, class;
 	unsigned char cmd, tmp, hdr_type, is_multi = 0;
 
-	DBG("pci_scan_bus for bus %d\n", bus->number);
-	DBG(" last_io = 0x%08x, last_mem = 0x%08x, last_mem_pref = 0x%08x\n",
+	pr_debug("pci_scan_bus for bus %d\n", bus->number);
+	pr_debug(" last_io = 0x%08x, last_mem = 0x%08x, last_mem_pref = 0x%08x\n",
 	    last_io, last_mem, last_mem_pref);
 
 	max = bus->secondary;
@@ -331,8 +327,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		class >>= 8;
 		dev->hdr_type = hdr_type;
 
-		DBG("PCI: class = %08x, hdr_type = %08x\n", class, hdr_type);
-		DBG("PCI: %02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
+		pr_debug("class = %08x, hdr_type = %08x\n", class, hdr_type);
+		pr_debug("%02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
 		    dev->vendor, dev->device);
 
 		switch (hdr_type & 0x7f) {
@@ -385,7 +381,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		}
 
 		if (class == PCI_CLASS_BRIDGE_HOST) {
-			DBG("PCI: skip pci host bridge\n");
+			pr_debug("skip pci host bridge\n");
 			continue;
 		}
 	}
@@ -398,7 +394,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	 * Return how far we've got finding sub-buses.
 	 */
 	max = bus_index;
-	DBG("PCI: pci_scan_bus returning with max=%02x\n", max);
+	pr_debug("pci_scan_bus returning with max=%02x\n", max);
 
 	return max;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
