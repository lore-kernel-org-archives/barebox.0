Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZp-0005Bg-My
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:50:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:17 +0200
Message-Id: <1460702958-4012-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] include: Move smc911x eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx31/pcm037.c |  2 +-
 arch/blackfin/boards/ipe337/ipe337.c          |  2 +-
 drivers/net/smc911x.c                         |  2 +-
 include/platform_data/eth-smc911x.h           | 24 ++++++++++++++++++++++++
 include/smc911x.h                             | 24 ------------------------
 5 files changed, 27 insertions(+), 27 deletions(-)
 create mode 100644 include/platform_data/eth-smc911x.h
 delete mode 100644 include/smc911x.h

diff --git a/arch/arm/boards/phytec-phycore-imx31/pcm037.c b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
index a1ffb2e..39e7838 100644
--- a/arch/arm/boards/phytec-phycore-imx31/pcm037.c
+++ b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
@@ -31,7 +31,7 @@
 #include <asm/sections.h>
 #include <mach/weim.h>
 #include <io.h>
-#include <smc911x.h>
+#include <platform_data/eth-smc911x.h>
 #include <asm/mmu.h>
 #include <partition.h>
 #include <generated/mach-types.h>
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 84cc786..604062a 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -4,7 +4,7 @@
 #include <asm/cpu/cdefBF561.h>
 #include <partition.h>
 #include <fs.h>
-#include <smc911x.h>
+#include <platform_data/eth-smc911x.h>
 
 struct smc911x_plat smcplat = {
 	.shift = 1,
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 9b1a38a..fe9d1df 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
-#include <smc911x.h>
+#include <platform_data/eth-smc911x.h>
 #include <linux/phy.h>
 
 #include "smc911x.h"
diff --git a/include/platform_data/eth-smc911x.h b/include/platform_data/eth-smc911x.h
new file mode 100644
index 0000000..4a802ee
--- /dev/null
+++ b/include/platform_data/eth-smc911x.h
@@ -0,0 +1,24 @@
+/*
+ * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __SMC911X_PLATFORM_H_
+#define __SMC911X_PLATFORM_H_
+
+/**
+ * @brief Platform dependent feature:
+ * Pass pointer to this structure as part of device_d -> platform_data
+ */
+struct smc911x_plat {
+	int shift;
+	unsigned int flags;
+	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
+				   e.g. ~(1 << 5) to use PHY addr 5 */
+};
+
+#define SMC911X_FORCE_INTERNAL_PHY	0x01
+#define SMC911X_FORCE_EXTERNAL_PHY	0x02
+
+#endif /* __SMC911X_PLATFORM_H_ */
diff --git a/include/smc911x.h b/include/smc911x.h
deleted file mode 100644
index 4a802ee..0000000
--- a/include/smc911x.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#ifndef __SMC911X_PLATFORM_H_
-#define __SMC911X_PLATFORM_H_
-
-/**
- * @brief Platform dependent feature:
- * Pass pointer to this structure as part of device_d -> platform_data
- */
-struct smc911x_plat {
-	int shift;
-	unsigned int flags;
-	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
-				   e.g. ~(1 << 5) to use PHY addr 5 */
-};
-
-#define SMC911X_FORCE_INTERNAL_PHY	0x01
-#define SMC911X_FORCE_EXTERNAL_PHY	0x02
-
-#endif /* __SMC911X_PLATFORM_H_ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
