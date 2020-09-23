Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0Xq-0002Ds-62
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 08:54:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2020 10:54:26 +0200
Message-Id: <20200923085426.8172-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk_dump command: Allow printing a single clock
To: Barebox List <barebox@lists.infradead.org>

So far the clk_dump command can only print all clocks. With this patch
we can limit the output to ancestors and children of a given clock. This
makes it easier to find the desired information in big clock trees.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c      | 15 ++++++++++++--
 drivers/clk/clk.c   | 50 ++++++++++++++++++++++++++++++++++++++++-----
 include/linux/clk.h |  1 +
 3 files changed, 59 insertions(+), 7 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 47159dddd2..649a0a7cb2 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -139,6 +139,7 @@ BAREBOX_CMD_END
 static int do_clk_dump(int argc, char *argv[])
 {
 	int opt, verbose = 0;
+	struct clk *clk;
 
 	while ((opt = getopt(argc, argv, "v")) > 0) {
 		switch(opt) {
@@ -151,7 +152,16 @@ static int do_clk_dump(int argc, char *argv[])
 		}
 	}
 
-	clk_dump(verbose);
+	if (optind == argc) {
+		clk_dump(verbose);
+		return COMMAND_SUCCESS;
+	}
+
+	clk = clk_lookup(argv[optind]);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clk_dump_one(clk, verbose);
 
 	return COMMAND_SUCCESS;
 }
@@ -164,9 +174,10 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_dump)
 	.cmd		= do_clk_dump,
 	BAREBOX_CMD_DESC("show information about registered clocks")
-	BAREBOX_CMD_OPTS("[-v]")
+	BAREBOX_CMD_OPTS("[-v] [clkname]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_clk_dump_help)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
 static int do_clk_set_parent(int argc, char *argv[])
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index f2e459a760..b04d44593b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -678,7 +678,6 @@ static const char *clk_hw_stat(struct clk *clk)
 
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
-	struct clk *c;
 	int enabled = clk_is_enabled(clk);
 	const char *hwstat, *stat;
 
@@ -705,13 +704,19 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 			printf("\n");
 		}
 	}
+}
+
+static void dump_subtree(struct clk *clk, int verbose, int indent)
+{
+	struct clk *c;
+
+	dump_one(clk, verbose, indent);
 
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
-		if (parent == clk) {
-			dump_one(c, verbose, indent + 1);
-		}
+		if (parent == clk)
+			dump_subtree(c, verbose, indent + 1);
 	}
 }
 
@@ -723,7 +728,42 @@ void clk_dump(int verbose)
 		struct clk *parent = clk_get_parent(c);
 
 		if (IS_ERR_OR_NULL(parent))
-			dump_one(c, verbose, 0);
+			dump_subtree(c, verbose, 0);
+	}
+}
+
+static int clk_print_parent(struct clk *clk, int verbose)
+{
+	struct clk *c;
+	int indent;
+
+	c = clk_get_parent(clk);
+	if (IS_ERR_OR_NULL(c))
+		return 0;
+
+	indent = clk_print_parent(c, verbose);
+
+	dump_one(c, verbose, indent);
+
+	return indent + 1;
+}
+
+void clk_dump_one(struct clk *clk, int verbose)
+{
+	int indent;
+	struct clk *c;
+
+	indent = clk_print_parent(clk, verbose);
+
+	printf("\033[1m");
+	dump_one(clk, verbose, indent);
+	printf("\033[0m");
+
+	list_for_each_entry(c, &clks, list) {
+		struct clk *parent = clk_get_parent(c);
+
+		if (parent == clk)
+			dump_subtree(c, verbose, indent + 1);
 	}
 }
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 868bf3e4ed..3d66343e8d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -456,6 +456,7 @@ int clk_register(struct clk *clk);
 struct clk *clk_lookup(const char *name);
 
 void clk_dump(int verbose);
+void clk_dump_one(struct clk *clk, int verbose);
 
 struct clk *clk_register_composite(const char *name,
 			const char * const *parent_names, int num_parents,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
