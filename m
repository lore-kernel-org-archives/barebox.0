Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCPQk-0003RB-2l
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 08:40:14 +0000
Received: by mail-wg0-f41.google.com with SMTP id z12so823858wgg.0
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 01:39:52 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 30 Jul 2014 10:39:36 +0200
Message-Id: <1406709580-5585-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 4/8] pci: register device after BAR setup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

As soon as pci_register_device is called, a potential driver
will access its registers. This requires BARs to be set up
properly, so move pci_register_device after BAR setup.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v2->v3:
- new patch

Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/pci/pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 83d44fc103f7..f58e2c98f185 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -186,9 +186,6 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 
 		DBG("PCI: %02x:%02x [%04x/%04x]\n", bus->number, dev->devfn, dev->vendor, dev->device);
 
-		list_add_tail(&dev->bus_list, &bus->devices);
-		pci_register_device(dev);
-
 		if (class == PCI_CLASS_BRIDGE_HOST) {
 			DBG("PCI: skip pci host bridge\n");
 			continue;
@@ -235,6 +232,9 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			if (dev->resource[bar].flags & IORESOURCE_MEM_64)
 				bar++;
 		}
+
+		list_add_tail(&dev->bus_list, &bus->devices);
+		pci_register_device(dev);
 	}
 
 	/*
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
