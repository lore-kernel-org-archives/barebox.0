Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOcl-0001zt-FT
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:37:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:37:02 +0200
Message-Id: <1472485022-16116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: usbgadget: Fix -d option help text
To: Barebox List <barebox@lists.infradead.org>

The -d option disables any currently active gadget, it does not
necessarily have to be a serial gadget.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbgadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index fc2252a..a7e8d6c 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -96,7 +96,7 @@ BAREBOX_CMD_HELP_OPT ("-a",   "Create CDC ACM function")
 BAREBOX_CMD_HELP_OPT ("-s",   "Create Generic Serial function")
 BAREBOX_CMD_HELP_OPT ("-A <desc>",   "Create Android Fastboot function")
 BAREBOX_CMD_HELP_OPT ("-D <desc>",   "Create DFU function")
-BAREBOX_CMD_HELP_OPT ("-d",   "Disable the serial gadget")
+BAREBOX_CMD_HELP_OPT ("-d",   "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usbgadget)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
