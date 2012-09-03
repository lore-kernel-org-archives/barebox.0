Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8TZg-0001uV-C5
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 10:08:14 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 60E55DC36AC
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 12:13:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  3 Sep 2012 12:08:13 +0200
Message-Id: <1346666898-19347-13-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120903100409.GC24296@game.jcrosoft.org>
 <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 13/18] dirname: add -V option to return only path related to
 the mountpoint
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/dirname.c |   24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/commands/dirname.c b/commands/dirname.c
index cf1d0a0..f34d88d 100644
--- a/commands/dirname.c
+++ b/commands/dirname.c
@@ -24,20 +24,38 @@
 #include <command.h>
 #include <libgen.h>
 #include <environment.h>
+#include <fs.h>
+#include <getopt.h>
 
 static int do_dirname(int argc, char *argv[])
 {
-	if (argc != 3)
+	int opt;
+	int path_fs = 0;
+	int len = 0;
+
+	while ((opt = getopt(argc, argv, "V")) > 0) {
+		switch (opt) {
+		case 'V':
+			path_fs = 1;
+			break;
+		}
+	}
+
+	if (argc < optind + 2)
 		return COMMAND_ERROR_USAGE;
 
-	setenv(argv[2], dirname(argv[1]));
+	if (path_fs)
+		len = strlen(get_mounted_path(argv[optind]));
+
+	setenv(argv[optind + 1], dirname(argv[optind]) + len);
 
 	return 0;
 }
 
 BAREBOX_CMD_HELP_START(dirname)
-BAREBOX_CMD_HELP_USAGE("dirname NAME DIRNAME\n")
+BAREBOX_CMD_HELP_USAGE("dirname [-V] NAME DIRNAME\n")
 BAREBOX_CMD_HELP_SHORT("strip last componext of NAME and store into $DIRNAME\n")
+BAREBOX_CMD_HELP_SHORT("-V return the path relative to the mountpoint.\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dirname)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
