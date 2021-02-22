Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IQ-0005L0-MF
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:23 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:06:01 +0100
Message-Id: <20210222070605.589180-6-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 5/8] serial: add basic VirtIO console driver
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

With this driver enabled, -device virtio-serial-device can now be passed
to Qemu for barebox to detect a VirtIO console device. If barebox is
passed as argument to the Qemu -kernel option, no device tree changes are
necessary.

Example:

  $ qemu-system-arm -m 256M -M virt -nographic             \
  	-kernel build/images/barebox-dt-2nd.img            \
  	-device virtio-serial-device                       \
  	-chardev socket,path=/tmp/foo,server,nowait,id=foo \
  	-device virtconsole,chardev=foo,name=console.foo

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/serial/Kconfig              |   8 ++
 drivers/serial/Makefile             |   1 +
 drivers/serial/virtio_console.c     | 166 ++++++++++++++++++++++++++++
 include/uapi/linux/virtio_console.h |  78 +++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 drivers/serial/virtio_console.c
 create mode 100644 include/uapi/linux/virtio_console.h

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 5c6f0e88e398..09434c1ba86c 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -156,4 +156,12 @@ config DRIVER_SERIAL_LPUART
 	default y
 	bool "LPUART serial driver"
 
+config VIRTIO_CONSOLE
+	tristate "Virtio console"
+	select VIRTIO
+	help
+	  Virtio console for use with hypervisors.
+
+	  Also serves as a general-purpose serial device for data
+	  transfer between the guest and host.
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 8a2abbbe45cf..7ff41cd5c744 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -22,3 +22,4 @@ obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
 obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
+obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
diff --git a/drivers/serial/virtio_console.c b/drivers/serial/virtio_console.c
new file mode 100644
index 000000000000..a1331035d9ef
--- /dev/null
+++ b/drivers/serial/virtio_console.c
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2006, 2007, 2009 Rusty Russell, IBM Corporation
+ * Copyright (C) 2009, 2010, 2011 Red Hat, Inc.
+ * Copyright (C) 2009, 2010, 2011 Amit Shah <amit.shah@redhat.com>
+ * Copyright (C) 2021 Ahmad Fatoum
+ *
+ * This ridiculously simple implementation does a DMA transfer for
+ * every single character. On the plus side, we neither need to
+ * buffer RX or to wade through TX to turn LFs to CRLFs.
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/list.h>
+#include <malloc.h>
+#include <console.h>
+#include <xfuncs.h>
+#include <linux/spinlock.h>
+#include <linux/virtio.h>
+#include <linux/virtio_ring.h>
+#include <linux/virtio_console.h>
+
+struct virtio_console {
+	struct console_device cdev;
+	struct virtqueue *in_vq, *out_vq;
+	char inbuf[1];
+};
+
+static bool have_one;
+
+/*
+ * The put_chars() callback is pretty straightforward.
+ *
+ * We turn the characters into a scatter-gather list, add it to the
+ * output queue and then kick the Host.  Then we sit here waiting for
+ * it to finish: inefficient in theory, but in practice
+ * implementations will do it immediately (lguest's Launcher does).
+ */
+static void put_chars(struct virtio_console *virtcons, const char *buf, int count)
+{
+	struct virtqueue *out_vq = virtcons->out_vq;
+	unsigned int len;
+	struct virtio_sg *sgs[1] = {
+		&(struct virtio_sg) { .addr = (void *)buf, .length = count }
+	};
+
+	/*
+	 * add_buf wants a token to identify this buffer: we hand it
+	 * any non-NULL pointer, since there's only ever one buffer.
+	 */
+	if (virtqueue_add(out_vq, sgs, 1, 0) >= 0) {
+		/* Tell Host to go! */
+		virtqueue_kick(out_vq);
+		/* Chill out until it's done with the buffer. */
+		while (!virtqueue_get_buf(out_vq, &len))
+			cpu_relax();
+	}
+}
+
+static void virtcons_putc(struct console_device *cdev, char c)
+{
+	struct virtio_console *virtcons = container_of(cdev, struct virtio_console, cdev);
+
+	return put_chars(virtcons, &c, 1);
+}
+
+/*
+ * Create a scatter-gather list representing our input buffer and put
+ * it in the queue.
+ */
+static void add_inbuf(struct virtio_console *virtcons)
+{
+	struct virtio_sg *sgs[1] = { &(struct virtio_sg) {
+		.addr = virtcons->inbuf, .length = sizeof(virtcons->inbuf) }
+	};
+
+	/* We should always be able to add one buffer to an empty queue. */
+	if (virtqueue_add(virtcons->in_vq, sgs, 0, 1) < 0)
+		BUG();
+	virtqueue_kick(virtcons->in_vq);
+}
+
+static int virtcons_tstc(struct console_device *cdev)
+{
+	struct virtio_console *virtcons = container_of(cdev, struct virtio_console, cdev);
+
+	return virtqueue_poll(virtcons->in_vq, virtcons->in_vq->last_used_idx);
+}
+
+static int virtcons_getc(struct console_device *cdev)
+{
+	struct virtio_console *virtcons = container_of(cdev, struct virtio_console, cdev);
+	char *in;
+	int ch;
+
+	in = virtqueue_get_buf(virtcons->in_vq, NULL);
+	if (!in)
+		BUG();
+
+	ch = *in;
+
+	add_inbuf(virtcons);
+
+	return ch;
+}
+
+static int virtcons_probe(struct virtio_device *vdev)
+{
+	struct virtqueue *vqs[2];
+	struct virtio_console *virtcons;
+	int err;
+
+	if (have_one) {
+		/* Neither multiport consoles (one virtio_device for multiple consoles)
+		 * nor multiple consoles (one virtio_device per each console
+		 * is supported. I would've expected:
+		 *   -chardev socket,path=/tmp/bar,server,nowait,id=bar \
+		 *   -device virtconsole,chardev=bar,name=console.bar \
+		 *   -device virtio-serial-device \
+		 *   -chardev socket,path=/tmp/baz,server,nowait,id=baz \
+		 *   -device virtconsole,chardev=baz,name=console.baz \
+		 * to just work, but it doesn't
+		 */
+		dev_warn(&vdev->dev,
+			 "Multiple virtio-console devices not supported yet\n");
+		return -EEXIST;
+	}
+
+	/* Find the queues. */
+	err = virtio_find_vqs(vdev, 2, vqs);
+	if (err)
+		return err;
+
+	virtcons = xzalloc(sizeof(*virtcons));
+
+	virtcons->in_vq = vqs[0];
+	virtcons->out_vq = vqs[1];
+
+	/* Register the input buffer the first time. */
+	add_inbuf(virtcons);
+
+	virtcons->cdev.dev = &vdev->dev;
+	virtcons->cdev.tstc = virtcons_tstc;
+	virtcons->cdev.getc = virtcons_getc;
+	virtcons->cdev.putc = virtcons_putc;
+
+	have_one = true;
+
+	return console_register(&virtcons->cdev);
+}
+
+static struct virtio_device_id id_table[] = {
+	{ VIRTIO_ID_CONSOLE, VIRTIO_DEV_ANY_ID },
+	{ 0 },
+};
+
+static struct virtio_driver virtio_console = {
+	.driver.name =	"virtio_console",
+	.id_table =	id_table,
+	.probe =	virtcons_probe,
+};
+device_virtio_driver(virtio_console);
+
+MODULE_DESCRIPTION("Virtio console driver");
+MODULE_LICENSE("GPL");
diff --git a/include/uapi/linux/virtio_console.h b/include/uapi/linux/virtio_console.h
new file mode 100644
index 000000000000..7e6ec2ff0560
--- /dev/null
+++ b/include/uapi/linux/virtio_console.h
@@ -0,0 +1,78 @@
+/*
+ * This header, excluding the #ifdef __KERNEL__ part, is BSD licensed so
+ * anyone can use the definitions to implement compatible drivers/servers:
+ *
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ *
+ * Copyright (C) Red Hat, Inc., 2009, 2010, 2011
+ * Copyright (C) Amit Shah <amit.shah@redhat.com>, 2009, 2010, 2011
+ */
+#ifndef _UAPI_LINUX_VIRTIO_CONSOLE_H
+#define _UAPI_LINUX_VIRTIO_CONSOLE_H
+#include <linux/types.h>
+#include <linux/virtio_types.h>
+#include <linux/virtio_ids.h>
+#include <linux/virtio_config.h>
+
+/* Feature bits */
+#define VIRTIO_CONSOLE_F_SIZE	0	/* Does host provide console size? */
+#define VIRTIO_CONSOLE_F_MULTIPORT 1	/* Does host provide multiple ports? */
+#define VIRTIO_CONSOLE_F_EMERG_WRITE 2 /* Does host support emergency write? */
+
+#define VIRTIO_CONSOLE_BAD_ID		(~(__u32)0)
+
+struct virtio_console_config {
+	/* colums of the screens */
+	__virtio16 cols;
+	/* rows of the screens */
+	__virtio16 rows;
+	/* max. number of ports this device can hold */
+	__virtio32 max_nr_ports;
+	/* emergency write register */
+	__virtio32 emerg_wr;
+} __attribute__((packed));
+
+/*
+ * A message that's passed between the Host and the Guest for a
+ * particular port.
+ */
+struct virtio_console_control {
+	__virtio32 id;		/* Port number */
+	__virtio16 event;	/* The kind of control event (see below) */
+	__virtio16 value;	/* Extra information for the key */
+};
+
+/* Some events for control messages */
+#define VIRTIO_CONSOLE_DEVICE_READY	0
+#define VIRTIO_CONSOLE_PORT_ADD		1
+#define VIRTIO_CONSOLE_PORT_REMOVE	2
+#define VIRTIO_CONSOLE_PORT_READY	3
+#define VIRTIO_CONSOLE_CONSOLE_PORT	4
+#define VIRTIO_CONSOLE_RESIZE		5
+#define VIRTIO_CONSOLE_PORT_OPEN	6
+#define VIRTIO_CONSOLE_PORT_NAME	7
+
+
+#endif /* _UAPI_LINUX_VIRTIO_CONSOLE_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
