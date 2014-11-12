Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoeMo-0003ZE-VG
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 20:18:16 +0000
Received: from tellur.intern.lynxeye.de (p57B5F278.dip0.t-ipconnect.de
 [87.181.242.120]) by lynxeye.de (Postfix) with ESMTPA id 9C27926C2001
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 21:17:16 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 12 Nov 2014 21:24:35 +0100
Message-Id: <1415823877-7379-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] pci: correct BAR size calculation
To: barebox@lists.infradead.org

The previous math would return negative sizes
for some BARs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index ba9d097..87c2fca 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -154,7 +154,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 
 		if (mask & 0x01) { /* IO */
-			size = -(mask & 0xfffffffe);
+			size = ((~(mask & 0xfffffffe)) & 0xffff) + 1;
 			DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
 			if (last_io + size >
 			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
@@ -167,7 +167,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			last_io += size;
 		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
 		           last_mem_pref) /* prefetchable MEM */ {
-			size = -(mask & 0xfffffff0);
+			size = (~(mask & 0xfffffff0)) + 1;
 			DBG("  PCI: pbar%d: mask=%08x P memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem_pref + size >
@@ -181,7 +181,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			last_addr = last_mem_pref;
 			last_mem_pref += size;
 		} else { /* non-prefetch MEM */
-			size = -(mask & 0xfffffff0);
+			size = (~(mask & 0xfffffff0)) + 1;
 			DBG("  PCI: pbar%d: mask=%08x NP memory %d bytes\n",
 			    bar, mask, size);
 			if (last_mem + size >
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
