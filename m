Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7MJ2-00079h-Hu
	for barebox@lists.infradead.org; Sat, 24 Sep 2011 07:05:49 +0000
Received: by bkat2 with SMTP id t2so5096016bka.36
	for <barebox@lists.infradead.org>; Sat, 24 Sep 2011 00:05:44 -0700 (PDT)
From: Paul Fertser <fercerpav@gmail.com>
Date: Sat, 24 Sep 2011 11:04:46 +0400
Message-Id: <1316847886-3542-1-git-send-email-fercerpav@gmail.com>
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
Subject: [PATCH] login: correct a typo in command description
To: barebox@lists.infradead.org
Cc: Paul Fertser <fercerpav@gmail.com>

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 commands/login.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/login.c b/commands/login.c
index 610fb9e..3f6d308 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -71,9 +71,9 @@ static int do_login(struct command *cmdtp, int argc, char *argv[])
 }
 
 static const __maybe_unused char cmd_login_help[] =
-"Usage: login [[-t timeout] <command>]\n"
-"If a timeout is specified and expired the command will be executed\n"
-"by default boot\n"
+"Usage: login [-t timeout [<command>]]\n"
+"If a timeout is specified and expired the command will be executed;\n"
+"\"boot\" by default\n"
 ;
 
 BAREBOX_CMD_START(login)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
