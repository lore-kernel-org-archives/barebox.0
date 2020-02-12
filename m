Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oU4-0005KJ-Au
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 09:39:05 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B3E01FF813
 for <barebox@lists.infradead.org>; Wed, 12 Feb 2020 09:38:50 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 12 Feb 2020 10:38:39 +0100
Message-Id: <20200212093839.25968-1-ahmad@a3f.at>
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
Subject: [PATCH] serial: ns16550_pci: fix possible read of uninitialized
 variable
To: barebox@lists.infradead.org

When quirk->init is NULL, we evaluate an uninitialized rc.
Is we have already checked for rc < 0 at the point of assignment,
this if clause isn't needed. Remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/serial/serial_ns16550_pci.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index d4b5bd8898b7..392a2810d815 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -3655,12 +3655,6 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
 	uart.pdata = xzalloc(sizeof(*uart.pdata));
 	uart.pdata->clock = board->base_baud * 16;
 
-	if (rc < 0) {
-		kfree(priv);
-		priv = ERR_PTR(rc);
-		goto err_deinit;
-	}
-
 	for (i = 0; i < nr_ports; i++) {
 		struct device_d *ns16550_dev;
 		struct resource *res;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
