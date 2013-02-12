Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5FXI-0003FP-SC
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:04:37 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AA15CDC0C59
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 14:14:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Feb 2013 14:03:26 +0100
Message-Id: <1360674207-12078-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360674207-12078-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130212130012.GD19322@game.jcrosoft.org>
 <1360674207-12078-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] sp804: introduce amba_is_arm_sp804 to detect if the sp804
 is present at the address
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/clocksource/amba-sp804.c |    6 +++---
 include/linux/amba/sp804.h       |   30 ++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 include/linux/amba/sp804.h

diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index d9a30c2..fedcb64 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -9,7 +9,7 @@
 #include <io.h>
 #include <driver.h>
 #include <errno.h>
-#include <linux/amba/bus.h>
+#include <linux/amba/sp804.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
@@ -73,8 +73,8 @@ static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
 
 static struct amba_id sp804_ids[] = {
 	{
-		.id	= 0x00141804,
-		.mask	= 0x00ffffff,
+		.id	= AMBA_ARM_SP804_ID,
+		.mask	= AMBA_ARM_SP804_ID_MASK,
 	},
 	{ 0, 0 },
 };
diff --git a/include/linux/amba/sp804.h b/include/linux/amba/sp804.h
new file mode 100644
index 0000000..aba550c
--- /dev/null
+++ b/include/linux/amba/sp804.h
@@ -0,0 +1,30 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __AMBA_SP804_H__
+#define __AMBA_SP804_H__
+
+#include <linux/amba/bus.h>
+#include <sizes.h>
+
+#define AMBA_ARM_SP804_ID	0x00141804
+#define AMBA_ARM_SP804_ID_MASK	0x00ffffff
+
+static inline bool amba_is_arm_sp804(void __iomem *base)
+{
+	u32 pid, cid;
+	u32 size = SZ_4K;
+
+	cid = amba_device_get_cid(base, size);
+
+	if (cid != AMBA_CID)
+		return false;
+
+	pid = amba_device_get_pid(base, size);
+
+	return (pid & AMBA_ARM_SP804_ID_MASK) == AMBA_ARM_SP804_ID;
+}
+#endif /* __AMBA_SP804_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
