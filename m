Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoeMo-0003ZF-Ux
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 20:18:15 +0000
Received: from tellur.intern.lynxeye.de (p57B5F278.dip0.t-ipconnect.de
 [87.181.242.120]) by lynxeye.de (Postfix) with ESMTPA id F008426C2002
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 21:17:16 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 12 Nov 2014 21:24:36 +0100
Message-Id: <1415823877-7379-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415823877-7379-1-git-send-email-dev@lynxeye.de>
References: <1415823877-7379-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] pci: align bridge windows
To: barebox@lists.infradead.org

The bridge filtering logic needs a minimum
alignment of 1MB for mem and 4KB for io resources.
Take this into account while assigning resources
to devices in oredr to not produce overlapping
windows between different bridges.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 87c2fca..7f8ebcf 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <sizes.h>
 #include <linux/pci.h>
 
 #ifdef DEBUG
@@ -259,14 +260,17 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, bus_index - 1);
 
 	if (last_mem)
+		last_mem = ALIGN(last_mem, SZ_1M);
 		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
 				      ((last_mem - 1) & 0xfff00000) >> 16);
 
 	if (last_mem_pref)
+		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
 				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
 
 	if (last_io) {
+		last_io = ALIGN(last_io, SZ_4K);
 		pci_write_config_byte(dev, PCI_IO_LIMIT,
 				((last_io - 1) & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_LIMIT_UPPER16,
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
