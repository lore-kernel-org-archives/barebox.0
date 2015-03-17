Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXl9m-00069w-8t
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:39:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:38:46 +0100
Message-Id: <1426574331-22797-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
References: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] pci: fix copy-paste bug
To: Barebox List <barebox@lists.infradead.org>

Test for the correct resource before derefencing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index cb8c539..d6e95c3 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -53,7 +53,7 @@ void register_pci_controller(struct pci_controller *hose)
 	else
 		last_mem = 0;
 
-	if (bus->resource[PCI_BUS_RESOURCE_MEM])
+	if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
 		last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
 	else
 		last_mem_pref = 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
