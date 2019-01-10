Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPs-0003HJ-G3
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id u6so4641743plm.8
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:26 -0800
Message-Id: <20190110045739.19399-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/21] PCI: Simplify resource setup code in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify resource setup code in setup_device() by factoring out all of
the common code and moving it outside the if main if statement. No
functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 98 +++++++++++++++++++----------------------------
 1 file changed, 40 insertions(+), 58 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index c9b6e840b2..e57cc32c76 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -166,8 +166,10 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
-		resource_size_t last_addr;
 		u32 orig, mask, size;
+		unsigned long flags;
+		const char *kind;
+		int r;
 
 		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
 		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
@@ -180,67 +182,47 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		if (mask & PCI_BASE_ADDRESS_SPACE_IO) { /* IO */
-			size = pci_size(orig, mask, 0xfffffffe);
-			if (!size) {
-				pr_debug("pbar%d bad IO mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-			if (ALIGN(last[PCI_BUS_RESOURCE_IO], size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
-				pr_debug("BAR does not fit within bus IO res\n");
-				return;
-			}
-			last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_IO]);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_IO]);
-			dev->resource[bar].flags = IORESOURCE_IO;
-			last_addr = last[PCI_BUS_RESOURCE_IO];
-			last[PCI_BUS_RESOURCE_IO] += size;
+			r     = PCI_BUS_RESOURCE_IO;
+			size  = pci_size(orig, mask, 0xfffffffe);
+			flags = IORESOURCE_IO;
+			kind  = "IO";
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
-		           last[PCI_BUS_RESOURCE_MEM_PREF]) /* prefetchable MEM */ {
-			size = pci_size(orig, mask, 0xfffffff0);
-			if (!size) {
-				pr_debug("pbar%d bad P-MEM mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
-			    bar, mask, size);
-			if (ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->end) {
-				pr_debug("BAR does not fit within bus p-mem res\n");
-				return;
-			}
-			last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_MEM_PREF]);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_MEM_PREF]);
-			dev->resource[bar].flags = IORESOURCE_MEM |
-			                           IORESOURCE_PREFETCH;
-			last_addr = last[PCI_BUS_RESOURCE_MEM_PREF];
-			last[PCI_BUS_RESOURCE_MEM_PREF] += size;
+		           last[PCI_BUS_RESOURCE_MEM_PREF]) {
+			/* prefetchable MEM */
+			r     = PCI_BUS_RESOURCE_MEM_PREF;
+			size  = pci_size(orig, mask, 0xfffffff0);
+			flags = IORESOURCE_MEM | IORESOURCE_PREFETCH;
+			kind  = "P-MEM";
 		} else { /* non-prefetch MEM */
-			size = pci_size(orig, mask, 0xfffffff0);
-			if (!size) {
-				pr_debug("pbar%d bad NP-MEM mask\n", bar);
-				continue;
-			}
-			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
-			    bar, mask, size);
-			if (ALIGN(last[PCI_BUS_RESOURCE_MEM], size) + size >
-			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
-				pr_debug("BAR does not fit within bus np-mem res\n");
-				return;
-			}
-			last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], size);
-			pr_debug("pbar%d: allocated at %pa\n", bar, &last[PCI_BUS_RESOURCE_MEM]);
-			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last[PCI_BUS_RESOURCE_MEM]);
-			dev->resource[bar].flags = IORESOURCE_MEM;
-			last_addr = last[PCI_BUS_RESOURCE_MEM];
-			last[PCI_BUS_RESOURCE_MEM] += size;
+			r     = PCI_BUS_RESOURCE_MEM;
+			size  = pci_size(orig, mask, 0xfffffff0);
+			flags = IORESOURCE_MEM;
+			kind  = "NP-MEM";
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
+		if (ALIGN(last[r], size) + size > dev->bus->resource[r]->end) {
+			pr_debug("BAR does not fit within bus %s res\n", kind);
+			return;
+		}
+
+		last[r] = ALIGN(last[r], size);
+		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
+				       last[r]);
+		dev->resource[bar].flags = flags;
+		dev->resource[bar].start = last[r];
+		dev->resource[bar].end = dev->resource[bar].start + size - 1;
+
+		pr_debug("pbar%d: allocated at %pa\n", bar, &last[r]);
+
+		last[r] += size;
 
 		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
