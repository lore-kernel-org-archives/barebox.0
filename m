Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cm2L3-0003VU-8r
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 17:58:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Mar 2017 18:58:32 +0100
Message-Id: <20170309175832.20213-3-o.rempel@pengutronix.de>
In-Reply-To: <20170309175832.20213-1-o.rempel@pengutronix.de>
References: <20170309170545.25325-1-o.rempel@pengutronix.de>
 <20170309175832.20213-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/3] fastboot: abort autoboot timeout when fastboot gadget
 is activated
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Marc Kleine-Budde <mkl@pengutronix.de>

This patch adds a call to "console_countdown_abort()" to abort a currently or
upcoming running console timeout.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index a6192b9eb..cdf806de4 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -36,6 +36,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <restart.h>
+#include <console_countdown.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 #include <usb/fastboot.h>
@@ -814,6 +815,8 @@ static void fb_run_command(struct usb_ep *ep, struct usb_request *req, const cha
 	struct f_fastboot *f_fb = req->context;
 	int i;
 
+	console_countdown_abort();
+
 	for (i = 0; i < num_commands; i++) {
 		if (!strcmp_l1(cmds[i].cmd, cmd)) {
 			func_cb = cmds[i].cb;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
