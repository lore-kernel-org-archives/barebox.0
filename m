Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rH-QC
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:22 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id DA94718B4261
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:38 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:52 +0100
Message-Id: <1391762936-2747-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 10/14] net: usb: smsc95xx: fix wrong phy reset condition
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/usb/smsc95xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 38ca12f..eb8f0be 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -447,7 +447,7 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 		udelay(10 * 1000);
 		bmcr = smsc95xx_mdio_read(&dev->miibus, phy_id, MII_BMCR);
 		timeout++;
-	} while ((bmcr & MII_BMCR) && (timeout < 100));
+	} while ((bmcr & BMCR_RESET) && (timeout < 100));
 
 	if (timeout >= 100) {
 		netdev_warn(dev->net, "timeout on PHY Reset");
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
