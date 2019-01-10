Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPl-0003Av-GE
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id g189so4320911pgc.5
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:57:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:21 -0800
Message-Id: <20190110045739.19399-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/21] PCI: Consolidate limit/base settting code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move limit/base settting code into a dedicated function order to avoid
repeating address masking code. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 64 +++++++++++++++++++++++++++++++++++------------
 1 file changed, 48 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 6a327c6f88..11f84934f5 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -256,6 +256,42 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 	list_add_tail(&dev->bus_list, &dev->bus->devices);
 }
 
+static void __pci_set_base_or_limit(struct pci_dev *dev, int r,
+				    resource_size_t addr, bool limit)
+{
+	int upper, where;
+
+	switch (r) {
+	case PCI_BUS_RESOURCE_IO:
+		where = limit ? PCI_IO_LIMIT : PCI_IO_BASE;
+		upper = limit ? PCI_IO_LIMIT_UPPER16 : PCI_IO_BASE_UPPER16;
+
+		pci_write_config_byte(dev, where, (addr & 0x0000f000) >> 8);
+		pci_write_config_word(dev, upper, (addr & 0xffff0000) >> 16);
+		return;
+	case PCI_BUS_RESOURCE_MEM:
+		where = limit ? PCI_MEMORY_LIMIT : PCI_MEMORY_BASE;
+		break;
+	case PCI_BUS_RESOURCE_MEM_PREF:
+		where = limit ? PCI_PREF_MEMORY_LIMIT : PCI_PREF_MEMORY_BASE;
+		break;
+	default:
+		BUG();
+	}
+
+	pci_write_config_word(dev, where, (addr & 0xfff00000) >> 16);
+}
+
+static void pci_set_limit(struct pci_dev *dev, int r, resource_size_t addr)
+{
+	__pci_set_base_or_limit(dev, r, addr, true);
+}
+
+static void pci_set_base(struct pci_dev *dev, int r, resource_size_t addr)
+{
+	__pci_set_base_or_limit(dev, r, addr, false);
+}
+
 static void prescan_setup_bridge(struct pci_dev *dev)
 {
 	u16 cmdstat;
@@ -270,8 +306,8 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 	if (last[PCI_BUS_RESOURCE_MEM]) {
 		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
 		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
-		pci_write_config_word(dev, PCI_MEMORY_BASE,
-				      (last[PCI_BUS_RESOURCE_MEM] & 0xfff00000) >> 16);
+		pci_set_base(dev, PCI_BUS_RESOURCE_MEM,
+			     last[PCI_BUS_RESOURCE_MEM]);
 		cmdstat |= PCI_COMMAND_MEMORY;
 	}
 
@@ -280,8 +316,8 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 		last[PCI_BUS_RESOURCE_MEM_PREF] =
 			ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF],
 			      SZ_1M);
-		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE,
-				      (last[PCI_BUS_RESOURCE_MEM_PREF] & 0xfff00000) >> 16);
+		pci_set_base(dev, PCI_BUS_RESOURCE_MEM_PREF,
+			     last[PCI_BUS_RESOURCE_MEM_PREF]);
 		cmdstat |= PCI_COMMAND_MEMORY;
 	} else {
 
@@ -292,10 +328,8 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 
 	if (last[PCI_BUS_RESOURCE_IO]) {
 		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
-		pci_write_config_byte(dev, PCI_IO_BASE,
-				      (last[PCI_BUS_RESOURCE_IO] & 0x0000f000) >> 8);
-		pci_write_config_word(dev, PCI_IO_BASE_UPPER16,
-				      (last[PCI_BUS_RESOURCE_IO] & 0xffff0000) >> 16);
+		pci_set_base(dev, PCI_BUS_RESOURCE_IO,
+			     last[PCI_BUS_RESOURCE_IO]);
 		cmdstat |= PCI_COMMAND_IO;
 	}
 
@@ -311,24 +345,22 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 	if (last[PCI_BUS_RESOURCE_MEM]) {
 		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
 		pr_debug("bridge NP limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM]);
-		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
-				      ((last[PCI_BUS_RESOURCE_MEM] - 1) & 0xfff00000) >> 16);
+		pci_set_limit(dev, PCI_BUS_RESOURCE_MEM,
+			      last[PCI_BUS_RESOURCE_MEM] - 1);
 	}
 
 	if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
 		last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], SZ_1M);
 		pr_debug("bridge P limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM_PREF]);
-		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
-				      ((last[PCI_BUS_RESOURCE_MEM_PREF] - 1) & 0xfff00000) >> 16);
+		pci_set_limit(dev, PCI_BUS_RESOURCE_MEM_PREF,
+			      last[PCI_BUS_RESOURCE_MEM_PREF] - 1);
 	}
 
 	if (last[PCI_BUS_RESOURCE_IO]) {
 		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
 		pr_debug("bridge IO limit at %pa\n", &last[PCI_BUS_RESOURCE_IO]);
-		pci_write_config_byte(dev, PCI_IO_LIMIT,
-				((last[PCI_BUS_RESOURCE_IO] - 1) & 0x0000f000) >> 8);
-		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
-				((last[PCI_BUS_RESOURCE_IO] - 1) & 0xffff0000) >> 16);
+		pci_set_limit(dev, PCI_BUS_RESOURCE_IO,
+			      last[PCI_BUS_RESOURCE_IO] - 1);
 	}
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
