Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l71Xr-0004P4-O3
 for barebox@lists.infradead.org; Tue, 02 Feb 2021 19:41:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Feb 2021 20:40:53 +0100
Message-Id: <20210202194059.9466-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] commands: usbgadget: remove deprecated s option from help
 text
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Prior to 44add42d4330 ("usbgadget: autostart: add DFU support"), -s used
to do nothing. That commit made it behave like -a, but deprecated it and
changed the help text to omit it. Remove it from the short help text as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - no change
---
 commands/usbgadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 9133402f52fb..3b115f147d80 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -67,7 +67,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usbgadget)
 	.cmd		= do_usbgadget,
 	BAREBOX_CMD_DESC("Create USB Gadget multifunction device")
-	BAREBOX_CMD_OPTS("[-asdAD]")
+	BAREBOX_CMD_OPTS("[-adAD]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbgadget_help)
 BAREBOX_CMD_END
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
