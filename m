Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJke9-0007ad-HC
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:48:59 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZJimP-0002c4-17
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:49:21 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 27 Jul 2015 17:48:31 +0200
Message-Id: <1438012113-27213-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
References: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] net: enc28j60: fix set mac function signature
To: barebox@lists.infradead.org

Fixes:
drivers/net/enc28j60.c: In function 'enc28j60_probe':
drivers/net/enc28j60.c:947:20: warning: assignment from incompatible pointer type
  edev->set_ethaddr = enc28j60_set_ethaddr;

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/enc28j60.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 76b3df63f6ec..6550c59fc8d2 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -422,7 +422,7 @@ static int enc28j60_get_ethaddr(struct eth_device *edev, unsigned char *m)
  * Program the hardware MAC address from dev->dev_addr.
  */
 static int enc28j60_set_ethaddr(struct eth_device *edev,
-					unsigned char *mac_addr)
+				const unsigned char *mac_addr)
 {
 	int ret;
 	struct enc28j60_net *priv = edev->priv;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
