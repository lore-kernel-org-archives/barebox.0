Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAR-0000ah-3M
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:08 +0200
Message-Id: <20200617081126.5683-2-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/19] Introduce slices
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

slices, the barebox idea of locking

barebox has pollers which execute code in the background whenever one of the
delay functions (udelay, mdelay, ...) or is_timeout() are called. This
introduces resource problems when some device triggers a poller by calling
a delay function and then the poller code calls into the same device again.

As an example consider a I2C GPIO expander which drives a LED which shall
be used as a heartbeat LED:

poller -> LED on/off -> GPIO high/low -> I2C transfer

The I2C controller has a timeout loop using is_timeout() and thus can trigger
a poller run. With this the following can happen during an unrelated I2C
transfer:

I2C transfer -> is_timeout() -> poller -> LED on/off -> GPIO high/low -> I2C transfer

We end up with issuing an I2C transfer during another I2C transfer and
things go downhill.

Due to the lack of interrupts we can't do real locking in barebox. We use
a mechanism called slices instead. A slice describes a resource to which
other slices can be attached. Whenever a slice is needed it must be acquired.
Acquiring a slice never fails, it just increases the acquired counter of
the slice and its dependent slices. when a slice shall be used inside a
poller it must first be tested if the slice is already in use. If it is,
we can't do the operation on the slice now and must return and hope that
we have more luck in the next poller call.

slices can be attached other slices as dependencies. In the example above
LED driver would add a dependency to the GPIO controller and the GPIO driver
would add a dependency to the I2C bus:

GPIO driver probe:

slice_add(&gpio->slice, i2c_device_slice(i2cdev));

LED driver probe:

slice_add(&led->slice, gpio_slice(gpio));

The GPIO code would call slice_acquire(&gpio->slice) before doing any
operation on the GPIO chip providing this GPIO, likewise the I2C core
would call slice_acquire(&i2cbus->slice) before doing an operation on
this I2C bus.

The heartbeat poller code would call slice_acquired(led_slice(led)) and
only continue when the slice is not acquired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |   8 ++
 common/Makefile  |   1 +
 common/slice.c   | 303 +++++++++++++++++++++++++++++++++++++++++++++++
 include/slice.h  |  31 +++++
 4 files changed, 343 insertions(+)
 create mode 100644 common/slice.c
 create mode 100644 include/slice.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 3789f33c3b..608643fceb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -253,6 +253,14 @@ config CMD_POLLER
 	  is_timeout() or one of the various delay functions. The poller command prints
 	  informations about registered pollers.
 
+config CMD_SLICE
+	tristate
+	prompt "slice"
+	help
+	  slices are a way to protect resources from being accessed by pollers. The slice
+	  command can be used to print informations about slices and also to manipulate
+	  them on the command line for debugging purposes.
+
 # end Information commands
 endmenu
 
diff --git a/common/Makefile b/common/Makefile
index 53859d8d14..141109b23a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -11,6 +11,7 @@ obj-y				+= bootsource.o
 obj-$(CONFIG_ELF)		+= elf.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
+obj-y				+= slice.o
 obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-y				+= version.o
