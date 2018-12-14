Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005W-1N
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:08 +0100
Message-Id: <20181214141730.26181-2-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/23] net: davinci-emac: fix buggy channel tear down
To: Barebox List <barebox@lists.infradead.org>
Cc: Heinrich Toews <heinrich.toews@wago.com>, Oleg Karfich <oleg.karfich@wago.com>

From: Heinrich Toews <heinrich.toews@wago.com>

Druing a barebox_shutdown() already probed platform devices are being halted.
While trying to halt the davinci emac a channel tear down operation is triggered
which leads due to a missing DMA pointer configuration to a memory corruption
whithin the decompressed kernel memory. In this case the devices failed to boot
and are completely freezed.

In the davinci driver DMA initialisation is only done during the opening of the
device which is done only when the device is setup for communication.

The problem was solved by adding DMA init code to emacs_init() which is called
shortly after the probing of the device. In this case the tearing down of the
channels completes successfully.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 drivers/net/davinci_emac.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 2fccd4681e..2f6091d155 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -173,6 +173,17 @@ static int davinci_emac_set_ethaddr(struct eth_device *edev, const unsigned char
 
 static int davinci_emac_init(struct eth_device *edev)
 {
+	struct davinci_emac_priv *priv = edev->priv;
+	uint32_t cnt;
+
+	/* Set DMA head and completion pointers to 0 */
+	for(cnt = 0; cnt < 8; cnt++) {
+		writel(0, (void *)priv->adap_emac + EMAC_TX0HDP + 4 * cnt);
+		writel(0, (void *)priv->adap_emac + EMAC_RX0HDP + 4 * cnt);
+		writel(0, (void *)priv->adap_emac + EMAC_TX0CP + 4 * cnt);
+		writel(0, (void *)priv->adap_emac + EMAC_RX0CP + 4 * cnt);
+	}
+
 	dev_dbg(&edev->dev, "* emac_init\n");
 	return 0;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
