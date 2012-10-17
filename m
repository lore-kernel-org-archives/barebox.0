Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOa6X-0007ur-Q3
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 20:20:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 22:20:34 +0200
Message-Id: <1350505234-29464-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
References: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] net gianfar: remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/gianfar.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index bf834b6..55675ba 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -82,7 +82,6 @@ static void gfar_adjust_link(struct eth_device *edev)
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
 	u32 ecntrl, maccfg2;
-	uint32_t status;
 
 	priv->link = edev->phydev->link;
 	priv->duplexity =edev->phydev->duplex;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
