Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEhi-0007l9-PL
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:30:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:30:06 +0100
Message-Id: <1351614606-16461-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
References: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net fec: call fec_init at probe time
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

fec_init() initializes some bits important for phy access, so do
this before the mdiobus is registered. This fixes mdiobus support
on i.MX28 boards in RMII mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index f6065aa..21ce38c 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -644,7 +644,6 @@ static int fec_probe(struct device_d *dev)
 	dev->priv = fec;
 	edev->priv = fec;
 	edev->open = fec_open;
-	edev->init = fec_init;
 	edev->send = fec_send;
 	edev->recv = fec_recv;
 	edev->halt = fec_halt;
@@ -685,6 +684,8 @@ static int fec_probe(struct device_d *dev)
 
 	fec->xcv_type = pdata->xcv_type;
 
+	fec_init(edev);
+
 	if (fec->xcv_type != SEVENWIRE) {
 		fec->phy_init = pdata->phy_init;
 		fec->miibus.read = fec_miibus_read;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
