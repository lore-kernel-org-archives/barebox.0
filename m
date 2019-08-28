Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xQ4-0005EL-R1
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 12:51:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Aug 2019 14:51:19 +0200
Message-Id: <20190828125119.10431-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190828125119.10431-1-a.fatoum@pengutronix.de>
References: <20190828125119.10431-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] commands: go: add -m option to keep MMU on
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For testing or for running bare metal applications while the caches are
on, it can be beneficial to have barebox do the memory setup and handing
over control with the MMU still on. Extend go by a -m parameter that
does this. Other parts of barebox (e.g. DMA) are still shut down.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/go.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index ecc2ceb6e422..c3fe24a7137d 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -24,8 +24,10 @@
 #include <complete.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <getopt.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <mmu.h>
 
 static int do_go(int argc, char *argv[])
 {
@@ -33,12 +35,23 @@ static int do_go(int argc, char *argv[])
 	int     rcode = 1;
 	int	fd = -1;
 	int	(*func)(int argc, char *argv[]);
+	int	opt;
 
-	if (argc < 2)
+	while ((opt = getopt(argc, argv, "m")) > 0) {
+		switch (opt) {
+		case 'm':
+			mmu_boot_enabled();
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
 		return COMMAND_ERROR_USAGE;
 
-	if (!isdigit(*argv[1])) {
-		fd = open(argv[1], O_RDONLY);
+	if (!isdigit(*argv[optind])) {
+		fd = open(argv[optind], O_RDONLY);
 		if (fd < 0) {
 			perror("open");
 			goto out;
@@ -50,7 +63,7 @@ static int do_go(int argc, char *argv[])
 			goto out;
 		}
 	} else
-		addr = (void *)simple_strtoul(argv[1], NULL, 16);
+		addr = (void *)simple_strtoul(argv[optind], NULL, 16);
 
 	printf("## Starting application at 0x%p ...\n", addr);
 
@@ -60,7 +73,7 @@ static int do_go(int argc, char *argv[])
 
 	shutdown_barebox();
 
-	func(argc - 1, &argv[1]);
+	func(argc - 1, &argv[optind]);
 
 	/*
 	 * The application returned. Since we have shutdown barebox and
@@ -80,12 +93,14 @@ BAREBOX_CMD_HELP_TEXT("Start application at ADDR passing ARG as arguments.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("If addr does not start with a digit it is interpreted as a filename")
 BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-m", "don't disable MMU if enabled. Only for debugging purposes!")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
 	BAREBOX_CMD_DESC("start application at address or file")
-	BAREBOX_CMD_OPTS("ADDR [ARG...]")
+	BAREBOX_CMD_OPTS("[-m] ADDR [ARG...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_go_help)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
