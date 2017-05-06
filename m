Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d70IX-0000I4-7j
 for barebox@lists.infradead.org; Sat, 06 May 2017 14:03:03 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat,  6 May 2017 16:02:33 +0200
Message-Id: <20170506140233.3129-2-o.rempel@pengutronix.de>
In-Reply-To: <20170506140233.3129-1-o.rempel@pengutronix.de>
References: <20170506140233.3129-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 2/2] commands: usbgadget: update fastboot help text
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

cmd_usbgadget can use now the fallback to
global.usbgadget.fastboot_function. Update help text to reflect this
behavior.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/usbgadget.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 02c2c96b02..ba09f97847 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -106,7 +106,8 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",   "Create CDC ACM function")
 BAREBOX_CMD_HELP_OPT ("-s",   "Create Generic Serial function")
-BAREBOX_CMD_HELP_OPT ("-A <desc>",   "Create Android Fastboot function")
+BAREBOX_CMD_HELP_OPT ("-A [desc]",	"Create Android Fastboot function. If 'desc' is not provided,")
+BAREBOX_CMD_HELP_OPT ("",		"trying to use 'global.usbgadget.fastboot_function' variable.")
 BAREBOX_CMD_HELP_OPT ("-D <desc>",   "Create DFU function")
 BAREBOX_CMD_HELP_OPT ("-d",   "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
