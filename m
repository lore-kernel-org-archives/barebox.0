Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzpsR-0006AX-92
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 14:40:04 +0000
Received: from mail176.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 486C6FF9367
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 15:54:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 15:38:40 +0100
Message-Id: <1359383920-25038-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91: add clock dump command
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |    4 +++
 arch/arm/mach-at91/clock.c |   65 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2042df1..cd25ac8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -499,6 +499,10 @@ config CMD_AT91MUX
 	bool "at91mux dump command"
 	default y
 
+config CMD_AT91CLK
+	bool "at91clk dump command"
+	default y
+
 config CMD_AT91_BOOT_TEST
 	bool "at91_boot_test"
 	help
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index b231ec0..4572705 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -11,6 +11,8 @@
  */
 
 #include <common.h>
+#include <command.h>
+#include <complete.h>
 #include <linux/list.h>
 #include <errno.h>
 #include <linux/err.h>
@@ -756,3 +758,66 @@ static int at91_clock_reset(void)
 	return 0;
 }
 late_initcall(at91_clock_reset);
+
+#ifdef CONFIG_CMD_AT91CLK
+static int do_at91clk(int argc, char *argv[])
+{
+	u32		scsr, pcsr, uckr = 0, sr;
+	struct clk	*clk;
+
+	scsr = at91_pmc_read(AT91_PMC_SCSR);
+	pcsr = at91_pmc_read(AT91_PMC_PCSR);
+	sr = at91_pmc_read(AT91_PMC_SR);
+	printf("SCSR = %8x\n", scsr);
+	printf("PCSR = %8x\n", pcsr);
+	printf("MOR  = %8x\n", at91_pmc_read(AT91_CKGR_MOR));
+	printf("MCFR = %8x\n", at91_pmc_read(AT91_CKGR_MCFR));
+	printf("PLLA = %8x\n", at91_pmc_read(AT91_CKGR_PLLAR));
+	if (cpu_has_pllb())
+		printf("PLLB = %8x\n", at91_pmc_read(AT91_CKGR_PLLBR));
+	if (cpu_has_utmi()) {
+		uckr = at91_pmc_read(AT91_CKGR_UCKR);
+		printf("UCKR = %8x\n", uckr);
+	}
+	printf("MCKR = %8x\n", at91_pmc_read(AT91_PMC_MCKR));
+	if (cpu_has_upll())
+		printf("USB  = %8x\n", at91_pmc_read(AT91_PMC_USB));
+	printf("SR   = %8x\n", sr);
+
+	printf("\n");
+
+	list_for_each_entry(clk, &clocks, node) {
+		char	*state;
+
+		if (clk->mode == pmc_sys_mode)
+			state = (scsr & clk->pmc_mask) ? "on" : "off";
+		else if (clk->mode == pmc_periph_mode)
+			state = (pcsr & clk->pmc_mask) ? "on" : "off";
+		else if (clk->mode == pmc_uckr_mode)
+			state = (uckr & clk->pmc_mask) ? "on" : "off";
+		else if (clk->pmc_mask)
+			state = (sr & clk->pmc_mask) ? "on" : "off";
+		else if (clk == &clk32k || clk == &main_clk)
+			state = "on";
+		else
+			state = "";
+
+		printf("%-10s users=%2d %-3s %10ld Hz %s\n",
+			clk->name, clk->users, state, clk_get_rate(clk),
+			clk->parent ? clk->parent->name : "");
+	}
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(at91clk)
+BAREBOX_CMD_HELP_USAGE("at91clk\n")
+BAREBOX_CMD_HELP_SHORT("dump current clock configuration\n");
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(at91clk)
+	.cmd		= do_at91clk,
+	.usage		= "dump current clock configuration",
+	BAREBOX_CMD_HELP(cmd_at91clk_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
