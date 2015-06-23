Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7Tuw-0003Xx-VB
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 19:31:35 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 23 Jun 2015 21:30:39 +0200
Message-Id: <1435087839-15939-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
References: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] PCI: remove bogus host bridge setup skipping
To: barebox@lists.infradead.org

Apparently this was here to fix issues with some QEMU version,
but hasn't worked in the intended way for a long time. The probe
code should be mature enough by now, so this workaround isn't
needed anymore.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 1e45907..191561d 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -420,11 +420,6 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			       bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);
 			continue;
 		}
-
-		if (class == PCI_CLASS_BRIDGE_HOST) {
-			pr_debug("skip pci host bridge\n");
-			continue;
-		}
 	}
 
 	/*
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
