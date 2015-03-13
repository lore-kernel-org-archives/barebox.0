Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWMpP-0000mx-TJ
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 10:28:28 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YWMp2-00053m-NT
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 11:28:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 13 Mar 2015 11:28:04 +0100
Message-Id: <1426242484-13731-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] PCI: fix bad bugs in bridge setup code
To: barebox@lists.infradead.org

Add the required brackets, so that we don't write unused registers
with potentially bogus values.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
/me hides under a rock
---
 drivers/pci/pci.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 5b848eeb2a53..1f5dc78b3ce1 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -259,15 +259,17 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 	/* limit subordinate to last used bus number */
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, bus_index - 1);
 
-	if (last_mem)
+	if (last_mem) {
 		last_mem = ALIGN(last_mem, SZ_1M);
 		pci_write_config_word(dev, PCI_MEMORY_LIMIT,
 				      ((last_mem - 1) & 0xfff00000) >> 16);
+	}
 
-	if (last_mem_pref)
+	if (last_mem_pref) {
 		last_mem_pref = ALIGN(last_mem_pref, SZ_1M);
 		pci_write_config_word(dev, PCI_PREF_MEMORY_LIMIT,
 				      ((last_mem_pref - 1) & 0xfff00000) >> 16);
+	}
 
 	if (last_io) {
 		last_io = ALIGN(last_io, SZ_4K);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
