Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5FXI-0003FO-SA
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:04:37 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9B9FBDC0C4A
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 14:14:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Feb 2013 14:03:25 +0100
Message-Id: <1360674207-12078-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130212130012.GD19322@game.jcrosoft.org>
References: <20130212130012.GD19322@game.jcrosoft.org>
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
Subject: [PATCH 1/3] amba: introduce amba_device_get_pid/cid
To: barebox@lists.infradead.org

so we can use it on vexpress to detect the hardware mapping

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/amba/bus.c       |   10 +++-------
 include/linux/amba/bus.h |   28 ++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index d1ab53c..65385be 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -104,7 +104,7 @@ int amba_device_add(struct amba_device *dev)
 {
 	u32 size;
 	void __iomem *tmp;
-	int i, ret;
+	int ret;
 	struct resource *res = NULL;
 
 	dev->dev.bus = &amba_bustype;
@@ -135,12 +135,8 @@ int amba_device_add(struct amba_device *dev)
 		 * Read pid and cid based on size of resource
 		 * they are located at end of region
 		 */
-		for (pid = 0, i = 0; i < 4; i++)
-			pid |= (readl(tmp + size - 0x20 + 4 * i) & 255) <<
-				(i * 8);
-		for (cid = 0, i = 0; i < 4; i++)
-			cid |= (readl(tmp + size - 0x10 + 4 * i) & 255) <<
-				(i * 8);
+		pid = amba_device_get_pid(tmp, size);
+		cid = amba_device_get_cid(tmp, size);
 
 		if (cid == AMBA_CID)
 			dev->periphid = pid;
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index cb3e3bd..a7bbae0 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -150,4 +150,32 @@ struct amba_device name##_device = {				\
 	.periphid = id,						\
 }
 
+#include <io.h>
+/*
+ * Read pid and cid based on size of resource
+ * they are located at end of region
+ */
+static inline u32 amba_device_get_pid(void *base, u32 size)
+{
+	int i;
+	u32 pid;
+
+	for (pid = 0, i = 0; i < 4; i++)
+		pid |= (readl(base + size - 0x20 + 4 * i) & 255) <<
+			(i * 8);
+
+	return pid;
+}
+
+static inline u32 amba_device_get_cid(void *base, u32 size)
+{
+	int i;
+	u32 cid;
+
+	for (cid = 0, i = 0; i < 4; i++)
+		cid |= (readl(base + size - 0x10 + 4 * i) & 255) <<
+			(i * 8);
+
+	return cid;
+}
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
