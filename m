Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Uua-0003O5-Un
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 08:59:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1UuF-0004c4-GN
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  1 Nov 2016 09:58:53 +0100
Message-Id: <20161101085855.953-3-l.stach@pengutronix.de>
In-Reply-To: <20161101085855.953-1-l.stach@pengutronix.de>
References: <20161101085855.953-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/5] PCI: align address range before scanning bridge
To: barebox@lists.infradead.org

Otherwise we may end up with a too low base address and push
requests for the upstream bus onto the downstream side.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index eb3ce0f3211a..19cda1f145bc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -252,6 +252,7 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 
 	if (last_mem) {
 		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
+		last_mem = ALIGN(last_mem, SZ_1M);
 		pci_write_config_word(dev, PCI_MEMORY_BASE,
 				      (last_mem & 0xfff00000) >> 16);
 		cmdstat |= PCI_COMMAND_MEMORY;
@@ -259,6 +260,7 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 
 	if (last_mem_pref) {
 		/* Set up memory and I/O filter limits, assume 32-bit I/O space */
+		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_BASE,
 				      (last_mem_pref & 0xfff00000) >> 16);
 		cmdstat |= PCI_COMMAND_MEMORY;
@@ -270,6 +272,7 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 	}
 
 	if (last_io) {
+		last_io = ALIGN(last_io, SZ_4K);
 		pci_write_config_byte(dev, PCI_IO_BASE,
 				      (last_io & 0x0000f000) >> 8);
 		pci_write_config_word(dev, PCI_IO_BASE_UPPER16,
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
