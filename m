Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe7E-0007Rb-Pe
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:35 +0000
Received: by wibhj13 with SMTP id hj13so1004336wib.0
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:30 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:51 +0200
Message-Id: <1348613994-1793-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
References: <[RFC][PATCH] archosg9: add support for tablet>
 <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 4/7] Add USB booting capabilities to OMAP
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/cpu/cpu.c                              |   1 +
 arch/arm/lib/barebox.lds.S                      |  10 +
 arch/arm/mach-omap/Kconfig                      |  21 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 146 +++++
 arch/arm/mach-omap/omap4_generic.c              |   2 +
 arch/arm/mach-omap/omap4_rom_usb.c              | 189 ++++++
 arch/arm/mach-omap/xload.c                      |  26 +
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   3 +
 scripts/usbboot.c                               | 797 ++++++++++++++++++++++++
 11 files changed, 1197 insertions(+)
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
 create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
 create mode 100644 scripts/usbboot.c

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 71ef8c0..05343de 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -89,6 +89,7 @@ void arch_shutdown(void)
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
+	__asm__ __volatile__ ("cpsid i\n");
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index a69013f..ff7b63d 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -97,6 +97,16 @@ SECTIONS
 	__bss_start = .;
 	.bss : { *(.bss*) }
 	__bss_stop = .;
+#ifdef CONFIG_SHARE_USB_HANDLE
+    /*
+     * Reserve space for the USB handle
+     */
+	. = CONFIG_USB_HANDLE_HANDOVER;
+	. = ALIGN(4);
+	__usb_handle = .;
+	/* . += sizeof(struct usb); */
+	. += 84;
+#endif
 	_end = .;
 	_barebox_image_size = __bss_start - TEXT_BASE;
 }
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index d735284..8e0a0b3 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -96,6 +96,27 @@ config ARCH_TEXT_BASE
 	default 0x80e80000 if MACH_OMAP343xSDP
 	default 0x80e80000 if MACH_BEAGLE
 
+config USB_BOOT
+	bool "enable booting from USB"
+	default n
+	depends on ARCH_OMAP4
+	help
+	  Enable this to have USB booting
+
+config SHARE_USB_HANDLE
+	bool "share the usb handle"
+	default n
+	depends on USB_BOOT
+	help
+	  Enable this to share the usb handle between the xloader and the second stage bootloader.
+
+config USB_HANDLE_HANDOVER
+	hex "address where to put the usb handle"
+	default  0x4030BFAC
+	depends on SHARE_USB_HANDLE
+	help
+	  The Address where barebox will put the usb handle to be used in the second stage.
+
 config BOARDINFO
 	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
 	default "Texas Instrument's Beagle" if MACH_BEAGLE
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index f087f4b..8b35333 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -30,4 +30,5 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
+obj-$(CONFIG_USB_BOOT) += omap4_rom_usb.o
 obj-y += gpio.o
diff --git a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
new file mode 100644
index 0000000..5866a21
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
@@ -0,0 +1,146 @@
+/*
+ * This code is based on:
+ * git://github.com/swetland/omap4boot.git
+ */
+
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
+	volatile u32 status;
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
+#define API(n) ( (void*) (*((u32 *) (n))) )
+/* ROM API End */
+
+struct usb {
+	struct per_handle dread;
+	struct per_handle dwrite;
+	struct per_driver *io;
+};
+extern struct usb *pusb;
+
+int usb_open(void);
+void usb_close(void);
+
+void usb_queue_read(void *data, unsigned len);
+int usb_wait_read(void);
+
+void usb_queue_write(void *data, unsigned len);
+int usb_wait_write(void);
+
+int usb_read(void *data, unsigned len);
+int usb_write(void *data, unsigned len);
+void usb_puts(const char *s);
+
+#endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 55d8fe3..3e00d9f 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -457,6 +457,7 @@ static int watchdog_init(void)
 }
 late_initcall(watchdog_init);
 
