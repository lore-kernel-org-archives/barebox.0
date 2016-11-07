Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.iad3a.emailsrvr.com ([173.203.187.63]
 helo=smtp101.iad3a.emailsrvr.com)
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oUM-0007aE-BJ
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 18:17:50 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  7 Nov 2016 18:16:24 +0000
Message-Id: <20161107181624.4262-5-abbotti@mev.co.uk>
In-Reply-To: <20161107181624.4262-1-abbotti@mev.co.uk>
References: <20161107181624.4262-1-abbotti@mev.co.uk>
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
Subject: [PATCH 4/4] net/designware: add explicit reset of {tx|rx}_currdescnum
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Driver "init" function might be called multiple times.
On every "init" Tx/Rx buffer descriptors are initialized: "descs_init"
-> "{tx|rx}_descs_init".

In its turn those init functions set MAC's "{tx|rx}desclistaddr" to
point on the first buffer descriptor in the list.

So CPU to start operation from the first buffer descriptor as well after
every "init" we have to reset "{tx|rx}_currdescnum".

[Original U-Boot patch by Alexey Brodkin <abrodkin@synopsys.com>]

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 6702d4c..bd20a87 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -176,6 +176,7 @@ static void tx_descs_init(struct eth_device *dev)
 	desc_p->dmamac_next = &desc_table_p[0];
 
 	writel((ulong)&desc_table_p[0], &dma_p->txdesclistaddr);
+	priv->tx_currdescnum = 0;
 }
 
 static void rx_descs_init(struct eth_device *dev)
@@ -207,6 +208,7 @@ static void rx_descs_init(struct eth_device *dev)
 	desc_p->dmamac_next = &desc_table_p[0];
 
 	writel((ulong)&desc_table_p[0], &dma_p->rxdesclistaddr);
+	priv->rx_currdescnum = 0;
 }
 
 static void descs_init(struct eth_device *dev)
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
