Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMR1u-0007H7-Qm
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 22:14:59 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1272297wgb.18
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 15:14:56 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Fri, 12 Oct 2012 00:14:29 +0200
Message-Id: <1349993669-27959-1-git-send-email-carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] cosmetic: improve command list display
To: barebox@lists.infradead.org

Following from the Frank Jullien's patch, here is the same cosmetic correction
when the list of commands is printed (the problem was that the commands for
gpio_* were too long for the %10s alignment)

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 commands/help.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/commands/help.c b/commands/help.c
index 72b0bef..a12d9c3 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -28,12 +28,17 @@
 static int do_help(int argc, char *argv[])
 {
 	struct command *cmdtp;
+	int max_length = 0;
 
 	if (argc == 1) {	/* show list of commands */
+		for_each_command(cmdtp)
+			if(strlen(cmdtp->name) > max_length)
+				max_length = strlen(cmdtp->name);
+
 		for_each_command(cmdtp) {
 			if (!cmdtp->usage)
 				continue;
-			printf("%10s - %s\n", cmdtp->name, cmdtp->usage);
+			printf("%*s - %s\n", max_length, cmdtp->name, cmdtp->usage);
 		}
 		return 0;
 	}
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
