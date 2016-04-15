Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xU-P1
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:10 +0200
Message-Id: <1460702958-4012-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] include: Move ep93xx eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/edb93xx.c  |  2 +-
 drivers/net/ep93xx.c               |  2 +-
 include/net/ep93xx_eth.h           | 26 --------------------------
 include/platform_data/eth-ep93xx.h | 26 ++++++++++++++++++++++++++
 4 files changed, 28 insertions(+), 28 deletions(-)
 delete mode 100644 include/net/ep93xx_eth.h
 create mode 100644 include/platform_data/eth-ep93xx.h

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0fb93d2..cdc2009 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -27,7 +27,7 @@
 #include <malloc.h>
 #include <generated/mach-types.h>
 #include <mach/ep93xx-regs.h>
-#include <net/ep93xx_eth.h>
+#include <platform_data/eth-ep93xx.h>
 #include "edb93xx.h"
 
 #define DEVCFG_U1EN (1 << 18)
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 0acb9b6..fd725a5 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -38,7 +38,7 @@
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
 #include <linux/phy.h>
-#include <net/ep93xx_eth.h>
+#include <platform_data/eth-ep93xx.h>
 #include "ep93xx.h"
 
 #define EP93XX_MAX_PKT_SIZE    1536
diff --git a/include/net/ep93xx_eth.h b/include/net/ep93xx_eth.h
deleted file mode 100644
index 0fb11d0..0000000
--- a/include/net/ep93xx_eth.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * (C) Copyright 2016 Alexander Kurz <akurz@blala.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __NET_EP93XX_ETH_H
-#define __NET_EP93XX_ETH_H
-
-#include <linux/phy.h>
-
-struct ep93xx_eth_platform_data {
-	phy_interface_t	xcv_type;
-	int		phy_addr;
-};
-
-#endif /* __NET_EP93XX_ETH_H */
diff --git a/include/platform_data/eth-ep93xx.h b/include/platform_data/eth-ep93xx.h
new file mode 100644
index 0000000..0fb11d0
--- /dev/null
+++ b/include/platform_data/eth-ep93xx.h
@@ -0,0 +1,26 @@
+/*
+ * (C) Copyright 2016 Alexander Kurz <akurz@blala.de>
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
+ *
+ */
+
+#ifndef __NET_EP93XX_ETH_H
+#define __NET_EP93XX_ETH_H
+
+#include <linux/phy.h>
+
+struct ep93xx_eth_platform_data {
+	phy_interface_t	xcv_type;
+	int		phy_addr;
+};
+
+#endif /* __NET_EP93XX_ETH_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
