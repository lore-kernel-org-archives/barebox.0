Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Uua-0003O6-Uj
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:59:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1UuF-0004c4-I0
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:58:54 +0100
Message-Id: <20161101085855.953-4-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] PCI: align BAR address to BAR size
To: barebox@lists.infradead.org

PCI BARs require their address to be at least aligned to their
size, otherwise address decoding will fail as the base address
gets rounded down.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 19cda1f145bc..12aafccde578 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -174,11 +174,12 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				continue;
 			}
 			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-			if (last_io + size >
+			if (ALIGN(last_io, size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
 				pr_debug("BAR does not fit within bus IO res\n");
 				return;
 			}
+			last_io = ALIGN(last_io, size);
 			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_io);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
 			dev->resource[bar].flags = IORESOURCE_IO;
@@ -193,11 +194,12 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			}
 			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
 			    bar, mask, size);
-			if (last_mem_pref + size >
+			if (ALIGN(last_mem_pref, size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
 				pr_debug("BAR does not fit within bus p-mem res\n");
 				return;
 			}
+			last_mem_pref = ALIGN(last_mem_pref, size);
 			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem_pref);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
 			dev->resource[bar].flags = IORESOURCE_MEM |
@@ -212,11 +214,12 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			}
 			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
 			    bar, mask, size);
-			if (last_mem + size >
+			if (ALIGN(last_mem, size) + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
 				pr_debug("BAR does not fit within bus np-mem res\n");
 				return;
 			}
+			last_mem = ALIGN(last_mem, size);
 			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
 			dev->resource[bar].flags = IORESOURCE_MEM;
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
