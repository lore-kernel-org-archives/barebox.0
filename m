Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJL4-00085B-Ko
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:37:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2020 09:35:42 +0100
Message-Id: <20200312083555.10793-7-s.hauer@pengutronix.de>
In-Reply-To: <20200312083555.10793-1-s.hauer@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/19] poller: Add a poller command
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

The poller command allows to print which pollers are registered and also
how many times we can run the registered pollers in one second.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |  9 ++++++
 common/poller.c  | 71 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7784966282..665eb470b1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -260,6 +260,15 @@ config CMD_MMC_EXTCSD
 		  -y      don't request when writing to one time programmable fields
 		  __CAUTION__: this could damage the device!
 
+config CMD_POLLER
+	tristate
+	prompt "poller"
+	depends on POLLER
+	help
+	  Pollers are functions that are running in the background whenever code executes
+	  is_timeout() or one of the various delay functions. The poller command prints
+	  informations about registered pollers.
+
 # end Information commands
 endmenu
 
diff --git a/common/poller.c b/common/poller.c
index b1a2122f91..95f828b439 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -121,3 +121,74 @@ void poller_call(void)
 
 	poller_active = 0;
 }
+
+#if defined CONFIG_CMD_POLLER
+
+#include <command.h>
+#include <getopt.h>
+
+static void poller_time(void)
+{
+	uint64_t start = get_time_ns();
+	int i = 0;
+
+	/*
+	 * How many times we can run the registered pollers in one second?
+	 *
+	 * A low number here may point to problems with pollers taking too
+	 * much time.
+	 */
+	while (!is_timeout(start, SECOND))
+		i++;
+
+	printf("%d poller calls in 1s\n", i);
+}
+
+static void poller_info(void)
+{
+	struct poller_struct *poller;
+
+	printf("Registered pollers:\n");
+
+	if (list_empty(&poller_list)) {
+		printf("<none>\n");
+		return;
+	}
+
+	list_for_each_entry(poller, &poller_list, list)
+		printf("%s\n", poller->name);
+}
+
+BAREBOX_CMD_HELP_START(poller)
+BAREBOX_CMD_HELP_TEXT("print info about registered pollers")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered pollers")
+BAREBOX_CMD_HELP_OPT ("-t", "measure how many pollers we run in 1s")
+BAREBOX_CMD_HELP_END
+
+static int do_poller(int argc, char *argv[])
+{
+	int opt;
+
+	while ((opt = getopt(argc, argv, "it")) > 0) {
+		switch (opt) {
+		case 'i':
+			poller_info();
+			return 0;
+		case 't':
+			poller_time();
+			return 0;
+		}
+	}
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_START(poller)
+	.cmd = do_poller,
+	BAREBOX_CMD_DESC("print info about registered pollers")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_poller_help)
+BAREBOX_CMD_END
+#endif
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
