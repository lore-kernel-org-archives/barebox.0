Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EkK-0002eD-L5
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:39:46 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue,  8 Dec 2015 10:39:26 +0100
Message-Id: <1449567572-21758-4-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
References: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 3/9] printk: Add missing include/declaration
To: barebox@lists.infradead.org

There are functions or structs used that do need these.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/printk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/printk.h b/include/printk.h
index a27ad514cfe1..822f64c61f7d 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -1,6 +1,8 @@
 #ifndef __PRINTK_H
 #define __PRINTK_H
 
+#include <linux/list.h>
+
 #define MSG_EMERG      0    /* system is unusable */
 #define MSG_ALERT      1    /* action must be taken immediately */
 #define MSG_CRIT       2    /* critical conditions */
@@ -20,6 +22,7 @@
 #endif
 
 /* debugging and troubleshooting/diagnostic helpers. */
+struct device_d;
 
 #ifndef CONFIG_CONSOLE_NONE
 int dev_printf(int level, const struct device_d *dev, const char *format, ...)
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
