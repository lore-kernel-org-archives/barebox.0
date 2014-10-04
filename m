Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00055b-2g
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:40 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 8E5DB26C2006
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:11 +0200
Message-Id: <1412444425-2569-6-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 05/19] pci: setup bridges and traverse buses behind them
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c        | 92 ++++++++++++++++++++++++++++++++++++++++++++++--
 include/linux/pci_regs.h | 28 +++++++++++++++
 2 files changed, 117 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 115d8a3..59f942d 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -211,9 +211,73 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 	pci_register_device(dev);
 }
 
+static void prescan_setup_bridge(struct pci_dev *dev)
+{
+	u16 cmdstat;
+
+	pci_read_config_word(dev, PCI_COMMAND, &cmdstat);
+
+	/* Configure bus number registers */
+	pci_write_config_byte(dev, PCI_PRIMARY_BUS, dev->bus->number);
+	pci_write_config_byte(dev, PCI_SECONDARY_BUS, dev->subordinate->number);
+	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, 0xff);
+
+	if (last_mem) {
+		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
+		pci_write_config_word(dev, PCI_MEMORY_BASE,
+				      (last_mem & 0xfff00000) >> 16);
+		cmdstat |= PCI_COMMAND_MEMORY;
+	}
+
+	if (last_mem_pref) {
+		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
+		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE,
+				      (last_mem_pref & 0xfff00000) >> 16);
+		cmdstat |= PCI_COMMAND_MEMORY;
+	} else {
+
+		/* We don't support prefetchable memory for now, so disable */
+		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE, 0x1000);
+		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT, 0x0);
+	}
+
+	if (last_io) {
+		pci_write_config_byte(dev, PCI_IO_BASE,
+				      (last_io & 0x0000f000) >> 8);
+		pci_write_config_word(dev, PCI_IO_BASE_UPPER16,
+				      (last_io & 0xffff0000) >> 16);
+		cmdstat |= PCI_COMMAND_IO;
+	}
+
+	/* Enable memory and I/O accesses, enable bus master */
+	pci_write_config_word(dev, PCI_COMMAND, cmdstat | PCI_COMMAND_MASTER);
+}
+
+static void postscan_setup_bridge(struct pci_dev *dev)
+{
+	/* limit subordinate to last used bus number */
+	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, bus_index - 1);
+
+	if (last_mem)
+		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
+				      ((last_mem - 1) & 0xfff00000) >> 16);
+
+	if (last_mem_pref)
+		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
+				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
+
+	if (last_io) {
+		pci_write_config_byte(dev, PCI_IO_LIMIT,
+				((last_io - 1) & 0x0000f000) >> 8);
+		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
+				((last_io - 1) & 0xffff0000) >> 16);
+	}
+}
+
 unsigned int pci_scan_bus(struct pci_bus *bus)
 {
 	struct pci_dev *dev;
+	struct pci_bus *child_bus;
 	unsigned int devfn, l, max, class;
 	unsigned char cmd, tmp, hdr_type, is_multi = 0;
 
@@ -264,8 +328,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		DBG("PCI: %02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
 		    dev->vendor, dev->device);
 
-		switch (hdr_type & 0x7f) {		    /* header type */
-		case PCI_HEADER_TYPE_NORMAL:		    /* standard header */
+		switch (hdr_type & 0x7f) {
+		case PCI_HEADER_TYPE_NORMAL:
 			if (class == PCI_CLASS_BRIDGE_PCI)
 				goto bad;
 
@@ -278,7 +342,28 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 
 			setup_device(dev, 6);
 			break;
-		default:				    /* unknown header */
+		case PCI_HEADER_TYPE_BRIDGE:
+			setup_device(dev, 2);
+
+			child_bus = pci_alloc_bus();
+			/* inherit parent properties */
+			child_bus->host = bus->host;
+			child_bus->ops = bus->host->pci_ops;
+			child_bus->resource[PCI_BUS_RESOURCE_MEM] =
+				bus->resource[PCI_BUS_RESOURCE_MEM];
+			child_bus->resource[PCI_BUS_RESOURCE_MEM_PREF] =
+				bus->resource[PCI_BUS_RESOURCE_MEM_PREF];
+			child_bus->resource[PCI_BUS_RESOURCE_IO] =
+				bus->resource[PCI_BUS_RESOURCE_IO];
+			child_bus->number = bus_index++;
+			list_add_tail(&child_bus->node, &bus->children);
+			dev->subordinate = child_bus;
+
+			prescan_setup_bridge(dev);
+			pci_scan_bus(child_bus);
+			postscan_setup_bridge(dev);
+			break;
+		default:
 		bad:
 			printk(KERN_ERR "PCI: %02x:%02x [%04x/%04x/%06x] has unknown header type %02x, ignoring.\n",
 			       bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);
@@ -298,6 +383,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	 *
 	 * Return how far we've got finding sub-buses.
 	 */
+	max = bus_index;
 	DBG("PCI: pci_scan_bus returning with max=%02x\n", max);
 
 	return max;
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
index 14a3ed3..8669fc7 100644
--- a/include/linux/pci_regs.h
+++ b/include/linux/pci_regs.h
@@ -107,4 +107,32 @@
 #define  PCI_ROM_ADDRESS_ENABLE	0x01
 #define PCI_ROM_ADDRESS_MASK	(~0x7ffUL)
 
+/* Header type 1 (PCI-to-PCI bridges) */
+#define PCI_PRIMARY_BUS		0x18	/* Primary bus number */
+#define PCI_SECONDARY_BUS	0x19	/* Secondary bus number */
+#define PCI_SUBORDINATE_BUS	0x1a	/* Highest bus number behind the bridge */
+#define PCI_SEC_LATENCY_TIMER	0x1b	/* Latency timer for secondary interface */
+#define PCI_IO_BASE		0x1c	/* I/O range behind the bridge */
+#define PCI_IO_LIMIT		0x1d
+#define  PCI_IO_RANGE_TYPE_MASK	0x0fUL	/* I/O bridging type */
+#define  PCI_IO_RANGE_TYPE_16	0x00
+#define  PCI_IO_RANGE_TYPE_32	0x01
+#define  PCI_IO_RANGE_MASK	(~0x0fUL) /* Standard 4K I/O windows */
+#define  PCI_IO_1K_RANGE_MASK	(~0x03UL) /* Intel 1K I/O windows */
+#define PCI_SEC_STATUS		0x1e	/* Secondary status register, only bit 14 used */
+#define PCI_MEMORY_BASE		0x20	/* Memory range behind */
+#define PCI_MEMORY_LIMIT	0x22
+#define  PCI_MEMORY_RANGE_TYPE_MASK 0x0fUL
+#define  PCI_MEMORY_RANGE_MASK	(~0x0fUL)
+#define PCI_PREF_MEMORY_BASE	0x24	/* Prefetchable memory range behind */
+#define PCI_PREF_MEMORY_LIMIT	0x26
+#define  PCI_PREF_RANGE_TYPE_MASK 0x0fUL
+#define  PCI_PREF_RANGE_TYPE_32	0x00
+#define  PCI_PREF_RANGE_TYPE_64	0x01
+#define  PCI_PREF_RANGE_MASK	(~0x0fUL)
+#define PCI_PREF_BASE_UPPER32	0x28	/* Upper half of prefetchable memory range */
+#define PCI_PREF_LIMIT_UPPER32	0x2c
+#define PCI_IO_BASE_UPPER16	0x30	/* Upper half of I/O addresses */
+#define PCI_IO_LIMIT_UPPER16	0x32
+
 #endif /* LINUX_PCI_REGS_H */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
