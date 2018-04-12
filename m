Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jqr-0005sK-Ca
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:33:55 +0000
Received: by mail-pf0-x244.google.com with SMTP id y66so4871800pfi.7
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:33:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:33:14 -0700
Message-Id: <20180412213317.13199-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180412213317.13199-1-andrew.smirnov@gmail.com>
References: <20180412213317.13199-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/5] console: Add simplified 'serdev' framework from Linux
 kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port 'serdev' UART-slave deivce framework found in recent Linux
kernels (post 4.13) in order to be able to port 'serdev' slave drivers
from Linux.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/Makefile        |  1 +
 common/console.c       | 24 ++++++++++++--
 common/serdev.c        | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/serial/Kconfig |  6 ++++
 include/console.h      | 27 +++++++++++++++
 include/serdev.h       | 36 ++++++++++++++++++++
 6 files changed, 180 insertions(+), 3 deletions(-)
 create mode 100644 common/serdev.c
 create mode 100644 include/serdev.h

diff --git a/common/Makefile b/common/Makefile
index 4e9681f20..1ff7d2370 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_FIRMWARE)		+= firmware.o
 obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
+obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 
 ifdef CONFIG_PASSWORD
 
diff --git a/common/console.c b/common/console.c
index f4c799fa5..ab3d4d397 100644
--- a/common/console.c
+++ b/common/console.c
@@ -305,10 +305,11 @@ static ssize_t fops_write(struct cdev* dev, const void* buf, size_t count,
 
 int console_register(struct console_device *newcdev)
 {
+	struct device_node *serdev_node = console_is_serdev_node(newcdev);
 	struct device_d *dev = &newcdev->class_dev;
 	int activate = 0, ret;
 
-	if (initialized == CONSOLE_UNINITIALIZED)
+	if (!serdev_node && initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
 
 	if (newcdev->devname) {
@@ -323,6 +324,17 @@ int console_register(struct console_device *newcdev)
 		dev->parent = newcdev->dev;
 	platform_device_register(dev);
 
+	newcdev->open_count = 0;
+
+	/*
+	 * If our console device is a serdev, we skip the creation of
+	 * corresponding entry in /dev as well as registration in
+	 * console_list and just go straight to populating child
+	 * devices.
+	 */
+	if (serdev_node)
+		return of_platform_populate(serdev_node, NULL, dev);
+
 	if (newcdev->setbrg) {
 		ret = newcdev->setbrg(newcdev, CONFIG_BAUDRATE);
 		if (ret)
@@ -335,8 +347,6 @@ int console_register(struct console_device *newcdev)
 	if (newcdev->putc && !newcdev->puts)
 		newcdev->puts = __console_puts;
 
-	newcdev->open_count = 0;
-
 	dev_add_param_string(dev, "active", console_active_set, console_active_get,
 			     &newcdev->active_string, newcdev);
 
@@ -386,6 +396,14 @@ int console_unregister(struct console_device *cdev)
 	struct device_d *dev = &cdev->class_dev;
 	int status;
 
+	/*
+	 * We don't do any sophisticated serdev device de-population
+	 * and instead claim this console busy, preventing its
+	 * de-initialization, 'till the very end of our execution.
+	 */
+	if (console_is_serdev_node(cdev))
+		return -EBUSY;
+
 	devfs_remove(&cdev->devfs);
 
 	list_del(&cdev->list);
diff --git a/common/serdev.c b/common/serdev.c
new file mode 100644
index 000000000..32743738e
--- /dev/null
+++ b/common/serdev.c
@@ -0,0 +1,89 @@
+
+#include <common.h>
+#include <serdev.h>
+
+static void serdev_device_poller(void *context)
+{
+	struct serdev_device *serdev = context;
+	struct console_device *cdev = to_console_device(serdev);
+	unsigned char *buf = serdev->buf;
+	int ret, len;
+
+	/*
+	 * Since this callback is a part of poller infrastructure we
+	 * want to use _non_interruptible version of the function
+	 * below to prevent recursion from happening (regular
+	 * console_drain will call is_timeout, which might end up
+	 * calling this function again).
+	 */
+	len = console_drain_non_interruptible(cdev, serdev->fifo, buf,
+					      PAGE_SIZE,
+					      serdev->polling_window);
+	while (len > 0) {
+		ret = serdev->receive_buf(serdev, buf, len);
+		len -= ret;
+		buf += ret;
+	}
+
+	if (serdev->polling_interval) {
+		/*
+		 * Re-schedule ourselves in 'serdev->polling_interval'
+		 * nanoseconds
+		 */
+		poller_call_async(&serdev->poller,
+				  serdev->polling_interval,
+				  serdev_device_poller,
+				  serdev);
+	}
+}
+
+int serdev_device_open(struct serdev_device *serdev)
+{
+	struct console_device *cdev = to_console_device(serdev);
+	int ret;
+
+	if (!cdev->putc || !cdev->getc)
+		return -EINVAL;
+
+	if (!serdev->polling_window)
+		return -EINVAL;
+
+	serdev->buf = xzalloc(PAGE_SIZE);
+	serdev->fifo = kfifo_alloc(PAGE_SIZE);
+	if (!serdev->fifo)
+		return -ENOMEM;
+
+	ret = poller_async_register(&serdev->poller);
+	if (ret)
+		return ret;
+
+	return console_open(cdev);
+}
+
+unsigned int serdev_device_set_baudrate(struct serdev_device *serdev,
+					unsigned int speed)
+{
+	struct console_device *cdev = to_console_device(serdev);
+
+	if (console_set_baudrate(cdev, speed) < 0)
+		return 0;
+
+	return console_get_baudrate(cdev);
+}
+
+int serdev_device_write(struct serdev_device *serdev, const unsigned char *buf,
+			size_t count, unsigned long timeout)
+{
+	struct console_device *cdev = to_console_device(serdev);
+
+	while (count--)
+		cdev->putc(cdev, *buf++);
+	/*
+	 * Poll Rx once right after we just send some data in case our
+	 * serdev device implements command/response type of a
+	 * protocol and we need to start draining input as soon as
+	 * possible.
+	 */
+	serdev_device_poller(serdev);
+	return 0;
+}
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index cfddc2ee9..8a56d39f7 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -1,6 +1,12 @@
 menu "serial drivers"
 	depends on !CONSOLE_NONE
 
+config SERIAL_DEV_BUS
+	bool "Serial device bus"
+	depends on CONSOLE_FULL
+	help
+	  Core support for devices connected via a serial port.
+
 config DRIVER_SERIAL_ARM_DCC
 	depends on ARM && !CPU_V8
 	bool "ARM Debug Communications Channel (DCC) serial driver"
diff --git a/include/console.h b/include/console.h
index 0f1fced93..6d3e6e123 100644
--- a/include/console.h
+++ b/include/console.h
@@ -23,6 +23,7 @@
 #include <param.h>
 #include <linux/list.h>
 #include <driver.h>
+#include <serdev.h>
 #include <clock.h>
 
 #define CONSOLE_STDIN           (1 << 0)
@@ -65,8 +66,34 @@ struct console_device {
 
 	struct cdev devfs;
 	struct cdev_operations fops;
+
+	struct serdev_device serdev;
 };
 
+static inline struct serdev_device *to_serdev_device(struct device_d *d)
+{
+	struct console_device *cdev =
+		container_of(d, struct console_device, class_dev);
+	return &cdev->serdev;
+}
+
+static inline struct console_device *
+to_console_device(struct serdev_device *serdev)
+{
+	return container_of(serdev, struct console_device, serdev);
+}
+
+static inline struct device_node *
+console_is_serdev_node(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	if (dev && dev->device_node &&
+	    of_get_child_count(dev->device_node))
+		return dev->device_node;
+
+	return NULL;
+}
+
 int console_register(struct console_device *cdev);
 int console_unregister(struct console_device *cdev);
 
diff --git a/include/serdev.h b/include/serdev.h
new file mode 100644
index 000000000..efc735fed
--- /dev/null
+++ b/include/serdev.h
@@ -0,0 +1,36 @@
+#ifndef _SERDEV_H_
+#define _SERDEV_H_
+
+#include <driver.h>
+#include <poller.h>
+#include <kfifo.h>
+
+/**
+ * struct serdev_device - Basic representation of an serdev device
+ *
+ * @dev:		Corresponding device
+ * @fifo:		Circular buffer used for console draining
+ * @buf:		Buffer used to pass Rx data to consumers
+ * @poller		Async poller used to poll this serdev
+ * @polling_interval:	Async poller periodicity
+ * @polling_window:	Duration of a single busy loop poll
+ * @receive_buf:	Function called with data received from device;
+ *			returns number of bytes accepted;
+ */
+struct serdev_device {
+	struct device_d *dev;
+	struct kfifo *fifo;
+	unsigned char *buf;
+	struct poller_async poller;
+	uint64_t polling_interval;
+	uint64_t polling_window;
+
+	int (*receive_buf)(struct serdev_device *, const unsigned char *,
+			   size_t);
+};
+
+int serdev_device_open(struct serdev_device *);
+unsigned int serdev_device_set_baudrate(struct serdev_device *, unsigned int);
+int serdev_device_write(struct serdev_device *, const unsigned char *,
+			size_t, unsigned long);
+#endif
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
