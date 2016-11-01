Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Uua-0003O2-Ut
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:59:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1UuF-0004c4-E2
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:58:51 +0100
Message-Id: <20161101085855.953-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/5] PCI: add some useful debug output
To: barebox@lists.infradead.org

This makes diagnosing problems in address space allocation
much easier.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 191561da0368..46f5d5f7de36 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -179,6 +179,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				pr_debug("BAR does not fit within bus IO res\n");
 				return;
 			}
+			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_io);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
 			dev->resource[bar].flags = IORESOURCE_IO;
 			last_addr = last_io;
@@ -197,6 +198,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				pr_debug("BAR does not fit within bus p-mem res\n");
 				return;
 			}
+			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem_pref);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
 			dev->resource[bar].flags = IORESOURCE_MEM |
 			                           IORESOURCE_PREFETCH;
@@ -215,6 +217,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				pr_debug("BAR does not fit within bus np-mem res\n");
 				return;
 			}
+			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
 			dev->resource[bar].flags = IORESOURCE_MEM;
 			last_addr = last_mem;
@@ -286,18 +289,21 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 
 	if (last_mem) {
 		last_mem = ALIGN(last_mem, SZ_1M);
+		pr_debug("bridge NP limit at 0x%08x\n", last_mem);
 		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
 				      ((last_mem - 1) & 0xfff00000) >> 16);
 	}
 
 	if (last_mem_pref) {
 		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
+		pr_debug("bridge P limit at 0x%08x\n", last_mem_pref);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
 				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
 	}
 
 	if (last_io) {
 		last_io = ALIGN(last_io, SZ_4K);
+		pr_debug("bridge IO limit at 0x%08x\n", last_io);
 		pci_write_config_byte(dev, PCI_IO_LIMIT,
 				((last_io - 1) & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
