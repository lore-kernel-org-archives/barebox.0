Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5ws-0001G4-U8
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:35:43 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2E568FF878E
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:36:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:17:41 +0200
Message-Id: <1334420262-4823-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414161509.GC30672@game.jcrosoft.org>
References: <20120414161509.GC30672@game.jcrosoft.org>
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
Subject: [PATCH 2/3] beagle: add xloader boot menu support
To: barebox@lists.infradead.org

This will allow to choice where we boot from.
As example if the nand boot is broken we can choose to boot from mmc.
The autoboot is set to 1s as most of the time you expect to boot from the
default boot.

As the xloader need to be really small to fit in the sram the boot menu allow
to add user interaction.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-omap/xload.c |  115 +++++++++++++++++++++++++++++++++++++++++--
 1 files changed, 109 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 59f75e2..90bf05f 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -3,10 +3,12 @@
 #include <nand.h>
 #include <driver.h>
 #include <linux/mtd/mtd.h>
+#include <linux/err.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <mach/xload.h>
 #include <sizes.h>
+#include <menu.h>
 
 void *omap_xload_boot_nand(int offset, int size)
 {
@@ -63,15 +65,11 @@ enum omap_boot_src omap_bootsrc(void)
 #endif
 }
 
-/*
- * Replaces the default shell in xload configuration
- */
-int run_shell(void)
+static void xload_boot(enum omap_boot_src mode)
 {
 	int (*func)(void) = NULL;
 
-	switch (omap_bootsrc())
-	{
+	switch (mode) {
 	case OMAP_BOOTSRC_MMC1:
 		printf("booting from MMC1\n");
 		func = omap_xload_boot_mmc();
@@ -94,3 +92,108 @@ int run_shell(void)
 
 	while (1);
 }
+
+#ifdef CONFIG_MENU
+struct action_entry {
+	enum omap_boot_src mode;
+	struct menu_entry entry;
+};
+
+static void menu_action_command(struct menu *m, struct menu_entry *me)
+{
+	struct action_entry *e = container_of(me, struct action_entry, entry);
+
+	xload_boot(e->mode);
+}
+
+static void menu_action_free(struct menu_entry *me)
+{
+	struct action_entry *e = container_of(me, struct action_entry, entry);
+
+	free(e->entry.display);
+
+	free(e);
+}
+
+static struct menu_entry *menu_add_boot_entry(struct menu *m, const char *display,
+					      enum omap_boot_src mode)
+{
+	struct action_entry *e = calloc(1, sizeof(*e));
+	int ret;
+
+	if (!e)
+		return NULL;
+
+	e->mode = mode;
+	e->entry.action = menu_action_command;
+	e->entry.free = menu_action_free;
+	e->entry.type = 0;
+	e->entry.display = strdup(display);
+
+	ret = menu_add_entry(m, &e->entry);
+	if (ret)
+		goto err_free;
+
+	return &e->entry;
+err_free:
+	menu_action_free(&e->entry);
+	return NULL;
+}
+
+int run_shell(void)
+{
+	struct menu *m;
+	struct menu_entry *mmc1, *nand;
+	int ret = -ENOMEM;
+	enum omap_boot_src mode = omap3_bootsrc();
+
+	m = menu_alloc();
+
+	if (!m)
+		goto boot;
+
+	m->name = strdup("boot");
+
+	if (!m->name)
+		goto boot;
+
+	ret = menu_add(m);
+	if (ret)
+		goto boot;
+
+	mmc1 = menu_add_boot_entry(m, "Boot from mmc1", OMAP_BOOTSRC_MMC1);
+	if (!mmc1)
+		goto boot;
+
+	nand = menu_add_boot_entry(m, "Boot from nand", OMAP_BOOTSRC_NAND);
+	if (!nand)
+		goto boot;
+
+	switch (mode)
+	{
+	case OMAP_BOOTSRC_MMC1:
+		menu_set_selected_entry(m, mmc1);
+		break;
+	case OMAP_BOOTSRC_UNKNOWN:
+	case OMAP_BOOTSRC_NAND:
+		menu_set_selected_entry(m, nand);
+		break;
+	}
+
+	menu_set_auto_select(m, 1);
+
+	menu_show(m);
+
+boot:
+	xload_boot(mode);
+
+	return 0;
+}
+#else
+int run_shell(void)
+{
+	xload_boot(omap_bootsrc());
+
+	return 0;
+}
+#endif
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
