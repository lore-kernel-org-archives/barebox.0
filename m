Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4AIQ-0002kX-KZ
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 17:34:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 18:34:31 +0100
Message-Id: <20161108173431.16502-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: add clock command completion
To: Barebox List <barebox@lists.infradead.org>

This adds tab completion for the clk_* commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c      |  5 +++++
 drivers/clk/clk.c   | 22 ++++++++++++++++++++++
 include/linux/clk.h |  4 ++++
 3 files changed, 31 insertions(+)

diff --git a/commands/clk.c b/commands/clk.c
index f862c45..47159dd 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -25,6 +25,7 @@ BAREBOX_CMD_START(clk_enable)
 	BAREBOX_CMD_DESC("enable a clock")
 	BAREBOX_CMD_OPTS("CLK")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
 static int do_clk_disable(int argc, char *argv[])
@@ -48,6 +49,7 @@ BAREBOX_CMD_START(clk_disable)
 	BAREBOX_CMD_DESC("disable a clock")
 	BAREBOX_CMD_OPTS("CLK")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
 static int do_clk_set_rate(int argc, char *argv[])
@@ -77,6 +79,7 @@ BAREBOX_CMD_START(clk_set_rate)
 	BAREBOX_CMD_OPTS("CLK HZ")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
 static int do_clk_get_rate(int argc, char *argv[])
@@ -130,6 +133,7 @@ BAREBOX_CMD_START(clk_get_rate)
 	BAREBOX_CMD_OPTS("[-s VARNAME] CLK")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_get_rate_help)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
 
 static int do_clk_dump(int argc, char *argv[])
@@ -187,4 +191,5 @@ BAREBOX_CMD_START(clk_set_parent)
 	BAREBOX_CMD_DESC("set parent of a clock")
 	BAREBOX_CMD_OPTS("CLK PARENT")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_COMPLETE(clk_name_complete)
 BAREBOX_CMD_END
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 630a84d..15e424d 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -17,6 +17,8 @@
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
+#include <stringlist.h>
+#include <complete.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
@@ -508,3 +510,23 @@ void clk_dump(int verbose)
 			dump_one(c, verbose, 0);
 	}
 }
+
+int clk_name_complete(struct string_list *sl, char *instr)
+{
+	struct clk *c;
+	int len;
+
+	if (!instr)
+		instr = "";
+
+	len = strlen(instr);
+
+	list_for_each_entry(c, &clks, list) {
+		if (strncmp(instr, c->name, len))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", c->name);
+	}
+
+	return COMPLETE_CONTINUE;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7a0ee11..8cb9731 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -362,4 +362,8 @@ static inline int of_clk_init(struct device_node *root,
 }
 #endif
 
+struct string_list;
+
+int clk_name_complete(struct string_list *sl, char *instr);
+
 #endif
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
