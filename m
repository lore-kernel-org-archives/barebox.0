Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaFM-0008PK-EC
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:14:24 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A0887FFB61D
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:14:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Dec 2011 16:10:36 +0100
Message-Id: <1323097837-30282-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mci: add the probe parameter if any error happened during
 the probe
To: barebox@lists.infradead.org

as example today if the timeout happened we can not probe the SD card again

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1da7aff..e9fe87c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1380,7 +1380,7 @@ static int mci_probe(struct device_d *mci_dev)
 #ifdef CONFIG_MCI_STARTUP
 	/* if enabled, probe the attached card immediately */
 	rc = mci_card_probe(mci_dev);
-	if (rc == -ENODEV) {
+	if (rc) {
 		/*
 		 * If it fails, add the 'probe' parameter to give the user
 		 * a chance to insert a card and try again. Note: This may fail
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
