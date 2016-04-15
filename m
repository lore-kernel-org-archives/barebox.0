Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZa-000518-Me
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:13 +0200
Message-Id: <1460702958-4012-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] include: Move davinci emac platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_emac.c               |  2 +-
 include/net/davinci_emac.h               | 10 ----------
 include/platform_data/eth-davinci-emac.h | 10 ++++++++++
 3 files changed, 11 insertions(+), 11 deletions(-)
 delete mode 100644 include/net/davinci_emac.h
 create mode 100644 include/platform_data/eth-davinci-emac.h

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 3dc4b16..75a917a 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -49,7 +49,7 @@
 #include <asm/system.h>
 #include <linux/phy.h>
 #include <mach/emac_defs.h>
-#include <net/davinci_emac.h>
+#include <platform_data/eth-davinci-emac.h>
 #include "davinci_emac.h"
 
 struct davinci_emac_priv {
diff --git a/include/net/davinci_emac.h b/include/net/davinci_emac.h
deleted file mode 100644
index caead1f..0000000
--- a/include/net/davinci_emac.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef __NET_DAVINCI_EMAC_H__
-#define __NET_DAVINCI_EMAC_H__
-
-struct davinci_emac_platform_data {
-	int phy_addr;
-	bool force_link;
-	bool interface_rmii;
-};
-
-#endif /* __NET_DAVINCI_EMAC_H__ */
diff --git a/include/platform_data/eth-davinci-emac.h b/include/platform_data/eth-davinci-emac.h
new file mode 100644
index 0000000..caead1f
--- /dev/null
+++ b/include/platform_data/eth-davinci-emac.h
@@ -0,0 +1,10 @@
+#ifndef __NET_DAVINCI_EMAC_H__
+#define __NET_DAVINCI_EMAC_H__
+
+struct davinci_emac_platform_data {
+	int phy_addr;
+	bool force_link;
+	bool interface_rmii;
+};
+
+#endif /* __NET_DAVINCI_EMAC_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
