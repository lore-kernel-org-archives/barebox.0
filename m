Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZQAm-0007WA-D8
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:57:51 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E9E60DC42B5
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 19:05:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:55:39 +0100
Message-Id: <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121116175355.GB8327@game.jcrosoft.org>
References: <20121116175355.GB8327@game.jcrosoft.org>
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
Subject: [PATCH 1/7] watchdog: add keep alive support
To: barebox@lists.infradead.org

this will allow to ping the watchdog via poller

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/watchdog/Kconfig   |    1 +
 drivers/watchdog/wd_core.c |   21 +++++++++++++++++++++
 include/watchdog.h         |    2 ++
 3 files changed, 24 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8fdc7a5..21480a1 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -1,5 +1,6 @@
 menuconfig WATCHDOG
 	bool "Watchdog support              "
+	select GENERIC_POLLER
 	help
 	  Many platforms support a watchdog to keep track of a working machine.
 	  This framework provides routines to handle these watchdogs.
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3d0cfc6..a1b9e28 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -17,18 +17,39 @@
 #include <errno.h>
 #include <linux/ctype.h>
 #include <watchdog.h>
+#include <poller.h>
 
 /*
  * Note: this simple framework supports one watchdog only.
  */
 static struct watchdog *watchdog;
 
+static void watchdog_poller_func(struct poller_struct *poller)
+{
+	watchdog->keep_alive(watchdog);
+}
+
+static struct poller_struct watchdog_poller = {
+	.func = watchdog_poller_func,
+};
+
 int watchdog_register(struct watchdog *wd)
 {
 	if (watchdog != NULL)
 		return -EBUSY;
 
 	watchdog = wd;
+
+	if (watchdog->keep_alive) {
+		int ret;
+
+		ret = poller_register(&watchdog_poller);
+		if (ret) {
+			watchdog = NULL;
+			return ret;
+		}
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(watchdog_register);
diff --git a/include/watchdog.h b/include/watchdog.h
index 3e2d08e..d5ecf2f 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -13,8 +13,10 @@
 #ifndef INCLUDE_WATCHDOG_H
 # define INCLUDE_WATCHDOG_H
 
+
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
+	void (*keep_alive)(struct watchdog *);
 };
 
 int watchdog_register(struct watchdog *);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
