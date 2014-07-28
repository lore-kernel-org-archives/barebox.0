Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBkwt-0006Bu-2Z
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 13:26:43 +0000
Received: by mail-we0-f182.google.com with SMTP id k48so7466301wev.27
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 06:26:20 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 28 Jul 2014 15:26:08 +0200
Message-Id: <1406553970-18157-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 3/5] pci: set auto-incremented bus number
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

When using more than one PCI bus, we have to assign unique numbers
to each bus. Use an auto-incremented bus index and assign it to
each registered bus. Also, allow the PCI host controller to update
internal registers by calling set_busno with assigned bus number.

While at it, add pci_controller struct to set_busno callback,
add a back reference to pci_controller to pci_bus, and clean up
unused left-overs from Linux import.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- set pci_controller reference to bus->bus (Suggested by Lucas Stach)
- auto-increment pci_bus number for each registered bus
- call pci_controller set_busno() before pci_scan_bus
- remove sysdata and proc_dir_entry from pci_dev and pci_bus
- pass pci_controller to set_busno callback

Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/pci/pci.c   |  5 +++++
 include/linux/pci.h | 12 +++---------
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 501a36cc8356..2dafaf8d6bab 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -11,6 +11,7 @@ static struct pci_controller *hose_head, **hose_tail = &hose_head;
 
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
+static u8 bus_index;
 
 static struct pci_bus *pci_alloc_bus(void)
 {
@@ -36,10 +37,14 @@ void register_pci_controller(struct pci_controller *hose)
 
 	bus = pci_alloc_bus();
 	hose->bus = bus;
+	bus->host = hose;
 	bus->ops = hose->pci_ops;
 	bus->resource[0] = hose->mem_resource;
 	bus->resource[1] = hose->io_resource;
+	bus->number = bus_index++;
 
+	if (hose->set_busno)
+		hose->set_busno(hose, bus->number);
 	pci_scan_bus(bus);
 
 	list_add_tail(&bus->node, &pci_root_buses);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 6caed01c9939..0ec1320b2f71 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -91,9 +91,6 @@ struct pci_dev {
 	struct list_head bus_list;	/* node in per-bus list */
 	struct pci_bus	*bus;		/* bus this device is on */
 	struct pci_bus	*subordinate;	/* bus this device bridges to */
-
-	void		*sysdata;	/* hook for sys-specific extension */
-	struct proc_dir_entry *procent;	/* device entry in /proc/bus/pci */
 	struct pci_slot	*slot;		/* Physical slot this device is in */
 
 	struct device_d dev;
@@ -118,6 +115,7 @@ struct pci_dev {
 #define	to_pci_dev(dev) container_of(dev, struct pci_dev, dev)
 
 struct pci_bus {
+	struct pci_controller *host;	/* associated host controller */
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
 	struct list_head devices;	/* list of devices on this bus */
@@ -126,8 +124,6 @@ struct pci_bus {
 	struct list_head resources;	/* address space routed to this bus */
 
 	struct pci_ops	*ops;		/* configuration access functions */
-	void		*sysdata;	/* hook for sys-specific extension */
-	struct proc_dir_entry *procdir;	/* directory entry in /proc/bus/pci */
 
 	unsigned char	number;		/* bus number */
 	unsigned char	primary;	/* number of primary bridge */
@@ -167,10 +163,8 @@ struct pci_controller {
 
 	unsigned int index;
 
-	/* Optional access methods for reading/writing the bus number
-	   of the PCI controller */
-	int (*get_busno)(void);
-	void (*set_busno)(int busno);
+	/* Optional access method for writing the bus number */
+	void (*set_busno)(struct pci_controller *host, int busno);
 };
 
 struct pci_driver {
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
