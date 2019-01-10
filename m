Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPm-0003BU-Ij
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id c123so4769118pfb.0
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:57:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:22 -0800
Message-Id: <20190110045739.19399-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/21] PCI: Convert prescan_setup_bridge() to use a loop
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify prescan_setup_bridge() by folding base setup code into a
loop. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 37 ++++++++++++++-----------------------
 1 file changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 11f84934f5..02b7f091f7 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -256,6 +256,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 	list_add_tail(&dev->bus_list, &dev->bus->devices);
 }
 
+static size_t pci_resource_to_alignment(int r)
+{
+	return (r == PCI_BUS_RESOURCE_IO) ? SZ_4K : SZ_1M;
+}
+
 static void __pci_set_base_or_limit(struct pci_dev *dev, int r,
 				    resource_size_t addr, bool limit)
 {
@@ -295,6 +300,7 @@ static void pci_set_base(struct pci_dev *dev, int r, resource_size_t addr)
 static void prescan_setup_bridge(struct pci_dev *dev)
 {
 	u16 cmdstat;
+	int r;
 
 	pci_read_config_word(dev, PCI_COMMAND, &cmdstat);
 
@@ -303,36 +309,21 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 	pci_write_config_byte(dev, PCI_SECONDARY_BUS, dev->subordinate->number);
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, 0xff);
 
-	if (last[PCI_BUS_RESOURCE_MEM]) {
-		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
-		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
-		pci_set_base(dev, PCI_BUS_RESOURCE_MEM,
-			     last[PCI_BUS_RESOURCE_MEM]);
-		cmdstat |= PCI_COMMAND_MEMORY;
+	for (r = PCI_BUS_RESOURCE_IO; r <= PCI_BUS_RESOURCE_MEM_PREF; r++) {
+		if (last[r]) {
+			cmdstat |= (r == PCI_BUS_RESOURCE_IO) ?
+				PCI_COMMAND_IO : PCI_COMMAND_MEMORY;
+			last[r] = ALIGN(last[r], pci_resource_to_alignment(r));
+			pci_set_base(dev, r, last[r]);
+		}
 	}
 
-	if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
-		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
-		last[PCI_BUS_RESOURCE_MEM_PREF] =
-			ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF],
-			      SZ_1M);
-		pci_set_base(dev, PCI_BUS_RESOURCE_MEM_PREF,
-			     last[PCI_BUS_RESOURCE_MEM_PREF]);
-		cmdstat |= PCI_COMMAND_MEMORY;
-	} else {
-
+	if (!last[PCI_BUS_RESOURCE_MEM_PREF]) {
 		/* We don't support prefetchable memory for now, so disable */
 		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE, 0x1000);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT, 0x0);
 	}
 
-	if (last[PCI_BUS_RESOURCE_IO]) {
-		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
-		pci_set_base(dev, PCI_BUS_RESOURCE_IO,
-			     last[PCI_BUS_RESOURCE_IO]);
-		cmdstat |= PCI_COMMAND_IO;
-	}
-
 	/* Enable memory and I/O accesses, enable bus master */
 	pci_write_config_word(dev, PCI_COMMAND, cmdstat | PCI_COMMAND_MASTER);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
