Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2L7-00049L-4r
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 14:28:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Mar 2020 15:27:42 +0100
Message-Id: <20200311142757.25263-2-s.hauer@pengutronix.de>
In-Reply-To: <20200311142757.25263-1-s.hauer@pengutronix.de>
References: <20200311142757.25263-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] net: fec_imx: Do not clear MII interrupt during receive
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

fec_recv() can be triggered during a MDIO access. so we may not clear
the FEC_IEVENT_MII interrupt the MDIO access is waiting for. Clearing
it in that moment causes the MDIO access to timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 5ef1d4359e..f814b3b960 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -514,6 +514,7 @@ static int fec_recv(struct eth_device *dev)
 	 * Check if any critical events have happened
 	 */
 	ievent = readl(fec->regs + FEC_IEVENT);
+	ievent &= ~FEC_IEVENT_MII;
 	writel(ievent, fec->regs + FEC_IEVENT);
 
 	if (ievent & FEC_IEVENT_BABT) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
