Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFg8-0004yl-LK
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:42:34 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 21:41:50 +0200
Message-Id: <1283456510-28086-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902194046.GA21449@game.jcrosoft.org>
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
Subject: [PATCH 9/9 V2] clkdev: add print clk info command
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig     |    7 +++++++
 drivers/clk/clkdev.c |   33 +++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 57c9b75..fe13f90 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -338,4 +338,11 @@ config CMD_I2C
 	  include i2c_probe, i2c_read and i2c_write commands to communicate
 	  on i2c bus.
 
+config CMD_CLOCK_INFO
+	bool
+	depends on CLKDEV_LOOKUP
+	prompt "clock info command"
+	help
+	  show list of registered clock
+
 endmenu
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 717fea5..49d98df 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -11,6 +11,7 @@
  */
 
 #include <common.h>
+#include <command.h>
 #include <linux/list.h>
 #include <errno.h>
 #include <linux/err.h>
@@ -166,3 +167,35 @@ void clkdev_drop(struct clk_lookup *cl)
 	kfree(cl);
 }
 EXPORT_SYMBOL(clkdev_drop);
+
+#ifdef CONFIG_CMD_CLOCK_INFO
+static int do_clock_info(struct command *cmdtp, int argc, char *argv[])
+{
+	struct clk_lookup *p;
+
+	puts("Global clocks:\n");
+
+	list_for_each_entry(p, &clocks, node)
+		if (!p->dev_id)
+			printf("%s: %#wHz\n", p->con_id, clk_get_rate(p->clk));
+
+	puts("Device specific clocks:\n");
+
+	list_for_each_entry(p, &clocks, node)
+		if (p->dev_id)
+			printf("%s[%s]: %#wHz\n", p->con_id, p->dev_id,
+					       clk_get_rate(p->clk));
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_clock_info_help[] =
+"Print clocks info\n"
+;
+
+BAREBOX_CMD_START(clock_info)
+	.cmd		= do_clock_info,
+	.usage		= "Clocks Info",
+	BAREBOX_CMD_HELP(cmd_clock_info_help)
+BAREBOX_CMD_END
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
