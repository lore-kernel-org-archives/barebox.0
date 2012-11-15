Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYvpU-0001Z3-NR
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:33:49 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 094F2FFB60B
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 10:41:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 10:31:43 +0100
Message-Id: <1352971904-12409-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] phy: add phy_drivers_register
To: barebox@lists.infradead.org

to allow to register an array of drivers

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/phy.c |   12 ++++++++++++
 include/linux/phy.h   |    1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index daa657f..5a4be54 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -705,6 +705,18 @@ int phy_driver_register(struct phy_driver *phydrv)
 	return register_driver(&phydrv->drv);
 }
 
+int phy_drivers_register(struct phy_driver *new_driver, int n)
+{
+	int i, ret = 0;
+
+	for (i = 0; i < n; i++) {
+		ret = phy_driver_register(new_driver + i);
+		if (ret)
+			return ret;
+	}
+	return ret;
+}
+
 int phy_init_hw(struct phy_device *phydev)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
diff --git a/include/linux/phy.h b/include/linux/phy.h
index fa21984..ce6f22c 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -235,6 +235,7 @@ struct phy_fixup {
 };
 
 int phy_driver_register(struct phy_driver *drv);
+int phy_drivers_register(struct phy_driver *new_driver, int n);
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
