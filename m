Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwoMa-00048R-No
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 13:26:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 21 Feb 2019 14:26:02 +0100
Message-Id: <20190221132603.21201-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/2] commands: dmesg: add print raw parameter
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add -r option to mimic functionality of linux dmesg.
It will prefix log level and timestamp to each buffer:
<6>[       460us] barebox 2019.02.0-00266-g6aea757067-dirty #355 Thu Feb 21 11:51:43 CET 2019
<6>[      6279us] Board: DPTechnics DPT-Module
<6>[    209281us] mdio_bus: miibus0: probed
<6>[    210184us] ag71xx-gmac 18070000.mac@19000000.of: network device registered
<6>[    216051us] m25p80 w25q128@00: w25q128 (16384 Kbytes)
<6>[    219913us] netconsole: registered as netconsole-1
<6>[    223312us] malloc space: 0x80c00000 -> 0x80ffffff (size 4 MiB)
<6>[    228255us] eth0: got preset MAC address: c4:93:00:00:ae:89
<6>[    246363us] running /env/bin/init...

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/dmesg.c        | 8 ++++++--
 common/console_common.c | 3 +++
 include/printk.h        | 1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 510bc16594..5c2728581d 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -30,7 +30,7 @@ static int do_dmesg(int argc, char *argv[])
 	int delete_buf = 0, emit = 0;
 	unsigned flags = 0;
 
-	while ((opt = getopt(argc, argv, "ctde")) > 0) {
+	while ((opt = getopt(argc, argv, "ctder")) > 0) {
 		switch (opt) {
 		case 'c':
 			delete_buf = 1;
@@ -44,6 +44,9 @@ static int do_dmesg(int argc, char *argv[])
 		case 'e':
 			emit = 1;
 			break;
+		case 'r':
+			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -88,13 +91,14 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
+BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dmesg)
 	.cmd	= do_dmesg,
 	BAREBOX_CMD_DESC("Print or control log messages")
-	BAREBOX_CMD_OPTS("[-cdet]")
+	BAREBOX_CMD_OPTS("[-cdert]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_dmesg_help)
 BAREBOX_CMD_END
diff --git a/common/console_common.c b/common/console_common.c
index 0131a1190a..bc3a305b27 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -202,6 +202,9 @@ void log_print(unsigned flags)
 		uint64_t diff = log->timestamp - time_beginning;
 		unsigned long difful;
 
+		if (flags & (BAREBOX_LOG_PRINT_RAW))
+			printf("<%i>", log->level);
+
 		do_div(diff, 1000);
 		difful = diff;
 
diff --git a/include/printk.h b/include/printk.h
index ab2c64cf3c..64205b2880 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -136,6 +136,7 @@ extern void log_clean(unsigned int limit);
 
 #define BAREBOX_LOG_PRINT_TIME	(1 << 0)
 #define BAREBOX_LOG_DIFF_TIME	(1 << 1)
+#define BAREBOX_LOG_PRINT_RAW	(1 << 2)
 
 void log_print(unsigned flags);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
