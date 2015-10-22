Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp8hL-00010p-0C
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 05:46:00 +0000
Received: by lfbn126 with SMTP id n126so1243580lfb.2
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2015 22:45:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 Oct 2015 08:45:25 +0300
Message-Id: <1445492727-905-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
References: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] commands: add clk_get_rate command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/clk.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/commands/clk.c b/commands/clk.c
index 4e7ca60..469d9b3 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -3,6 +3,8 @@
 #include <getopt.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <environment.h>
+#include <malloc.h>
 
 static int do_clk_enable(int argc, char *argv[])
 {
@@ -77,6 +79,59 @@ BAREBOX_CMD_START(clk_set_rate)
 	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
 BAREBOX_CMD_END
 
+static int do_clk_get_rate(int argc, char *argv[])
+{
+	int opt;
+	struct clk *clk;
+	unsigned long rate;
+	const char *variable_name = NULL;
+
+	while ((opt = getopt(argc, argv, "s:")) > 0) {
+		switch (opt) {
+		case 's':
+			variable_name = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc) {
+		fprintf(stderr, "No clock name given\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	clk = clk_lookup(argv[optind]);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	rate = clk_get_rate(clk);
+
+	if (variable_name) {
+		char *t;
+
+		t = asprintf("%lu", rate);
+		setenv(variable_name, t);
+		free(t);
+	} else
+		printf("%lu\n", rate);
+
+	return COMMAND_SUCCESS;
+}
+
+BAREBOX_CMD_HELP_START(clk_get_rate)
+BAREBOX_CMD_HELP_TEXT("Show clock CLK rate")
+BAREBOX_CMD_HELP_OPT("-s VARNAME",  "set variable VARNAME instead of showing information")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_get_rate)
+	.cmd		= do_clk_get_rate,
+	BAREBOX_CMD_DESC("get a clocks rate")
+	BAREBOX_CMD_OPTS("[-s VARNAME] CLK")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_clk_get_rate_help)
+BAREBOX_CMD_END
+
 static int do_clk_dump(int argc, char *argv[])
 {
 	int opt, verbose = 0;
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
