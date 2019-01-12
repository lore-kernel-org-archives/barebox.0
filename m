Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDdF-0006ec-17
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:23:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id r136so7994957pfc.6
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:23:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:29 -0800
Message-Id: <20190112072234.21878-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/16] PCI: Drop "ops" from struct pci_bus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop "ops" from struct pci_bus, since the same struct can be accessed
via host->pci_ops. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c       | 6 ++----
 drivers/pci/pci_iomap.c | 2 +-
 include/linux/pci.h     | 2 --
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 0c5a22fd59..a94864b0c6 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -48,7 +48,6 @@ void register_pci_controller(struct pci_controller *hose)
 	hose->bus = bus;
 	bus->parent = hose->parent;
 	bus->host = hose;
-	bus->ops = hose->pci_ops;
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
 	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
 	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
@@ -97,7 +96,7 @@ int pci_bus_read_config_##size \
 	int res;							\
 	u32 data = 0;							\
 	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
-	res = bus->ops->read(bus, devfn, pos, len, &data);		\
+	res = bus->host->pci_ops->read(bus, devfn, pos, len, &data);	\
 	*value = (type)data;						\
 	return res;							\
 }
@@ -108,7 +107,7 @@ int pci_bus_write_config_##size \
 {									\
 	int res;							\
 	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
-	res = bus->ops->write(bus, devfn, pos, len, value);		\
+	res = bus->host->pci_ops->write(bus, devfn, pos, len, value);	\
 	return res;							\
 }
 
@@ -420,7 +419,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			child_bus = pci_alloc_bus();
 			/* inherit parent properties */
 			child_bus->host = bus->host;
-			child_bus->ops = bus->host->pci_ops;
 			child_bus->parent_bus = bus;
 			child_bus->resource[PCI_BUS_RESOURCE_MEM] =
 				bus->resource[PCI_BUS_RESOURCE_MEM];
diff --git a/drivers/pci/pci_iomap.c b/drivers/pci/pci_iomap.c
index a56f61dc1a..2c58c0c0f9 100644
--- a/drivers/pci/pci_iomap.c
+++ b/drivers/pci/pci_iomap.c
@@ -24,6 +24,6 @@ void __iomem *pci_iomap(struct pci_dev *dev, int bar)
 	struct pci_bus *bus = dev->bus;
 	resource_size_t start = pci_resource_start(dev, bar);
 
-	return (void *)bus->ops->res_start(bus, start);
+	return (void *)bus->host->pci_ops->res_start(bus, start);
 }
 EXPORT_SYMBOL(pci_iomap);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index a519a9dc81..b609a1330b 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -131,8 +131,6 @@ struct pci_bus {
 	struct list_head devices;	/* list of devices on this bus */
 	struct resource *resource[PCI_BRIDGE_RESOURCE_NUM];
 
-	struct pci_ops	*ops;		/* configuration access functions */
-
 	unsigned char	number;		/* bus number */
 	unsigned char	primary;	/* number of primary bridge */
 	unsigned char	secondary;	/* number of secondary bridge */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
