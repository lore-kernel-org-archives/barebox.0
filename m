Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givYw-0007oT-Eg
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id u6so9647544plm.8
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:16:57 -0800
Message-Id: <20190114061709.13948-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 04/16] PCI: Simplify resource setup code in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Simplify resource setup code in setup_device() by factoring out all of
the common code and moving it outside the if main if statement. No
functional change intended.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 100 ++++++++++++++++++++--------------------------
 1 file changed, 43 insertions(+), 57 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index b8089207a4..6d866dc30a 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -169,8 +169,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
-		resource_size_t last_addr;
+		resource_size_t *last_addr;
 		u32 orig, mask, size;
+		unsigned long flags;
+		const char *kind;
+		int busres;
 
 		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
 		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
@@ -183,67 +186,50 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		if (mask & PCI_BASE_ADDRESS_SPACE_IO) { /* IO */
-			size = pci_size(orig, mask, 0xfffffffe);
-			if (!size) {
-				pr_debug("pbar%d bad IO mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-			if (ALIGN(last_io, size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
-				pr_debug("BAR does not fit within bus IO res\n");
-				return;
-			}
-			last_io = ALIGN(last_io, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_io);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
-			dev->resource[bar].flags = IORESOURCE_IO;
-			last_addr = last_io;
-			last_io += size;
+			size      = pci_size(orig, mask, 0xfffffffe);
+			flags     = IORESOURCE_IO;
+			kind      = "IO";
+			last_addr = &last_io;
+			busres    = PCI_BUS_RESOURCE_IO;
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
 		           last_mem_pref) /* prefetchable MEM */ {
-			size = pci_size(orig, mask, 0xfffffff0);
-			if (!size) {
-				pr_debug("pbar%d bad P-MEM mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
-			    bar, mask, size);
-			if (ALIGN(last_mem_pref, size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
-				pr_debug("BAR does not fit within bus p-mem res\n");
-				return;
-			}
-			last_mem_pref = ALIGN(last_mem_pref, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem_pref);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
-			dev->resource[bar].flags = IORESOURCE_MEM |
-			                           IORESOURCE_PREFETCH;
-			last_addr = last_mem_pref;
-			last_mem_pref += size;
+			size      = pci_size(orig, mask, 0xfffffff0);
+			flags     = IORESOURCE_MEM | IORESOURCE_PREFETCH;
+			kind      = "P-MEM";
+			last_addr = &last_mem_pref;
+			busres    = PCI_BUS_RESOURCE_MEM_PREF;
 		} else { /* non-prefetch MEM */
-			size = pci_size(orig, mask, 0xfffffff0);
-			if (!size) {
-				pr_debug("pbar%d bad NP-MEM mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
-			    bar, mask, size);
-			if (ALIGN(last_mem, size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
-				pr_debug("BAR does not fit within bus np-mem res\n");
-				return;
-			}
-			last_mem = ALIGN(last_mem, size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
-			dev->resource[bar].flags = IORESOURCE_MEM;
-			last_addr = last_mem;
-			last_mem += size;
+			size      = pci_size(orig, mask, 0xfffffff0);
+			flags     = IORESOURCE_MEM;
+			kind      = "NP-MEM";
+			last_addr = &last_mem;
+			busres    = PCI_BUS_RESOURCE_MEM;
 		}
 
-		dev->resource[bar].start = last_addr;
-		dev->resource[bar].end = last_addr + size - 1;
+		if (!size) {
+			pr_debug("pbar%d bad %s mask\n", bar, kind);
+			continue;
+		}
+
+		pr_debug("pbar%d: mask=%08x %s %d bytes\n", bar, mask, kind,
+			 size);
+
+		if (ALIGN(*last_addr, size) + size >
+		    dev->bus->resource[busres]->end) {
+			pr_debug("BAR does not fit within bus %s res\n", kind);
+			return;
+		}
+
+		*last_addr = ALIGN(*last_addr, size);
+		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
+				       *last_addr);
+		dev->resource[bar].flags = flags;
+		dev->resource[bar].start = *last_addr;
+		dev->resource[bar].end = dev->resource[bar].start + size - 1;
+
+		pr_debug("pbar%d: allocated at %pa\n", bar, last_addr);
+
+		*last_addr += size;
 
 		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
