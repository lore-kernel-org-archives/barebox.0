Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVW68-0004ro-6N
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:32:53 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:32:37 +0100
Message-Id: <20191115073239.21013-2-ahmad@a3f.at>
In-Reply-To: <20191115073239.21013-1-ahmad@a3f.at>
References: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
 <20191115073239.21013-1-ahmad@a3f.at>
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
Subject: [PATCH 1/3] net: designware: eqos: properly stop DMA on halt
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Specifying ->halt only means that it's called along with eth_unregister.
If we want to halt the DMA, we will have to call it ourselves in the
remove callback. Do this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/designware_eqos.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index a49239e0573e..52a5ec272e7f 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -869,6 +869,8 @@ void eqos_remove(struct device_d *dev)
 {
 	struct eqos *eqos = dev->priv;
 
+	eth_unregister(&eqos->netdev);
+
 	mdiobus_unregister(&eqos->miibus);
 
 	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
