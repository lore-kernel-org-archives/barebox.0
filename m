Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKGSh-0005O3-Tu
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 22:33:45 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so1385046wey.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 15:33:39 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sat,  6 Oct 2012 00:33:08 +0200
Message-Id: <1349476393-25520-7-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 06/11] omap4: add support for booting an omap4 from usb.
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>


Signed-off-by: vj <vicencb@gmail.com>
---
 Documentation/oamp4_usb_booting.txt             |  27 ++
 arch/arm/mach-omap/Kconfig                      |   9 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
 arch/arm/mach-omap/omap4_generic.c              |  17 +
 arch/arm/mach-omap/omap4_rom_usb.c              | 186 +++++++++++
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   4 +
 scripts/omap4_usbboot.c                         | 412 ++++++++++++++++++++++++
 scripts/usb.h                                   |  61 ++++
 scripts/usb_linux.c                             | 397 +++++++++++++++++++++++
 11 files changed, 1257 insertions(+)
 create mode 100644 Documentation/oamp4_usb_booting.txt
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
 create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
 create mode 100644 scripts/omap4_usbboot.c
 create mode 100644 scripts/usb.h
 create mode 100644 scripts/usb_linux.c

diff --git a/Documentation/oamp4_usb_booting.txt b/Documentation/oamp4_usb_booting.txt
new file mode 100644
index 0000000..f0d45a2
--- /dev/null
+++ b/Documentation/oamp4_usb_booting.txt
@@ -0,0 +1,27 @@
+-------------- omap4_usb_booting --------------
+
+omap4 processors have support for booting from the usb port. To be able to fully
+use this feature you will need to enable the following:
+    OMAP4_USBBOOT
+        This CONFIG_ option adds the required infrastructure.
+    DRIVER_SERIAL_OMAP4_USBBOOT
+        This adds console support over the same usb port used for booting.
+    FS_OMAP4_USBBOOT
+        This adds filesystem support over the same usb port used for booting.
+
+To send the bootloader to the processor, execute the utility omap4_usbboot which
+can be found in the scripts subdirectory.
+omap4_usbboot takes two parameters:
+    the bootloader image
+    a directory name which will be the root for the guest system
+Once omap4_usbboot is running it will wait for enumeration of the omap4 cpu on
+the host usb subsystem. Then power on or reset the cpu with the correct sys_boot
+or SAR memory configuration.
+
+If everything works, barebox's first stage will boot and afterwards it will load
+the second stage found at "/barebox.bin".
+Barebox's second stage will still have access to the usb filesystem, so an
+initrd and a zImage can be loaded.
+
+Overall this procedure frees the developer of continously be changing the SD
+card or other boot media from host to target.
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index aa31633..b3dd6a4 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -82,6 +82,15 @@ config ARCH_TEXT_BASE
 	default 0x80e80000 if MACH_OMAP343xSDP
 	default 0x80e80000 if MACH_BEAGLE
 
