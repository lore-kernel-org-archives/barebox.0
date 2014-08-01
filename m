Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XD69l-0003zp-QK
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 06:17:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 08:17:10 +0200
Message-Id: <1406873830-17123-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: saveenv: Fix comment about directories in help text
To: barebox@lists.infradead.org

envfs indeed handles directories, at least since 2007:

| commit 913691eccd13c1509470eb8b059aa0beecc6d8d8
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Tue Sep 25 12:58:52 2007 +0200
|
|     add directory handling for environment

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/saveenv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 31d6951..9da733e 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -60,8 +60,7 @@ BAREBOX_CMD_HELP_TEXT("Save the files in DIRECTORY to the persistent storage dev
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("ENVFS is usually a block in flash but can be any other file. If")
 BAREBOX_CMD_HELP_TEXT("omitted, DIRECTORY defaults to /env and ENVFS defaults to")
-BAREBOX_CMD_HELP_TEXT("/dev/env0. Note that envfs can only handle files, directories are being")
-BAREBOX_CMD_HELP_TEXT("skipped silently.")
+BAREBOX_CMD_HELP_TEXT("/dev/env0.")
 BAREBOX_CMD_HELP_OPT ("-z",  "force the built-in default environment at startup")
 
 BAREBOX_CMD_HELP_END
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
