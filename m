Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd6-0006Vd-Of
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id d72so7261753pga.9
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:22 -0800
Message-Id: <20190112072234.21878-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/16] PCI: Simplify resource setup code in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify resource setup code in setup_device() by factoring out all of
the common code and moving it outside the if main if statement. No
functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 99 ++++++++++++++++++++---------------------------
 1 file changed, 42 insertions(+), 57 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index b8089207a4..666b457257 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -169,8 +169,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
-		resource_size_t last_addr;
+		resource_size_t *last;
 		u32 orig, mask, size;
+		unsigned long flags;
+		const char *kind;
+		int r;
 
 		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
 		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
@@ -183,67 +186,49 @@ static void setup_device(struct pci_dev *dev, int max_bar)
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
+			size  = pci_size(orig, mask, 0xfffffffe);
+			flags = IORESOURCE_IO;
+			kind  = "IO";
+			last  = &last_io;
+			r     = PCI_BUS_RESOURCE_IO;
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
+			size  = pci_size(orig, mask, 0xfffffff0);
+			flags = IORESOURCE_MEM | IORESOURCE_PREFETCH;
+			kind  = "P-MEM";
+			last  = &last_mem_pref;
+			r     = PCI_BUS_RESOURCE_MEM_PREF;
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
+			size  = pci_size(orig, mask, 0xfffffff0);
+			flags = IORESOURCE_MEM;
+			kind  = "NP-MEM";
+			last  = &last_mem;
+			r     = PCI_BUS_RESOURCE_MEM;
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
+		if (ALIGN(*last, size) + size > dev->bus->resource[r]->end) {
+			pr_debug("BAR does not fit within bus %s res\n", kind);
+			return;
+		}
+
+		*last = ALIGN(*last, size);
+		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
+				       *last);
+		dev->resource[bar].flags = flags;
+		dev->resource[bar].start = *last;
+		dev->resource[bar].end = dev->resource[bar].start + size - 1;
+
+		pr_debug("pbar%d: allocated at %pa\n", bar, last);
+
+		*last += size;
 
 		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
