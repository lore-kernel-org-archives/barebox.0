Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wmi-00012d-5T
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 17:03:16 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8B069DC1689
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:13:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 18:02:00 +0100
Message-Id: <1360602120-11241-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360602120-11241-1-git-send-email-plagnioj@jcrosoft.com>
References: <1360602120-11241-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ahci: handle COMINIT received during spin-up
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

From: Rob Herring <rob.herring@calxeda.com>

Some Intel SSDs can send a COMINIT after the initial COMRESET. This causes
the link to go down and we need to re-initialize the link.

Signed-off-by: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/ata/ahci.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 14de3c5..3aff3f3 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -385,14 +385,21 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port_info(ahci_port, "Spinning up device...\n");
 
 	ret = wait_on_timeout(WAIT_SPINUP,
-			(readl(port_mmio + PORT_TFDATA) &
-			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0);
+			((readl(port_mmio + PORT_TFDATA) &
+			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0)
+			|| !((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1));
 	if (ret) {
 		ahci_port_info(ahci_port, "timeout.\n");
 		ret = -ENODEV;
 		goto err_init;
 	}
 
+	if ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1) {
+		ahci_port_info(ahci_port, "down.\n");
+		ret = -ENODEV;
+		goto err_init;
+	}
+
 	ahci_port_info(ahci_port, "ok.\n");
 
 	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
