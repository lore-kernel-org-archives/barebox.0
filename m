Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YnYA7-0003sq-LN
 for barebox@lists.infradead.org; Wed, 29 Apr 2015 20:00:53 +0000
Received: from tellur.intern.lynxeye.de (p57B5F6E7.dip0.t-ipconnect.de
 [87.181.246.231]) by lynxeye.de (Postfix) with ESMTPA id F007126C2002
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2015 21:59:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 29 Apr 2015 21:59:47 +0200
Message-Id: <1430337588-11998-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
References: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] PCI: fill in bus primary field
To: barebox@lists.infradead.org

This was erroneously left uninitialzed as nothing was using it.
The i.MX6 PCI driver needs this to be filled properly to decide
if a config space access is allowed for a specific devfn.

This fixes PCI enumeration on the Gateworks GW54xx board.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 470ea66..3a0e7a5 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -368,6 +368,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 
 			child_bus->parent = &dev->dev;
 			child_bus->number = bus_index++;
+			child_bus->primary = bus->number;
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
