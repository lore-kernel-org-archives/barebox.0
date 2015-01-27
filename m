Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f169.google.com ([74.125.82.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGARZ-00043A-65
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 18:00:55 +0000
Received: by mail-we0-f169.google.com with SMTP id u56so16409249wes.0
 for <barebox@lists.infradead.org>; Tue, 27 Jan 2015 10:00:28 -0800 (PST)
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Tue, 27 Jan 2015 19:00:06 +0100
Message-Id: <1422381606-23004-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: [PATCH] loadenv: fix typo in help text
To: barebox@lists.infradead.org

From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 commands/loadenv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 91ce5e7..8d6be2f 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -109,7 +109,7 @@ static int do_loadenv(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(loadenv)
 BAREBOX_CMD_HELP_TEXT("Load environment from files in ENVFS (default /dev/env0) in")
-BAREBOX_CMD_HELP_TEXT("DIRECTORY (default /env")
+BAREBOX_CMD_HELP_TEXT("DIRECTORY (default /env)")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-n", "do not overwrite existing files")
@@ -120,7 +120,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
 	BAREBOX_CMD_DESC("load environment from ENVFS")
-	BAREBOX_CMD_OPTS("{-nsd] [ENVFS] [DIRECTORY]")
+	BAREBOX_CMD_OPTS("[-nsd] [ENVFS] [DIRECTORY]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_loadenv_help)
 BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
