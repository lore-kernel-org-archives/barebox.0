Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn069-0002Ea-Eg
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:15:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 11:14:56 +0200
Message-Id: <1474535696-8126-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] boot: add framework for redundant boot scenarios
To: Barebox List <barebox@lists.infradead.org>

From: Marc Kleine-Budde <mkl@pengutronix.de>

There are several use cases where a redundant Linux system is needed. The
barebox bootchooser framework provides the building blocks to model different
use cases without the need to start from the scratch over and over again.

The bootchooser works on abstract boot targets, each with a set of properties
and implements an algorithm which selects the highest priority target to boot.

See the documentation contained in this patch for more information.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 274 +++++++++++
 Documentation/user/state.rst       |   2 +
 Documentation/user/user-manual.rst |   1 +
 commands/Kconfig                   |   5 +
 commands/Makefile                  |   1 +
 commands/bootchooser.c             | 148 ++++++
 common/Kconfig                     |   6 +
 common/Makefile                    |   1 +
 common/boot.c                      |   7 +
 common/bootchooser.c               | 928 +++++++++++++++++++++++++++++++++++++
 include/bootchooser.h              |  37 ++
 11 files changed, 1410 insertions(+)
 create mode 100644 Documentation/user/bootchooser.rst
 create mode 100644 commands/bootchooser.c
 create mode 100644 common/bootchooser.c
 create mode 100644 include/bootchooser.h

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
new file mode 100644
index 0000000..5baa66d
--- /dev/null
+++ b/Documentation/user/bootchooser.rst
@@ -0,0 +1,274 @@
+Barebox Bootchooser
+===================
+
+In many cases embedded systems are layed out redundantly with multiple
+kernels and multiple root file systems. The bootchooser framework provides
+the building blocks to model different use cases without the need to start
+from scratch over and over again.
+
+The bootchooser works on abstract boot targets, each with a set of properties
+and implements an algorithm which selects the highest priority target to boot.
+
+Bootchooser Targets
+-------------------
+
+A bootchooser target represents one target that barebox can boot. It consists
+of a set of variables in the ``global.bootchooser.<targetname>`` namespace. The
+following configuration variables are needed to describe a bootchooser target:
+
+``global.bootchooser.<targetname>.boot``
+  This controls what barebox actually boots for this target. This string can contain
+  anything that the :ref:`boot <command_boot>` command understands.
+
+``global.bootchooser.<targetname>.default_attempts``
+  The default number of attempts that a target shall be tried starting.
+``global.bootchooser.<targetname>.default_priority``
+  The default priority of a target.
+
+
+Additionally the following runtime variables are needed. Unlinke the configuration
+variables these are automatically changed by the bootchooser algorithm:
+
+``global.bootchooser.<targetname>.priority``
+  The current priority of the target. Higher numbers have higher priorities. A priority
+  of 0 means the target is disabled and won't be started.
+``global.bootchooser.<targetname>.remaining_attempts``
+  The remaining_attempts counter. Only targets with a remaining_attempts counter > 0
+  are started.
+
+The bootchooser algorithm generally only starts targets that have a priority
+> 0 and a remaining_attempts counter > 0.
+
+The Bootchooser Algorithm
+-------------------------
+
+The bootchooser algorithm is very simple. It works with two variables per target
+and some optional flags. The variables are the remaining_attempts counter that
+tells how many times the target will be started. The other variable is the priority,
+the target with the highest priority will be used first, a zero priority means
+the target is disabled.
+
+When booting, bootchooser starts the target with the highest priority that has a
+nonzero remaining_attempts counter. With every start of a target the remaining
+attempts counter of this target is decremented by one. This means every targets
+remaining_attempts counter reaches zero sooner or later and the target won't be
+booted anymore. To prevent that, the remaining_attempts counter must be reset to
+its default. There are different flags in the bootchooser which control resetting
+the remaining_attempts counter, controlled by the ``global.bootchooser.reset_attempts``
+variable. It holds a list of space separated flags. Possible values are:
+
+- ``power-on``: The remaining_attempts counters of all enabled targets are reset
+  after a power-on reset (``$global.system.reset="POR"``). This means after a power
+  cycle all targets will be tried again for the configured number of retries
+- ``all-zero``: The remaining_attempts counters of all enabled targets are reset
+  when none of them has any remaining_attempts left.
+
+Additionally the remaining_attempts counter can be reset manually using the
+:ref:`command_bootchooser` command. This allows for custom conditions under which
+a system is marked as good.
+In case only the booted system itself knows when it is in a good state, the
+barebox-state tool from the dt-utils_ package can used to reset the remaining_attempts
+counter from the currently running system.
+
+.. _dt-utils: http://git.pengutronix.de/?p=tools/dt-utils.git;a=summary
+
+Bootchooser General Options
+---------------------------
+
+Additionally to the target options described above, bootchooser has some general
+options not specific to any target.
+
+``global.bootchooser.disable_on_zero_attempts``
+  Boolean flag. if 1, bootchooser disables a target (sets priority to 0) whenever the
+  remaining attempts counter reaches 0.
+``global.bootchooser.default_attempts``
+  The default number of attempts that a target shall be tried starting, used when not
+  overwritten with the target specific variable of the same name.
+``global.bootchooser.default_priority``
+  The default priority of a target when not overwritten with the target specific variable
+  of the same name.
+``global.bootchooser.reset_attempts``
+  A space separated list of events that cause bootchooser to reset the
+  remaining_attempts counters of each target that has a non zero priority. possible values:
+  * empty:  counters will never be reset``
+  * power-on: counters will be reset after power-on-reset
+  * all-zero: counters will be reset when all targets have zero remaining attempts
+``global.bootchooser.reset_priorities``
+  A space separated list of events that cause bootchooser to reset the priorities of
+  all targets. Possible values:
+  * empty: priorities will never be reset
+  * all-zero: priorities will be reset when all targets have zero priority
+``global.bootchooser.retry``
+  If 1, bootchooser retries booting until one succeeds or no more valid targets exist.
+``global.bootchooser.state_prefix``
+  Variable prefix when bootchooser used with state framework as backend for storing runtime
+  data, see below.
+``global.bootchooser.targets``
+  Space separated list of targets that are used. For each entry in the list a corresponding
+  set of ``global.bootchooser.<name>``. variables must exist.
+``global.bootchooser.last_chosen``
+  bootchooser sets this to the target that was chosen on last boot (index)
+
+Using the State Framework as Backend for Runtime Variable Data
+--------------------------------------------------------------
+
+Normally the data that is modified by the bootchooser during runtime is stored
+in global variables (backed with NV). Alternatively the :ref:`state_framework`
+can be used for this data, which allows to store this data redundantly
+and in small EEPROM spaces. See :ref:`state_framework` to setup the state framework.
+During barebox runtime each state instance will create a device
+(usually named 'state' when only one is used) with a set of parameters. Set
+``global.bootchooser.state_prefix`` to the name of the device and optionally the
+namespace inside this device. For example when your state device is called 'state'
+and inside that the 'bootchooser' namespace is used for describing the targets,
+then set ``global.bootchooser.state_prefix`` to ``state.bootchooser``.
+
+Example
+-------
+
+The following example shows how to initialize two targets, 'system0' and 'system1'.
+Both boot from an UBIFS on nand0, the former has a priority of 21 and boots from
+the volume 'system0' whereas the latter has a priority of 20 and boots from
+the volume 'system1'.
+
+.. code-block:: sh
+
+  # initialize target 'system0'
+  nv bootchooser.system0.boot=nand0.ubi.system0
+  nv bootchooser.system0.default_attempts=3
+  nv bootchooser.system0.default_priority=21
+
+  # initialize target 'system1'
+  nv bootchooser.system1.boot=nand0.ubi.system1
+  nv bootchooser.system1.default_attempts=3
+  nv bootchooser.system1.default_priority=20
+
+  # make targets known
+  nv bootchooser.targets="system0 system1"
+
+  # retry until one target succeeds
+  nv bootchooser.retry="true"
+
+  # First try bootchooser, when no targets remain boot from network
+  nv boot.default="bootchooser net"
+
+Note that this example is for testing, normally the NV variables would be
+initialized directly by files in the default environment, not with a script.
+
+Scenarios
+---------
+
+This section describes some scenarios that can be solved with bootchooser. All
+scenarios assume multiple slots that can be booted, where 'multiple' is anything
+higher than one.
+
+Scenario 1
+##########
+
+A system that shall always boot without user interaction. Staying in the bootloader
+is not an option. In this scenario a target is started for the configured number
+of remaining attempts. If it cannot successfully be started, the next target is chosen.
+This happens until no targets are left to start, then all remaining attempts are
+reset to their defaults and the first target is tried again.
+
+Settings
+^^^^^^^^
+- ``global.bootchooser.reset_attempts="all-zero"``
+- ``global.bootchooser.reset_priorities="all-zero"``
+- ``global.bootchooser.disable_on_zero_attempts=0``
+- ``global.bootchooser.retry=1``
+- ``global.boot.default="bootchooser recovery"``
+- Userspace marks as good
+
+Deployment
+^^^^^^^^^^
+
+#. barebox or flash robot fills all slots with valid systems.
+#. The all-zero settings will lead to automatically enabling the slots, no
+   default settings are needed here.
+
+Recovery
+^^^^^^^^
+
+Recovery will only be called when all targets are not startable (That is, no valid
+Kernel found or read failure). Once a target is startable (A valid kernel is found
+and started) Bootchooser will never fall through to the recovery target.
+
+Scenario 2
+##########
+
+A system with multiple slots, a slot that was booted three times without success
+shall never be booted again (except after update or user interaction).
+
+Settings
+^^^^^^^^
+
+- ``global.bootchooser.reset_attempts=""``
+- ``global.bootchooser.reset_priorities=""``
+- ``global.bootchooser.disable_on_zero_attempts=0``
+- ``global.bootchooser.retry=1``
+- ``global.boot.default="bootchooser recovery"``
+- Userspace marks as good
+
+Deployment
+^^^^^^^^^^
+
+#. barebox or flash robot fills all slots with valid systems
+#. barebox or flash robot marks slots as good or state contains non zero
+   defaults for the remaining_attempts / priorities
+
+Recovery
+^^^^^^^^
+done by 'recovery' boot target which is booted after the bootchooser falls through due to
+the lack of bootable targets. This target can be:
+- A system that will be booted as recovery
+- A barebox script that will be started
+
+Scenario 3
+##########
+
+A system with multiple slots and one recovery system. Booting a slot three times
+without success disables it. A power cycle shall not be counted as failed boot.
+
+Settings
+^^^^^^^^
+
+- ``global.bootchooser.reset_attempts="power-on"``
+- ``global.bootchooser.reset_priorities=""``
+- ``global.bootchooser.disable_on_zero_attempts=1``
+- ``global.bootchooser.retry=1``
+- ``global.boot.default="bootchooser recovery"``
+- Userspace marks as good
+
+Deployment
+^^^^^^^^^^
+
+- barebox or flash robot fills all slots with valid systems
+- barebox or flash robot marks slots as good
+
+Recovery
+^^^^^^^^
+
+Done by 'recovery' boot target which is booted after the bootchooser falls through
+due to the lack of bootable targets. This target can be:
+- A system that will be booted as recovery
+- A barebox script that will be started
+
+Updating systems
+----------------
+
+Updating a slot is the same among the different scenarios. It is assumed that the
+update is done under a running Linux system which can be one of the regular bootchooser
+slots or a dedicated recovery system. For the regular slots updating is done like:
+
+- Set the priority of the inactive slot to 0.
+- Update the inactive slot
+- Set priority of the inactive slot to a higher value than the active slot
+- Set remaining_attempts of the inactive slot to nonzero
+- Reboot
+- If necessary update the now inactive, not yet updated slot the same way
+
+One way of updating systems is using RAUC_ which integrates well with the bootchooser
+in barebox.
+
+.. _RAUC: https://rauc.readthedocs.io/en/latest/ RAUC (
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index c401f10..5dd5c48 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -1,3 +1,5 @@
+.. _state_framework:
+
 Barebox State Framework
 =======================
 
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 5841ea6..435649f 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -27,6 +27,7 @@ Contents:
    usb
    ubi
    booting-linux
