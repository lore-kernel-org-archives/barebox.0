Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBkwv-0006Dh-9K
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 13:26:46 +0000
Received: by mail-wg0-f51.google.com with SMTP id b13so7258013wgh.34
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 06:26:21 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 28 Jul 2014 15:26:07 +0200
Message-Id: <1406553970-18157-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 2/5] pci: pci_scan_bus: respect 64b BARs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

In PCI 64-bit BARs span two 32-bit BARs, therefore if BAR type
indicates a 64-bit BAR we have to skip the next BAR register.
Note that this does not add proper support for 64-bit BARs and
64-bit addresses but still picks the lower 32-bit address.

While at it, also set proper IORESOURCE flags for I/O and
32b MEM.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Lucas Stach <l.stach@pengutronix.de>
---
Changelog:
v1->v2:
- set resource flags for all resources found (Suggested by Lucas Stach)
- use MEM_64 resource flag for BAR64 detection (Suggested by Lucas Stach)

Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/pci/pci.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 3d88b0ff5fd0..501a36cc8356 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -211,19 +211,26 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 				size = -(mask & 0xfffffffe);
 				DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
 				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
+				dev->resource[bar].flags = IORESOURCE_IO;
 				last_addr = last_io;
 				last_io += size;
-
 			} else { /* MEM */
 				size = -(mask & 0xfffffff0);
 				DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
 				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
+				dev->resource[bar].flags = IORESOURCE_MEM;
 				last_addr = last_mem;
 				last_mem += size;
+
+				if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
+				    PCI_BASE_ADDRESS_MEM_TYPE_64)
+					dev->resource[bar].flags = IORESOURCE_MEM_64;
 			}
 
 			dev->resource[bar].start = last_addr;
 			dev->resource[bar].end = last_addr + size - 1;
+			if (dev->resource[bar].flags & IORESOURCE_MEM_64)
+				bar++;
 		}
 	}
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
