Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048f-91
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I1-0005ON-Vn
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:38 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:34 +0100
Message-Id: <20170301143137.11570-6-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 6/9] mci-bcm2835: enable devicetree probing
To: barebox@lists.infradead.org

From: Enrico Joerns <ejo@pengutronix.de>

Signed-off-by: Enrico Joerns <ejo@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index c7a8cf972ab3..daf771934a6c 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -543,9 +543,18 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	return mci_register(&host->mci);
 }
 
+static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
+	{
+		.compatible = "brcm,bcm2835-sdhci",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d bcm2835_mci_driver = {
 	.name = "bcm2835_mci",
 	.probe = bcm2835_mci_probe,
+	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
 };
 
 static int bcm2835_mci_add(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
