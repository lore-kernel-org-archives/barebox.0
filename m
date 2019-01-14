Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givYx-0007p5-Qz
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id b5so9658682plr.4
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:31 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:16:58 -0800
Message-Id: <20190114061709.13948-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 05/16] PCI: Store and reuse BAR offsets
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Save and reuse BAR offsets in dedicated constants instead of repeating
the same expression multiple times. No functional change intended.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 6d866dc30a..265c416085 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -169,16 +169,18 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
 
 	for (bar = 0; bar < max_bar; bar++) {
+		const int pci_base_address_0 = PCI_BASE_ADDRESS_0 + bar * 4;
+		const int pci_base_address_1 = PCI_BASE_ADDRESS_1 + bar * 4;
 		resource_size_t *last_addr;
 		u32 orig, mask, size;
 		unsigned long flags;
 		const char *kind;
 		int busres;
 
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
@@ -221,8 +223,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		*last_addr = ALIGN(*last_addr, size);
-		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4,
-				       *last_addr);
+		pci_write_config_dword(dev, pci_base_address_0, *last_addr);
 		dev->resource[bar].flags = flags;
 		dev->resource[bar].start = *last_addr;
 		dev->resource[bar].end = dev->resource[bar].start + size - 1;
@@ -233,8 +234,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
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
