Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIja-0001Ls-Vq
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 19:34:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Mar 2020 20:33:59 +0100
Message-Id: <20200306193406.20531-2-s.hauer@pengutronix.de>
In-Reply-To: <20200306193406.20531-1-s.hauer@pengutronix.de>
References: <20200306193406.20531-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] Introduce slices
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

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
 common/Makefile |   1 +
 common/slice.c  | 316 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/slice.h |  31 +++++
 3 files changed, 348 insertions(+)
 create mode 100644 common/slice.c
 create mode 100644 include/slice.h

diff --git a/common/Makefile b/common/Makefile
index 84463b4d48..16f14db41c 100644
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
index 0000000000..2c3b46fbda
--- /dev/null
+++ b/common/slice.c
@@ -0,0 +1,316 @@
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
+ * slice_add(&gpio->slice, i2c_device_slice(i2cdev));
+ *
+ * LED driver probe:
+ *
+ * slice_add(&led->slice, gpio_slice(gpio));
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
+	return slice->dev ? dev_name(slice->dev) : "<unknown>";
+}
+
+static void __slice_acquire(struct slice *slice, int add)
+{
+	struct slice_entry *se;
+
+	slice->acquired += add;
+
+	if (slice->acquired < 0) {
+		pr_err("Slice %s acquired count drops below zero\n",
+			slice_name(slice));
+		dump_stack();
+		slice->acquired = 0;
+		return;
+	}
+
+	list_for_each_entry(se, &slice->deps, list)
+		__slice_acquire(se->slice, add);
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
+
+	if (slice->acquired)
+		return true;
+
+	list_for_each_entry(se, &slice->deps, list)
+		if (slice_acquired(se->slice))
+			return true;
+
+	return false;
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
+ * slice_add: Add a dependency to a slice
+ *
+ * @slice: The slice to add the dependency to
+ * @dep:   The slice @slice depends on
+ *
+ * This makes @slice dependent on @dep. In other words, acquiring @slice
+ * will lead to also acquiring @dep.
+ */
+void slice_add(struct slice *slice, struct slice *dep)
+{
+	struct slice_entry *se = xzalloc(sizeof(*se));
+
+	pr_debug("Adding dependency %s (%d) to slice %s (%d)\n",
+		 slice_name(dep), dep->acquired,
+		 slice_name(slice), slice->acquired);
+
+	se->slice = dep;
+
+	__slice_acquire(dep, slice->acquired);
+
+	list_add_tail(&se->list, &slice->deps);
+}
+
+static LIST_HEAD(slices);
+
+/**
+ * slice_del: Remove a dependency previously added with slice_add
+ * @slice: The slice to remove the dependency from
+ * @dep:   The slice @slice depended on
+ */
+void slice_del(struct slice *slice, struct slice *dep)
+{
+	struct slice_entry *se;
+
+	list_del(&slice->list);
+
+	list_for_each_entry(se, &slice->deps, list) {
+		if (se->slice == dep) {
+			list_del(&se->list);
+			free(se);
+			return;
+		}
+	}
+}
+
+/**
+ * slice_init - initialize a slice before usage
+ * @slice: The slice to initialize
+ * @dev:   a device as context pointer
+ *
+ * This initializes a slice before usage. Passing a nonzero @dev pointer
+ * is optional but strongly recommended to allow printing some context
+ * when dumping the dependencies.
+ */
+void slice_init(struct slice *slice, struct device_d *dev)
+{
+	INIT_LIST_HEAD(&slice->deps);
+	slice->dev = dev;
+	list_add_tail(&slice->list, &slices);
+}
+
+#ifdef DEBUG
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
+static int __dev_acquire(const char *devname, int add)
+{
+	struct device_d *dev;
+	struct slice *slice;
+
+	dev = get_device_by_name(optarg);
+	if (!dev) {
+		pr_err("No such device: %s\n", optarg);
+		return 1;
+	}
+
+	list_for_each_entry(slice, &slices, list) {
+		if (slice->dev == dev) {
+			__slice_acquire(slice, add);
+			return 0;
+		}
+	}
+
+	printf("No slice for %s\n", optarg);
+
+	return 1;
+}
+
+static void slice_time(void)
+{
+	uint64_t start = get_time_ns();
+	int i = 0;
+
+	/*
+	 * Not really slice related, but useful to know in this context:
+	 * How many times we can run the registered pollers in one second?
+	 *
+	 * A low number here may point to problems with pollers taking too
+	 * much time.
+	 */
+	while (!is_timeout(start, SECOND))
+		i++;
+
+	printf("%d poller calls in 1s\n", i);
+}
+
+BAREBOX_CMD_HELP_START(slice)
+BAREBOX_CMD_HELP_TEXT("slice debugging command")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-i", "Print information about slices")
+BAREBOX_CMD_HELP_OPT ("-a <devname>", "acquire a slice")
+BAREBOX_CMD_HELP_OPT ("-r <devname>", "release a slice")
+BAREBOX_CMD_HELP_OPT ("-t", "measure how many pollers we run in 1s")
+BAREBOX_CMD_HELP_END
+
+static int do_slice(int argc, char *argv[])
+{
+	int opt;
+
+	while ((opt = getopt(argc, argv, "a:r:it")) > 0) {
+		switch (opt) {
+		case 'a':
+			return __dev_acquire(optarg, 1);
+		case 'r':
+			return __dev_acquire(optarg, -1);
+		case 'i':
+			slice_info();
+			return 0;
+		case 't':
+			slice_time();
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
+        BAREBOX_CMD_OPTS("[-ari]")
+        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+        BAREBOX_CMD_HELP(cmd_slice_help)
+
+BAREBOX_CMD_END
+#endif
diff --git a/include/slice.h b/include/slice.h
new file mode 100644
index 0000000000..e8fdde17c4
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
+	struct device_d *dev;
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
+void slice_add(struct slice *slice, struct slice *dep);
+void slice_del(struct slice *slice, struct slice *dep);
+void slice_init(struct slice *slice, struct device_d *dev);
+
+void slice_debug_acquired(struct slice *slice);
+
+#endif /* __SLICE_H */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
