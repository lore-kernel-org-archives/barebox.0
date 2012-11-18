Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4Lj-0001AX-GS
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:51:48 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2EA00DC3992
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:59:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 18 Nov 2012 13:49:42 +0100
Message-Id: <1353242985-7539-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121118124627.GE8327@game.jcrosoft.org>
 <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] phylib: export phy_id via param
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/mdio_bus.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 762adfe..41c8a96 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -193,6 +193,9 @@ static int mdio_bus_probe(struct device_d *_dev)
 	sprintf(str, "%d", dev->addr);
 	dev_add_param_fixed(&dev->dev, "phy_addr", str);
 
+	sprintf(str, "0x%08x", dev->phy_id);
+	dev_add_param_fixed(&dev->dev, "phy_id", str);
+
 	dev->cdev.name = asprintf("phy%d", _dev->id);
 	dev->cdev.size = 64;
 	dev->cdev.ops = &phydev_ops;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
