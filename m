Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCnlh-0002aX-Bu
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 10:39:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XCnlJ-0001QV-7Y
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <jbe@pengutronix.de>)
 id 1XCnlJ-0005Gb-5B
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 31 Jul 2014 12:39:03 +0200
Message-Id: <1406803143-27630-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
References: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/4] saveenv: provide a zeroed/empty/ignore environment
To: barebox@lists.infradead.org

If an external environment storage should be used in very rare and special cases,
the intentional behaviour should be to ignore the external environment and always
fall back to the built-in environment. By storing an empty "to be ignored" environment
into the external environment a confusing error message about invalid CRC sums will go
away and still the built-in environment is used.
With this new option we can force the intentional behaviour.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/saveenv.c   | 33 +++++++++++++++++++++++++--------
 scripts/bareboxenv.c | 10 ++++++++--
 2 files changed, 33 insertions(+), 10 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 178b783..23d9b58 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -18,26 +18,42 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
+#include <getopt.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <envfs.h>
 
 static int do_saveenv(int argc, char *argv[])
 {
-	int ret;
+	int ret, opt;
+	unsigned envfs_flags = 0;
 	char *filename, *dirname;
 
 	printf("saving environment\n");
-	if (argc < 3)
+	while ((opt = getopt(argc, argv, "z")) > 0) {
+		switch (opt) {
+		case 'z':
+			envfs_flags |= ENVFS_FLAGS_FORCE_BUILT_IN;
+			if (!IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+				printf("Warning: use of a non existing "
+					"built-in default environment forced!\n");
+			break;
+		}
+	}
+
+	/* destination and source are given? */
+	if (argc == optind + 2)
+		dirname = argv[optind + 1];
+	else
 		dirname = "/env";
+
+	/* destination only given? */
+	if (argc == optind + 1)
+		filename = argv[optind];
 	else
-		dirname = argv[2];
-	if (argc < 2)
 		filename = default_environment_path_get();
-	else
-		filename = argv[1];
 
-	ret = envfs_save(filename, dirname, 0);
+	ret = envfs_save(filename, dirname, envfs_flags);
 
 	return ret;
 }
@@ -49,13 +65,14 @@ BAREBOX_CMD_HELP_TEXT("ENVFS is usually a block in flash but can be any other fi
 BAREBOX_CMD_HELP_TEXT("omitted, DIRECTORY defaults to /env and ENVFS defaults to")
 BAREBOX_CMD_HELP_TEXT("/dev/env0. Note that envfs can only handle files, directories are being")
 BAREBOX_CMD_HELP_TEXT("skipped silently.")
+BAREBOX_CMD_HELP_OPT ("-z",  "force the built-in default environment at startup")
 
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
 	BAREBOX_CMD_DESC("save environment to persistent storage")
-	BAREBOX_CMD_OPTS("[ENVFS [DIRECTORY]]")
+	BAREBOX_CMD_OPTS("[-z] [ENVFS [DIRECTORY]]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index ec6ccfe..249e65b 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -109,6 +109,7 @@ static void usage(char *prgname)
 		"\n"
 		"options:\n"
 		"  -s        save (directory -> environment sector)\n"
+		"  -z        force the built-in default environment at startup\n"
 		"  -l        load (environment sector -> directory)\n"
 		"  -p <size> pad output file to given size\n"
 		"  -v        verbose\n",
@@ -120,9 +121,10 @@ int main(int argc, char *argv[])
 	int opt;
 	int save = 0, load = 0, pad = 0, err = 0, fd;
 	char *filename = NULL, *dirname = NULL;
+	unsigned envfs_flags = 0;
 	int verbose = 0;
 
-	while((opt = getopt(argc, argv, "slp:v")) != -1) {
+	while((opt = getopt(argc, argv, "slp:vz")) != -1) {
 		switch (opt) {
 		case 's':
 			save = 1;
@@ -133,6 +135,10 @@ int main(int argc, char *argv[])
 		case 'p':
 			pad = strtoul(optarg, NULL, 0);
 			break;
+		case 'z':
+			envfs_flags |= ENVFS_FLAGS_FORCE_BUILT_IN;
+			save = 1;
+			break;
 		case 'v':
 			verbose = 1;
 			break;
@@ -181,7 +187,7 @@ int main(int argc, char *argv[])
 		if (verbose)
 			printf("saving contents of %s to file %s\n", dirname, filename);
 
-		err = envfs_save(filename, dirname, 0);
+		err = envfs_save(filename, dirname, envfs_flags);
 
 		if (verbose && err)
 			printf("saving env failed: %d\n", err);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
