Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd8-0006WN-4G
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id b7so8001813pfi.8
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:23 -0800
Message-Id: <20190112072234.21878-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/16] PCI: Store and reuse BAR offsets
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Save and reuse BAR offsets in dedicated constants instead of repeating
the same expression multiple times. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 666b457257..ee8afa7e87 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -169,16 +169,18 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
+		const int pci_base_address_0 = PCI_BASE_ADDRESS_0 + bar * 4;
+		const int pci_base_address_1 = PCI_BASE_ADDRESS_1 + bar * 4;
 		resource_size_t *last;
 		u32 orig, mask, size;
 		unsigned long flags;
 		const char *kind;
 		int r;
 
-		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
-		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
-		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
-		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, orig);
+		pci_read_config_dword(dev, pci_base_address_0, &orig);
+		pci_write_config_dword(dev, pci_base_address_0, 0xfffffffe);
+		pci_read_config_dword(dev, pci_base_address_0, &mask);
+		pci_write_config_dword(dev, pci_base_address_0, orig);
 
 		if (mask == 0 || mask == 0xffffffff) {
 			pr_debug("pbar%d set bad mask\n", bar);
@@ -220,8 +222,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		*last = ALIGN(*last, size);
-		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
-				       *last);
+		pci_write_config_dword(dev, pci_base_address_0, *last);
 		dev->resource[bar].flags = flags;
 		dev->resource[bar].start = *last;
 		dev->resource[bar].end = dev->resource[bar].start + size - 1;
@@ -232,8 +233,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
 		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
-			pci_write_config_dword(dev,
-			       PCI_BASE_ADDRESS_1 + bar * 4, 0);
+			pci_write_config_dword(dev, pci_base_address_1, 0);
 			bar++;
 		}
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
