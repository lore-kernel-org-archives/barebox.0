Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x5-Uc
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:14 +0100
Message-Id: <20180209094316.8523-8-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] usb: gadget: fastboot: beautify fb_run_command()
To: Barebox List <barebox@lists.infradead.org>

Only some refactoring, no functional change intended.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index e474543e2c..d349227f08 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -1017,24 +1017,25 @@ struct cmd_dispatch_info {
 	void (*cb)(struct f_fastboot *f_fb, const char *opt);
 };
 
-static void fb_run_command(struct f_fastboot *f_fb, const char *cmd,
+static void fb_run_command(struct f_fastboot *f_fb, const char *cmdbuf,
 		const struct cmd_dispatch_info *cmds, int num_commands)
 {
-	void (*func_cb)(struct f_fastboot *f_fb, const char *cmd) = NULL;
+	const struct cmd_dispatch_info *cmd;
 	int i;
 
 	console_countdown_abort();
 
 	for (i = 0; i < num_commands; i++) {
-		if (!strcmp_l1(cmds[i].cmd, cmd)) {
-			func_cb = cmds[i].cb;
-			cmd += strlen(cmds[i].cmd);
-			func_cb(f_fb, cmd);
+		cmd = &cmds[i];
+
+		if (!strcmp_l1(cmd->cmd, cmdbuf)) {
+			cmd->cb(f_fb, cmdbuf + strlen(cmd->cmd));
+
 			return;
 		}
 	}
 
-	fastboot_tx_print(f_fb, "FAILunknown command %s", cmd);
+	fastboot_tx_print(f_fb, "FAILunknown command %s", cmdbuf);
 }
 
 static void cb_oem_getenv(struct f_fastboot *f_fb, const char *cmd)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
