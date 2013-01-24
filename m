Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyL4n-0000zv-Qe
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 11:34:39 +0000
Received: from mail21.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 97434DC08E2
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 12:44:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 24 Jan 2013 12:33:16 +0100
Message-Id: <1359027196-20458-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359027196-20458-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130124113051.GU26329@game.jcrosoft.org>
 <1359027196-20458-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: bootstrap: add menu support
To: barebox@lists.infradead.org

This will allow to change the boot mode

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/bootstrap.c |  215 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 190 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 5ee43ad..4149304 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -10,6 +10,7 @@
 #include <sizes.h>
 #include <malloc.h>
 #include <init.h>
+#include <menu.h>
 
 #if defined(CONFIG_MCI_ATMEL)
 #define is_mmc() 1
@@ -35,46 +36,210 @@
 #define is_dataflash() 0
 #endif
 
-static void boot_seq(bool is_barebox)
+#if defined(CONFIG_MENU) && !defined(CONFIG_NONE)
+#define is_menu() 1
+#else
+#define is_menu() 0
+#endif
+
+static char* is_barebox_to_str(bool is_barebox)
+{
+	return is_barebox ? "barebox" : "unknown";
+}
+
+static void at91bootstrap_boot_m25p80(bool is_barebox)
+{
+	char *name = is_barebox_to_str(is_barebox);
+	int (*func)(void) = NULL;
+
+	func = bootstrap_board_read_m25p80();
+	printf("Boot %s from m25p80\n", name);
+	bootstrap_boot(func, is_barebox);
+	bootstrap_err("... failed\n");
+	free(func);
+}
+
+static void at91bootstrap_boot_dataflash(bool is_barebox)
+{
+	char *name = is_barebox_to_str(is_barebox);
+	int (*func)(void) = NULL;
+
+	printf("Boot %s from dataflash\n", name);
+	func = bootstrap_board_read_dataflash();
+	bootstrap_boot(func, is_barebox);
+	bootstrap_err("... failed\n");
+	free(func);
+}
+
+static void at91bootstrap_boot_nand(bool is_barebox)
+{
+	char *name = is_barebox_to_str(is_barebox);
+	int (*func)(void) = NULL;
+
+	printf("Boot %s from nand\n", name);
+	func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
+	bootstrap_boot(func, is_barebox);
+	bootstrap_err("... failed\n");
+	free(func);
+}
+
+static void at91bootstrap_boot_mmc(void)
 {
-	char *name = is_barebox ? "barebox" : "unknown";
 	int (*func)(void) = NULL;
 
+	printf("Boot from mmc\n");
+	func = bootstrap_read_disk("disk0.0", NULL);
+	bootstrap_boot(func, false);
+	bootstrap_err("... failed\n");
+	free(func);
+}
+
+static void boot_nand_barebox_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_nand(true);
+
+	getc();
+}
+
+static void boot_nand_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_nand(false);
+
+	getc();
+}
+
+static void boot_m25p80_barebox_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_nand(true);
+
+	getc();
+}
+
+static void boot_m25p80_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_nand(false);
+
+	getc();
+}
+
+static void boot_dataflash_barebox_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_dataflash(true);
+
+	getc();
+}
+
+static void boot_dataflash_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_dataflash(false);
+
+	getc();
+}
+
+static void boot_mmc_disk_action(struct menu *m, struct menu_entry *me)
+{
+	at91bootstrap_boot_mmc();
+
+	getc();
+}
+
+static void boot_reset_action(struct menu *m, struct menu_entry *me)
+{
+	reset_cpu(0);
+}
+
+void at91_bootstrap_menu(void)
+{
+	struct menu *m;
+	struct menu_entry *me;
+
+	m = menu_alloc();
+	m->display = m->name = "boot";
+
+	menu_add(m);
+
+	if (is_mmc()) {
+		me = menu_entry_alloc();
+		me->action = boot_mmc_disk_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "mmc";
+		menu_add_entry(m, me);
+	}
+
 	if (is_m25p80()) {
-		func = bootstrap_board_read_m25p80();
-		printf("Boot %s from m25p80\n", name);
-		bootstrap_boot(func, is_barebox);
-		bootstrap_err("... failed\n");
-		free(func);
+		me = menu_entry_alloc();
+		me->action = boot_m25p80_barebox_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "m25p80 (barebox)";
+		menu_add_entry(m, me);
+
+		me = menu_entry_alloc();
+		me->action = boot_m25p80_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "m25p80";
+		menu_add_entry(m, me);
 	}
+
 	if (is_dataflash()) {
-		printf("Boot %s from dataflash\n", name);
-		func = bootstrap_board_read_dataflash();
-		bootstrap_boot(func, is_barebox);
-		bootstrap_err("... failed\n");
-		free(func);
+		me = menu_entry_alloc();
+		me->action = boot_dataflash_barebox_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "dataflash (barebox)";
+		menu_add_entry(m, me);
+
+		me = menu_entry_alloc();
+		me->action = boot_dataflash_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "dataflash";
+		menu_add_entry(m, me);
 	}
+
 	if (is_nand()) {
-		printf("Boot %s from nand\n", name);
-		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
-		bootstrap_boot(func, is_barebox);
-		bootstrap_err("... failed\n");
-		free(func);
+		me = menu_entry_alloc();
+		me->action = boot_nand_barebox_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "nand (barebox)";
+		menu_add_entry(m, me);
+
+		me = menu_entry_alloc();
+		me->action = boot_nand_action;
+		me->type = MENU_ENTRY_NORMAL;
+		me->display = "nand";
+		menu_add_entry(m, me);
 	}
+
+	me = menu_entry_alloc();
+	me->action = boot_reset_action;
+	me->type = MENU_ENTRY_NORMAL;
+	me->display = "reset";
+	menu_add_entry(m, me);
+
+	menu_show(m);
 }
 
-static int at91_bootstrap(void)
+static void boot_seq(bool is_barebox)
 {
-	int (*func)(void) = NULL;
+	if (is_m25p80())
+		at91bootstrap_boot_m25p80(is_barebox);
 
-	if (is_mmc()) {
-		printf("Boot from mmc\n");
-		func = bootstrap_read_disk("disk0.0", NULL);
-		bootstrap_boot(func, false);
-		bootstrap_err("... failed\n");
-		free(func);
+	if (is_dataflash())
+		at91bootstrap_boot_dataflash(is_barebox);
+
+	if (is_nand())
+		at91bootstrap_boot_nand(is_barebox);
+}
+
+static int at91_bootstrap(void)
+{
+	if (is_menu()) {
+		printf("press 'm' to start the menu\n");
+		if (tstc() && getc() == 'm')
+			at91_bootstrap_menu();
 	}
 
+	if (is_mmc())
+		at91bootstrap_boot_mmc();
+
 	/* First only bootstrap_boot a barebox */
 	boot_seq(true);
 	/* Second bootstrap_boot any */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
