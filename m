Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuxOb-0000zf-H5
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 08:31:31 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  3 Apr 2017 10:31:01 +0200
Message-Id: <20170403083101.28047-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2] usb: gadget: set otg to peripheral mode on autostart
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

we won't be able to start if otg is not properly configured.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index 43c2ba23d..4ad1dd6be 100644
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
@@ -35,6 +36,8 @@ static int usbgadget_autostart(void)
 	if (!autostart)
 		return 0;
 
+	setenv("otg.mode", "peripheral");
+
 	if (fastboot_function)
 		opts.fastboot_opts.files = file_list_parse(fastboot_function);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
