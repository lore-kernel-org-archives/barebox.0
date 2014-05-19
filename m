Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WmUI0-00065F-Uk
 for barebox@lists.infradead.org; Mon, 19 May 2014 20:36:05 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so3952748eek.26
 for <barebox@lists.infradead.org>; Mon, 19 May 2014 13:35:43 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Mon, 19 May 2014 22:35:00 +0200
Message-Id: <1400531700-24248-2-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1400531700-24248-1-git-send-email-b.galvani@gmail.com>
References: <1400531700-24248-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 2/2] net: arc_emac: disable interrupts
To: barebox@lists.infradead.org

The driver doesn't use interrupts and Linux driver crashes when emac
interrupts are enabled at boot: keep them disabled.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/net/arc_emac.c |    9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 23df3fd..8b74ea5 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -210,9 +210,6 @@ static int arc_emac_open(struct eth_device *edev)
 	arc_reg_set(priv, R_RX_RING, (unsigned int)priv->rxbd);
 	arc_reg_set(priv, R_TX_RING, (unsigned int)priv->txbd);
 
-	/* Enable interrupts */
-	arc_reg_set(priv, R_ENABLE, RXINT_MASK | ERR_MASK);
-
 	/* Set CONTROL */
 	arc_reg_set(priv, R_CTRL,
 		     (RX_BD_NUM << 24) |	/* RX BD table length */
@@ -317,9 +314,6 @@ static void arc_emac_halt(struct eth_device *edev)
 {
 	struct arc_emac_priv *priv = edev->priv;
 
-	/* Disable interrupts */
-	arc_reg_clr(priv, R_ENABLE, RXINT_MASK | ERR_MASK);
-
 	/* Disable EMAC */
 	arc_reg_clr(priv, R_CTRL, EN_MASK);
 }
@@ -440,6 +434,9 @@ static int arc_emac_probe(struct device_d *dev)
 	/* Set poll rate so that it polls every 1 ms */
 	arc_reg_set(priv, R_POLLRATE, clock_frequency / 1000000);
 
+	/* Disable interrupts */
+	arc_reg_set(priv, R_ENABLE, 0);
+
 	mdiobus_register(miibus);
 	eth_register(edev);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
