Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sop-0000d0-DW
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:26:40 +0000
Received: by mail-we0-f178.google.com with SMTP id w61so891843wes.9
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:26:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:26:06 +0200
Message-Id: <1406107568-8440-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RESEND 4/6] pci: allow to set bus number on
 register_pci_controller
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Currently, all PCI controllers are registered with struct pci_bus
number set to zero. Allow to set the bus number before registering
the controller and scan the bus.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/mips/mach-malta/pci.c | 2 +-
 drivers/pci/pci.c          | 3 ++-
 include/linux/pci.h        | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 90351758e06d..47bfb4cc0833 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -229,7 +229,7 @@ static int pcibios_init(void)
 		GT_WRITE(GT_PCI0IOREMAP_OFS, map);
 	}
 
-	register_pci_controller(&gt64120_controller);
+	register_pci_controller(&gt64120_controller, 0);
 
 	return 0;
 }
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index b30cdd96f8ca..f755d13e14ee 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -27,7 +27,7 @@ static struct pci_bus *pci_alloc_bus(void)
 	return b;
 }
 
-void register_pci_controller(struct pci_controller *hose)
+void register_pci_controller(struct pci_controller *hose, int num)
 {
 	struct pci_bus *bus;
 
@@ -39,6 +39,7 @@ void register_pci_controller(struct pci_controller *hose)
 	bus->ops = hose->pci_ops;
 	bus->resource[0] = hose->mem_resource;
 	bus->resource[1] = hose->io_resource;
+	bus->number = num;
 	bus->sysdata = hose;
 
 	pci_scan_bus(bus);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 6caed01c9939..c044225c3ecb 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -246,7 +246,7 @@ int pci_register_device(struct pci_dev *pdev);
 extern struct list_head pci_root_buses; /* list of all known PCI buses */
 
 extern unsigned int pci_scan_bus(struct pci_bus *bus);
-extern void register_pci_controller(struct pci_controller *hose);
+extern void register_pci_controller(struct pci_controller *hose, int num);
 
 int pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
 			     int where, u8 *val);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
