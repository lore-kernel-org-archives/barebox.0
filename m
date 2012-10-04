Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfRJ-0001s4-R0
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:01:48 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 14A9EFF8FB4
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 09:10:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 08:59:14 +0200
Message-Id: <1349333954-9312-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] amba/bus: add missing bus_register
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/amba/bus.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 383c77e..f0a40b6 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -9,6 +9,7 @@
 #include <linux/clk.h>
 #include <linux/amba/bus.h>
 #include <io.h>
+#include <init.h>
 
 #define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
 
@@ -208,3 +209,9 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
 	return dev;
 }
 
+
+static int amba_bus_init(void)
+{
+	return bus_register(&amba_bustype);
+}
+pure_initcall(amba_bus_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