+config OMAP4_USBBOOT
+	bool "enable booting from USB"
+	default n
+	depends on ARCH_OMAP4 && !MMU
+	help
+	  Say Y here if you want to be able to boot an OMAP4 cpu from USB.
+	  You need the utility program omap4_usbboot to boot from USB.
+	  Please read oamp4_usb_booting.txt for more information.
+
 config BOARDINFO
 	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
 	default "Texas Instrument's Beagle" if MACH_BEAGLE
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index f752bc7..17d189d 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -26,4 +26,5 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
+obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-y += gpio.o
diff --git a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
new file mode 100644
index 0000000..b7818df
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
@@ -0,0 +1,142 @@
+/*
+ * Copyright (C) 2010 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#ifndef _OMAP4_ROM_USB_H_
+#define _OMAP4_ROM_USB_H_
+
+/* public api */
+#define PUBLIC_API_BASE_4430		(0x28400)
+#define PUBLIC_API_BASE_4460		(0x30400)
+
+#define PUBLIC_GET_DRIVER_MEM_OFFSET (0x04)
+#define PUBLIC_GET_DRIVER_PER_OFFSET (0x08)
+#define PUBLIC_GET_DEVICE_MEM_OFFSET (0x80)
+#define PUBLIC_GET_DEVICE_PER_OFFSET (0x84)
+
+#define DEVICE_NULL	0x40
+#define DEVICE_UART1	0x41
+#define DEVICE_UART2	0x42
+#define DEVICE_UART3	0x43
+#define DEVICE_UART4	0x44
+#define DEVICE_USB	0x45
+#define DEVICE_USBEXT	0x46
+
+#define XFER_MODE_CPU 0
+#define XFER_MODE_DMA 1
+
+#define STATUS_OKAY		0
+#define STATUS_FAILED		1
+#define STATUS_TIMEOUT		2
+#define STATUS_BAD_PARAM	3
+#define STATUS_WAITING		4
+#define STATUS_NO_MEMORY	5
+#define STATUS_INVALID_PTR	6
+
+/* Memory ROM interface */
+struct read_desc {
+	u32 sector_start;
+	u32 sector_count;
+	void *destination;
+};
+
+struct mem_device {
+	u32 initialized;
+	u8 device_type;
+	u8 trials_count;
+	u32 xip_device;
+	u16 search_size;
+	u32 base_address;
+	u16 hs_toc_mask;
+	u16 gp_toc_mask;
+	void *device_data;
+	u16 *boot_options;
+};
+
+struct mem_driver {
+	int (*init)(struct mem_device *md);
+	int (*read)(struct mem_device *md, struct read_desc *rd);
+	int (*configure)(struct mem_device *md, void *config);
+};
+
+
+/* Peripheral ROM interface */
+struct per_handle {
+	void *set_to_null;
+	void (*callback)(struct per_handle *rh);
+	void *data;
+	u32 length;
+	u16 *options;
+	u32 xfer_mode;
+	u32 device_type;
+	u32 status;
+	u16 hs_toc_mask;
+	u16 gp_toc_mask;
+	u32 config_timeout;
+};
+
+struct per_driver {
+	int (*init)(struct per_handle *rh);
+	int (*read)(struct per_handle *rh);
+	int (*write)(struct per_handle *rh);
+	int (*close)(struct per_handle *rh);
+	int (*config)(struct per_handle *rh, void *x);
+};
+
+#define USB_SETCONFIGDESC_ATTRIBUTES      (0)
+#define USB_SETCONFIGDESC_MAXPOWER        (1)
+#define USB_SETSUSPEND_CALLBACK           (2)
+struct per_usb_config {
+	u32 configid;
+	u32 value;
+};
+
+#define API(n) ((void *) (*((u32 *) (n))))
+/* ROM API End */
+
+struct omap4_usbboot {
+	struct per_handle dread;
+	struct per_handle dwrite;
+	struct per_driver *io;
+};
+
+int omap4_usbboot_open(void);
+void omap4_usbboot_close(void);
+
+void omap4_usbboot_queue_read(void *data, unsigned len);
+int omap4_usbboot_wait_read(void);
+int omap4_usbboot_is_read_waiting(void);
+int omap4_usbboot_is_read_ok(void);
+
+void omap4_usbboot_queue_write(void *data, unsigned len);
+int omap4_usbboot_wait_write(void);
+
+int omap4_usbboot_read(void *data, unsigned len);
+int omap4_usbboot_write(void *data, unsigned len);
+void omap4_usbboot_puts(const char *s);
+
+#endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 6562268..0933860 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -8,6 +8,7 @@
 #include <mach/xload.h>
 #include <mach/gpmc.h>
 #include <mach/gpio.h>
