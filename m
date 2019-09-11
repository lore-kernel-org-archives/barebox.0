Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i849D-000407-6w
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 15:03:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i849B-0002yz-TB
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:03:05 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i849B-0001jI-KW
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:03:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 17:03:03 +0200
Message-Id: <20190911150303.6567-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] mci: core: make mci_register -EPROBE_DEFER sensitive
To: barebox@lists.infradead.org

If the current regulator can't be requested because of -EPROBE_DEFER we
shouldn't print a error and ignore it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 67257bcd18..9e39cbbb55 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1819,6 +1819,10 @@ int mci_register(struct mci_host *host)
 
 	host->supply = regulator_get(host->hw_dev, "vmmc");
 	if (IS_ERR(host->supply)) {
+		if (host->supply == ERR_PTR(-EPROBE_DEFER)) {
+			ret = -EPROBE_DEFER;
+			goto err_free;
+		}
 		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
 		host->supply = NULL;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
