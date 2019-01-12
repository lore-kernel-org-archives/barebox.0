Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDdA-0006Yn-L5
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:23:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id u6so7983391pfh.11
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:25 -0800
Message-Id: <20190112072234.21878-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/16] PCI: Make pci_scan_bus static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Pci_scan_bus is not used anyhwere outside pci.c. Mark in static to
reflect that. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 4 +++-
 include/linux/pci.h | 1 -
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 198ec9e995..b0f5ac1b15 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4,6 +4,8 @@
 #include <linux/sizes.h>
 #include <linux/pci.h>
 
+static unsigned int pci_scan_bus(struct pci_bus *bus);
+
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
 static u8 bus_index;
@@ -338,7 +340,7 @@ pci_of_match_device(struct device_d *parent, unsigned int devfn)
 	return NULL;
 }
 
-unsigned int pci_scan_bus(struct pci_bus *bus)
+static unsigned int pci_scan_bus(struct pci_bus *bus)
 {
 	struct pci_dev *dev;
 	struct pci_bus *child_bus;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 82f27f21b2..c8f91cdd96 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -251,7 +251,6 @@ int pci_register_device(struct pci_dev *pdev);
 
 extern struct list_head pci_root_buses; /* list of all known PCI buses */
 
-extern unsigned int pci_scan_bus(struct pci_bus *bus);
 extern void register_pci_controller(struct pci_controller *hose);
 
 int pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
