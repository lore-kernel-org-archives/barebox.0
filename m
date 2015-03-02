Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSMCm-0002Br-95
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 09:00:00 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YSMCO-00020l-Q5
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 09:59:36 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  2 Mar 2015 09:59:36 +0100
Message-Id: <1425286776-5024-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] net: cpsw: prevent stray cache writeback
To: barebox@lists.infradead.org

The cache should be invalidated when transfering ownership of a buffer
to the device. Otherwise the writeback of dirty cache lines can
corrupt the hardware written data.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Jan Weitzel <j.weitzel@phytec.de>
---
Sascha, please apply this to master. It fixes a TFTP buffer corruption
issue reported by Jan.
---
 drivers/net/cpsw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 799fac89a2f3..301b8a9dfde5 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -888,6 +888,7 @@ static int cpsw_recv(struct eth_device *edev)
 	while (cpdma_process(priv, &priv->rx_chan, &buffer, &len) >= 0) {
 		dma_inv_range((ulong)buffer, (ulong)buffer + len);
 		net_receive(edev, buffer, len);
+		dma_inv_range((ulong)buffer, (ulong)buffer + len);
 		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE);
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
