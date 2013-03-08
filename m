Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueZ-0003Ph-Q9
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:36:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:47 +0100
Message-Id: <1362738951-25614-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
References: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ata: ahci: fix wrong link check
To: barebox@lists.infradead.org

The following commit accidently bailed out if the link is up, not
when it's down as stated in the commit message.

| commit a3f74d928ce73f37eab5b398e018aaeb42fd2ba4
| Author: Rob Herring <rob.herring@calxeda.com>
| Date:   Mon Feb 11 18:02:00 2013 +0100
|
|     ahci: handle COMINIT received during spin-up
|
|     Some Intel SSDs can send a COMINIT after the initial COMRESET. This causes
|     the link to go down and we need to re-initialize the link.
|
|     Signed-off-by: Rob Herring <rob.herring@calxeda.com>
|     Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
|

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ahci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 4d5b52a..1712006 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -387,7 +387,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = wait_on_timeout(WAIT_SPINUP,
 			((readl(port_mmio + PORT_TFDATA) &
 			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0)
-			|| !((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1));
+			|| ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1));
 	if (ret) {
 		ahci_port_info(ahci_port, "timeout.\n");
 		ret = -ENODEV;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
