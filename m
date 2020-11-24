Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khVUw-0006zt-Tp
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 10:24:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Nov 2020 11:24:30 +0100
Message-Id: <20201124102430.17407-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201124102430.17407-1-a.fatoum@pengutronix.de>
References: <20201124102430.17407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/2] boot: introduce option to pass barebox-enabled
 watchdog to systemd
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Like Linux, barebox supports co-existence of multiple watchdog
devices. On boot, barebox enables only the default watchdog, which
is defined as the watchdog with highest non-zero priority.

The kernel handles all watchdogs the same and defers to userspace,
which watchdogs to service. It can be useful to have barebox tell
the system, which watchdog it activated, so it can service the same.

Having this feature behind a global variable adds 354 bytes to a
LZO compressed THUMB2 barebox. Users can opt out by toggling the
Kconfig option, which defaults to off.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - renamed __watchdog to boot_enabled_watchdog (Sascha)
  - integrated separate fixup into of_fixup_bootargs. This makes the
    code work even with initcall shuffling (Sascha)
  - adjusted binary size impact in commit message. 567 -> 354 bytes
---
 common/Kconfig  | 10 ++++++++++
 common/boot.c   | 16 +++++++++++++---
 common/oftree.c | 25 +++++++++++++++++++++++++
 include/boot.h  |  3 +++
 4 files changed, 51 insertions(+), 3 deletions(-)

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
index 90d504e3c324..710eb6c25f5b 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -119,6 +119,13 @@ void boot_set_watchdog_timeout(unsigned int timeout)
 	boot_watchdog_timeout = timeout;
 }
 
+static struct watchdog *boot_enabled_watchdog;
+
+struct watchdog *boot_get_enabled_watchdog(void)
+{
+	return boot_enabled_watchdog;
+}
+
 static char *global_boot_default;
 static char *global_user;
 
@@ -146,10 +153,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	printf("Booting entry '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
-		ret = watchdog_set_timeout(watchdog_get_default(),
-					   boot_watchdog_timeout);
-		if (ret)
+		boot_enabled_watchdog = watchdog_get_default();
+
+		ret = watchdog_set_timeout(boot_enabled_watchdog, boot_watchdog_timeout);
+		if (ret) {
 			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
+			boot_enabled_watchdog = NULL;
+		}
 	}
 
 	ret = be->boot(be, verbose, dryrun);
diff --git a/common/oftree.c b/common/oftree.c
index 36906e86fc7d..075b9d6b8be2 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -14,6 +14,8 @@
 #include <bootsource.h>
 #include <i2c/i2c.h>
 #include <reset_source.h>
+#include <watchdog.h>
+#include <globalvar.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -139,6 +141,26 @@ static int of_fixup_bootargs_bootsource(struct device_node *root,
 	return ret;
 }
 
+static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
+{
+	int alias_id;
+	char *buf;
+
+	if (!watchdog)
+		return;
+
+	alias_id = watchdog_get_alias_id_from(watchdog, root);
+	if (alias_id < 0)
+		return;
+
+	buf = basprintf("systemd.watchdog-device=/dev/watchdog%d", alias_id);
+	if (!buf)
+		return;
+
+	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
+	free(buf);
+}
+
 static int of_fixup_bootargs(struct device_node *root, void *unused)
 {
 	struct device_node *node;
@@ -147,6 +169,9 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	int instance = reset_source_get_instance();
 	struct device_d *dev;
 
+	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
+		watchdog_build_bootargs(boot_get_enabled_watchdog(), root);
+
 	str = linux_bootargs_get();
 	if (!str)
 		return 0;
diff --git a/include/boot.h b/include/boot.h
index 4054c27d935a..3d5dd1cb6e2c 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -42,7 +42,10 @@ int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const
 #define bootentries_for_each_entry(bootentries, entry) \
 	list_for_each_entry(entry, &bootentries->entries, list)
 
+struct watchdog;
+
 void boot_set_watchdog_timeout(unsigned int timeout);
+struct watchdog *boot_get_enabled_watchdog(void);
 struct bootentries *bootentries_alloc(void);
 void bootentries_free(struct bootentries *bootentries);
 int bootentry_create_from_name(struct bootentries *bootentries,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
