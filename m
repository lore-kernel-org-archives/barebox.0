Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xY-Oy
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:12 +0200
Message-Id: <1460702958-4012-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] include: Move designware eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/generic.c        |  1 -
 drivers/net/designware.c               |  2 +-
 include/net/designware.h               | 13 -------------
 include/platform_data/eth-designware.h | 13 +++++++++++++
 4 files changed, 14 insertions(+), 15 deletions(-)
 delete mode 100644 include/net/designware.h
 create mode 100644 include/platform_data/eth-designware.h

diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index 906bc63..c920bd6 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -4,7 +4,6 @@
 #include <init.h>
 #include <io.h>
 #include <fs.h>
-#include <net/designware.h>
 #include <linux/clkdev.h>
 #include <linux/clk.h>
 #include <linux/stat.h>
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 3b21244..1d662a7 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -27,7 +27,7 @@
 #include <io.h>
 #include <net.h>
 #include <of_net.h>
-#include <net/designware.h>
+#include <platform_data/eth-designware.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 #include "designware.h"
diff --git a/include/net/designware.h b/include/net/designware.h
deleted file mode 100644
index 7a7a26a..0000000
--- a/include/net/designware.h
+++ /dev/null
@@ -1,13 +0,0 @@
-#ifndef __DWC_UNIMAC_H
-#define __DWC_UNIMAC_H
-
-#include <linux/phy.h>
-
-struct dwc_ether_platform_data {
-	int phy_addr;
-	phy_interface_t interface;
-	void (*fix_mac_speed)(int speed);
-	bool enh_desc;	/* use Alternate/Enhanced Descriptor configurations */
-};
-
-#endif
diff --git a/include/platform_data/eth-designware.h b/include/platform_data/eth-designware.h
new file mode 100644
index 0000000..7a7a26a
--- /dev/null
+++ b/include/platform_data/eth-designware.h
@@ -0,0 +1,13 @@
+#ifndef __DWC_UNIMAC_H
+#define __DWC_UNIMAC_H
+
+#include <linux/phy.h>
+
+struct dwc_ether_platform_data {
+	int phy_addr;
+	phy_interface_t interface;
+	void (*fix_mac_speed)(int speed);
+	bool enh_desc;	/* use Alternate/Enhanced Descriptor configurations */
+};
+
+#endif
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
