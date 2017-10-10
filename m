Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra1.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1toF-0007xt-LZ
 for barebox@lists.infradead.org; Tue, 10 Oct 2017 12:39:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 8135E2808DD
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 14:38:31 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id X3yWcOy37_Db for <barebox@lists.infradead.org>;
 Tue, 10 Oct 2017 14:38:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 6723E2811A8
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 14:38:19 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id BmofMWfmWQMj for <barebox@lists.infradead.org>;
 Tue, 10 Oct 2017 14:38:19 +0200 (CEST)
Received: from zimbra1.kalray.eu (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 546B828118D
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 14:38:19 +0200 (CEST)
Date: Tue, 10 Oct 2017 14:38:19 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <118967021.61066184.1507639099296.JavaMail.zimbra@kalray.eu>
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
Subject: [PATCH] Marvell: implement marvell_of_reg_init
To: Barebox List <barebox@lists.infradead.org>

From ed1cbcd05d5efeb4012d77a9a4ab9c1da0449bdc Mon Sep 17 00:00:00 2001
From: Clement Leger <clement.leger@kalray.eu>
Date: Tue, 10 Oct 2017 14:29:49 +0200
Subject: [PATCH] Marvell: implement marvell_of_reg_init

Implement marvell_of_reg_init in order to use marvell,reg-init property
from device-tree. The code is taken from Linux kernel and slighlty
modify to fit barebox structures.
---
 drivers/net/phy/marvell.c | 73 ++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 69 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index ea5a4a9..73d6453 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -175,13 +175,78 @@ static inline bool phy_interface_is_rgmii(struct phy_device *phydev)
 };
 
 /*
- * This same function in the Linux kernel parses the marvell,reg-init dt
- * property and does the necessary register writes. It's kept as an exercise for
- * a future user to implement this. :-)
+ * Set and/or override some configuration registers based on the
+ * marvell,reg-init property stored in the of_node for the phydev.
+ *
+ * marvell,reg-init = <reg-page reg mask value>,...;
+ *
+ * There may be one or more sets of <reg-page reg mask value>:
+ *
+ * reg-page: which register bank to use.
+ * reg: the register.
+ * mask: if non-zero, ANDed with existing register value.
+ * value: ORed with the masked value and written to the regiser.
+ *
  */
 static int marvell_of_reg_init(struct phy_device *phydev)
 {
-	return 0;
+	const __be32 *paddr;
+	int len, i, saved_page, current_page, page_changed, ret;
+
+	if (!phydev->dev.device_node)
+		return 0;
+
+	paddr = of_get_property(phydev->dev.device_node,
+				"marvell,reg-init", &len);
+	if (!paddr || len < (4 * sizeof(*paddr)))
+		return 0;
+
+	saved_page = phy_read(phydev, MII_MARVELL_PHY_PAGE);
+	if (saved_page < 0)
+		return saved_page;
+	page_changed = 0;
+	current_page = saved_page;
+
+	ret = 0;
+	len /= sizeof(*paddr);
+	for (i = 0; i < len - 3; i += 4) {
+		u16 reg_page = be32_to_cpup(paddr + i);
+		u16 reg = be32_to_cpup(paddr + i + 1);
+		u16 mask = be32_to_cpup(paddr + i + 2);
+		u16 val_bits = be32_to_cpup(paddr + i + 3);
+		int val;
+
+		if (reg_page != current_page) {
+			current_page = reg_page;
+			page_changed = 1;
+			ret = phy_write(phydev, MII_MARVELL_PHY_PAGE, reg_page);
+			if (ret < 0)
+				goto err;
+		}
+
+		val = 0;
+		if (mask) {
+			val = phy_read(phydev, reg);
+			if (val < 0) {
+				ret = val;
+				goto err;
+			}
+			val &= mask;
+		}
+		val |= val_bits;
+
+		ret = phy_write(phydev, reg, val);
+		if (ret < 0)
+			goto err;
+
+	}
+err:
+	if (page_changed) {
+		i = phy_write(phydev, MII_MARVELL_PHY_PAGE, saved_page);
+		if (ret == 0)
+			ret = i;
+	}
+	return ret;
 }
 
 static int m88e1121_config_aneg(struct phy_device *phydev)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
