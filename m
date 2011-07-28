Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNW7-0000y7-JN
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:08:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:08:31 +0200
Message-Id: <1311847712-23515-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net i.MX fec: embed ethernet device into priv
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    4 ++--
 drivers/net/fec_imx.h |    1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 6886ccc..72f7faa 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -605,9 +605,9 @@ static int fec_probe(struct device_d *dev)
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
-	edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
+	fec = xzalloc(sizeof(*fec));
+	edev = &fec->edev;
 	dev->type_data = edev;
-	fec = (struct fec_priv *)xzalloc(sizeof(*fec));
 	edev->priv = fec;
 	edev->open = fec_open;
 	edev->init = fec_init;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index e07071a..19f4709 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -144,6 +144,7 @@ struct buffer_descriptor {
  * @brief i.MX27-FEC private structure
  */
 struct fec_priv {
+	struct eth_device edev;
 	void __iomem *regs;
 	xceiver_type xcv_type;			/* transceiver type          */
 	struct buffer_descriptor __iomem *rbd_base;	/* RBD ring                  */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
