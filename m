Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cu0Rz-0004z8-1N
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 17:35:05 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 31 Mar 2017 19:34:36 +0200
Message-Id: <20170331173436.10767-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] usb: gadget: set otg to peripheral mode on autostart
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

we won't be able to start if otg is not properly configured.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index 43c2ba23d..87781a11a 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/drivers/usb/gadget/autostart.c
@@ -14,6 +14,7 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
+#include <environment.h>
 #include <malloc.h>
 #include <getopt.h>
 #include <fs.h>
@@ -31,10 +32,15 @@ static char *fastboot_function;
 static int usbgadget_autostart(void)
 {
 	struct f_multi_opts opts = {};
+	int ret;
 
 	if (!autostart)
 		return 0;
 
+	ret = setenv("otg.mode", "peripheral");
+	if (ret)
+		return ret;
+
 	if (fastboot_function)
 		opts.fastboot_opts.files = file_list_parse(fastboot_function);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
