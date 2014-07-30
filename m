Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCPQn-0003Ri-AR
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 08:40:18 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so815831wgh.33
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 01:39:55 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 30 Jul 2014 10:39:37 +0200
Message-Id: <1406709580-5585-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 5/8] pci: ensure device does ignore BAR mangling
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Disable access to PCI devices I/O and memory regions while
mangling BAR registers.

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
 drivers/pci/pci.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index f58e2c98f185..b64f25d13282 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -191,6 +191,10 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			continue;
 		}
 
+		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
+		pci_write_config_byte(dev, PCI_COMMAND,
+				      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
+
 		for (bar = 0; bar < 6; bar++) {
 			resource_size_t last_addr;
 
@@ -233,6 +237,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 				bar++;
 		}
 
+		pci_write_config_byte(dev, PCI_COMMAND, cmd);
 		list_add_tail(&dev->bus_list, &bus->devices);
 		pci_register_device(dev);
 	}
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
