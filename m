Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTcPP-0003Xt-0P
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 19:57:59 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 21C1626C2001
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 21:57:04 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 15 Sep 2014 22:03:09 +0200
Message-Id: <1410811390-7009-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] phy: marvell: move IDs to own header
To: barebox@lists.infradead.org

So they can be used in board files to register
fixups.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/phy/marvell.c   | 17 +----------------
 include/linux/marvell_phy.h | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+), 16 deletions(-)
 create mode 100644 include/linux/marvell_phy.h

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 34f852e..f2bc649 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -10,22 +10,7 @@
 #include <linux/ethtool.h>
 #include <linux/phy.h>
 #include <linux/smscphy.h>
-
-/* Known PHY IDs */
-#define MARVELL_PHY_ID_88E1101		0x01410c60
-#define MARVELL_PHY_ID_88E1112		0x01410c90
-#define MARVELL_PHY_ID_88E1111		0x01410cc0
-#define MARVELL_PHY_ID_88E1118		0x01410e10
-#define MARVELL_PHY_ID_88E1121R		0x01410cb0
-#define MARVELL_PHY_ID_88E1145		0x01410cd0
-#define MARVELL_PHY_ID_88E1149R		0x01410e50
-#define MARVELL_PHY_ID_88E1240		0x01410e30
-#define MARVELL_PHY_ID_88E1318S		0x01410e90
-#define MARVELL_PHY_ID_88E1116R		0x01410e40
-#define MARVELL_PHY_ID_88E1510		0x01410dd0
-
-/* Mask used for ID comparisons */
-#define MARVELL_PHY_ID_MASK		0xfffffff0
+#include <linux/marvell_phy.h>
 
 /* Marvell Register Page register */
 #define MII_MARVELL_PHY_PAGE		22
diff --git a/include/linux/marvell_phy.h b/include/linux/marvell_phy.h
new file mode 100644
index 0000000..bf2c66a
--- /dev/null
+++ b/include/linux/marvell_phy.h
@@ -0,0 +1,34 @@
+/*
+ * Marvell PHY IDs
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _MARVELL_PHY_H
+#define _MARVELL_PHY_H
+
+/* Known PHY IDs */
+#define MARVELL_PHY_ID_88E1101		0x01410c60
+#define MARVELL_PHY_ID_88E1112		0x01410c90
+#define MARVELL_PHY_ID_88E1111		0x01410cc0
+#define MARVELL_PHY_ID_88E1118		0x01410e10
+#define MARVELL_PHY_ID_88E1121R		0x01410cb0
+#define MARVELL_PHY_ID_88E1145		0x01410cd0
+#define MARVELL_PHY_ID_88E1149R		0x01410e50
+#define MARVELL_PHY_ID_88E1240		0x01410e30
+#define MARVELL_PHY_ID_88E1318S		0x01410e90
+#define MARVELL_PHY_ID_88E1116R		0x01410e40
+#define MARVELL_PHY_ID_88E1510		0x01410dd0
+
+/* Mask used for ID comparisons */
+#define MARVELL_PHY_ID_MASK		0xfffffff0
+
+#endif /* _MARVELL_PHY_H */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