diff --git a/common/slice.c b/common/slice.c
new file mode 100644
index 0000000000..085d67604f
--- /dev/null
+++ b/common/slice.c
@@ -0,0 +1,303 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt) "slice: " fmt
+
+#include <common.h>
+#include <slice.h>
+
+/*
+ * slices, the barebox idea of locking
+ *
+ * barebox has pollers which execute code in the background whenever one of the
+ * delay functions (udelay, mdelay, ...) or is_timeout() are called. This
+ * introduces resource problems when some device triggers a poller by calling
+ * a delay function and then the poller code calls into the same device again.
+ *
+ * As an example consider a I2C GPIO expander which drives a LED which shall
+ * be used as a heartbeat LED:
+ *
+ * poller -> LED on/off -> GPIO high/low -> I2C transfer
+ *
+ * The I2C controller has a timeout loop using is_timeout() and thus can trigger
+ * a poller run. With this the following can happen during an unrelated I2C
+ * transfer:
+ *
+ * I2C transfer -> is_timeout() -> poller -> LED on/off -> GPIO high/low -> I2C transfer
+ *
+ * We end up with issuing an I2C transfer during another I2C transfer and
+ * things go downhill.
+ *
+ * Due to the lack of interrupts we can't do real locking in barebox. We use
+ * a mechanism called slices instead. A slice describes a resource to which
+ * other slices can be attached. Whenever a slice is needed it must be acquired.
+ * Acquiring a slice never fails, it just increases the acquired counter of
+ * the slice and its dependent slices. when a slice shall be used inside a
+ * poller it must first be tested if the slice is already in use. If it is,
+ * we can't do the operation on the slice now and must return and hope that
+ * we have more luck in the next poller call.
+ *
+ * slices can be attached other slices as dependencies. In the example above
+ * LED driver would add a dependency to the GPIO controller and the GPIO driver
+ * would add a dependency to the I2C bus:
+ *
+ * GPIO driver probe:
+ *
+ * slice_depends_on(&gpio->slice, i2c_device_slice(i2cdev));
+ *
+ * LED driver probe:
+ *
+ * slice_depends_on(&led->slice, gpio_slice(gpio));
+ *
+ * The GPIO code would call slice_acquire(&gpio->slice) before doing any
+ * operation on the GPIO chip providing this GPIO, likewise the I2C core
+ * would call slice_acquire(&i2cbus->slice) before doing an operation on
+ * this I2C bus.
+ *
+ * The heartbeat poller code would call slice_acquired(led_slice(led)) and
+ * only continue when the slice is not acquired.
+ */
+
+/*
+ * slices are not required to have a device and thus a name, but it really
+ * helps debugging when it has one.
+ */
+static const char *slice_name(struct slice *slice)
+{
+	return slice->name;
+}
+
+static void __slice_acquire(struct slice *slice, int add)
+{
+	slice->acquired += add;
+
+	if (slice->acquired < 0) {
+		pr_err("Slice %s acquired count drops below zero\n",
+			slice_name(slice));
+		dump_stack();
+		slice->acquired = 0;
+		return;
+	}
+}
+
+/**
+ * slice_acquire: acquire a slice
+ * @slice: The slice to acquire
+ *
+ * This acquires a slice and its dependencies
+ */
+void slice_acquire(struct slice *slice)
+{
+	__slice_acquire(slice, 1);
+}
+
+/**
+ * slice_release: release a slice
+ * @slice: The slice to release
+ *
+ * This releases a slice and its dependencies
+ */
+void slice_release(struct slice *slice)
+{
+	__slice_acquire(slice, -1);
+}
+
+/**
+ * slice_acquired: test if a slice is acquired
+ * @slice: The slice to test
+ *
+ * This tests if a slice is acquired. Returns true if it is, false otherwise
+ */
+bool slice_acquired(struct slice *slice)
+{
+	struct slice_entry *se;
+	bool ret = false;
+
+	if (slice->acquired > 0)
+		return true;
+
+	if (slice->acquired < 0) {
+		pr_err("Recursive dependency detected in slice %s\n",
+		       slice_name(slice));
+		panic("Cannot continue");
+	}
+
+	slice->acquired = -1;
+
+	list_for_each_entry(se, &slice->deps, list)
+		if (slice_acquired(se->slice)) {
+			ret = true;
+			break;
+		}
+
+	slice->acquired = 0;
+
+	return ret;
+}
+
+static void __slice_debug_acquired(struct slice *slice, int level)
+{
+	struct slice_entry *se;
+
+	pr_debug("%*s%s: %d\n", level * 4, "",
+		 slice_name(slice),
+		 slice->acquired);
+
+	list_for_each_entry(se, &slice->deps, list)
+		__slice_debug_acquired(se->slice, level + 1);
+}
+
+/**
+ * slice_debug_acquired: print the acquired state of a slice
+ *
+ * @slice: The slice to print
+ *
+ * This prints the acquired state of a slice and its dependencies.
+ */
+void slice_debug_acquired(struct slice *slice)
+{
+	if (!slice_acquired(slice))
+		return;
+
+	__slice_debug_acquired(slice, 0);
+}
+
+/**
+ * slice_depends_on: Add a dependency to a slice
+ *
+ * @slice: The slice to add the dependency to
+ * @dep:   The slice @slice depends on
+ *
+ * This makes @slice dependent on @dep. In other words, acquiring @slice
+ * will lead to also acquiring @dep.
+ */
+void slice_depends_on(struct slice *slice, struct slice *dep)
+{
+	struct slice_entry *se = xzalloc(sizeof(*se));
+
+	pr_debug("Adding dependency %s (%d) to slice %s (%d)\n",
+		 slice_name(dep), dep->acquired,
+		 slice_name(slice), slice->acquired);
+
+	se->slice = dep;
+
+	list_add_tail(&se->list, &slice->deps);
+}
+
+static LIST_HEAD(slices);
+
+/**
+ * slice_init - initialize a slice before usage
+ * @slice: The slice to initialize
+ * @name:  The name of the slice
+ *
+ * This initializes a slice before usage. @name should be a meaningful name, when
+ * a device context is available to the caller it is recommended to pass its
+ * dev_name() as name argument.
+ */
+void slice_init(struct slice *slice, const char *name)
+{
+	INIT_LIST_HEAD(&slice->deps);
+	slice->name = xstrdup(name);
+	list_add_tail(&slice->list, &slices);
+}
+
+/**
+ * slice_exit: Remove a slice
+ * @slice: The slice to remove the dependency from
+ */
+void slice_exit(struct slice *slice)
+{
+	struct slice *s;
+	struct slice_entry *se, *tmp;
+
+	list_del(&slice->list);
+
+	/* remove our dependencies */
+	list_for_each_entry_safe(se, tmp, &slice->deps, list) {
+		list_del(&se->list);
+		free(se);
+	}
+
+	/* remove this slice from other slices dependencies */
+	list_for_each_entry(s, &slices, list) {
+		list_for_each_entry_safe(se, tmp, &s->deps, list) {
+			if (se->slice == slice) {
+				list_del(&se->list);
+				free(se);
+			}
+		}
+	}
+
+	free(slice->name);
+}
+
+#if defined CONFIG_CMD_SLICE
+
+#include <command.h>
+#include <getopt.h>
+
+static void slice_info(void)
+{
+	struct slice *slice;
+	struct slice_entry *se;
+
+	list_for_each_entry(slice, &slices, list) {
+		printf("slice %s: acquired=%d\n",
+		       slice_name(slice), slice->acquired);
+		list_for_each_entry(se, &slice->deps, list)
+			printf("    dep: %s\n", slice_name(se->slice));
+	}
+}
+
+static int __slice_acquire_name(const char *name, int add)
+{
+	struct slice *slice;
+
+	list_for_each_entry(slice, &slices, list) {
+		if (!strcmp(slice->name, name)) {
+			__slice_acquire(slice, add);
+			return 0;
+		}
+	}
+
+	printf("No such slice: %s\n", name);
+
+	return 1;
+}
+
+BAREBOX_CMD_HELP_START(slice)
+BAREBOX_CMD_HELP_TEXT("slice debugging command")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-i", "Print information about slices")
+BAREBOX_CMD_HELP_OPT ("-a <devname>", "acquire a slice")
+BAREBOX_CMD_HELP_OPT ("-r <devname>", "release a slice")
+BAREBOX_CMD_HELP_END
+
+static int do_slice(int argc, char *argv[])
+{
+	int opt;
+
+	while ((opt = getopt(argc, argv, "a:r:i")) > 0) {
+		switch (opt) {
+		case 'a':
+			return __slice_acquire_name(optarg, 1);
+		case 'r':
+			return __slice_acquire_name(optarg, -1);
+		case 'i':
+			slice_info();
+			return 0;
+		}
+	}
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_START(slice)
+	.cmd = do_slice,
+	BAREBOX_CMD_DESC("debug slices")
+	BAREBOX_CMD_OPTS("[-ari]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_slice_help)
+BAREBOX_CMD_END
+#endif
diff --git a/include/slice.h b/include/slice.h
new file mode 100644
index 0000000000..5538fc434a
--- /dev/null
+++ b/include/slice.h
@@ -0,0 +1,31 @@
+#ifndef __SLICE_H
+#define __SLICE_H
+
+enum slice_action {
+	SLICE_ACQUIRE = 1,
+	SLICE_RELEASE = -1,
+	SLICE_TEST = 0,
+};
+
+struct slice {
+	int acquired;
+	struct list_head deps;
+	char *name;
+	struct list_head list;
+};
+
+struct slice_entry {
+	struct slice *slice;
+	struct list_head list;
+};
+
+void slice_acquire(struct slice *slice);
+void slice_release(struct slice *slice);
+bool slice_acquired(struct slice *slice);
+void slice_depends_on(struct slice *slice, struct slice *dep);
+void slice_init(struct slice *slice, const char *name);
+void slice_exit(struct slice *slice);
+
+void slice_debug_acquired(struct slice *slice);
+
+#endif /* __SLICE_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