+#ifndef CONFIG_USB_BOOT
 static int omap_vector_init(void)
 {
 	__asm__ __volatile__ (
@@ -470,6 +471,7 @@ static int omap_vector_init(void)
 	return 0;
 }
 core_initcall(omap_vector_init);
+#endif
 
 #define OMAP4_TRACING_VECTOR3 0x4030d048
 
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
new file mode 100644
index 0000000..c328570
--- /dev/null
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -0,0 +1,189 @@
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
+struct usb *pusb;
+
+int usb_open(void)
+{
+#ifdef CONFIG_OMAP_BUILD_IFT
+	int (*rom_get_per_driver)(struct per_driver **io, u32 device_type);
+	int (*rom_get_per_device)(struct per_handle **rh);
+	struct per_handle *boot;
+	int n;
+	u32 base;
+
+#ifdef CONFIG_SHARE_USB_HANDLE
+	pusb = (struct usb *)CONFIG_USB_HANDLE_HANDOVER;
+	memset(pusb, 0, sizeof(*pusb));
+#else
+	pusb = xzalloc(sizeof(struct usb));
+#endif
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
+	n = rom_get_per_driver(&pusb->io, boot->device_type);
+	if (n)
+		return n;
+
+	pusb->dread.xfer_mode = boot->xfer_mode;
+	pusb->dread.options = boot->options;
+	pusb->dread.device_type = boot->device_type;
+
+	pusb->dwrite.xfer_mode = boot->xfer_mode;
+	pusb->dwrite.options = boot->options;
+	pusb->dwrite.device_type = boot->device_type;
+#else
+#ifdef CONFIG_MMU
+#error USB communications not working under MMU
+	pusb = (struct usb *)phys_to_virt(CONFIG_USB_HANDLE_HANDOVER);
+#else
+	pusb = (struct usb *)CONFIG_USB_HANDLE_HANDOVER;
+#endif
+#endif
+	__asm__ __volatile__ ("cpsie i\n");
+	return 0;
+}
+
+
+static void rom_read_callback(struct per_handle *rh)
+{
+
+	pusb->dread.status = rh->status;
+	return;
+}
+
+void usb_queue_read(void *data, unsigned len)
+{
+	int n;
+	pusb->dread.data = data;
+	pusb->dread.length = len;
+	pusb->dread.status = -1;
+	pusb->dread.xfer_mode = 1;
+	pusb->dread.callback = rom_read_callback;
+	n = pusb->io->read(&pusb->dread);
+	if (n)
+		pusb->dread.status = n;
+}
+
+int usb_wait_read(void)
+{
+	for (;;) {
+		if (pusb->dread.status == -1)
+			continue;
+		if (pusb->dread.status == STATUS_WAITING)
+			continue;
+		return pusb->dread.status;
+	}
+}
+
+void rom_write_callback(struct per_handle *rh)
+{
+	pusb->dwrite.status = rh->status;
+	return;
+}
+
+void usb_queue_write(void *data, unsigned len)
+{
+	int n;
+	pusb->dwrite.data = data;
+	pusb->dwrite.length = len;
+	pusb->dwrite.status = -1;
+	pusb->dwrite.xfer_mode = 1;
+	pusb->dwrite.callback = rom_write_callback;
+	n = pusb->io->write(&pusb->dwrite);
+	if (n)
+		pusb->dwrite.status = n;
+}
+
+int usb_wait_write(void)
+{
+	for (;;) {
+		if (pusb->dwrite.status == -1)
+			continue;
+		if (pusb->dwrite.status == STATUS_WAITING)
+			continue;
+		return pusb->dwrite.status;
+	}
+}
+
+#define USB_MAX_IO 65536
+int usb_read(void *data, unsigned len)
+{
+	unsigned xfer;
+	unsigned char *x = data;
+	int n;
+	while (len > 0) {
+		xfer = (len > USB_MAX_IO) ? USB_MAX_IO : len;
+		usb_queue_read(x, xfer);
+		n = usb_wait_read();
+		if (n)
+			return n;
+		x += xfer;
+		len -= xfer;
+	}
+	return 0;
+}
+
+int usb_write(void *data, unsigned len)
+{
+	usb_queue_write(data, len);
+	return usb_wait_write();
+}
+
+void usb_close(void)
+{
+	pusb->io->close(&pusb->dread);
+}
+
+void usb_puts(const char *s)
+{
+	u32 c;
+	while((c=*s++)) usb_write(&c, 4);
+}
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 13024ab..36dfd26 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -54,6 +54,26 @@ void *omap_xload_boot_mmc(void)
 	return buf;
 }
 
