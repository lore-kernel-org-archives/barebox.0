Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Fdl-0003Yp-TV
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:11:20 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0BD67DC0E7A
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 14:21:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Feb 2013 14:10:08 +0100
Message-Id: <1360674608-12732-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] ahci-generic: add oftree support
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

calxeda use the generic driver but have it's own compatible cf Linux kernel
Documentation

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/ata/ahci-generic.c |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/ata/ahci-generic.c b/drivers/ata/ahci-generic.c
index 4077627..62f2a19 100644
--- a/drivers/ata/ahci-generic.c
+++ b/drivers/ata/ahci-generic.c
@@ -35,9 +35,20 @@ err_free:
 	return ret;
 }
 
+static __maybe_unused struct of_device_id ahci_dt_ids[] = {
+	{
+		.compatible = "ahci",
+	}, {
+		.compatible = "calxeda,hb-ahci",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d ahci_driver = {
 	.name	= "ahci",
 	.probe	= ahci_probe,
+	.of_compatible = DRV_OF_COMPAT(ahci_dt_ids),
 };
 
 static int ahci_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
