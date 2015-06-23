Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7Tuw-0003Xp-VA
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 19:31:35 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 23 Jun 2015 21:30:38 +0200
Message-Id: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] PCI: rework BAR size calculation
To: barebox@lists.infradead.org

The probe code now does a much better job at detecting bad BARs.
Also make sure to preserve any previous content of the BAR
registers if we don't relocate them.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
I hope this fixes the problems seen with new versions of QEMU on
MIPS malta.
---
 drivers/pci/pci.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 3a0e7a5..1e45907 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -129,10 +129,24 @@ static struct pci_dev *alloc_pci_dev(void)
 	return dev;
 }
 
+static u32 pci_size(u32 base, u32 maxbase, u32 mask)
+{
+	u32 size = maxbase & mask;
+	if (!size)
+		return 0;
+
+	size = (size & ~(size-1)) - 1;
+
+	if (base == maxbase && ((base | size) & mask) != mask)
+		return 0;
+
+	return size + 1;
+}
+
+
 static void setup_device(struct pci_dev *dev, int max_bar)
 {
-	int bar, size;
-	u32 mask;
+	int bar;
 	u8 cmd;
 
 	pci_read_config_byte(dev, PCI_COMMAND, &cmd);
@@ -141,9 +155,12 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 
 	for (bar = 0; bar < max_bar; bar++) {
 		resource_size_t last_addr;
+		u32 orig, mask, size;
 
+		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
 		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
 		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
+		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, orig);
 
 		if (mask == 0 || mask == 0xffffffff) {
 			pr_debug("pbar%d set bad mask\n", bar);
@@ -151,7 +168,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		if (mask & 0x01) { /* IO */
-			size = ((~(mask & 0xfffffffe)) & 0xffff) + 1;
+			size = pci_size(orig, mask, 0xfffffffe);
+			if (!size) {
+				pr_debug("pbar%d bad IO mask\n", bar);
+				continue;
+			}
 			pr_debug("pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
 			if (last_io + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
@@ -164,7 +185,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			last_io += size;
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
 		           last_mem_pref) /* prefetchable MEM */ {
-			size = (~(mask & 0xfffffff0)) + 1;
+			size = pci_size(orig, mask, 0xfffffff0);
+			if (!size) {
+				pr_debug("pbar%d bad P-MEM mask\n", bar);
+				continue;
+			}
 			pr_debug("pbar%d: mask=%08x P memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem_pref + size >
@@ -178,7 +203,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			last_addr = last_mem_pref;
 			last_mem_pref += size;
 		} else { /* non-prefetch MEM */
-			size = (~(mask & 0xfffffff0)) + 1;
+			size = pci_size(orig, mask, 0xfffffff0);
+			if (!size) {
+				pr_debug("pbar%d bad NP-MEM mask\n", bar);
+				continue;
+			}
 			pr_debug("pbar%d: mask=%08x NP memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem + size >
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
