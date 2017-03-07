Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clDCy-0000Fl-KP
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 11:23:14 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  7 Mar 2017 12:22:49 +0100
Message-Id: <20170307112249.10689-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] scripts: imx/mxs remove mxs-usb-loader
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

... and use imx-usb-loader instead

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |   7 +-
 arch/arm/mach-mxs/Kconfig |   7 +-
 scripts/Makefile          |   7 +-
 scripts/imx/Kconfig       |   6 ++
 scripts/mxs-usb-loader.c  | 236 ----------------------------------------------
 5 files changed, 11 insertions(+), 252 deletions(-)
 create mode 100644 scripts/imx/Kconfig
 delete mode 100644 scripts/mxs-usb-loader.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9dbe31c4b..420b52281 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -632,12 +632,7 @@ endmenu
 
 menu "i.MX specific settings"
 
-config ARCH_IMX_USBLOADER
-	bool "compile imx-usb-loader"
-	help
-	  imx-usb-loader is a tool to upload and start imximages to an i.MX SoC
-	  in ROM boot mode. It requires libusb, so make sure you have the libusb
-	  devel package installed on your machine.
+source scripts/imx/Kconfig
 
 config IMX_IIM
 	tristate "IIM fusebox device"
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index facab9c25..25e2a8d04 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -143,11 +143,6 @@ endif
 
 endmenu
 
-config ARCH_MXS_USBLOADER
-	bool "compile mxs-usb-loader"
-	help
-	  mxs-usb-loader is a tool to upload and start mxs bootstream images to an
-	  i.MX SoC in ROM boot mode. It requires libusb, so make sure you have the libusb
-	  devel package installed on your machine.
+source scripts/imx/Kconfig
 
 endif
diff --git a/scripts/Makefile b/scripts/Makefile
index a5c16b2f3..78bb7d5e2 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -22,16 +22,15 @@ hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_ARCH_MXS)     += mxsimage mxsboot
 HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLOADLIBES_mxsimage  = `pkg-config --libs openssl`
-HOSTCFLAGS_mxs-usb-loader.o = `pkg-config --cflags libusb-1.0`
-HOSTLOADLIBES_mxs-usb-loader  = `pkg-config --libs libusb-1.0`
-hostprogs-$(CONFIG_ARCH_MXS_USBLOADER)  += mxs-usb-loader
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
 hostprogs-$(CONFIG_OMAP3_USB_LOADER)  += omap3-usb-loader
 
 subdir-y			+= mod
 subdir-$(CONFIG_OMAP4_USBBOOT)	+= omap4_usbboot
-subdir-$(CONFIG_ARCH_IMX)	+= imx
+ifneq ($(filter y,$(CONFIG_ARCH_IMX) $(CONFIG_ARCH_MXS)),)
+subdir-y			+= imx
+endif
 subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
 subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
