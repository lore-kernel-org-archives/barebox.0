Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ZFq-0008Kh-7a
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 10:07:55 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C266CFFA463
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 11:23:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Feb 2013 11:06:39 +0100
Message-Id: <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130213100249.GL19322@game.jcrosoft.org>
References: <20130213100249.GL19322@game.jcrosoft.org>
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
Subject: [PATCH 1/6] ahci-generic: add oftree support
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

calxeda use the generic driver but have it's own compatible cf Linux kernel
Documentation

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/ata/ahci.c |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 3aff3f3..2d6e422 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -671,10 +671,19 @@ static int ahci_probe(struct device_d *dev)
 	return ret;
 }
 
+static __maybe_unused struct of_device_id ahci_dt_ids[] = {
+	{
+		.compatible = "calxeda,hb-ahci",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d ahci_driver = {
 	.name   = "ahci",
 	.probe  = ahci_probe,
 	.info	= ahci_info,
+	.of_compatible = DRV_OF_COMPAT(ahci_dt_ids),
 };
 
 static int ahci_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
