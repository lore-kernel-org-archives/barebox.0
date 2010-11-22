Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVZq-0001Gd-VO
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:32:59 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PKVZp-0000kH-6e
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 13:32:57 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:32:17 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011221332.17628.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] Fix baudrate setting
To: barebox@lists.infradead.org

This one seems still forgotten, yet.

Subject: Fix baudrate setting

The menu entry to set CONFIG_BAUDRATE makes no sense, if its content is not
used. This patch makes barebox using the setting again.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 common/console.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Index: barebox-2010.10.0/common/console.c
===================================================================
--- barebox-2010.10.0.orig/common/console.c
+++ barebox-2010.10.0/common/console.c
@@ -34,6 +34,7 @@
 #include <clock.h>
 #include <kfifo.h>
 #include <module.h>
+#include <linux/stringify.h>
 #include <linux/list.h>
 
 LIST_HEAD(console_list);
@@ -140,7 +141,7 @@ int console_register(struct console_devi
 
 	if (newcdev->setbrg) {
 		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
-		dev_set_param(dev, "baudrate", "115200");
+		dev_set_param(dev, "baudrate", __stringify(CONFIG_BAUDRATE));
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
