Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPt-0003Ih-TG
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id w6so4321371pgl.6
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:27 -0800
Message-Id: <20190110045739.19399-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/21] PCI: Store and reuse BAR offsets
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Save and reuse BAR offsets in dedicated constants instead of repeating
the same expression multiple times. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index e57cc32c76..3e249abe4f 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -166,15 +166,17 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
+		const int pci_base_address_0 = PCI_BASE_ADDRESS_0 + bar * 4;
+		const int pci_base_address_1 = PCI_BASE_ADDRESS_1 + bar * 4;
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
@@ -214,8 +216,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		last[r] = ALIGN(last[r], size);
-		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
-				       last[r]);
+		pci_write_config_dword(dev, pci_base_address_0, last[r]);
 		dev->resource[bar].flags = flags;
 		dev->resource[bar].start = last[r];
 		dev->resource[bar].end = dev->resource[bar].start + size - 1;
@@ -226,8 +227,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
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