diff --git a/scripts/imx/Kconfig b/scripts/imx/Kconfig
new file mode 100644
index 000000000..de052d070
--- /dev/null
+++ b/scripts/imx/Kconfig
@@ -0,0 +1,6 @@
+config ARCH_IMX_USBLOADER
+	bool "compile imx-usb-loader"
+	help
+	  imx-usb-loader is a tool to upload and start imximages to an i.MX SoC
+	  in ROM boot mode. It requires libusb, so make sure you have the libusb
+	  devel package installed on your machine.
diff --git a/scripts/mxs-usb-loader.c b/scripts/mxs-usb-loader.c
deleted file mode 100644
index 8529274d6..000000000
--- a/scripts/mxs-usb-loader.c
+++ /dev/null
@@ -1,236 +0,0 @@
-/***************************************************************************
- *             __________               __   ___.
- *   Open      \______   \ ____   ____ |  | _\_ |__   _______  ___
- *   Source     |       _//  _ \_/ ___\|  |/ /| __ \ /  _ \  \/  /
- *   Jukebox    |    |   (  <_> )  \___|    < | \_\ (  <_> > <  <
- *   Firmware   |____|_  /\____/ \___  >__|_ \|___  /\____/__/\_ \
- *                     \/            \/     \/    \/            \/
- * $Id$
- *
- * Copyright (C) 2010 Amaury Pouly
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- *
- * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
- * KIND, either express or implied.
- *
- ****************************************************************************/
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-#include <libusb.h>
-#include <stdint.h>
-
-#ifndef MIN
-#define MIN(a,b) ((a) < (b) ? (a) : (b))
-#endif
-
-void put32le(uint8_t * buf, uint32_t i)
-{
-	*buf++ = i & 0xff;
-	*buf++ = (i >> 8) & 0xff;
-	*buf++ = (i >> 16) & 0xff;
-	*buf++ = (i >> 24) & 0xff;
-}
-
-void put32be(uint8_t * buf, uint32_t i)
-{
-	*buf++ = (i >> 24) & 0xff;
-	*buf++ = (i >> 16) & 0xff;
-	*buf++ = (i >> 8) & 0xff;
-	*buf++ = i & 0xff;
-}
-
-enum dev_type_t {
-	HID_DEVICE,
-	RECOVERY_DEVICE,
-};
-
-struct dev_info_t {
-	uint16_t vendor_id;
-	uint16_t product_id;
-	unsigned xfer_size;
-	enum dev_type_t dev_type;
-};
-
-struct dev_info_t g_dev_info[] = {
-	{0x066f, 0x3780, 1024, HID_DEVICE},	/* i.MX233 / STMP3780 */
-	{0x066f, 0x3770, 48, HID_DEVICE},	/* STMP3770 */
-	{0x15A2, 0x004F, 1024, HID_DEVICE},	/* i.MX28 */
-	{0x066f, 0x3600, 4096, RECOVERY_DEVICE},	/* STMP36xx */
-};
-
-int send_hid(libusb_device_handle * dev, int xfer_size, uint8_t * data,
-	     int size, int nr_xfers)
-{
-	int i;
-
-	libusb_detach_kernel_driver(dev, 0);
-	libusb_detach_kernel_driver(dev, 4);
-
-	libusb_claim_interface(dev, 0);
-	libusb_claim_interface(dev, 4);
-
-	uint8_t *xfer_buf = malloc(1 + xfer_size);
-	uint8_t *p = xfer_buf;
-
-	*p++ = 0x01;		/* Report id */
-
-	/* Command block wrapper */
-	*p++ = 'B';		/* Signature */
-	*p++ = 'L';
-	*p++ = 'T';
-	*p++ = 'C';
-	put32le(p, 0x1);	/* Tag */
-	p += 4;
-	put32le(p, size);	/* Payload size */
-	p += 4;
-	*p++ = 0;		/* Flags (host to device) */
-	p += 2;			/* Reserved */
-
-	/* Command descriptor block */
-	*p++ = 0x02;		/* Firmware download */
-	put32be(p, size);	/* Download size */
-
-	int ret = libusb_control_transfer(dev,
-					  LIBUSB_REQUEST_TYPE_CLASS |
-					  LIBUSB_RECIPIENT_INTERFACE, 0x9,
-					  0x201, 0,
-					  xfer_buf, xfer_size + 1, 1000);
-	if (ret < 0) {
-		printf("transfer error at init step\n");
-		return 1;
-	}
-
-	for (i = 0; i < nr_xfers; i++) {
-		xfer_buf[0] = 0x2;
-		memcpy(&xfer_buf[1], &data[i * xfer_size], xfer_size);
-
-		ret = libusb_control_transfer(dev,
-					      LIBUSB_REQUEST_TYPE_CLASS |
-					      LIBUSB_RECIPIENT_INTERFACE, 0x9,
-					      0x202, 0, xfer_buf, xfer_size + 1,
-					      1000);
-		if (ret < 0) {
-			printf("transfer error at send step %d\n", i);
-			return 1;
-		}
-	}
-
-	int recv_size;
-	ret =
-	    libusb_interrupt_transfer(dev, 0x81, xfer_buf, xfer_size,
-				      &recv_size, 1000);
-	if (ret < 0) {
-		printf("transfer error at final stage\n");
-		return 1;
-	}
-
-	return ret;
-}
-
-int send_recovery(libusb_device_handle * dev, int xfer_size, uint8_t * data,
-		  int size, int nr_xfers)
-{
-	(void)nr_xfers;
-	// there should be no kernel driver attached but in doubt...
-	libusb_detach_kernel_driver(dev, 0);
-	libusb_claim_interface(dev, 0);
-
-	int sent = 0;
-	while (sent < size) {
-		int xfered;
-		int len = MIN(size - sent, xfer_size);
-		int ret =
-		    libusb_bulk_transfer(dev, 1, data + sent, len, &xfered,
-					 1000);
-		if (ret < 0) {
-			printf("transfer error at send offset %d\n", sent);
-			return 1;
-		}
-		if (xfered == 0) {
-			printf("empty transfer at step offset %d\n", sent);
-			return 2;
-		}
-		sent += xfered;
-	}
-	return 0;
-}
-
-int main(int argc, char **argv)
-{
-	if (argc != 3) {
-		printf("usage: %s <xfer size> <file>\n", argv[0]);
-		printf
-		    ("If <xfer size> is set to zero, the preferred one is used.\n");
-		return 1;
-	}
-
-	char *end;
-	int xfer_size = strtol(argv[1], &end, 0);
-	if (end != (argv[1] + strlen(argv[1]))) {
-		printf("Invalid transfer size !\n");
-		return 1;
-	}
-
-	libusb_device_handle *dev;
-
-	libusb_init(NULL);
-
-	libusb_set_debug(NULL, 3);
-
-	unsigned i;
-	for (i = 0; i < sizeof(g_dev_info) / sizeof(g_dev_info[0]); i++) {
-		dev = libusb_open_device_with_vid_pid(NULL,
-						      g_dev_info[i].vendor_id,
-						      g_dev_info[i].product_id);
-		if (dev == NULL)
-			continue;
-		if (xfer_size == 0)
-			xfer_size = g_dev_info[i].xfer_size;
-		printf("Found a match for %04x:%04x\n",
-		       g_dev_info[i].vendor_id, g_dev_info[i].product_id);
-		break;
-	}
-	if (dev == NULL) {
-		printf("Cannot open device\n");
-		return 1;
-	}
-
-	FILE *f = fopen(argv[2], "r");
-	if (f == NULL) {
-		perror("cannot open file");
-		return 1;
-	}
-	fseek(f, 0, SEEK_END);
-	size_t size = ftell(f);
-	fseek(f, 0, SEEK_SET);
-
-	printf("Transfer size: %d\n", xfer_size);
-	int nr_xfers = (size + xfer_size - 1) / xfer_size;
-	uint8_t *file_buf = malloc(nr_xfers * xfer_size);
-	memset(file_buf, 0xff, nr_xfers * xfer_size);	// pad with 0xff
-	if (fread(file_buf, size, 1, f) != 1) {
-		perror("read error");
-		fclose(f);
-		return 1;
-	}
-	fclose(f);
-
-	switch (g_dev_info[i].dev_type) {
-	case HID_DEVICE:
-		send_hid(dev, xfer_size, file_buf, size, nr_xfers);
-		break;
-	case RECOVERY_DEVICE:
-		send_recovery(dev, xfer_size, file_buf, size, nr_xfers);
-		break;
-	default:
-		printf("unknown device type\n");
-		break;
-	}
-
-	return 0;
-}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
