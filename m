Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cROaS-0003VQ-2E
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 19:29:35 +0000
Received: by mail-lf0-x242.google.com with SMTP id h65so1764544lfi.3
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2017 11:29:11 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 11 Jan 2017 20:32:05 +0100
Message-Id: <20170111193205.8905-1-vicencb@gmail.com>
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
Subject: [PATCH] scripts/omap4_usbboot: use libusb
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 scripts/.gitignore                          |   1 +
 scripts/Makefile                            |   4 +-
 scripts/{omap4_usbboot => }/omap4_usbboot.c |  78 ++++--
 scripts/omap4_usbboot/.gitignore            |   1 -
 scripts/omap4_usbboot/Makefile              |   5 -
 scripts/omap4_usbboot/usb.h                 |  61 -----
 scripts/omap4_usbboot/usb_linux.c           | 397 ----------------------------
 7 files changed, 55 insertions(+), 492 deletions(-)
 rename scripts/{omap4_usbboot => }/omap4_usbboot.c (87%)
 delete mode 100644 scripts/omap4_usbboot/.gitignore
 delete mode 100644 scripts/omap4_usbboot/Makefile
 delete mode 100644 scripts/omap4_usbboot/usb.h
 delete mode 100644 scripts/omap4_usbboot/usb_linux.c

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 533bffd97..2a9ae6bdc 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -25,3 +25,4 @@ mk-am35xx-spi-image
 mxsimage
 mxsboot
 mxs-usb-loader
+omap4_usbboot
diff --git a/scripts/Makefile b/scripts/Makefile
index a5c16b2f3..7f2527d1c 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -28,9 +28,11 @@ hostprogs-$(CONFIG_ARCH_MXS_USBLOADER)  += mxs-usb-loader
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
 hostprogs-$(CONFIG_OMAP3_USB_LOADER)  += omap3-usb-loader
+HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
+HOSTLOADLIBES_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
+hostprogs-$(CONFIG_OMAP4_USBBOOT) += omap4_usbboot
 
 subdir-y			+= mod
-subdir-$(CONFIG_OMAP4_USBBOOT)	+= omap4_usbboot
 subdir-$(CONFIG_ARCH_IMX)	+= imx
 subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
diff --git a/scripts/omap4_usbboot/omap4_usbboot.c b/scripts/omap4_usbboot.c
similarity index 87%
rename from scripts/omap4_usbboot/omap4_usbboot.c
rename to scripts/omap4_usbboot.c
index 0e5abcb15..bcf3f0e14 100644
--- a/scripts/omap4_usbboot/omap4_usbboot.c
+++ b/scripts/omap4_usbboot.c
@@ -8,6 +8,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
+ *
+ * Inspired by: https://github.com/simu/usbboot-omap4.git
  */
 
 #include <stdio.h>
@@ -18,11 +20,10 @@
 #include <fcntl.h>
 #include <string.h>
 #include <sys/mman.h>
+#include <libusb.h>
 #include <pthread.h>
 #include <termios.h>
 
-#include "usb.h"
-
 #define USBBOOT_FS_MAGIC     0x5562464D
 #define USBBOOT_FS_CMD_OPEN  0x46530000
 #define USBBOOT_FS_CMD_CLOSE 0x46530001
@@ -42,6 +43,20 @@
 #define host_print(fmt, arg...)	printf(HFORMAT fmt TFORMAT, \
 					HOST_FORMAT, ##arg, TARGET_FORMAT)
 
+int usb_write(void *h, void const *data, int len)
+{
+	int actual;
+	return libusb_bulk_transfer(h, 0x01, (void *)data, len, &actual, 5000) ?
+		0 : actual;
+}
+
+int usb_read(void *h, void *data, int len)
+{
+	int actual;
+	return libusb_bulk_transfer(h, 0x81, data, len, &actual, 5000) ?
+		0 : actual;
+}
+
 void panic(struct termios *t_restore)
 {
 	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
@@ -50,7 +65,7 @@ void panic(struct termios *t_restore)
 }
 
 struct thread_vars {
-	struct usb_handle *usb;
+	struct libusb_device_handle *usb;
 	pthread_mutex_t usb_mutex;
 	struct termios t_restore;
 };
