Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkraf-00025z-Po
 for barebox@lists.infradead.org; Thu, 15 May 2014 09:04:38 +0000
Received: by mail-ee0-f41.google.com with SMTP id t10so423895eei.0
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 02:04:15 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 15 May 2014 11:08:56 +0200
Message-Id: <1400144937-6006-2-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
References: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH] magicvars: can now also list values
To: barebox@lists.infradead.org

Also uppercased the abbreviation GPIO in printf.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/magicvar.c |   30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/commands/magicvar.c b/commands/magicvar.c
index d92788a..cf1fe45 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -1,21 +1,49 @@
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
+#include <environment.h>
 #include <magicvar.h>
 
 static int do_magicvar(int argc, char *argv[])
 {
 	struct magicvar *m;
+	int opt;
+	int verbose = 0;
+
+	while ((opt = getopt(argc, argv, "v")) > 0) {
+		switch (opt) {
+		case 'v':
+			verbose = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
 
 	for (m = &__barebox_magicvar_start;
 			m != &__barebox_magicvar_end;
-			m++)
+			m++) {
 		printf("%-32s %s\n", m->name, m->description);
+		if (verbose) {
+			const char *val = getenv(m->name);
+			if (val && strlen(val))
+				printf("  %s\n", val);
+		}
+	}
 
 	return 0;
 }
 
+
+BAREBOX_CMD_HELP_START(magicvar)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v", "verbose (list all value if there is one)")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(magicvar)
 	.cmd		= do_magicvar,
 	BAREBOX_CMD_DESC("list information about magic variables")
+	BAREBOX_CMD_OPTS("[-v]")
+	BAREBOX_CMD_HELP(cmd_magicvar_help)
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
