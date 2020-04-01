Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXZ5-00085g-3I
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 07:13:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Apr 2020 09:13:28 +0200
Message-Id: <20200401071328.29100-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: ns16550_pci: Use %pa to print resource_size_t
To: Barebox List <barebox@lists.infradead.org>

The correct format specifier for printing a resource_size_t is %pa. Use
it to avoid warninings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550_pci.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index 392a2810d8..c29cfc5a75 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -3670,9 +3670,9 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
 
 		res = &uart.resource;
 
-		dev_dbg(&dev->dev, "setup PCI %s console @ 0x%llx-0x%llx\n",
+		dev_dbg(&dev->dev, "setup PCI %s console @ 0x%pa-0x%pa\n",
 			res->flags & IORESOURCE_MEM ? "MMIO" : "IO port",
-			res->start, res->end);
+			&res->start, &res->end);
 
 		ns16550_dev = device_alloc("ns16550_serial", DEVICE_ID_DYNAMIC);
 		ns16550_dev->platform_data = uart.pdata;
@@ -3683,9 +3683,9 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
 
 		rc = platform_device_register(ns16550_dev);
 		if (rc < 0) {
-			dev_err(&dev->dev, "couldn't register PCI %s console @0x%llx: %s\n",
+			dev_err(&dev->dev, "couldn't register PCI %s console @0x%pa: %s\n",
 				res->flags & IORESOURCE_MEM ? "MMIO" : "IO port",
-				res->start, strerror(-rc));
+				&res->start, strerror(-rc));
 
 			break;
 		}
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
