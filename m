Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPv-0003Jw-LI
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id u6so4641792plm.8
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:28 -0800
Message-Id: <20190110045739.19399-11-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/21] PCI: Conver register_pci_controller() to use a loop
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Conver register_pci_controller() to use a loop. No functional change
intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 3e249abe4f..e1c059f2a9 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -42,6 +42,7 @@ static void pci_bus_register_devices(struct pci_bus *bus)
 void register_pci_controller(struct pci_controller *hose)
 {
 	struct pci_bus *bus;
+	int r;
 
 	*hose_tail = hose;
 	hose_tail = &hose->next;
@@ -59,20 +60,8 @@ void register_pci_controller(struct pci_controller *hose)
 	if (hose->set_busno)
 		hose->set_busno(hose, bus->number);
 
-	if (bus->resource[PCI_BUS_RESOURCE_MEM])
-		last[PCI_BUS_RESOURCE_MEM] = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
-	else
-		last[PCI_BUS_RESOURCE_MEM] = 0;
-
-	if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
-		last[PCI_BUS_RESOURCE_MEM_PREF] = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
-	else
-		last[PCI_BUS_RESOURCE_MEM_PREF] = 0;
-
-	if (bus->resource[PCI_BUS_RESOURCE_IO])
-		last[PCI_BUS_RESOURCE_IO] = bus->resource[PCI_BUS_RESOURCE_IO]->start;
-	else
-		last[PCI_BUS_RESOURCE_IO] = 0;
+	for (r = PCI_BUS_RESOURCE_IO; r <= PCI_BUS_RESOURCE_MEM_PREF; r++)
+		last[r] = bus->resource[r] ? bus->resource[r]->start : 0;
 
 	pci_scan_bus(bus);
 	pci_bus_register_devices(bus);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
