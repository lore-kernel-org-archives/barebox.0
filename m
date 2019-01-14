Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givZ0-0007rI-5L
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id z9so9859480pfi.2
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:17:00 -0800
Message-Id: <20190114061709.13948-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 07/16] PCI: Make pci_scan_bus static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Pci_scan_bus is not used anyhwere outside pci.c. Mark in static to
reflect that. No functional change intended.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 4 +++-
 include/linux/pci.h | 1 -
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 496879c216..25fb78b9cb 100644
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
@@ -339,7 +341,7 @@ pci_of_match_device(struct device_d *parent, unsigned int devfn)
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