+#include <mach/omap4_rom_usb.h>
 
 /*
  *  The following several lines are taken from U-Boot to support
@@ -457,6 +458,21 @@ static int watchdog_init(void)
 }
 late_initcall(watchdog_init);
 
+#ifdef CONFIG_OMAP4_USBBOOT
+static int omap4_usbboot_init(void)
+{
+	omap4_usbboot_open();
+	omap4_usbboot_puts("USB communications initialized\n");
+	return 0;
+}
+core_initcall(omap4_usbboot_init);
+#else
+/*
+ * omap4 usbboot interfaces with the omap4 ROM to reuse the USB port
+ * used for booting.
+ * The ROM code uses interrupts for the transfers, so do not modify the
+ * interrupt vectors.
+ */
 static int omap_vector_init(void)
 {
 	__asm__ __volatile__ (
@@ -470,6 +486,7 @@ static int omap_vector_init(void)
 	return 0;
 }
 core_initcall(omap_vector_init);
+#endif
 
 #define OMAP4_TRACING_VECTOR3 0x4030d048
 
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
new file mode 100644
index 0000000..4257420
--- /dev/null
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -0,0 +1,186 @@
+/*
+ * This code is based on:
+ * git://github.com/swetland/omap4boot.git
+ */
+/*
+ * Copyright (C) 2010 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#include <common.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4_rom_usb.h>
+
+struct omap4_usbboot omap4_usbboot_pdata;
+
+int omap4_usbboot_open(void)
+{
+	int (*rom_get_per_driver)(struct per_driver **io, u32 device_type);
+	int (*rom_get_per_device)(struct per_handle **rh);
+	struct per_handle *boot;
+	int n;
+	u32 base;
+
+	if (omap4_revision() >= OMAP4460_ES1_0)
+		base = PUBLIC_API_BASE_4460;
+	else
+		base = PUBLIC_API_BASE_4430;
+
+	rom_get_per_driver = API(base + PUBLIC_GET_DRIVER_PER_OFFSET);
+	rom_get_per_device = API(base + PUBLIC_GET_DEVICE_PER_OFFSET);
+
+	n = rom_get_per_device(&boot);
+	if (n)
+		return n;
+
+	if ((boot->device_type != DEVICE_USB) &&
+	    (boot->device_type != DEVICE_USBEXT))
+		return -1;
+
+	memset(&omap4_usbboot_pdata, 0, sizeof(omap4_usbboot_pdata));
+	n = rom_get_per_driver(&omap4_usbboot_pdata.io, boot->device_type);
+	if (n)
+		return n;
+
+	omap4_usbboot_pdata.dread.status = -1;
+	omap4_usbboot_pdata.dread.xfer_mode = boot->xfer_mode;
+	omap4_usbboot_pdata.dread.options = boot->options;
+	omap4_usbboot_pdata.dread.device_type = boot->device_type;
+
+	omap4_usbboot_pdata.dwrite.status = -1;
+	omap4_usbboot_pdata.dwrite.xfer_mode = boot->xfer_mode;
+	omap4_usbboot_pdata.dwrite.options = boot->options;
+	omap4_usbboot_pdata.dwrite.device_type = boot->device_type;
+	__asm__ __volatile__ ("cpsie i\n");
+	return 0;
+}
+
+
+static void rom_read_callback(struct per_handle *rh)
+{
+	omap4_usbboot_pdata.dread.status = rh->status;
+	return;
+}
+
+void omap4_usbboot_queue_read(void *data, unsigned len)
+{
+	int n;
+	omap4_usbboot_pdata.dread.data = data;
+	omap4_usbboot_pdata.dread.length = len;
+	omap4_usbboot_pdata.dread.status = STATUS_WAITING;
+	omap4_usbboot_pdata.dread.xfer_mode = 1;
+	omap4_usbboot_pdata.dread.callback = rom_read_callback;
+	n = omap4_usbboot_pdata.io->read(&omap4_usbboot_pdata.dread);
+	if (n)
+		omap4_usbboot_pdata.dread.status = n;
+}
+
+int omap4_usbboot_wait_read(void)
+{
+	int ret;
+	while (omap4_usbboot_pdata.dread.status == STATUS_WAITING)
+		/* cpu_relax(); */
+		barrier();
+	ret = omap4_usbboot_pdata.dread.status;
+	omap4_usbboot_pdata.dread.status = -1;
+	return ret;
+}
+int omap4_usbboot_is_read_waiting(void)
+{
+	barrier();
+	return omap4_usbboot_pdata.dread.status == STATUS_WAITING;
+}
+int omap4_usbboot_is_read_ok(void)
+{
+	barrier();
+	return omap4_usbboot_pdata.dread.status == STATUS_OKAY;
+}
+
+static void rom_write_callback(struct per_handle *rh)
+{
+	omap4_usbboot_pdata.dwrite.status = rh->status;
+	return;
+}
+
+void omap4_usbboot_queue_write(void *data, unsigned len)
+{
+	int n;
+	omap4_usbboot_pdata.dwrite.data = data;
+	omap4_usbboot_pdata.dwrite.length = len;
+	omap4_usbboot_pdata.dwrite.status = STATUS_WAITING;
+	omap4_usbboot_pdata.dwrite.xfer_mode = 1;
+	omap4_usbboot_pdata.dwrite.callback = rom_write_callback;
+	n = omap4_usbboot_pdata.io->write(&omap4_usbboot_pdata.dwrite);
+	if (n)
+		omap4_usbboot_pdata.dwrite.status = n;
+}
+
+int omap4_usbboot_wait_write(void)
+{
+	int ret;
+	while (omap4_usbboot_pdata.dwrite.status == STATUS_WAITING)
+		/* cpu_relax(); */
+		barrier();
+	ret = omap4_usbboot_pdata.dwrite.status;
+	omap4_usbboot_pdata.dwrite.status = -1;
+	return ret;
+}
+
+#define USB_MAX_IO 65536
+int omap4_usbboot_read(void *data, unsigned len)
+{
+	unsigned xfer;
+	unsigned char *x = data;
+	int n;
+	while (len > 0) {
+		xfer = (len > USB_MAX_IO) ? USB_MAX_IO : len;
+		omap4_usbboot_queue_read(x, xfer);
+		n = omap4_usbboot_wait_read();
+		if (n)
+			return n;
+		x += xfer;
+		len -= xfer;
+	}
+	return 0;
+}
+
+int omap4_usbboot_write(void *data, unsigned len)
+{
+	omap4_usbboot_queue_write(data, len);
+	return omap4_usbboot_wait_write();
+}
+
+void omap4_usbboot_close(void)
+{
+	omap4_usbboot_pdata.io->close(&omap4_usbboot_pdata.dread);
+}
+
+void omap4_usbboot_puts(const char *s)
+{
+	u32 c;
+	while ((c = *s++))
+		omap4_usbboot_write(&c, 4);
+}
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3f1cbdb..1ca6603 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -6,3 +6,4 @@ mk-am35xx-spi-image
 mkimage
 mkublheader
 omap_signGP