+   bootchooser
    remote-control
    system-setup
    reset-reason
diff --git a/commands/Kconfig b/commands/Kconfig
index 3c79831..21d9212 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2097,6 +2097,11 @@ config CMD_STATE
 	depends on STATE
 	prompt "state"
 
+config CMD_BOOTCHOOSER
+	tristate
+	depends on BOOTCHOOSER
+	prompt "bootchooser"
+
 config CMD_DHRYSTONE
 	bool
 	prompt "dhrystone"
diff --git a/commands/Makefile b/commands/Makefile
index 7abd6dd..601f15f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -115,6 +115,7 @@ obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
 obj-$(CONFIG_CMD_STATE)		+= state.o
 obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
+obj-$(CONFIG_CMD_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_CMD_DHRYSTONE)	+= dhrystone.o
 obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
diff --git a/commands/bootchooser.c b/commands/bootchooser.c
new file mode 100644
index 0000000..91938fe
--- /dev/null
+++ b/commands/bootchooser.c
@@ -0,0 +1,148 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ * Copyright (C) 2015 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <bootchooser.h>
+#include <globalvar.h>
+#include <command.h>
+#include <common.h>
+#include <getopt.h>
+#include <malloc.h>
+#include <stdio.h>
+
+#define DONTTOUCH	-2
+#define DEFAULT		-1
+
+static void target_reset(struct bootchooser_target *target, int priority, int attempts)
+{
+	printf("Resetting target %s to ", bootchooser_target_name(target));
+
+	if (priority >= 0)
+		printf("priority %d", priority);
+	else if (priority == DEFAULT)
+		printf("default priority");
+
+	if (priority > DONTTOUCH && attempts > DONTTOUCH)
+		printf(", ");
+
+	if (attempts >= 0)
+		printf("%d attempts", attempts);
+	else if (attempts == DEFAULT)
+		printf("default attempts");
+
+	printf("\n");
+
+	if (priority > DONTTOUCH)
+		bootchooser_target_set_priority(target, priority);
+	if (attempts > DONTTOUCH)
+		bootchooser_target_set_attempts(target, attempts);
+}
+
+static int do_bootchooser(int argc, char *argv[])
+{
+	int opt, ret = 0, i;
+	struct bootchooser *bootchooser;
+	struct bootchooser_target *target;
+	int attempts = DONTTOUCH;
+	int priority = DONTTOUCH;
+	int info = 0;
+	bool done_something = false;
+	bool last_boot_successful = false;
+
+	while ((opt = getopt(argc, argv, "a:p:is")) > 0) {
+		switch (opt) {
+		case 'a':
+			if (!strcmp(optarg, "default"))
+				attempts = DEFAULT;
+			else
+				attempts = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'p':
+			if (!strcmp(optarg, "default"))
+				priority = DEFAULT;
+			else
+				priority = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'i':
+			info = 1;
+			break;
+		case 's':
+			last_boot_successful = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	bootchooser = bootchooser_get();
+	if (IS_ERR(bootchooser)) {
+		printf("No bootchooser found\n");
+		return COMMAND_ERROR;
+	}
+
+	if (last_boot_successful) {
+		bootchooser_last_boot_successful();
+		done_something = true;
+	}
+
+	if (attempts != DONTTOUCH || priority != DONTTOUCH) {
+		if (optind < argc) {
+			for (i = optind; i < argc; i++) {
+				target = bootchooser_target_by_name(bootchooser, argv[i]);
+				if (!target) {
+					printf("No such target: %s\n", argv[i]);
+					ret = COMMAND_ERROR;
+					goto out;
+				}
+
+				target_reset(target, priority, attempts);
+			}
+		} else {
+			bootchooser_for_each_target(bootchooser, target)
+				target_reset(target, priority, attempts);
+		}
+		done_something = true;
+	}
+
+	if (info) {
+		bootchooser_info(bootchooser);
+		done_something = true;
+	}
+
+	if (!done_something) {
+		printf("Nothing to do\n");
+		ret = COMMAND_ERROR_USAGE;
+	}
+out:
+	bootchooser_put(bootchooser);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(bootchooser)
+BAREBOX_CMD_HELP_TEXT("Control misc behaviour of the bootchooser")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
+BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
+BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
+BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bootchooser)
+	.cmd = do_bootchooser,
+	BAREBOX_CMD_DESC("bootchooser control")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_bootchooser_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index f2badc7..095566b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -936,6 +936,12 @@ config STATE_CRYPTO
 	  See Documentation/devicetree/bindings/barebox/barebox,state.rst
 	  for more information.
 
+config BOOTCHOOSER
+	bool "bootchooser infrastructure"
+	select ENVIRONMENT_VARIABLES
+	select OFTREE
+	select PARAMETER
+
 config RESET_SOURCE
 	bool "detect Reset cause"
 	depends on GLOBALVAR
diff --git a/common/Makefile b/common/Makefile
index 00bc0e8..a36ae5e 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -46,6 +46,7 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_STATE)		+= state/
 obj-$(CONFIG_RATP)		+= ratp.o
+obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
diff --git a/common/boot.c b/common/boot.c
index a971cb7..123b874 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -10,6 +10,7 @@
  */
 
 #include <environment.h>
+#include <bootchooser.h>
 #include <globalvar.h>
 #include <magicvar.h>
 #include <watchdog.h>
@@ -274,6 +275,12 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		}
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTCHOOSER) && !strcmp(name, "bootchooser")) {
+		ret = bootchooser_create_bootentry(bootentries);
+		if (ret > 0)
+			found += ret;
+	}
+
 	if (!found) {
 		char *path;
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
new file mode 100644
index 0000000..9e3367f
--- /dev/null
+++ b/common/bootchooser.c
@@ -0,0 +1,928 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ * Copyright (C) 2015 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#define pr_fmt(fmt)	"bootchooser: " fmt
+
+#include <bootchooser.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <command.h>
+#include <libfile.h>
+#include <common.h>
+#include <malloc.h>
+#include <printk.h>
+#include <xfuncs.h>
+#include <envfs.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <ioctl.h>
+#include <libbb.h>
+#include <state.h>
+#include <stdio.h>
+#include <init.h>
+#include <crc.h>
+#include <net.h>
+#include <fs.h>
+#include <reset_source.h>
+
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/err.h>
+
+#define BOOTCHOOSER_PREFIX "global.bootchooser"
+
+static char *available_targets;
+static char *state_prefix;
+static int global_default_attempts = 3;
+static int global_default_priority = 1;
+static int deactivate_on_zero_attempts;
+static int retry;
+static int last_boot_successful;
+
+struct bootchooser {
+	struct bootentry entry;
+	struct list_head targets;
+	struct bootchooser_target *last_chosen;
+
+	struct state *state;
+	char *state_prefix;
+
+	int verbose;
+	int dryrun;
+};
+
+struct bootchooser_target {
+	struct bootchooser *bootchooser;
+	struct list_head list;
+
+	/* state */
+	unsigned int priority;
+	unsigned int remaining_attempts;
+	int id;
+
+	/* spec */
+	char *name;
+	unsigned int default_attempts;
+	unsigned int default_priority;
+
+	char *boot;
+
+	char *prefix;
+	char *state_prefix;
+};
+
+enum reset_attempts {
+	RESET_ATTEMPTS_POWER_ON,
+	RESET_ATTEMPTS_ALL_ZERO,
+};
+
+static unsigned long reset_attempts;
+
+enum reset_priorities {
+	RESET_PRIORITIES_ALL_ZERO,
+};
+
+static unsigned long reset_priorities;
+
+static int bootchooser_target_ok(struct bootchooser_target *target, const char **reason)
+{
+	if (!target->priority) {
+		if (reason)
+			*reason = "Target disabled (priority = 0)";
+		return false;
+	}
+
+	if (!target->remaining_attempts) {
+		if (reason)
+			*reason = "remaining attempts = 0";
+		return false;
+	}
+
+	if (reason)
+		*reason = "target OK";
+
+	return true;
+}
+
+static void pr_target(struct bootchooser_target *target)
+{
+	const char *reason;
+	int ok;
+
+	ok = bootchooser_target_ok(target, &reason);
+
+	printf("%s\n"
+	       "    id: %u\n"
+	       "    priority: %u\n"
+	       "    default_priority: %u\n"
+	       "    remaining attempts: %u\n"
+	       "    default attempts: %u\n"
+	       "    boot: '%s'\n",
+	       target->name, target->id, target->priority, target->default_priority,
+	       target->remaining_attempts, target->default_attempts,
+	       target->boot);
+	if (!ok)
+		printf("    disabled due to %s\n", reason);
+}
+
+static int pr_setenv(struct bootchooser *bc, const char *fmt, ...)
+{
+	va_list ap;
+	int ret = 0;
+	char *str, *val;
+	const char *oldval;
+
+	va_start(ap, fmt);
+	str = bvasprintf(fmt, ap);
+	va_end(ap);
+
+	if (!str)
+		return -ENOMEM;
+
+	val = strchr(str, '=');
+	if (!val) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	*val++ = '\0';
+
+	oldval = getenv(str);
+	if (!oldval || strcmp(oldval, val)) {
+		if (bc->state)
+			ret = setenv(str, val);
+		else
+			ret = nvvar_add(str, val);
+	}
+
+err:
+	free(str);
+
+	return ret;
+}
+
+static const char *pr_getenv(const char *fmt, ...)
+{
+	va_list ap;
+	char *str;
+	const char *val;
+
+	va_start(ap, fmt);
+	str = bvasprintf(fmt, ap);
+	va_end(ap);
+
+	if (!str)
+		return NULL;
+
+	val = getenv(str);
+
+	free(str);
+
+	return val;
+}
+
+static int getenv_u32(const char *prefix, const char *name, uint32_t *retval)
+{
+	char *str;
+	const char *val;
+
+	str = xasprintf("%s.%s", prefix, name);
+
+	val = getenv(str);
+
+	free(str);
+
+	if (!val)
+		return -ENOENT;
+
+	*retval = simple_strtoul(val, NULL, 0);
+
+	return 0;
+}
+
+static int bootchooser_target_compare(struct list_head *a, struct list_head *b)
+{
+	struct bootchooser_target *bootchooser_a =
+		list_entry(a, struct bootchooser_target, list);
+	struct bootchooser_target *bootchooser_b =
+		list_entry(b, struct bootchooser_target, list);
+
+	/* order with descending priority */
+	return bootchooser_a->priority >= bootchooser_b->priority ? -1 : 1;
+}
+
+/**
+ * bootchooser_target_new - Create a new bootchooser target
+ * @bc: The bootchooser
+ * @name: The name of the new target
+ *
+ * Parses the variables associated with @name, creates a bootchooser
+ * target from it and returns it.
+ */
+static struct bootchooser_target *bootchooser_target_new(struct bootchooser *bc,
+							 const char *name)
+{
+	struct bootchooser_target *target = xzalloc(sizeof(*target));
+	const char *val;
+	int ret;
+
+	target->name = xstrdup(name);
+	target->prefix = basprintf("%s.%s", BOOTCHOOSER_PREFIX, name);
+	target->state_prefix = basprintf("%s.%s", bc->state_prefix, name);
+	target->default_attempts = global_default_attempts;
+	target->default_priority = global_default_priority;
+
+	getenv_u32(target->prefix, "default_priority",
+			    &target->default_priority);
+	getenv_u32(target->prefix, "default_attempts",
+			    &target->default_attempts);
+
+	ret = getenv_u32(target->state_prefix, "priority", &target->priority);
+	if (ret) {
+		pr_warn("Cannot read priority for target %s, using default %d\n",
+		       target->name, target->default_priority);
+		target->priority = target->default_priority;
+	}
+
+	ret = getenv_u32(target->state_prefix, "remaining_attempts", &target->remaining_attempts);
+	if (ret) {
+		pr_warn("Cannot read remaining attempts for target %s, using default %d\n",
+		       target->name, target->default_attempts);
+		target->remaining_attempts = target->default_attempts;
+	}
+
+	if (target->remaining_attempts && !target->priority) {
+		pr_warn("Disabled target %s has remaining attempts %d, setting to 0\n",
+			target->name, target->remaining_attempts);
+		target->remaining_attempts = 0;
+	}
+
+	val = pr_getenv("%s.boot", target->prefix);
+	if (!val)
+		val = target->name;
+	target->boot = xstrdup(val);
+
+	return target;
+}
+
+/**
+ * bootchooser_target_by_id - Return a target given its id
+ *
+ * Each target has an id, simply counted by the order they appear in
+ * global.bootchooser.targets. We start counting at one to leave 0
+ * for detection of uninitialized variables.
+ */
+static struct bootchooser_target *bootchooser_target_by_id(struct bootchooser *bc,
+							   uint32_t id)
+{
+	struct bootchooser_target *target;
+
+	list_for_each_entry(target, &bc->targets, list)
+		if (target->id == id)
+			return target;
+
+	return NULL;
+}
+
+/**
+ * bootchooser_target_disable - Disable a bootchooser target
+ */
+static void bootchooser_target_disable(struct bootchooser_target *target)
+{
+	target->priority = 0;
+	target->remaining_attempts = 0;
+}
+
+/**
+ * bootchooser_target_enabled - test if a target is enabled
+ *
+ * Returns true if a target is enabled, false if it's not.
+ */
+static bool bootchooser_target_enabled(struct bootchooser_target *target)
+{
+	return target->priority != 0;
+}
+
+/**
+ * bootchooser_reset_attempts - reset remaining attempts of targets
+ *
+ * Reset the remaining_attempts counter of all enabled targets
+ * to their default values.
+ */
+static void bootchooser_reset_attempts(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+
+	bootchooser_for_each_target(bc, target) {
+		if (bootchooser_target_enabled(target))
+			bootchooser_target_set_attempts(target, -1);
+	}
+}
+
+/**
+ * bootchooser_reset_priorities - reset priorities of targets
+ *
+ * Reset the priorities counter of all targets to their default
+ * values.
+ */
+static void bootchooser_reset_priorities(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+
+	bootchooser_for_each_target(bc, target)
+		bootchooser_target_set_priority(target, -1);
+}
+
+/**
+ * bootchooser_get - get a bootchooser instance
+ *
+ * This evaluates the different globalvars and eventually state variables,
+ * creates a bootchooser instance from it and returns it.
+ */
+struct bootchooser *bootchooser_get(void)
+{
+	struct bootchooser *bc;
+	struct bootchooser_target *target;
+	char *targets, *str, *freep = NULL, *delim;
+	int ret = -EINVAL, id = 1;
+	uint32_t last_chosen;
+	static int attempts_resetted;
+
+	bc = xzalloc(sizeof(*bc));
+
+	if (*state_prefix) {
+		if (IS_ENABLED(CONFIG_STATE)) {
+			char *state_devname;
+
+			delim = strchr(state_prefix, '.');
+			if (!delim) {
+				pr_err("state_prefix '%s' has invalid format\n",
+				       state_prefix);
+				goto err;
+			}
+			state_devname = xstrndup(state_prefix, delim - state_prefix);
+			bc->state_prefix = xstrdup(state_prefix);
+			bc->state = state_by_name(state_devname);
+			if (!bc->state) {
+				free(state_devname);
+				pr_err("Cannot get state '%s'\n",
+				       state_devname);
+				ret = -ENODEV;
+				goto err;
+			}
+			free(state_devname);
+		} else {
+			pr_err("State disabled, cannot use nv.state_prefix=%s\n",
+			       state_prefix);
+			ret = -ENODEV;
+			goto err;
+		}
+	} else {
+		bc->state_prefix = xstrdup("nv.bootchooser");
+	}
+
+	INIT_LIST_HEAD(&bc->targets);
+
+	freep = targets = xstrdup(available_targets);
+
+	while (1) {
+		str = strsep(&targets, " ");
+		if (!str || !*str)
+			break;
+
+		target = bootchooser_target_new(bc, str);
+		if (!IS_ERR(target)) {
+			target->id = id;
+			list_add_sort(&target->list, &bc->targets,
+				      bootchooser_target_compare);
+		}
+
+		id++;
+	}
+
+	if (id == 1) {
+		pr_err("Target list $global.bootchooser.targets is empty\n");
+		goto err;
+	}
+
+	if (list_empty(&bc->targets)) {
+		pr_err("No targets could be initialized\n");
+		goto err;
+	}
+
+	free(freep);
+
+	if (test_bit(RESET_PRIORITIES_ALL_ZERO, &reset_priorities)) {
+		int priority = 0;
+
+		bootchooser_for_each_target(bc, target)
+			priority += target->priority;
+
+		if (!priority) {
+			pr_info("All targets disabled, re-enabling them\n");
+			bootchooser_reset_priorities(bc);
+		}
+	}
+
+	if (test_bit(RESET_ATTEMPTS_POWER_ON, &reset_attempts) &&
+	    reset_source_get() == RESET_POR && !attempts_resetted) {
+		pr_info("Power-on Reset, resetting remaining attempts\n");
+		bootchooser_reset_attempts(bc);
+		attempts_resetted = 1;
+	}
+
+	if (test_bit(RESET_ATTEMPTS_ALL_ZERO, &reset_attempts)) {
+		int attempts = 0;
+
+		bootchooser_for_each_target(bc, target)
+			attempts += target->remaining_attempts;
+
+		if (!attempts) {
+			pr_info("All enabled targets have 0 remaining attempts, resetting them\n");
+			bootchooser_reset_attempts(bc);
+		}
+	}
+
+	ret = getenv_u32(bc->state_prefix, "last_chosen", &last_chosen);
+	if (!ret && last_chosen > 0) {
+		bc->last_chosen = bootchooser_target_by_id(bc, last_chosen);
+		if (!bc->last_chosen)
+			pr_warn("Last booted target with id %d does not exist\n", last_chosen);
+	}
+
+	if (bc->last_chosen && last_boot_successful)
+		bootchooser_target_set_attempts(bc->last_chosen, -1);
+
+	if (disable_on_zero_attempts) {
+		bootchooser_for_each_target(bc, target) {
+			if (!target->remaining_attempts) {
+				pr_info("target %s has 0 remaining attempts, disabling\n",
+					target->name);
+				bootchooser_target_disable(target);
+			}
+		}
+
+	}
+
+	return bc;
+
+err:
+	free(freep);
+	free(bc);
+
+	return ERR_PTR(ret);
+}
+
+/**
+ * bootchooser_save - save a bootchooser to the backing store
+ * @bc:		The bootchooser instance to save
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
+int bootchooser_save(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+	int ret;
+
+	if (bc->last_chosen)
+		pr_setenv(bc, "%s.last_chosen=%d", bc->state_prefix,
+			  bc->last_chosen->id);
+
+	list_for_each_entry(target, &bc->targets, list) {
+		ret = pr_setenv(bc, "%s.remaining_attempts=%d",
+				target->state_prefix,
+				target->remaining_attempts);
+		if (ret)
+			return ret;
+
+		ret = pr_setenv(bc, "%s.priority=%d",
+				target->state_prefix, target->priority);
+		if (ret)
+			return ret;
+	}
+
+	if (IS_ENABLED(CONFIG_STATE) && bc->state) {
+		ret = state_save(bc->state);
+		if (ret) {
+			pr_err("Cannot save state: %s\n", strerror(-ret));
+			return ret;
+		}
+	} else {
+		ret = nvvar_save();
+		if (ret) {
+			pr_err("Cannot save nv variables: %s\n", strerror(-ret));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * bootchooser_put - release a bootchooser instance
+ * @bc: The bootchooser instance
+ *
+ * This releases a bootchooser instance and the memory associated with it.
+ */
+int bootchooser_put(struct bootchooser *bc)
+{
+	struct bootchooser_target *target, *tmp;
+	int ret;
+
+	ret = bootchooser_save(bc);
+	if (ret)
+		pr_err("Failed to save bootchooser state: %s\n", strerror(-ret));
+
+	list_for_each_entry_safe(target, tmp, &bc->targets, list) {
+		free(target->boot);
+		free(target->prefix);
+		free(target->state_prefix);
+		free(target->name);
+		free(target);
+	}
+
+	free(bc);
+
+	return ret;
+}
+
+/**
+ * bootchooser_info - Show information about a bootchooser instance
+ * @bc: The bootchooser
+ */
+void bootchooser_info(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+	const char *reason;
+	int count = 0;
+
+	printf("Good targets (first will be booted next):\n");
+	list_for_each_entry(target, &bc->targets, list) {
+		if (bootchooser_target_ok(target, NULL)) {
+			count++;
+			pr_target(target);
+		}
+	}
+
+	if (!count)
+		printf("none\n");
+
+	count = 0;
+
+	printf("\nDisabled targets:\n");
+	list_for_each_entry(target, &bc->targets, list) {
+		if (!bootchooser_target_ok(target, &reason)) {
+			count++;
+			pr_target(target);
+		}
+	}
+
+	if (!count)
+		printf("none\n");
+
+	printf("\nlast booted target: %s\n", bc->last_chosen ?
+	       bc->last_chosen->name : "unknown");
+}
+
+/**
+ * bootchooser_get_target - get the target that shall be booted next
+ * @bc:		The bootchooser
+ *
+ * This is the heart of the bootchooser. This function selects the next
+ * target to boot and returns it. The remaining_attempts counter of the
+ * selected target is decreased and the bootchooser state is saved to the
+ * backend.
+ *
+ * Return: The next target
+ */
+struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
+{
+	struct bootchooser_target *target;
+
+	list_for_each_entry(target, &bc->targets, list) {
+		if (bootchooser_target_ok(target, NULL))
+			goto found;
+	}
+
+	pr_err("No valid targets found:\n");
+	list_for_each_entry(target, &bc->targets, list)
+		pr_target(target);
+
+	return ERR_PTR(-ENOENT);
+
+found:
+	target->remaining_attempts--;
+
+	if (bc->verbose)
+		pr_info("name=%s decrementing remaining_attempts to %d\n",
+			target->name, target->remaining_attempts);
+
+	if (bc->verbose)
+		pr_info("selected target '%s', boot '%s'\n", target->name, target->boot);
+
+	bc->last_chosen = target;
+
+	bootchooser_save(bc);
+
+	return target;
+}
+
+/**
+ * bootchooser_target_name - get the name of a target
+ * @target:	The target
+ *
+ * Given a bootchooser target this function returns its name.
+ *
+ * Return: The name of the target
+ */
+const char *bootchooser_target_name(struct bootchooser_target *target)
+{
+	return target->name;
+}
+
+/**
+ * bootchooser_target_by_name - get a target from name
+ * @bc:		The bootchooser
+ * @name:	The name of the target to retrieve
+ *
+ * Given a name this function returns the corresponding target.
+ *
+ * Return: The target if found, NULL otherwise
+ */
+struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bc,
+						      const char *name)
+{
+	struct bootchooser_target *target;
+
+	bootchooser_for_each_target(bc, target)
+		if (!strcmp(target->name, name))
+			return target;
+	return NULL;
+}
+
+/**
+ * bootchooser_target_set_attempts - set remaining attempts of a target
+ * @target:	The target to change
+ * @attempts:	The number of attempts
+ *
+ * This sets the number of remaining attempts for a bootchooser target.
+ * If @attempts is < 0 then the remaining attempts is reset to the default
+ * value.
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
+int bootchooser_target_set_attempts(struct bootchooser_target *target, int attempts)
+{
+	if (attempts >= 0)
+		target->remaining_attempts = attempts;
+	else
+		target->remaining_attempts = target->default_attempts;
+
+	return 0;
+}
+
+/**
+ * bootchooser_target_set_priority - set priority of a target
+ * @target:	The target to change
+ * @priority:	The priority
+ *
+ * This sets the priority of a bootchooser target. If @priority is < 0
+ * then the priority reset to the default value.
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
+int bootchooser_target_set_priority(struct bootchooser_target *target, int priority)
+{
+	if (priority >= 0)
+		target->priority = priority;
+	else
+		target->priority = target->default_priority;
+
+	return 0;
+}
+
+/**
+ * bootchooser_target_first - get the first target from a bootchooser
+ * @bc:		The bootchooser
+ *
+ * Gets the first target from a bootchooser, used for the bootchooser
+ * target iterator.
+ *
+ * Return: The first target or NULL if no target exists
+ */
+struct bootchooser_target *bootchooser_target_first(struct bootchooser *bc)
+{
+	return list_first_entry_or_null(&bc->targets,
+					struct bootchooser_target, list);
+}
+
+/**
+ * bootchooser_target_next - get the next target from a bootchooser
+ * @bc:		The bootchooser
+ * @target:	The current target
+ *
+ * Gets the next target from a bootchooser, used for the bootchooser
+ * target iterator.
+ *
+ * Return: The first target or NULL if no more targets exist
+ */
+struct bootchooser_target *bootchooser_target_next(struct bootchooser *bc,
+					       struct bootchooser_target *target)
+{
+	struct list_head *next = target->list.next;
+
+	if (next == &bc->targets)
+		return NULL;
+
+	return list_entry(next, struct bootchooser_target, list);
+}
+
+/**
+ * bootchooser_last_boot_successful - tell that the last boot was successful
+ *
+ * This tells bootchooser that the last boot was successful.
+ */
+void bootchooser_last_boot_successful(void)
+{
+	last_boot_successful = true;
+}
+
+/**
+ * bootchooser_get_last_chosen - get the target which was chosen last time
+ * @bc:		The bootchooser
+ *
+ * Bootchooser stores the id of the target which was last booted in
+ * <state_prefix>.last_chosen. This function returns the target associated
+ * with this id.
+ *
+ * Return: The target which was booted last time
+ */
+struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bc)
+{
+	if (!bc->last_chosen)
+		return ERR_PTR(-ENODEV);
+
+	return bc->last_chosen;
+}
+
+static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
+{
+	char *system;
+	struct bootentries *entries;
+	struct bootentry *entry;
+	struct bootchooser_target *target;
+	int ret = 0;
+
+	entries = bootentries_alloc();
+
+	target = bootchooser_get_target(bc);
+	if (IS_ERR(target)) {
+		ret = PTR_ERR(target);
+		*tryagain = 0;
+		goto out;
+	}
+
+	system = basprintf("bootchooser.active=%s", target->name);
+	globalvar_add_simple("linux.bootargs.bootchooser", system);
+	free(system);
+
+	ret = bootentry_create_from_name(entries, target->boot);
+	if (ret <= 0) {
+		printf("Nothing bootable found on '%s'\n", target->boot);
+		*tryagain = 1;
+		ret = -ENODEV;
+		goto out;
+	}
+
+	last_boot_successful = false;
+
+	ret = -ENOENT;
+
+	bootentries_for_each_entry(entries, entry) {
+		ret = boot_entry(entry, bc->verbose, bc->dryrun);
+		if (!ret) {
+			*tryagain = 0;
+			goto out;
+		}
+	}
+
+	*tryagain = 1;
+out:
+	globalvar_set_match("linux.bootargs.bootchooser", NULL);
+
+	bootentries_free(entries);
+
+	return ret;
+}
+
+static int bootchooser_boot(struct bootentry *entry, int verbose, int dryrun)
+{
+	struct bootchooser *bc = container_of(entry, struct bootchooser,
+						       entry);
+	int ret, tryagain;
+
+	bc->verbose = verbose;
+	bc->dryrun = dryrun;
+
+	do {
+		ret = bootchooser_boot_one(bc, &tryagain);
+
+		if (!retry)
+			break;
+	} while (tryagain);
+
+	return ret;
+}
+
+static void bootchooser_release(struct bootentry *entry)
+{
+	struct bootchooser *bc = container_of(entry, struct bootchooser,
+						       entry);
+
+	bootchooser_put(bc);
+}
+
+/**
+ * bootchooser_create_bootentry - create a boot entry
+ * @entries:	The list of bootentries
+ *
+ * This adds a bootchooser to the list of boot entries. Called
+ * by the 'boot' code.
+ *
+ * Return: The number of entries added to the list
+ */
+int bootchooser_create_bootentry(struct bootentries *entries)
+{
+	struct bootchooser *bc = bootchooser_get();
+
+	if (IS_ERR(bc))
+		return PTR_ERR(bc);
+
+	bc->entry.boot = bootchooser_boot;
+	bc->entry.release = bootchooser_release;
+	bc->entry.title = xstrdup("bootchooser");
+	bc->entry.description = xstrdup("bootchooser");
+
+	bootentries_add_entry(entries, &bc->entry);
+
+	return 1;
+}
+
+static const char * const reset_attempts_names[] = {
+	[RESET_ATTEMPTS_POWER_ON] = "power-on",
+	[RESET_ATTEMPTS_ALL_ZERO] = "all-zero",
+};
+
+static const char * const reset_priorities_names[] = {
+	[RESET_PRIORITIES_ALL_ZERO] = "all-zero",
+};
+
+static int bootchooser_init(void)
+{
+	state_prefix = xstrdup("");
+	available_targets = xstrdup("");
+
+	globalvar_add_simple_bool("bootchooser.disable_on_zero_attempts", &disable_on_zero_attempts);
+	globalvar_add_simple_bool("bootchooser.retry", &retry);
+	globalvar_add_simple_string("bootchooser.targets", &available_targets);
+	globalvar_add_simple_string("bootchooser.state_prefix", &state_prefix);
+	globalvar_add_simple_int("bootchooser.default_attempts", &global_default_attempts, "%u");
+	globalvar_add_simple_int("bootchooser.default_priority", &global_default_priority, "%u");
+	globalvar_add_simple_bitmask("bootchooser.reset_attempts", &reset_attempts,
+				  reset_attempts_names, ARRAY_SIZE(reset_attempts_names));
+	globalvar_add_simple_bitmask("bootchooser.reset_priorities", &reset_priorities,
+				  reset_priorities_names, ARRAY_SIZE(reset_priorities_names));
+	return 0;
+}
+device_initcall(bootchooser_init);
+
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_disable_on_zero_attempts,
+		       global.bootchooser.disable_on_zero_attempts,
+		       "bootchooser: Disable target when remaining attempts counter reaches 0");
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_retry,
+		       global.bootchooser.retry,
+		       "bootchooser: Try again when booting a target fails");
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_targets,
+		       global.bootchooser.targets,
+		       "bootchooser: Space separated list of target names");
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_default_attempts,
+		       global.bootchooser.default_attempts,
+		       "bootchooser: Default number of attempts for a target");
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_default_priority,
+		       global.bootchooser.default_priority,
+		       "bootchooser: Default priority for a target");
+BAREBOX_MAGICVAR_NAMED(global_bootchooser_state_prefix,
+		       global.bootchooser.state_prefix,
+		       "bootchooser: state name prefix, empty for nv backend");
diff --git a/include/bootchooser.h b/include/bootchooser.h
new file mode 100644
index 0000000..c948247
--- /dev/null
+++ b/include/bootchooser.h
@@ -0,0 +1,37 @@
+#ifndef __BOOTCHOOSER_H
+#define __BOOTCHOOSER_H
+
+#include <of.h>
+#include <boot.h>
+
+struct bootchooser;
+struct bootchooser_target;
+
+struct bootchooser *bootchooser_get(void);
+int bootchooser_save(struct bootchooser *bootchooser);
+int bootchooser_put(struct bootchooser *bootchooser);
+
+void bootchooser_info(struct bootchooser *bootchooser);
+
+struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
+const char *bootchooser_target_name(struct bootchooser_target *target);
+struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootchooser,
+						      const char *name);
+void bootchooser_target_force_boot(struct bootchooser_target *target);
+
+int bootchooser_create_bootentry(struct bootentries *entries);
+
+int bootchooser_target_set_attempts(struct bootchooser_target *target, int attempts);
+int bootchooser_target_set_priority(struct bootchooser_target *target, int priority);
+
+void bootchooser_last_boot_successful(void);
+
+struct bootchooser_target *bootchooser_target_first(struct bootchooser *bootchooser);
+struct bootchooser_target *bootchooser_target_next(struct bootchooser *bootchooser,
+					       struct bootchooser_target *cur);
+
+#define bootchooser_for_each_target(bootchooser, target) \
+	for (target = bootchooser_target_first(bootchooser); target; \
+	     target = bootchooser_target_next(bootchooser, target))
+
+#endif /* __BOOTCHOOSER_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
