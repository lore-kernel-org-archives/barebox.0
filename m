Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrH-0007wY-J8
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:30 +0200
Message-Id: <20200916135035.7089-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200916135035.7089-1-a.fatoum@pengutronix.de>
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/10] defaultenv: provide defaults for generic reboot modes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While reboot mode magic identifiers can be very board specific, we can
settle on common names to allow some generic reboot mode handling:

  - loader     -> drop to bootloader shell on next boot
  - bootloader -> enable fastboot on next boot
  - recovery   -> display barebox boot menu

Boot modes loader and bootloader are admittedly a bit ambiguous, but
this nomenclature was chosen, because it's already in use on Android and
Rockchip systems.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst            | 18 ++++++++++++++----
 common/Kconfig                                 |  5 +++++
 common/startup.c                               | 16 ++++++++++++++++
 defaultenv/Makefile                            |  1 +
 .../defaultenv-2-reboot-mode/bmode/bootloader  |  3 +++
 .../defaultenv-2-reboot-mode/bmode/loader      |  2 ++
 .../defaultenv-2-reboot-mode/bmode/recovery    |  2 ++
 defaultenv/defaultenv.c                        |  2 ++
 8 files changed, 45 insertions(+), 4 deletions(-)
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/bootloader
 create mode 100755 defaultenv/defaultenv-2-reboot-mode/bmode/loader
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/recovery

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index a79ae83d56c3..da766e4edcbc 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -19,10 +19,11 @@ All new boards should use defaultenv-2 exclusively.
 
 The default environment is composed from different directories during compilation::
 
-  defaultenv/defaultenv-2-base   -> base files
-  defaultenv/defaultenv-2-dfu    -> overlay for DFU
-  defaultenv/defaultenv-2-menu   -> overlay for menus
-  arch/$ARCH/boards/<board>/env  -> board specific overlay
+  defaultenv/defaultenv-2-base        -> base files
+  defaultenv/defaultenv-2-dfu         -> overlay for DFU
+  defaultenv/defaultenv-2-reboot-mode -> overlay for reboot modes
+  defaultenv/defaultenv-2-menu        -> overlay for menus
+  arch/$ARCH/boards/<board>/env       -> board specific overlay
 
 The content of the above directories is applied one after another. If the
 same file exists in a later overlay, it will overwrite the preceding one.
@@ -37,6 +38,7 @@ and their respective included directories in ``defaultenv/Makefile``:
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE) += defaultenv-2-reboot-mode
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 
 /env/bin/init
@@ -138,3 +140,11 @@ there will be a file ``eth0`` with a content like this:
   # put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
 
   exit 0
+
+/env/bmode/
+-----------
+
+This contains the files to be sourced when barebox detects that the OS
+had requested a specific reboot mode (via e.g. ``reboot bootloader``
+under Linux). After the ``/env/init`` scripts were executed, barebox will
+``source /env/bmode/${global.system.reboot_mode.prev}`` if available.
diff --git a/common/Kconfig b/common/Kconfig
index 4ba58e55d436..a7815d2ab7c8 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -906,6 +906,11 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
 	depends on USB_GADGET_DFU
 	default y
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
+	bool "Generic reboot-mode handlers in the environment"
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on REBOOT_MODE
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
diff --git a/common/startup.c b/common/startup.c
index 075863d22e88..3a4ac81ffb4c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -38,6 +38,7 @@
 #include <linux/stat.h>
 #include <envfs.h>
 #include <magicvar.h>
+#include <linux/reboot-mode.h>
 #include <asm/sections.h>
 #include <uncompress.h>
 #include <globalvar.h>
@@ -310,6 +311,7 @@ static int run_init(void)
 	DIR *dir;
 	struct dirent *d;
 	const char *initdir = "/env/init";
+	const char *bmode;
 	bool env_bin_init_exists;
 	enum autoboot_state autoboot;
 	struct stat s;
@@ -350,6 +352,20 @@ static int run_init(void)
 		closedir(dir);
 	}
 
+	/* source matching script in /env/bmode/ */
+	bmode = reboot_mode_get();
+	if (bmode) {
+		char *scr, *path;
+
+		scr = xasprintf("source /env/bmode/%s", bmode);
+		path = &scr[strlen("source ")];
+		if (stat(path, &s) == 0) {
+			pr_info("Invoking '%s'...\n", path);
+			run_command(scr);
+		}
+		free(scr);
+	}
+
 	autoboot = do_autoboot_countdown();
 
 	console_ctrlc_allow();
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index e030355a4052..91293567c0d3 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -1,6 +1,7 @@
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE) += defaultenv-2-reboot-mode
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
 extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) barebox_zero_env
diff --git a/defaultenv/defaultenv-2-reboot-mode/bmode/bootloader b/defaultenv/defaultenv-2-reboot-mode/bmode/bootloader
new file mode 100644
index 000000000000..50a7a0f633ae
--- /dev/null
+++ b/defaultenv/defaultenv-2-reboot-mode/bmode/bootloader
@@ -0,0 +1,3 @@
+# Mode to re-flash partitions
+global.autoboot_timeout=30
+global.usbgadget.autostart=1
diff --git a/defaultenv/defaultenv-2-reboot-mode/bmode/loader b/defaultenv/defaultenv-2-reboot-mode/bmode/loader
new file mode 100755
index 000000000000..45647dec29a6
--- /dev/null
+++ b/defaultenv/defaultenv-2-reboot-mode/bmode/loader
@@ -0,0 +1,2 @@
+# Development mode
+global.autoboot=abort
diff --git a/defaultenv/defaultenv-2-reboot-mode/bmode/recovery b/defaultenv/defaultenv-2-reboot-mode/bmode/recovery
new file mode 100644
index 000000000000..0496ba3b0dad
--- /dev/null
+++ b/defaultenv/defaultenv-2-reboot-mode/bmode/recovery
@@ -0,0 +1,2 @@
+# Interactive mode for recovery
+global.autoboot=menu
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index b773030fe8ce..d69446c8937a 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -45,6 +45,8 @@ static void defaultenv_add_base(void)
 		defaultenv_append_directory(defaultenv_2_menu);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU))
 		defaultenv_append_directory(defaultenv_2_dfu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
+		defaultenv_append_directory(defaultenv_2_reboot_mode);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_1);
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
