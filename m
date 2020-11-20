Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kg73v-0006nf-QD
 for barebox@lists.infradead.org; Fri, 20 Nov 2020 14:06:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Nov 2020 15:06:49 +0100
Message-Id: <20201120140649.31607-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201120140649.31607-1-a.fatoum@pengutronix.de>
References: <20201120140649.31607-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] boot: introduce option to pass barebox-enabled watchdog
 to systemd
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Like Linux, barebox supports co-existence of multiple watchdog
devices. On boot, barebox enables only the default watchdog, which
is defined as the watchdog with highest non-zero priority.

The kernel handles all watchdogs the same and defers to userspace,
which watchdogs to service. It can be useful to have barebox tell
the system, which watchdog it activated, so it can service the same.

Having this feature behind a global variable adds 567 bytes to a
LZO compressed THUMB2 barebox. Allow users to opt out by having
a Kconfig option instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 10 ++++++++++
 common/boot.c  | 42 +++++++++++++++++++++++++++++++++++++++---
 2 files changed, 49 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 9b73aa84549c..3cb43a7190bb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1006,6 +1006,16 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config SYSTEMD_OF_WATCHDOG
+	bool "inform devicetree-enabled kernel of used watchdog"
+	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
+	help
+	  Sets the linux.bootargs.dyn.watchdog global variable with a value of
+	  systemd.watchdog-device=/dev/WDOG if barebox succeeded in enabling
+	  the watchdog WDOG prior to boot. WDOG is the alias of the watchdog
+	  in the kernel device tree. If the kernel is booted without a device
+	  tree or with one that lacks aliases, nothing is added.
+
 menu "OP-TEE loading"
 
 config OPTEE_SIZE
diff --git a/common/boot.c b/common/boot.c
index 90d504e3c324..76d03c26c4f4 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -139,6 +139,39 @@ late_initcall(init_boot);
 BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
 		"Watchdog enable timeout in seconds before booting");
 
+static struct watchdog *__watchdog;
+
+static int watchdog_of_fixup(struct device_node *root, void *arg)
+{
+	int alias_id;
+	char *buf;
+
+	if (!__watchdog)
+		return 0;
+
+	alias_id = watchdog_get_alias_id_from(__watchdog, root);
+	if (alias_id < 0)
+		return 0;
+
+	buf = basprintf("systemd.watchdog-device=/dev/watchdog%d", alias_id);
+	if (!buf)
+		return 0;
+
+	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
+	free(buf);
+
+	return 0;
+}
+
+static int __maybe_unused of_register_watchdog_fixup(void)
+{
+	return of_register_fixup(watchdog_of_fixup, NULL);
+}
+#ifdef CONFIG_SYSTEMD_OF_WATCHDOG
+/* _must_ not be run after late_initcall(of_register_bootargs_fixup) */
+device_initcall(of_register_watchdog_fixup);
+#endif
+
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
 	int ret;
@@ -146,10 +179,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	printf("Booting entry '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
-		ret = watchdog_set_timeout(watchdog_get_default(),
-					   boot_watchdog_timeout);
-		if (ret)
+		__watchdog = watchdog_get_default();
+
+		ret = watchdog_set_timeout(__watchdog, boot_watchdog_timeout);
+		if (ret) {
 			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
+			__watchdog = NULL;
+		}
 	}
 
 	ret = be->boot(be, verbose, dryrun);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