+#ifdef CONFIG_USB_BOOT
+void *omap_xload_boot_usb(){
+	int ret;
+	void *buf;
+	int len;
+
+	ret = mount("usbboot", "usbbootfs", "/");
+	if (ret) {
+		printf("Unable to mount usbbootfs (%d)\n", ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		printf("could not read barebox.bin from usbbootfs\n");
+
+	return buf;
+}
+#endif
+
 enum omap_boot_src omap_bootsrc(void)
 {
 #if defined(CONFIG_ARCH_OMAP3)
@@ -76,6 +96,12 @@ int run_shell(void)
 		printf("booting from MMC1\n");
 		func = omap_xload_boot_mmc();
 		break;
+#ifdef CONFIG_USB_BOOT
+	case OMAP_BOOTSRC_USB1:
+		printf("booting from USB1\n");
+		func = omap_xload_boot_usb();
+		break;
+#endif
 	case OMAP_BOOTSRC_UNKNOWN:
 		printf("unknown boot source. Fall back to nand\n");
 	case OMAP_BOOTSRC_NAND:
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 6e63f85..017c81c 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -5,3 +5,4 @@ kallsyms
 mkimage
 mkublheader
 omap_signGP
+usbboot
diff --git a/scripts/Makefile b/scripts/Makefile
index 7ca5e29..c8f68fb 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -4,12 +4,15 @@
 # ---------------------------------------------------------------------------
 # kallsyms:      Find all symbols in barebox
 
+HOSTCFLAGS   += -lpthread
+
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
 hostprogs-y                      += bareboxenv
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
+hostprogs-$(CONFIG_USB_BOOT)     += usbboot
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 
diff --git a/scripts/usbboot.c b/scripts/usbboot.c
new file mode 100644
index 0000000..bf43d79
--- /dev/null
+++ b/scripts/usbboot.c
@@ -0,0 +1,797 @@
+/*
+ * This code is based on:
+ * git://github.com/swetland/omap4boot.git
+ */
+
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
+typedef struct usb_handle usb_handle;
+
+typedef struct usb_ifc_info usb_ifc_info;
+
+struct usb_ifc_info
+{
+        /* from device descriptor */
+    unsigned short dev_vendor;
+    unsigned short dev_product;
+
+    unsigned char dev_class;
+    unsigned char dev_subclass;
+    unsigned char dev_protocol;
+
+    unsigned char ifc_class;
+    unsigned char ifc_subclass;
+    unsigned char ifc_protocol;
+
+    unsigned char has_bulk_in;
+    unsigned char has_bulk_out;
+
+    unsigned char writable;
+
+    char serial_number[256];
+};
+
+typedef int (*ifc_match_func)(usb_ifc_info *ifc);
+
+usb_handle *usb_open(ifc_match_func callback);
+int usb_close(usb_handle *h);
+int usb_read(usb_handle *h, void *_data, int len);
+int usb_write(usb_handle *h, const void *_data, int len);
+
+
+#endif
+
+
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
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
+#if LINUX_VERSION_CODE > KERNEL_VERSION(2, 6, 20)
+#include <linux/usb/ch9.h>
+#else
+#include <linux/usb_ch9.h>
+#endif
+#include <asm/byteorder.h>
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
+struct usb_handle
+{
+    char fname[64];
+    int desc;
+    unsigned char ep_in;
+    unsigned char ep_out;
+};
+
+static inline int badname(const char *name)
+{
+    while(*name) {
+        if(!isdigit(*name++)) return 1;
+    }
+    return 0;
+}
+
+static int check(void *_desc, int len, unsigned type, int size)
+{
+    unsigned char *desc = _desc;
+
+    if(len < size) return -1;
+    if(desc[0] < size) return -1;
+    if(desc[0] > len) return -1;
+    if(desc[1] != type) return -1;
+
+    return 0;
+}
+
+static int filter_usb_device(int fd, char *ptr, int len, int writable,
+                             ifc_match_func callback,
+                             int *ept_in_id, int *ept_out_id, int *ifc_id)
+{
+    struct usb_device_descriptor *dev;
+    struct usb_config_descriptor *cfg;
+    struct usb_interface_descriptor *ifc;
+    struct usb_endpoint_descriptor *ept;
+    struct usb_ifc_info info;
+
+    int in, out;
+    unsigned i;
+    unsigned e;
+
+    if(check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
+        return -1;
+    dev = (void*) ptr;
+    len -= dev->bLength;
+    ptr += dev->bLength;
+
+    if(check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
+        return -1;
+    cfg = (void*) ptr;
+    len -= cfg->bLength;
+    ptr += cfg->bLength;
+
+    info.dev_vendor = dev->idVendor;
+    info.dev_product = dev->idProduct;
+    info.dev_class = dev->bDeviceClass;
+    info.dev_subclass = dev->bDeviceSubClass;
+    info.dev_protocol = dev->bDeviceProtocol;
+    info.writable = writable;
+
+    // read device serial number (if there is one)
+    info.serial_number[0] = 0;
+    if (dev->iSerialNumber) {
+        struct usbdevfs_ctrltransfer  ctrl;
+        __u16 buffer[128];
+        int result;
+
+        memset(buffer, 0, sizeof(buffer));
+
+        ctrl.bRequestType = USB_DIR_IN|USB_TYPE_STANDARD|USB_RECIP_DEVICE;
+        ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
+        ctrl.wValue = (USB_DT_STRING << 8) | dev->iSerialNumber;
+        ctrl.wIndex = 0;
+        ctrl.wLength = sizeof(buffer);
+        ctrl.data = buffer;
+        ctrl.timeout = 50;
+
+        result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
+        if (result > 0) {
+            int i;
+            // skip first word, and copy the rest to the serial string, changing shorts to bytes.
+            result /= 2;
+            for (i = 1; i < result; i++)
+                info.serial_number[i - 1] = buffer[i];
+            info.serial_number[i - 1] = 0;
+        }
+    }
+
+    for(i = 0; i < cfg->bNumInterfaces; i++) {
+        if(check(ptr, len, USB_DT_INTERFACE, USB_DT_INTERFACE_SIZE))
+            return -1;
+        ifc = (void*) ptr;
+        len -= ifc->bLength;
+        ptr += ifc->bLength;
+
+        in = -1;
+        out = -1;
+        info.ifc_class = ifc->bInterfaceClass;
+        info.ifc_subclass = ifc->bInterfaceSubClass;
+        info.ifc_protocol = ifc->bInterfaceProtocol;
+
+        for(e = 0; e < ifc->bNumEndpoints; e++) {
+            if(check(ptr, len, USB_DT_ENDPOINT, USB_DT_ENDPOINT_SIZE))
+                return -1;
+            ept = (void*) ptr;
+            len -= ept->bLength;
+            ptr += ept->bLength;
+
+            if((ept->bmAttributes & 0x03) != 0x02)
+                continue;
+
+            if(ept->bEndpointAddress & 0x80) {
+                in = ept->bEndpointAddress;
+            } else {
+                out = ept->bEndpointAddress;
+            }
+        }
+
+        info.has_bulk_in = (in != -1);
+        info.has_bulk_out = (out != -1);
+
+        if(callback(&info) == 0) {
+            *ept_in_id = in;
+            *ept_out_id = out;
+            *ifc_id = ifc->bInterfaceNumber;
+            return 0;
+        }
+    }
+
+    return -1;
+}
+
+static usb_handle *find_usb_device(const char *base, ifc_match_func callback)
+{
+    usb_handle *usb = 0;
+    char busname[64], devname[64];
+    char desc[1024];
+    int n, in, out, ifc;
+
+    DIR *busdir, *devdir;
+    struct dirent *de;
+    int fd;
+    int writable;
+
+    busdir = opendir(base);
+    if(busdir == 0) return 0;
+
+    while((de = readdir(busdir)) && (usb == 0)) {
+        if(badname(de->d_name)) continue;
+
+        sprintf(busname, "%s/%s", base, de->d_name);
+        devdir = opendir(busname);
+        if(devdir == 0) continue;
+
+//        DBG("[ scanning %s ]\n", busname);
+        while((de = readdir(devdir)) && (usb == 0)) {
+
+            if(badname(de->d_name)) continue;
+            sprintf(devname, "%s/%s", busname, de->d_name);
+
+//            DBG("[ scanning %s ]\n", devname);
+            writable = 1;
+            if((fd = open(devname, O_RDWR)) < 0) {
+                // Check if we have read-only access, so we can give a helpful
+                // diagnostic like "adb devices" does.
+                writable = 0;
+                if((fd = open(devname, O_RDONLY)) < 0) {
+                    continue;
+                }
+            }
+
+            n = read(fd, desc, sizeof(desc));
+
+            if(filter_usb_device(fd, desc, n, writable, callback,
+                                 &in, &out, &ifc) == 0) {
+                usb = calloc(1, sizeof(usb_handle));
+                strcpy(usb->fname, devname);
+                usb->ep_in = in;
+                usb->ep_out = out;
+                usb->desc = fd;
+
+                n = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &ifc);
+                if(n != 0) {
+                    close(fd);
+                    free(usb);
+                    usb = 0;
+                    continue;
+                }
+            } else {
+                close(fd);
+            }
+        }
+        closedir(devdir);
+    }
+    closedir(busdir);
+
+    return usb;
+}
+
+int usb_write(usb_handle *h, const void *_data, int len)
+{
+    unsigned char *data = (unsigned char*) _data;
+    unsigned count = 0;
+    struct usbdevfs_bulktransfer bulk;
+    int n;
+
+    if(h->ep_out == 0) {
+        return -1;
+    }
+
+    if(len == 0) {
+        bulk.ep = h->ep_out;
+        bulk.len = 0;
+        bulk.data = data;
+        bulk.timeout = 0;
+
+        n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+        if(n != 0) {
+            fprintf(stderr,"ERROR: n = %d, errno = %d (%s)\n",
+                    n, errno, strerror(errno));
+            return -1;
+        }
+        return 0;
+    }
+
+    while(len > 0) {
+        int xfer;
+        xfer = (len > 4096) ? 4096 : len;
+
+        bulk.ep = h->ep_out;
+        bulk.len = xfer;
+        bulk.data = data;
+        bulk.timeout = 0;
+
+        n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+        if(n != xfer) {
+            DBG("ERROR: n = %d, errno = %d (%s)\n",
+                n, errno, strerror(errno));
+            return -1;
+        }
+
+        count += xfer;
+        len -= xfer;
+        data += xfer;
+    }
+
+    return count;
+}
+
+int usb_read(usb_handle *h, void *_data, int len)
+{
+    unsigned char *data = (unsigned char*) _data;
+    unsigned count = 0;
+    struct usbdevfs_bulktransfer bulk;
+    int n, retry;
+
+    if(h->ep_in == 0) {
+        return -1;
+    }
+
+    while(len > 0) {
+        int xfer = (len > 4096) ? 4096 : len;
+
+        bulk.ep = h->ep_in;
+        bulk.len = xfer;
+        bulk.data = data;
+        bulk.timeout = 0;
+        retry = 0;
+
+        do{
+           DBG("[ usb read %d fd = %d], fname=%s\n", xfer, h->desc, h->fname);
+           n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+           DBG("[ usb read %d ] = %d, fname=%s, Retry %d \n", xfer, n, h->fname, retry);
+
+           if( n < 0 ) {
+            DBG1("ERROR: n = %d, errno = %d (%s)\n",n, errno, strerror(errno));
+            if ( ++retry > MAX_RETRIES ) return -1;
+            sleep( 1 );
+           }
+        }
+        while( n < 0 );
+
+        count += n;
+        len -= n;
+        data += n;
+
+        if(n < xfer) {
+            break;
+        }
+    }
+
+    return count;
+}
+
+void usb_kick(usb_handle *h)
+{
+    int fd;
+
+    fd = h->desc;
+    h->desc = -1;
+    if(fd >= 0) {
+        close(fd);
+        DBG("[ usb closed %d ]\n", fd);
+    }
+}
+
+int usb_close(usb_handle *h)
+{
+    int fd;
+
+    fd = h->desc;
+    h->desc = -1;
+    if(fd >= 0) {
+        close(fd);
+        DBG("[ usb closed %d ]\n", fd);
+    }
+
+    return 0;
+}
+
+usb_handle *usb_open(ifc_match_func callback)
+{
+    return find_usb_device("/dev/bus/usb", callback);
+}
+
+
+
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
+#define USBBOOT_FS_MAGIC     0x5562464D
+#define USBBOOT_FS_CMD_OPEN  0x46530000
+#define USBBOOT_FS_CMD_CLOSE 0x46530001
+#define USBBOOT_FS_CMD_READ  0x46530002
+#define USBBOOT_FS_CMD_END   0x4653FFFF
+#define MAX_OPEN_FILES       1000
+
+#define STR_PROMPT "barebox>"
+#define STR_RESET  "reset\r\n"
+
+#define RESET  0
+#define BRIGHT 1
+#define WHITE  8
+#define RED    1
+#define BLACK  0
+#define FORMAT "%c[%d;%d;%dm"
+#define TARGET_FORMAT 0x1B,BRIGHT,RED+30,BLACK+40
+#define HOST_FORMAT   0x1B,RESET,WHITE+30,BLACK+40
+
+struct thread_vars {
+    usb_handle *usb;
+    int hide;
+};
+void *listenerTask(void *argument){
+    struct thread_vars *vars = argument;
+    int c;
+    for(;;){
+        c=getchar();
+        if(c==EOF) return NULL;
+        while(vars->hide) usleep(10000);
+        if(usb_write(vars->usb, &c, 4)!=4)
+            printf(FORMAT"could not send '%c' to target"FORMAT"\n", HOST_FORMAT, c, TARGET_FORMAT);
+        usleep(10000);
+    }
+    return NULL;
+}
+struct file_data {
+    int fd;
+    size_t size;
+    void *data;
+};
+
+int usb_boot(usb_handle *usb, void *data, unsigned sz, const char *rootfs){
+#define LINEWIDTH 16
+    const uint32_t msg_boot  = 0xF0030002;
+    const uint32_t msg_getid = 0xF0030003;
+    uint32_t msg_size = sz;
+    uint8_t id[81];
+    int i, j, k;
+    char line[LINEWIDTH*4+64];
+    char c;
+    int pr, rt, prl, rtl;
+    pthread_t thread;
+    struct thread_vars vars;
+    struct termios to, tn;
+    struct file_data fd_vector[MAX_OPEN_FILES];
+    struct stat s;
+    int fd;
+    uint32_t pos, size;
+
+    printf("reading ASIC ID\n");
+    memset(id , 0xee, sizeof(id));
+    usb_write(usb, &msg_getid, sizeof(msg_getid));
+    usb_read(usb, id, sizeof(id));
+    for(i=0; i<sizeof(id); i+=LINEWIDTH){
+        sprintf(line, "%02X: ", i);
+        for(j=0; j<LINEWIDTH && j<sizeof(id)-i; j++)
+            sprintf(line+j*3+4,"%02X ",id[i+j]);
+        line[j*3+4]='\n';
+        line[j*3+5]=0;
+        printf(line);
+    }
+
+    for(i=1, j=0; i<sizeof(id) && j<id[0]; i+=2+id[i+1], j++){
+        if(i+2+id[i+1]>sizeof(id)) printf("Truncated subblock\n");
+        else{
+            switch(id[i]){
+                case 0x01: // ID subblock
+                    if(id[i+1]!=0x05) printf("Unexpected ID subblock size\n");
+                    else{
+                        if(id[i+2]!=0x01) printf("Unexpected fixed value\n");
+                        k= (id[i+3]<<8) | id[i+4];
+                        switch(k){
+                            case 0x4440: printf("OMAP 4460 Device\n"); break;
+                            default    : printf("Unknown Device\n"); break;
+                        }
+                        switch(id[i+5]){
+                            case 0x07: printf("CH enabled (read from eFuse)\n"); break;
+                            case 0x17: printf("CH disabled (read from eFuse)\n"); break;
+                            default  : printf("Unknown CH setting\n"); break;
+                        }
+                        printf("Rom version: %hhu\n", id[i+6]);
+                    }
+                    break;
+                case 0x15: // Checksum subblock
+                    if(id[i+1]!=0x09) printf("Unexpected Checksum subblock size\n");
+                    else{
+                        if(id[i+2]!=0x01) printf("Unexpected fixed value\n");
+                        k = (id[i+3]<<24) | (id[i+4]<<16) | (id[i+5]<<8) | id[i+6];
+                        printf("Rom CRC: 0x%08X\n", k);
+                        k = (id[i+7]<<24) | (id[i+8]<<16) | (id[i+9]<<8) | id[i+10];
+                        switch(k){
+                            case  0: printf("A GP device\n"); break;
+                            default: printf("Unknown device\n"); break;
+                        }
+                    }
+                    break;
+            }
+        }
+    }
+    if(i!=sizeof(id) || j!=id[0]) printf("Unexpected ASIC ID structure size.\n");
+
+    printf("sending xload to target...\n");
+    usb_write(usb, &msg_boot, sizeof(msg_boot));
+    usb_write(usb, &msg_size, sizeof(msg_size));
+    usb_write(usb, data, sz);
+    munmap(data, msg_size);
+    for(i=0; i<MAX_OPEN_FILES; i++) fd_vector[i].fd=-1;
+
+    vars.usb=usb;
+    vars.hide=0;
+    pr=rt=0;
+    prl=strlen(STR_PROMPT);
+    rtl=strlen(STR_RESET);
+    tcgetattr(STDIN_FILENO, &to);
+    tn = to;
+    tn.c_lflag &= ~(ICANON | ECHO);
+    printf(FORMAT, TARGET_FORMAT);
+    for(;;){
+        usb_read(usb, &i, 4); c=i;
+        if(i>0xFF) vars.hide=1;
+        if(!vars.hide){
+            printf("%c", c);
+            fflush(stdout);
+            if(pr<prl){
+                if(c==STR_PROMPT[pr]){
+                    if(++pr==prl){
+                        tcsetattr(STDIN_FILENO, TCSANOW, &tn);
+                        if(pthread_create(&thread, NULL, listenerTask, &vars))
+                            printf(FORMAT"listenerTask failed"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    }
+                }
+                else if(c==STR_PROMPT[0])
+                    pr=1;
+                else
+                    pr=0;
+            }
+            else{
+                if(c==STR_RESET[rt]){
+                    if(++rt==rtl){
+                        tcsetattr(STDIN_FILENO, TCSANOW, &to);
+                        printf(FORMAT, HOST_FORMAT);
+                        return 0;
+                    }
+                }
+                else if(c==STR_RESET[0])
+                    rt=1;
+                else
+                    rt=0;
+            }
+        }
+        if(i==USBBOOT_FS_MAGIC){
+            usb_read(usb, &i, 4);
+            switch(i){
+            case USBBOOT_FS_CMD_OPEN :
+                for(j=0; rootfs[j]; j++) line[j] = rootfs[j];
+                for(;;j++){
+                    usb_read(usb, &i, 4);
+                    if(i!=USBBOOT_FS_CMD_END){
+                        if(i>0xFF) printf(FORMAT"Error in filename"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                        line[j] = i;
+                    }
+                    else{
+                        line[j] = 0;
+                        break;
+                    }
+                }
+                for(i=0; i<MAX_OPEN_FILES && fd_vector[i].fd>=0; i++);
+                if(i>=MAX_OPEN_FILES){
+                    printf(FORMAT"MAX_OPEN_FILES exceeded"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    goto open_error_1;
+                }
+                if((fd_vector[i].fd=open(line, O_RDONLY))<0){
+                    printf(FORMAT"cannot open '%s'"FORMAT"\n", HOST_FORMAT, line, TARGET_FORMAT);
+                    goto open_error_1;
+                }
+                if(fstat(fd_vector[i].fd, &s)){
+                    printf(FORMAT"cannot stat '%s'"FORMAT"\n", HOST_FORMAT, line, TARGET_FORMAT);
+                    goto open_error_2;
+                }
+                if((fd_vector[i].data=mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd_vector[i].fd, 0))==MAP_FAILED){
+                    printf(FORMAT"cannot mmap '%s'"FORMAT"\n", HOST_FORMAT, line, TARGET_FORMAT);
+                    goto open_error_2;
+                }
+                close(fd_vector[i].fd);
+                fd_vector[i].size=size=s.st_size;
+                fd_vector[i].fd=fd=i;
+                goto open_ok;
+                
+                open_error_2:
+                close(fd_vector[i].fd);
+                open_error_1:
+                fd_vector[i].size=size=0;
+                fd_vector[i].fd=fd=-1;
+                open_ok:
+                if(usb_write(usb, &fd, 4)!=4 || usb_write(usb, &size, 4)!=4)
+                    printf(FORMAT"could not send file size to target"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                break;
+            case USBBOOT_FS_CMD_CLOSE:
+                usb_read(usb, &i, 4);
+                if(i<0 || i>=MAX_OPEN_FILES || fd_vector[i].fd<0){
+                    printf(FORMAT"invalid close index"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                usb_read(usb, &j, 4);
+                if(j!=USBBOOT_FS_CMD_END){
+                    printf(FORMAT"invalid close"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                munmap(fd_vector[i].data, fd_vector[i].size);
+                fd_vector[i].fd=-1;
+                break;
+            case USBBOOT_FS_CMD_READ :
+                usb_read(usb, &i, 4);
+                if(i<0 || i>=MAX_OPEN_FILES || fd_vector[i].fd<0){
+                    printf(FORMAT"invalid read index"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                usb_read(usb, &pos, 4);
+                if(pos>=fd_vector[i].size){
+                    printf(FORMAT"invalid read pos"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                usb_read(usb, &size, 4);
+                if(pos+size>fd_vector[i].size){
+                    printf(FORMAT"invalid read size"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                usb_read(usb, &j, 4);
+                if(j!=USBBOOT_FS_CMD_END){
+                    printf(FORMAT"invalid read"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                    break;
+                }
+                if(usb_write(usb, fd_vector[i].data+pos, size)!=size)
+                    printf(FORMAT"could not send file to target"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                break;
+            case USBBOOT_FS_CMD_END  :
+            default:
+                printf(FORMAT"Unknown filesystem command"FORMAT"\n", HOST_FORMAT, TARGET_FORMAT);
+                break;
+            }
+            vars.hide=0;
+        }
+    }
+    tcsetattr(STDIN_FILENO, TCSANOW, &to);
+    return 0;
+}
+
+int match_omap4_bootloader(usb_ifc_info *ifc){
+    if (ifc->dev_vendor != 0x0451) return -1;
+    if ((ifc->dev_product != 0xD010) && (ifc->dev_product != 0xD00F)) return -1;
+    return 0;
+}
+
+int main(int argc, char **argv){
+    void *data;
+    unsigned sz;
+    struct stat s;
+    int fd;
+    usb_handle *usb;
+    int once;
+
+    if(argc!=3){
+        printf("usage: %s <xloader> <rootfs>\n", argv[0]);
+        return 0;
+    }
+    argv++;
+    if((fd=open(argv[0], O_RDONLY))<0 || fstat(fd, &s) || (data=mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd, 0))==MAP_FAILED){
+        printf("cannot load '%s'\n", argv[0]);
+        return -1;
+    }
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
