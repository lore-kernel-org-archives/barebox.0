Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPk-0003AQ-LM
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:57:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id w73so4741081pfk.10
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:57:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:19 -0800
Message-Id: <20190110045739.19399-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/21] PCI: Switch to using %pa to print memory addresses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Switch to using %pa to print memory addresses in order to be able to
support both 64 and 32 bit builds.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 7abc7a3439..1f9d360d79 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -195,7 +195,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				return;
 			}
 			last_io = ALIGN(last_io, size);
-			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_io);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last_io);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
 			dev->resource[bar].flags = IORESOURCE_IO;
 			last_addr = last_io;
@@ -215,7 +215,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				return;
 			}
 			last_mem_pref = ALIGN(last_mem_pref, size);
-			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem_pref);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem_pref);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem_pref);
 			dev->resource[bar].flags = IORESOURCE_MEM |
 			                           IORESOURCE_PREFETCH;
@@ -235,7 +235,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 				return;
 			}
 			last_mem = ALIGN(last_mem, size);
-			pr_debug("pbar%d: allocated at 0x%08x\n", bar, last_mem);
+			pr_debug("pbar%d: allocated at %pa\n", bar, &last_mem);
 			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
 			dev->resource[bar].flags = IORESOURCE_MEM;
 			last_addr = last_mem;
@@ -311,21 +311,21 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 
 	if (last_mem) {
 		last_mem = ALIGN(last_mem, SZ_1M);
-		pr_debug("bridge NP limit at 0x%08x\n", last_mem);
+		pr_debug("bridge NP limit at %pa\n", &last_mem);
 		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
 				      ((last_mem - 1) & 0xfff00000) >> 16);
 	}
 
 	if (last_mem_pref) {
 		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
-		pr_debug("bridge P limit at 0x%08x\n", last_mem_pref);
+		pr_debug("bridge P limit at %pa\n", &last_mem_pref);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
 				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
 	}
 
 	if (last_io) {
 		last_io = ALIGN(last_io, SZ_4K);
-		pr_debug("bridge IO limit at 0x%08x\n", last_io);
+		pr_debug("bridge IO limit at %pa\n", &last_io);
 		pci_write_config_byte(dev, PCI_IO_LIMIT,
 				((last_io - 1) & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
@@ -366,8 +366,8 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 	unsigned char cmd, tmp, hdr_type, is_multi = 0;
 
 	pr_debug("pci_scan_bus for bus %d\n", bus->number);
-	pr_debug(" last_io = 0x%08x, last_mem = 0x%08x, last_mem_pref = 0x%08x\n",
-	    last_io, last_mem, last_mem_pref);
+	pr_debug(" last_io = %pa, last_mem = %pa, last_mem_pref = %pa\n",
+	    &last_io, &last_mem, &last_mem_pref);
 
 	max = bus->secondary;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
