Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Uua-0003O4-Us
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:59:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1UuF-0004c4-Ed
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:58:52 +0100
Message-Id: <20161101085855.953-2-l.stach@pengutronix.de>
In-Reply-To: <20161101085855.953-1-l.stach@pengutronix.de>
References: <20161101085855.953-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] PCI: only check specific flag for 64bit BAR
To: barebox@lists.infradead.org

The memory type may include other flags, so just check for
the 64bit allocation flag to see if the BAR is a 64bit one.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 46f5d5f7de36..eb3ce0f3211a 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -227,8 +227,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		dev->resource[bar].start = last_addr;
 		dev->resource[bar].end = last_addr + size - 1;
 
-		if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
-		    PCI_BASE_ADDRESS_MEM_TYPE_64) {
+		if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_64)) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
 			pci_write_config_dword(dev,
 			       PCI_BASE_ADDRESS_1 + bar * 4, 0);
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
