Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRi0Z-00024h-9S
 for barebox@lists.infradead.org; Thu, 12 Jan 2017 16:13:50 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 12 Jan 2017 17:13:13 +0100
Message-Id: <1484237593-18958-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] bootchooser: fix help message
To: barebox@lists.infradead.org

The descriptions of -a and -p were mismatched.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/bootchooser.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/bootchooser.c b/commands/bootchooser.c
index 91938fe55173..ac763a655385 100644
--- a/commands/bootchooser.c
+++ b/commands/bootchooser.c
@@ -134,8 +134,8 @@ BAREBOX_CMD_HELP_START(bootchooser)
 BAREBOX_CMD_HELP_TEXT("Control misc behaviour of the bootchooser")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
-BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
+BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
+BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
 BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
 BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
 BAREBOX_CMD_HELP_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