@@ -73,7 +88,7 @@ void *listenerTask(void *argument)
 	return NULL;
 }
 
-int read_asic_id(struct usb_handle *usb)
+int read_asic_id(struct libusb_device_handle *usb)
 {
 #define LINEWIDTH 16
 	const uint32_t msg_getid = 0xF0030003;
@@ -174,7 +189,7 @@ struct file_data {
 	void *data;
 };
 
-int process_file(struct usb_handle *usb, const char *rootfs,
+int process_file(struct libusb_device_handle *usb, const char *rootfs,
 	struct file_data *fd_vector, struct termios *t_restore)
 {
 	uint32_t i, j, pos, size;
@@ -324,8 +339,8 @@ open_ok:
 	return ret;
 }
 
-int usb_boot(
-	struct usb_handle *usb, void *data, unsigned sz, const char *rootfs)
+int usb_boot(struct libusb_device_handle *usb,
+	void *data, unsigned sz, const char *rootfs)
 {
 	const uint32_t msg_boot  = 0xF0030002;
 	uint32_t msg_size = sz;
@@ -373,30 +388,21 @@ int usb_boot(
 		printf("%c", i);
 		fflush(stdout);
 	}
-	usb_close(usb);
 	pthread_mutex_destroy(&vars.usb_mutex);
 	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
 	printf(HFORMAT, HOST_FORMAT);
 	return 0;
 }
 
-int match_omap4_bootloader(struct usb_ifc_info *ifc)
-{
-	if (ifc->dev_vendor != 0x0451)
-		return -1;
-	if ((ifc->dev_product != 0xD010) && (ifc->dev_product != 0xD00F))
-		return -1;
-	return 0;
-}
-
 int main(int argc, char **argv)
 {
 	void *data;
 	unsigned sz;
 	struct stat s;
 	int fd;
-	struct usb_handle *usb;
-	int once;
+	int ret;
+	struct libusb_context       *ctx = NULL;
+	struct libusb_device_handle *usb = NULL;
 
 	if (argc != 3) {
 		printf("usage: %s <xloader> <rootfs>\n", argv[0]);
@@ -416,16 +422,34 @@ int main(int argc, char **argv)
 	sz = s.st_size;
 	close(fd);
 	argv++;
+	if (libusb_init(&ctx)) {
+		printf("cannot initialize libusb\n");
+		return -1;
+	}
 	printf(HFORMAT, HOST_FORMAT);
-	for (once = 1;;) {
-		usb = usb_open(match_omap4_bootloader);
-		if (usb)
-			return usb_boot(usb, data, sz, argv[0]);
-		if (once) {
-			once = 0;
-			printf("waiting for OMAP44xx device...\n");
+	printf("waiting for OMAP44xx device...\n");
+	while (1) {
+		if (!usb)
+			usb = libusb_open_device_with_vid_pid(
+				ctx, 0x0451, 0xD010);
+		if (!usb)
+			usb = libusb_open_device_with_vid_pid(
+				ctx, 0x0451, 0xD00F);
+		if (usb) {
+			libusb_detach_kernel_driver(usb, 0);
+			ret = libusb_set_configuration(usb, 1);
+			if (ret)
+				break;
+			ret = libusb_claim_interface(usb, 0);
+			if (ret)
+				break;
+			ret = usb_boot(usb, data, sz, argv[0]);
+			break;
 		}
 		usleep(250000);
 	}
-	return -1;
+	libusb_release_interface(usb, 0);
+	libusb_close(usb);
+	libusb_exit(ctx);
+	return ret;
 }
diff --git a/scripts/omap4_usbboot/.gitignore b/scripts/omap4_usbboot/.gitignore
deleted file mode 100644
index 1975a2172..000000000
--- a/scripts/omap4_usbboot/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-omap4_usbboot
diff --git a/scripts/omap4_usbboot/Makefile b/scripts/omap4_usbboot/Makefile
deleted file mode 100644
index af6444b0e..000000000
--- a/scripts/omap4_usbboot/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-HOSTLOADLIBES_omap4_usbboot = -lpthread
-omap4_usbboot-objs := usb_linux.o omap4_usbboot.o
-hostprogs-$(CONFIG_OMAP4_USBBOOT) += omap4_usbboot
-
-always	:= $(hostprogs-y)
diff --git a/scripts/omap4_usbboot/usb.h b/scripts/omap4_usbboot/usb.h
deleted file mode 100644
index d50aa6aa6..000000000
--- a/scripts/omap4_usbboot/usb.h
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * Copyright (C) 2008 The Android Open Source Project
- * All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
- * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
- * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
- * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
- * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
- * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
- * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
- * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
- * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
- * SUCH DAMAGE.
- */
-
-#ifndef _USB_H_
-#define _USB_H_
-
-struct usb_ifc_info {
-	/* from device descriptor */
-	unsigned short dev_vendor;
-	unsigned short dev_product;
-
-	unsigned char dev_class;
-	unsigned char dev_subclass;
-	unsigned char dev_protocol;
-
-	unsigned char ifc_class;
-	unsigned char ifc_subclass;
-	unsigned char ifc_protocol;
-
-	unsigned char has_bulk_in;
-	unsigned char has_bulk_out;
-
-	unsigned char writable;
-
-	char serial_number[256];
-};
-
-typedef int (*ifc_match_func)(struct usb_ifc_info *ifc);
-
-struct usb_handle *usb_open(ifc_match_func callback);
-int usb_close(struct usb_handle *h);
-int usb_read(struct usb_handle *h, void *_data, int len);
-int usb_write(struct usb_handle *h, const void *_data, int len);
-
-
-#endif
diff --git a/scripts/omap4_usbboot/usb_linux.c b/scripts/omap4_usbboot/usb_linux.c
deleted file mode 100644
index 9a6e0b84d..000000000
--- a/scripts/omap4_usbboot/usb_linux.c
+++ /dev/null
@@ -1,397 +0,0 @@
-/*
- * Copyright (C) 2008 The Android Open Source Project
- * All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
- * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
- * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
- * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
- * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
- * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
- * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
- * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
- * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
- * SUCH DAMAGE.
- */
-
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <string.h>
-
-#include <sys/ioctl.h>
-#include <sys/types.h>
-#include <dirent.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <pthread.h>
-#include <ctype.h>
-
-#include <linux/usbdevice_fs.h>
-#include <linux/usbdevice_fs.h>
-#include <linux/version.h>
-#include <linux/usb/ch9.h>
-#include <asm/byteorder.h>
-
-#include "usb.h"
-
-#define MAX_RETRIES 2
-
-#ifdef TRACE_USB
-#define DBG1(x...) fprintf(stderr, x)
-#define DBG(x...) fprintf(stderr, x)
-#else
-#define DBG(x...)
-#define DBG1(x...)
-#endif
-
-struct usb_handle {
-	char fname[64];
-	int desc;
-	unsigned char ep_in;
-	unsigned char ep_out;
-};
-
-static inline int badname(const char *name)
-{
-	while (*name) {
-		if (!isdigit(*name++))
-			return 1;
-	}
-	return 0;
-}
-
-static int check(void *_desc, int len, unsigned type, int size)
-{
-	unsigned char *desc = _desc;
-
-	if (len < size)
-		return -1;
-	if (desc[0] < size)
-		return -1;
-	if (desc[0] > len)
-		return -1;
-	if (desc[1] != type)
-		return -1;
-
-	return 0;
-}
-
-static int filter_usb_device(int fd, char *ptr, int len, int writable,
-	ifc_match_func callback, int *ept_in_id, int *ept_out_id, int *ifc_id)
-{
-	struct usb_device_descriptor *dev;
-	struct usb_config_descriptor *cfg;
-	struct usb_interface_descriptor *ifc;
-	struct usb_endpoint_descriptor *ept;
-	struct usb_ifc_info info;
-
-	int in, out;
-	unsigned i;
-	unsigned e;
-
-	if (check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
-		return -1;
-	dev = (void *) ptr;
-	len -= dev->bLength;
-	ptr += dev->bLength;
-
-	if (check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
-		return -1;
-	cfg = (void *) ptr;
-	len -= cfg->bLength;
-	ptr += cfg->bLength;
-
-	info.dev_vendor = dev->idVendor;
-	info.dev_product = dev->idProduct;
-	info.dev_class = dev->bDeviceClass;
-	info.dev_subclass = dev->bDeviceSubClass;
-	info.dev_protocol = dev->bDeviceProtocol;
-	info.writable = writable;
-
-	/* read device serial number (if there is one) */
-	info.serial_number[0] = 0;
-	if (dev->iSerialNumber) {
-		struct usbdevfs_ctrltransfer  ctrl;
-		__u16 buffer[128];
-		int result;
-
-		memset(buffer, 0, sizeof(buffer));
-
-		ctrl.bRequestType = USB_DIR_IN|
-			USB_TYPE_STANDARD|USB_RECIP_DEVICE;
-		ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
-		ctrl.wValue = (USB_DT_STRING << 8) | dev->iSerialNumber;
-		ctrl.wIndex = 0;
-		ctrl.wLength = sizeof(buffer);
-		ctrl.data = buffer;
-		ctrl.timeout = 50;
-
-		result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
-		if (result > 0) {
-			int i;
-			/* skip first word, and copy the rest to the serial
-			string, changing shorts to bytes. */
-			result /= 2;
-			for (i = 1; i < result; i++)
-				info.serial_number[i - 1] = buffer[i];
-			info.serial_number[i - 1] = 0;
-		}
-	}
-
-	for (i = 0; i < cfg->bNumInterfaces; i++) {
-		if (check(ptr, len, USB_DT_INTERFACE, USB_DT_INTERFACE_SIZE))
-			return -1;
-		ifc = (void *) ptr;
-		len -= ifc->bLength;
-		ptr += ifc->bLength;
-
-		in = -1;
-		out = -1;
-		info.ifc_class = ifc->bInterfaceClass;
-		info.ifc_subclass = ifc->bInterfaceSubClass;
-		info.ifc_protocol = ifc->bInterfaceProtocol;
-
-		for (e = 0; e < ifc->bNumEndpoints; e++) {
-			if (check(ptr, len, USB_DT_ENDPOINT,
-				USB_DT_ENDPOINT_SIZE)
-			)
-				return -1;
-			ept = (void *) ptr;
-			len -= ept->bLength;
-			ptr += ept->bLength;
-
-			if ((ept->bmAttributes & 0x03) != 0x02)
-				continue;
-
-			if (ept->bEndpointAddress & 0x80)
-				in = ept->bEndpointAddress;
-			else
-				out = ept->bEndpointAddress;
-		}
-
-		info.has_bulk_in = (in != -1);
-		info.has_bulk_out = (out != -1);
-
-		if (callback(&info) == 0) {
-			*ept_in_id = in;
-			*ept_out_id = out;
-			*ifc_id = ifc->bInterfaceNumber;
-			return 0;
-		}
-	}
-
-	return -1;
-}
-
-static struct usb_handle *find_usb_device(
-	const char *base, ifc_match_func callback)
-{
-	struct usb_handle *usb = 0;
-	char busname[64], devname[64];
-	char desc[1024];
-	int n, in, out, ifc;
-
-	DIR *busdir, *devdir;
-	struct dirent *de;
-	int fd;
-	int writable;
-
-	busdir = opendir(base);
-	if (busdir == 0)
-		return 0;
-
-	while ((de = readdir(busdir)) && (usb == 0)) {
-		if (badname(de->d_name))
-			continue;
-
-		sprintf(busname, "%s/%s", base, de->d_name);
-		devdir = opendir(busname);
-		if (devdir == 0)
-			continue;
-
-		/* DBG("[ scanning %s ]\n", busname); */
-		while ((de = readdir(devdir)) && (usb == 0)) {
-
-			if (badname(de->d_name))
-				continue;
-			sprintf(devname, "%s/%s", busname, de->d_name);
-
-			/* DBG("[ scanning %s ]\n", devname); */
-			writable = 1;
-			fd = open(devname, O_RDWR);
-			if (fd < 0) {
-				/* Check if we have read-only access,
-				so we can give a helpful diagnostic
-				like "adb devices" does. */
-				writable = 0;
-				fd = open(devname, O_RDONLY);
-				if (fd < 0)
-					continue;
-			}
-
-			n = read(fd, desc, sizeof(desc));
-
-			if (filter_usb_device(fd, desc, n, writable,
-				callback, &in, &out, &ifc) == 0
-			) {
-				usb = calloc(1, sizeof(struct usb_handle));
-				strcpy(usb->fname, devname);
-				usb->ep_in = in;
-				usb->ep_out = out;
-				usb->desc = fd;
-
-				n = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &ifc);
-				if (n != 0) {
-					close(fd);
-					free(usb);
-					usb = 0;
-					continue;
-				}
-			} else
-				close(fd);
-		}
-		closedir(devdir);
-	}
-	closedir(busdir);
-
-	return usb;
-}
-
-int usb_write(struct usb_handle *h, const void *_data, int len)
-{
-	unsigned char *data = (unsigned char *) _data;
-	unsigned count = 0;
-	struct usbdevfs_bulktransfer bulk;
-	int n;
-
-	if (h->ep_out == 0)
-		return -1;
-
-	if (len == 0) {
-		bulk.ep = h->ep_out;
-		bulk.len = 0;
-		bulk.data = data;
-		bulk.timeout = 0;
-
-		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-		if (n != 0) {
-			fprintf(stderr, "ERROR: n = %d, errno = %d (%s)\n",
-			n, errno, strerror(errno));
-			return -1;
-		}
-		return 0;
-	}
-
-	while (len > 0) {
-		int xfer;
-		xfer = (len > 4096) ? 4096 : len;
-
-		bulk.ep = h->ep_out;
-		bulk.len = xfer;
-		bulk.data = data;
-		bulk.timeout = 0;
-
-		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-		if (n != xfer) {
-			DBG("ERROR: n = %d, errno = %d (%s)\n",
-				n, errno, strerror(errno));
-			return -1;
-		}
-
-		count += xfer;
-		len -= xfer;
-		data += xfer;
-	}
-
-	return count;
-}
-
-int usb_read(struct usb_handle *h, void *_data, int len)
-{
-	unsigned char *data = (unsigned char *) _data;
-	unsigned count = 0;
-	struct usbdevfs_bulktransfer bulk;
-	int n, retry;
-
-	if (h->ep_in == 0)
-		return -1;
-
-	while (len > 0) {
-		int xfer = (len > 4096) ? 4096 : len;
-
-		bulk.ep = h->ep_in;
-		bulk.len = xfer;
-		bulk.data = data;
-		bulk.timeout = 0;
-		retry = 0;
-
-		do {
-			DBG("[ usb read %d fd = %d], fname=%s\n",
-				xfer, h->desc, h->fname);
-			n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-			DBG("[ usb read %d ] = %d, fname=%s, Retry %d\n",
-			xfer, n, h->fname, retry);
-
-			if (n < 0) {
-				DBG1("ERROR: n = %d, errno = %d (%s)\n",
-				n, errno, strerror(errno));
-				if (++retry > MAX_RETRIES)
-					return -1;
-				usleep(10000);
-			}
-		} while (n < 0);
-
-		count += n;
-		len -= n;
-		data += n;
-
-		if (n < xfer)
-			break;
-	}
-
-	return count;
-}
-
-void usb_kick(struct usb_handle *h)
-{
-	int fd;
-
-	fd = h->desc;
-	h->desc = -1;
-	if (fd >= 0) {
-		close(fd);
-		DBG("[ usb closed %d ]\n", fd);
-	}
-}
-
-int usb_close(struct usb_handle *h)
-{
-	int fd;
-
-	fd = h->desc;
-	h->desc = -1;
-	if (fd >= 0) {
-		close(fd);
-		DBG("[ usb closed %d ]\n", fd);
-	}
-
-	return 0;
-}
-
-struct usb_handle *usb_open(ifc_match_func callback)
-{
-	return find_usb_device("/dev/bus/usb", callback);
-}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
