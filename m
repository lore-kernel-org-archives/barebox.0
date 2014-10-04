Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00054P-2h
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:39 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 4520926C2003
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:34:00 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:15 +0200
Message-Id: <1412444425-2569-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 09/19] commands: lspci: go down into subordinate busses
To: barebox@lists.infradead.org

This way we also list devices that are behind
bridges.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/lspci.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/commands/lspci.c b/commands/lspci.c
index fdf0269..27edd5d 100644
--- a/commands/lspci.c
+++ b/commands/lspci.c
@@ -20,10 +20,24 @@
 #include <complete.h>
 #include <linux/pci.h>
 
+static void traverse_bus(struct pci_bus *bus)
+{
+	struct pci_dev *dev;
+
+	list_for_each_entry(dev, &bus->devices, bus_list) {
+		printf("%02x:%02x.%1x %04x: %04x:%04x (rev %02x)\n",
+		       dev->bus->number, PCI_SLOT(dev->devfn),
+		       PCI_FUNC(dev->devfn), (dev->class >> 8) & 0xffff,
+		       dev->vendor, dev->device, dev->revision);
+
+		if (dev->subordinate)
+			traverse_bus(dev->subordinate);
+	}
+}
+
 static int do_lspci(int argc, char *argv[])
 {
 	struct pci_bus *root_bus;
-	struct pci_dev *dev;
 
 	if (list_empty(&pci_root_buses)) {
 		printf("No PCI bus detected\n");
@@ -31,14 +45,7 @@ static int do_lspci(int argc, char *argv[])
 	}
 
 	list_for_each_entry(root_bus, &pci_root_buses, node) {
-		list_for_each_entry(dev, &root_bus->devices, bus_list) {
-			printf("%02x: %04x: %04x:%04x (rev %02x)\n",
-				      dev->devfn,
-				      (dev->class >> 8) & 0xffff,
-				      dev->vendor,
-				      dev->device,
-				      dev->revision);
-		}
+		traverse_bus(root_bus);
 	}
 
 	return 0;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