+omap4_usbboot
diff --git a/scripts/Makefile b/scripts/Makefile
index 55ccdac..08b325c 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -13,6 +13,10 @@ hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 
+HOSTLOADLIBES_omap4_usbboot = -lpthread
+omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
+hostprogs-$(CONFIG_OMAP4_USBBOOT)+= omap4_usbboot
+
 always		:= $(hostprogs-y) $(hostprogs-m)
 
 subdir-y                     += mod
diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
new file mode 100644
index 0000000..b964ecf
--- /dev/null
+++ b/scripts/omap4_usbboot.c
@@ -0,0 +1,412 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <sys/stat.h>
+#include <stdint.h>
+#include <fcntl.h>
+#include <string.h>
+#include <sys/mman.h>
+#include <pthread.h>
+#include <termios.h>
+
+#include "usb.h"
+
+#define USBBOOT_FS_MAGIC     0x5562464D
+#define USBBOOT_FS_CMD_OPEN  0x46530000
+#define USBBOOT_FS_CMD_CLOSE 0x46530001
+#define USBBOOT_FS_CMD_READ  0x46530002
+#define USBBOOT_FS_CMD_END   0x4653FFFF
+#define MAX_OPEN_FILES       1000
+
+#define RESET   0
+#define BRIGHT  1
+#define WHITE   8
+#define RED     1
+#define BLACK   0
+#define FORMAT        "%c[%d;%d;%dm"
+#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
+#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40
+#define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT"\n", \
+					HOST_FORMAT, ##arg, TARGET_FORMAT)
+
+struct thread_vars {
+	struct usb_handle *usb;
+	int hide;
+	struct termios to;
+};
+void *listenerTask(void *argument)
+{
+	struct thread_vars *vars = argument;
+	int c;
+	for (;;) {
+		c = getchar();
+		if (c == EOF)
+			return NULL;
+		while (vars->hide)
+			usleep(10000);
+		if (usb_write(vars->usb, &c, 4) != 4) {
+			host_print("could not send '%c' to target", c);
+			tcsetattr(STDIN_FILENO, TCSANOW, &vars->to);
+			exit(1);
+		}
+	}
+	return NULL;
+}
+struct file_data {
+	size_t size;
+	void *data;
+};
+
+int read_asic_id(struct usb_handle *usb)
+{
+#define LINEWIDTH 16
+	const uint32_t msg_getid = 0xF0030003;
+	int i, j, k, ret;
+	uint8_t id[81];
+	char line[LINEWIDTH*3+8];
+
+	printf("reading ASIC ID\n");
+	memset(id , 0xee, sizeof(id));
+	if (usb_write(usb, &msg_getid, sizeof(msg_getid)) !=
+		sizeof(msg_getid)
+	) {
+		printf("Could not send msg_getid request\n");
+		return -1;
+	}
+	if (usb_read(usb, id, sizeof(id)) != sizeof(id)) {
+		printf("Could not read msg_getid answer\n");
+		return -1;
+	}
+	for (i = 0; i < sizeof(id); i += LINEWIDTH) {
+		sprintf(line, "%02X: ", i);
+		for (j = 0; j < LINEWIDTH && j < sizeof(id)-i; j++)
+			sprintf(line+4+j*3, "%02X ", id[i+j]);
+		line[4+j*3+0] = '\n';
+		line[4+j*3+1] = 0;
+		printf(line);
+	}
+	ret = 0;
+	for (i = 1, j = 0; i < sizeof(id) && j < id[0]; i += 2+id[i+1], j++) {
+		if (i+2+id[i+1] > sizeof(id)) {
+			printf("Truncated subblock\n");
+			ret++;
+			continue;
+		}
+		switch (id[i]) {
+		case 0x01: /* ID subblock */
+			if (id[i+1] != 0x05) {
+				printf("Unexpected ID subblock size\n");
+				ret++;
+				continue;
+			}
+			if (id[i+2] != 0x01)
+				printf("Unexpected fixed value\n");
+			k = (id[i+3]<<8) | id[i+4];
+			switch (k) {
+			case 0x4440:
+				printf("OMAP 4460 Device\n");
+				break;
+			default:
+				printf("Unknown Device\n");
+				break;
+			}
+			switch (id[i+5]) {
+			case 0x07:
+				printf("CH enabled (read from eFuse)\n");
+				break;
+			case 0x17:
+				printf("CH disabled (read from eFuse)\n");
+				break;
+			default:
+				printf("Unknown CH setting\n");
+				break;
+			}
+			printf("Rom version: %hhu\n", id[i+6]);
+			break;
+		case 0x15: /* Checksum subblock */
+			if (id[i+1] != 0x09) {
+				printf("Unexpected Checksum subblock size\n");
+				ret++;
+				continue;
+			}
+			if (id[i+2] != 0x01)
+				printf("Unexpected fixed value\n");
+			k = (id[i+3]<<24) | (id[i+4]<<16) |
+				(id[i+5]<<8) | id[i+6];
+			printf("Rom CRC: 0x%08X\n", k);
+			k = (id[i+7]<<24) | (id[i+8]<<16) |
+				(id[i+9]<<8) | id[i+10];
+			switch (k) {
+			case  0:
+				printf("A GP device\n");
+				break;
+			default:
+				printf("Unknown device\n");
+				break;
+			}
+			break;
+		}
+	}
+	if (i != sizeof(id) || j != id[0]) {
+		printf("Unexpected ASIC ID structure size.\n");
+		ret++;
+	}
+	return ret;
+}
+
+int process_file(
+	struct usb_handle *usb, const char *rootfs, struct file_data *fd_vector)
+{
+	uint32_t i, j, pos, size;
+	struct stat s;
+	int fd, ret;
+	char line[256];
+
+	if (usb_read(usb, &i, 4) != 4) {
+		host_print("USB error");
+		exit(1);
+	}
+	ret = 0;
+	switch (i) {
+	case USBBOOT_FS_CMD_OPEN:
+		for (j = 0; rootfs[j]; j++)
+			line[j] = rootfs[j];
+		for (;; j++) {
+			if (usb_read(usb, &i, 4) != 4) {
+				host_print("USB error");
+				exit(1);
+			}
+			if (i == USBBOOT_FS_CMD_END) {
+				line[j] = 0;
+				break;
+			} else if (i > 0xFF) {
+				host_print("Error in filename");
+				ret++;
+				line[j] = 0;
+				break;
+			} else
+				line[j] = i;
+		}
+		for (i = 0; i < MAX_OPEN_FILES && fd_vector[i].data; i++)
+			;
+		if (i >= MAX_OPEN_FILES) {
+			host_print("MAX_OPEN_FILES exceeded");
+			ret++;
+			goto open_error_1;
+		}
+		fd = open(line, O_RDONLY);
+		if (fd < 0) {
+			host_print("cannot open '%s'", line);
+			ret++;
+			goto open_error_1;
+		}
+		if (fstat(fd, &s)) {
+			host_print("cannot stat '%s'", line);
+			ret++;
+			goto open_error_2;
+		}
+		fd_vector[i].data = mmap(NULL, s.st_size, PROT_READ,
+			MAP_PRIVATE, fd, 0);
+		if (fd_vector[i].data == MAP_FAILED) {
+			host_print("cannot mmap '%s'", line);
+			ret++;
+			goto open_error_2;
+		}
+		close(fd);
+		fd_vector[i].size = size = s.st_size;
+		fd = i;
+		goto open_ok;
+
+open_error_2:
+		close(fd);
+open_error_1:
+		fd_vector[i].size = size = 0;
+		fd = -1;
+open_ok:
+		if (usb_write(usb, &fd, 4) != 4 ||
+			usb_write(usb, &size, 4) != 4
+		) {
+			host_print("could not send file size to target");
+			exit(1);
+		}
+		break;
+	case USBBOOT_FS_CMD_CLOSE:
+		if (usb_read(usb, &i, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
+			host_print("invalid close index");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &j, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (j != USBBOOT_FS_CMD_END) {
+			host_print("invalid close");
+			ret++;
+			break;
+		}
+		munmap(fd_vector[i].data, fd_vector[i].size);
+		fd_vector[i].data = NULL;
+		break;
+	case USBBOOT_FS_CMD_READ:
+		if (usb_read(usb, &i, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
+			host_print("invalid read index");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &pos, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (pos >= fd_vector[i].size) {
+			host_print("invalid read pos");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &size, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (pos+size > fd_vector[i].size) {
+			host_print("invalid read size");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &j, 4) != 4) {
+			host_print("USB error");
+			exit(1);
+		}
+		if (j != USBBOOT_FS_CMD_END) {
+			host_print("invalid read");
+			ret++;
+			break;
+		}
+		if (usb_write(usb, fd_vector[i].data+pos, size) != size) {
+			host_print("could not send file to target");
+			exit(1);
+		}
+		break;
+	case USBBOOT_FS_CMD_END:
+	default:
+		host_print("Unknown filesystem command");
+		ret++;
+		break;
+	}
+	return ret;
+}
+
+int usb_boot(
+	struct usb_handle *usb, void *data, unsigned sz, const char *rootfs)
+{
+	const uint32_t msg_boot  = 0xF0030002;
+	uint32_t msg_size = sz;
+	int i;
+	pthread_t thread;
+	struct thread_vars vars;
+	struct termios tn;
+	struct file_data fd_vector[MAX_OPEN_FILES];
+
+	read_asic_id(usb);
+
+	printf("sending xload to target...\n");
+	usb_write(usb, &msg_boot, sizeof(msg_boot));
+	usb_write(usb, &msg_size, sizeof(msg_size));
+	usb_write(usb, data, sz);
+	munmap(data, msg_size);
+	for (i = 0; i < MAX_OPEN_FILES; i++)
+		fd_vector[i].data = NULL;
+
+	vars.usb = usb;
+	vars.hide = 0;
+	tcgetattr(STDIN_FILENO, &vars.to);
+	tn = vars.to;
+	tn.c_lflag &= ~(ICANON | ECHO);
+	printf(FORMAT, TARGET_FORMAT);
+	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
+	if (pthread_create(&thread, NULL, listenerTask, &vars))
+		host_print("listenerTask failed");
+	for (;;) {
+		if (usb_read(usb, &i, 4) != 4)
+			break;
+		if (i == USBBOOT_FS_MAGIC) {
+			vars.hide = 1;
+			process_file(usb, rootfs, fd_vector);
+			vars.hide = 0;
+			continue;
+		}
+		printf("%c", i);
+		fflush(stdout);
+	}
+	tcsetattr(STDIN_FILENO, TCSANOW, &vars.to);
+	return 0;
+}
+
+int match_omap4_bootloader(struct usb_ifc_info *ifc)
+{
+	if (ifc->dev_vendor != 0x0451)
+		return -1;
+	if ((ifc->dev_product != 0xD010) && (ifc->dev_product != 0xD00F))
+		return -1;
+	return 0;
+}
+
+int main(int argc, char **argv)
+{
+	void *data;
+	unsigned sz;
+	struct stat s;
+	int fd;
+	struct usb_handle *usb;
+	int once;
+
+	if (argc != 3) {
+		printf("usage: %s <xloader> <rootfs>\n", argv[0]);
+		return 0;
+	}
+	argv++;
+	fd = open(argv[0], O_RDONLY);
+	if (fd < 0 || fstat(fd, &s)) {
+		printf("cannot open '%s'\n", argv[0]);
+		return -1;
+	}
+	data = mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
+	if (data == MAP_FAILED) {
+		printf("cannot mmap '%s'\n", argv[0]);
+		return -1;
+	}
+	sz = s.st_size;
+	close(fd);
+	argv++;
+	printf(FORMAT, HOST_FORMAT);
+	for (once = 1;;) {
+		usb = usb_open(match_omap4_bootloader);
+		if (usb)
+			return usb_boot(usb, data, sz, argv[0]);
+		if (once) {
+			once = 0;
+			printf("waiting for OMAP44xx device...\n");
+		}
+		usleep(250000);
+	}
+	return -1;
+}
diff --git a/scripts/usb.h b/scripts/usb.h
new file mode 100644
index 0000000..d50aa6a
--- /dev/null
+++ b/scripts/usb.h
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2008 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#ifndef _USB_H_
+#define _USB_H_
+
+struct usb_ifc_info {
+	/* from device descriptor */
+	unsigned short dev_vendor;
+	unsigned short dev_product;
+
+	unsigned char dev_class;
+	unsigned char dev_subclass;
+	unsigned char dev_protocol;
+
+	unsigned char ifc_class;
+	unsigned char ifc_subclass;
+	unsigned char ifc_protocol;
+
+	unsigned char has_bulk_in;
+	unsigned char has_bulk_out;
+
+	unsigned char writable;
+
+	char serial_number[256];
+};
+
+typedef int (*ifc_match_func)(struct usb_ifc_info *ifc);
+
+struct usb_handle *usb_open(ifc_match_func callback);
+int usb_close(struct usb_handle *h);
+int usb_read(struct usb_handle *h, void *_data, int len);
+int usb_write(struct usb_handle *h, const void *_data, int len);
+
+
+#endif
diff --git a/scripts/usb_linux.c b/scripts/usb_linux.c
new file mode 100644
index 0000000..43529aa
--- /dev/null
+++ b/scripts/usb_linux.c
@@ -0,0 +1,397 @@
+/*
+ * Copyright (C) 2008 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <string.h>
+
+#include <sys/ioctl.h>
+#include <sys/types.h>
+#include <dirent.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <pthread.h>
+#include <ctype.h>
+
+#include <linux/usbdevice_fs.h>
+#include <linux/usbdevice_fs.h>
+#include <linux/version.h>
+#include <linux/usb/ch9.h>
+#include <asm/byteorder.h>
+
+#include "usb.h"
+
+#define MAX_RETRIES 5
+
+#ifdef TRACE_USB
+#define DBG1(x...) fprintf(stderr, x)
+#define DBG(x...) fprintf(stderr, x)
+#else
+#define DBG(x...)
+#define DBG1(x...)
+#endif
+
+struct usb_handle {
+	char fname[64];
+	int desc;
+	unsigned char ep_in;
+	unsigned char ep_out;
+};
+
+static inline int badname(const char *name)
+{
+	while (*name) {
+		if (!isdigit(*name++))
+			return 1;
+	}
+	return 0;
+}
+
+static int check(void *_desc, int len, unsigned type, int size)
+{
+	unsigned char *desc = _desc;
+
+	if (len < size)
+		return -1;
+	if (desc[0] < size)
+		return -1;
+	if (desc[0] > len)
+		return -1;
+	if (desc[1] != type)
+		return -1;
+
+	return 0;
+}
+
+static int filter_usb_device(int fd, char *ptr, int len, int writable,
+	ifc_match_func callback, int *ept_in_id, int *ept_out_id, int *ifc_id)
+{
+	struct usb_device_descriptor *dev;
+	struct usb_config_descriptor *cfg;
+	struct usb_interface_descriptor *ifc;
+	struct usb_endpoint_descriptor *ept;
+	struct usb_ifc_info info;
+
+	int in, out;
+	unsigned i;
+	unsigned e;
+
+	if (check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
+		return -1;
+	dev = (void *) ptr;
+	len -= dev->bLength;
+	ptr += dev->bLength;
+
+	if (check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
+		return -1;
+	cfg = (void *) ptr;
+	len -= cfg->bLength;
+	ptr += cfg->bLength;
+
+	info.dev_vendor = dev->idVendor;
+	info.dev_product = dev->idProduct;
+	info.dev_class = dev->bDeviceClass;
+	info.dev_subclass = dev->bDeviceSubClass;
+	info.dev_protocol = dev->bDeviceProtocol;
+	info.writable = writable;
+
+	/* read device serial number (if there is one) */
+	info.serial_number[0] = 0;
+	if (dev->iSerialNumber) {
+		struct usbdevfs_ctrltransfer  ctrl;
+		__u16 buffer[128];
+		int result;
+
+		memset(buffer, 0, sizeof(buffer));
+
+		ctrl.bRequestType = USB_DIR_IN|
+			USB_TYPE_STANDARD|USB_RECIP_DEVICE;
+		ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
+		ctrl.wValue = (USB_DT_STRING << 8) | dev->iSerialNumber;
+		ctrl.wIndex = 0;
+		ctrl.wLength = sizeof(buffer);
+		ctrl.data = buffer;
+		ctrl.timeout = 50;
+
+		result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
+		if (result > 0) {
+			int i;
+			/* skip first word, and copy the rest to the serial
+			string, changing shorts to bytes. */
+			result /= 2;
+			for (i = 1; i < result; i++)
+				info.serial_number[i - 1] = buffer[i];
+			info.serial_number[i - 1] = 0;
+		}
+	}
+
+	for (i = 0; i < cfg->bNumInterfaces; i++) {
+		if (check(ptr, len, USB_DT_INTERFACE, USB_DT_INTERFACE_SIZE))
+			return -1;
+		ifc = (void *) ptr;
+		len -= ifc->bLength;
+		ptr += ifc->bLength;
+
+		in = -1;
+		out = -1;
+		info.ifc_class = ifc->bInterfaceClass;
+		info.ifc_subclass = ifc->bInterfaceSubClass;
+		info.ifc_protocol = ifc->bInterfaceProtocol;
+
+		for (e = 0; e < ifc->bNumEndpoints; e++) {
+			if (check(ptr, len, USB_DT_ENDPOINT,
+				USB_DT_ENDPOINT_SIZE)
+			)
+				return -1;
+			ept = (void *) ptr;
+			len -= ept->bLength;
+			ptr += ept->bLength;
+
+			if ((ept->bmAttributes & 0x03) != 0x02)
+				continue;
+
+			if (ept->bEndpointAddress & 0x80)
+				in = ept->bEndpointAddress;
+			else
+				out = ept->bEndpointAddress;
+		}
+
+		info.has_bulk_in = (in != -1);
+		info.has_bulk_out = (out != -1);
+
+		if (callback(&info) == 0) {
+			*ept_in_id = in;
+			*ept_out_id = out;
+			*ifc_id = ifc->bInterfaceNumber;
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+static struct usb_handle *find_usb_device(
+	const char *base, ifc_match_func callback)
+{
+	struct usb_handle *usb = 0;
+	char busname[64], devname[64];
+	char desc[1024];
+	int n, in, out, ifc;
+
+	DIR *busdir, *devdir;
+	struct dirent *de;
+	int fd;
+	int writable;
+
+	busdir = opendir(base);
+	if (busdir == 0)
+		return 0;
+
+	while ((de = readdir(busdir)) && (usb == 0)) {
+		if (badname(de->d_name))
+			continue;
+
+		sprintf(busname, "%s/%s", base, de->d_name);
+		devdir = opendir(busname);
+		if (devdir == 0)
+			continue;
+
+		/* DBG("[ scanning %s ]\n", busname); */
+		while ((de = readdir(devdir)) && (usb == 0)) {
+
+			if (badname(de->d_name))
+				continue;
+			sprintf(devname, "%s/%s", busname, de->d_name);
+
+			/* DBG("[ scanning %s ]\n", devname); */
+			writable = 1;
+			fd = open(devname, O_RDWR);
+			if (fd < 0) {
+				/* Check if we have read-only access,
+				so we can give a helpful diagnostic
+				like "adb devices" does. */
+				writable = 0;
+				fd = open(devname, O_RDONLY);
+				if (fd < 0)
+					continue;
+			}
+
+			n = read(fd, desc, sizeof(desc));
+
+			if (filter_usb_device(fd, desc, n, writable,
+				callback, &in, &out, &ifc) == 0
+			) {
+				usb = calloc(1, sizeof(struct usb_handle));
+				strcpy(usb->fname, devname);
+				usb->ep_in = in;
+				usb->ep_out = out;
+				usb->desc = fd;
+
+				n = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &ifc);
+				if (n != 0) {
+					close(fd);
+					free(usb);
+					usb = 0;
+					continue;
+				}
+			} else
+				close(fd);
+		}
+		closedir(devdir);
+	}
+	closedir(busdir);
+
+	return usb;
+}
+
+int usb_write(struct usb_handle *h, const void *_data, int len)
+{
+	unsigned char *data = (unsigned char *) _data;
+	unsigned count = 0;
+	struct usbdevfs_bulktransfer bulk;
+	int n;
+
+	if (h->ep_out == 0)
+		return -1;
+
+	if (len == 0) {
+		bulk.ep = h->ep_out;
+		bulk.len = 0;
+		bulk.data = data;
+		bulk.timeout = 0;
+
+		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+		if (n != 0) {
+			fprintf(stderr, "ERROR: n = %d, errno = %d (%s)\n",
+			n, errno, strerror(errno));
+			return -1;
+		}
+		return 0;
+	}
+
+	while (len > 0) {
+		int xfer;
+		xfer = (len > 4096) ? 4096 : len;
+
+		bulk.ep = h->ep_out;
+		bulk.len = xfer;
+		bulk.data = data;
+		bulk.timeout = 0;
+
+		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+		if (n != xfer) {
+			DBG("ERROR: n = %d, errno = %d (%s)\n",
+				n, errno, strerror(errno));
+			return -1;
+		}
+
+		count += xfer;
+		len -= xfer;
+		data += xfer;
+	}
+
+	return count;
+}
+
+int usb_read(struct usb_handle *h, void *_data, int len)
+{
+	unsigned char *data = (unsigned char *) _data;
+	unsigned count = 0;
+	struct usbdevfs_bulktransfer bulk;
+	int n, retry;
+
+	if (h->ep_in == 0)
+		return -1;
+
+	while (len > 0) {
+		int xfer = (len > 4096) ? 4096 : len;
+
+		bulk.ep = h->ep_in;
+		bulk.len = xfer;
+		bulk.data = data;
+		bulk.timeout = 0;
+		retry = 0;
+
+		do {
+			DBG("[ usb read %d fd = %d], fname=%s\n",
+				xfer, h->desc, h->fname);
+			n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+			DBG("[ usb read %d ] = %d, fname=%s, Retry %d\n",
+			xfer, n, h->fname, retry);
+
+			if (n < 0) {
+				DBG1("ERROR: n = %d, errno = %d (%s)\n",
+				n, errno, strerror(errno));
+				if (++retry > MAX_RETRIES)
+					return -1;
+				sleep(1);
+			}
+		} while (n < 0);
+
+		count += n;
+		len -= n;
+		data += n;
+
+		if (n < xfer)
+			break;
+	}
+
+	return count;
+}
+
+void usb_kick(struct usb_handle *h)
+{
+	int fd;
+
+	fd = h->desc;
+	h->desc = -1;
+	if (fd >= 0) {
+		close(fd);
+		DBG("[ usb closed %d ]\n", fd);
+	}
+}
+
+int usb_close(struct usb_handle *h)
+{
+	int fd;
+
+	fd = h->desc;
+	h->desc = -1;
+	if (fd >= 0) {
+		close(fd);
+		DBG("[ usb closed %d ]\n", fd);
+	}
+
+	return 0;
+}
+
+struct usb_handle *usb_open(ifc_match_func callback)
+{
+	return find_usb_device("/dev/bus/usb", callback);
+}
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
