Delivery-date: Fri, 27 Sep 2024 12:43:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Rb-003N4S-1X
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RL-0005nI-HU
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=usGbUqLDI7GvBDYVEfQMk+z+Kl2GN3gJq99rqwdgTII=; b=OTHUhGq+xLksl1ORgBMui8ZDOJ
	LGbsFJpPwHsGyKuELt5Ohky5Ir1J8WcqkdGK/MH991fZ3HTvIKVwvDDAzqvA4wQlyGyFDEvfJrB7H
	kki4YdbXLo+l8e0xeBtjE0jx38RFhFh+d7V04j9DMouCykKexpfO6+zgZh09aVd70vs9jLNTMDBzg
	a5OOqEmDqqHs6evw9etS+d+GjF42L3gFadCV2C7JKQpbM1w7xF+TWDg7USJDLXtOcpCzRa1d1qH0P
	e22j1GQWlnWfIPsweKLF/zoh65zAh8RFRPJBpK9RodftHWYA7g4DxJieHn81+WigsCZuUgB+k3xP4
	L8u59YLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QA-0000000AqhR-18JZ;
	Fri, 27 Sep 2024 10:41:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ly-0000000ApvH-2vzz
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:37:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-0002cx-FC; Fri, 27 Sep 2024 12:37:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-001tyy-1B; Fri, 27 Sep 2024 12:37:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1L;
	Fri, 27 Sep 2024 12:37:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240927-vop2-v2-2-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=29203;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rXqY8fTLqldiEki0BMNg3GI2uhMsm3jST7UdzjC6mQ8=;
 b=ll7OL8g3HkTO/ZT1VwPMEMPizLxjL0vLuweuhhCAAGzeHzaBUb35NYL3Q47lZLceRoqUD2csa
 nE2lQiAV31ACfWaCO1IWkxSb/W63n8V/5xgVHhuj1Q9ncjOag4Cln8R
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_033739_256237_24D85499 
X-CRM114-Status: GOOD (  29.60  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/15] video: add videomode helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has three different structures to describle video modes: The
FB subsystem specific struct fb_videomode, the DRM subsystem specific
struct drm_display_mode and one to rule them all, struct videomode.

In barebox we used to stick to struct fb_videomode, but as new graphic
drivers are likely to be derived from the DRM subsystem, add the
remaining struct types and add functions to convert between them.

The functions are taken from Linux with some adjustments of the function
names for consistency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Makefile        |   2 +-
 drivers/video/mode-helpers.c  | 174 ++++++++++++++++++
 include/fb.h                  |  12 ++
 include/uapi/drm/drm_mode.h   |  93 ++++++++++
 include/video/drm/drm_modes.h | 409 ++++++++++++++++++++++++++++++++++++++++++
 include/video/videomode.h     |  40 +++++
 6 files changed, 729 insertions(+), 1 deletion(-)

diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 85cffb5a33..9e6a241a33 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO) += fb.o
+obj-$(CONFIG_VIDEO) += fb.o mode-helpers.o
 obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
diff --git a/drivers/video/mode-helpers.c b/drivers/video/mode-helpers.c
new file mode 100644
index 0000000000..2ad3d6b8c0
--- /dev/null
+++ b/drivers/video/mode-helpers.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <fb.h>
+#include <video/drm/drm_modes.h>
+#include <video/videomode.h>
+
+/**
+ * drm_display_mode_from_videomode - fill in @dmode using @vm,
+ * @vm: videomode structure to use as source
+ * @dmode: drm_display_mode structure to use as destination
+ *
+ * Fills out @dmode using the display mode specified in @vm.
+ */
+void videomode_to_drm_display_mode(const struct videomode *vm,
+				   struct drm_display_mode *dmode)
+{
+	dmode->hdisplay = vm->hactive;
+	dmode->hsync_start = dmode->hdisplay + vm->hfront_porch;
+	dmode->hsync_end = dmode->hsync_start + vm->hsync_len;
+	dmode->htotal = dmode->hsync_end + vm->hback_porch;
+
+	dmode->vdisplay = vm->vactive;
+	dmode->vsync_start = dmode->vdisplay + vm->vfront_porch;
+	dmode->vsync_end = dmode->vsync_start + vm->vsync_len;
+	dmode->vtotal = dmode->vsync_end + vm->vback_porch;
+
+	dmode->clock = vm->pixelclock / 1000;
+
+	dmode->flags = 0;
+	if (vm->flags & DISPLAY_FLAGS_HSYNC_HIGH)
+		dmode->flags |= DRM_MODE_FLAG_PHSYNC;
+	else if (vm->flags & DISPLAY_FLAGS_HSYNC_LOW)
+		dmode->flags |= DRM_MODE_FLAG_NHSYNC;
+	if (vm->flags & DISPLAY_FLAGS_VSYNC_HIGH)
+		dmode->flags |= DRM_MODE_FLAG_PVSYNC;
+	else if (vm->flags & DISPLAY_FLAGS_VSYNC_LOW)
+		dmode->flags |= DRM_MODE_FLAG_NVSYNC;
+	if (vm->flags & DISPLAY_FLAGS_INTERLACED)
+		dmode->flags |= DRM_MODE_FLAG_INTERLACE;
+	if (vm->flags & DISPLAY_FLAGS_DOUBLESCAN)
+		dmode->flags |= DRM_MODE_FLAG_DBLSCAN;
+	if (vm->flags & DISPLAY_FLAGS_DOUBLECLK)
+		dmode->flags |= DRM_MODE_FLAG_DBLCLK;
+}
+
+/**
+ * drm_display_mode_to_videomode - fill in @vm using @dmode,
+ * @dmode: drm_display_mode structure to use as source
+ * @vm: videomode structure to use as destination
+ *
+ * Fills out @vm using the display mode specified in @dmode.
+ */
+void drm_display_mode_to_videomode(const struct drm_display_mode *dmode,
+				   struct videomode *vm)
+{
+	vm->hactive = dmode->hdisplay;
+	vm->hfront_porch = dmode->hsync_start - dmode->hdisplay;
+	vm->hsync_len = dmode->hsync_end - dmode->hsync_start;
+	vm->hback_porch = dmode->htotal - dmode->hsync_end;
+
+	vm->vactive = dmode->vdisplay;
+	vm->vfront_porch = dmode->vsync_start - dmode->vdisplay;
+	vm->vsync_len = dmode->vsync_end - dmode->vsync_start;
+	vm->vback_porch = dmode->vtotal - dmode->vsync_end;
+
+	vm->pixelclock = dmode->clock * 1000;
+
+	vm->flags = 0;
+	if (dmode->flags & DRM_MODE_FLAG_PHSYNC)
+		vm->flags |= DISPLAY_FLAGS_HSYNC_HIGH;
+	else if (dmode->flags & DRM_MODE_FLAG_NHSYNC)
+		vm->flags |= DISPLAY_FLAGS_HSYNC_LOW;
+	if (dmode->flags & DRM_MODE_FLAG_PVSYNC)
+		vm->flags |= DISPLAY_FLAGS_VSYNC_HIGH;
+	else if (dmode->flags & DRM_MODE_FLAG_NVSYNC)
+		vm->flags |= DISPLAY_FLAGS_VSYNC_LOW;
+	if (dmode->flags & DRM_MODE_FLAG_INTERLACE)
+		vm->flags |= DISPLAY_FLAGS_INTERLACED;
+	if (dmode->flags & DRM_MODE_FLAG_DBLSCAN)
+		vm->flags |= DISPLAY_FLAGS_DOUBLESCAN;
+	if (dmode->flags & DRM_MODE_FLAG_DBLCLK)
+		vm->flags |= DISPLAY_FLAGS_DOUBLECLK;
+}
+
+int videomode_to_fb_videomode(const struct videomode *vm,
+			      struct fb_videomode *fbmode)
+{
+	unsigned int htotal, vtotal, total;
+
+	fbmode->xres = vm->hactive;
+	fbmode->left_margin = vm->hback_porch;
+	fbmode->right_margin = vm->hfront_porch;
+	fbmode->hsync_len = vm->hsync_len;
+
+	fbmode->yres = vm->vactive;
+	fbmode->upper_margin = vm->vback_porch;
+	fbmode->lower_margin = vm->vfront_porch;
+	fbmode->vsync_len = vm->vsync_len;
+
+	/* prevent division by zero in KHZ2PICOS macro */
+	fbmode->pixclock = vm->pixelclock ?
+			KHZ2PICOS(vm->pixelclock / 1000) : 0;
+
+	fbmode->sync = 0;
+	fbmode->vmode = 0;
+	if (vm->flags & DISPLAY_FLAGS_HSYNC_HIGH)
+		fbmode->sync |= FB_SYNC_HOR_HIGH_ACT;
+	if (vm->flags & DISPLAY_FLAGS_VSYNC_HIGH)
+		fbmode->sync |= FB_SYNC_VERT_HIGH_ACT;
+	if (vm->flags & DISPLAY_FLAGS_INTERLACED)
+		fbmode->vmode |= FB_VMODE_INTERLACED;
+	if (vm->flags & DISPLAY_FLAGS_DOUBLESCAN)
+		fbmode->vmode |= FB_VMODE_DOUBLE;
+
+	htotal = vm->hactive + vm->hfront_porch + vm->hback_porch +
+		 vm->hsync_len;
+	vtotal = vm->vactive + vm->vfront_porch + vm->vback_porch +
+		 vm->vsync_len;
+	/* prevent division by zero */
+	total = htotal * vtotal;
+	if (total) {
+		fbmode->refresh = vm->pixelclock / total;
+	/* a mode must have htotal and vtotal != 0 or it is invalid */
+	} else {
+		fbmode->refresh = 0;
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+void fb_videomode_to_videomode(const struct fb_videomode *fbmode,
+			       struct videomode *vm)
+{
+	vm->pixelclock = fbmode->pixclock ?
+			 (PICOS2KHZ(fbmode->pixclock) * 1000) : 0;
+	vm->hactive = fbmode->xres;
+	vm->hfront_porch = fbmode->right_margin;
+	vm->hback_porch = fbmode->left_margin;
+	vm->hsync_len = fbmode->hsync_len;
+	vm->vactive = fbmode->yres;
+	vm->vfront_porch = fbmode->lower_margin;
+	vm->vback_porch = fbmode->upper_margin;
+	vm->vsync_len = fbmode->vsync_len;
+
+	vm->flags = 0;
+
+	if (fbmode->sync & FB_SYNC_HOR_HIGH_ACT)
+		vm->flags |= DISPLAY_FLAGS_HSYNC_HIGH;
+	if (fbmode->sync & FB_SYNC_VERT_HIGH_ACT)
+		vm->flags |= DISPLAY_FLAGS_VSYNC_HIGH;
+	if (fbmode->vmode & FB_VMODE_INTERLACED)
+		vm->flags |= DISPLAY_FLAGS_INTERLACED;
+	if (fbmode->vmode & FB_VMODE_DOUBLE)
+		vm->flags |= DISPLAY_FLAGS_DOUBLESCAN;
+}
+
+void fb_videomode_to_drm_display_mode(const struct fb_videomode *fbmode,
+				      struct drm_display_mode *dmode)
+{
+	struct videomode vm = {};
+
+	fb_videomode_to_videomode(fbmode, &vm);
+	videomode_to_drm_display_mode(&vm, dmode);
+}
+
+int drm_display_mode_to_fb_videomode(const struct drm_display_mode *dmode,
+				     struct fb_videomode *fbmode)
+{
+	struct videomode vm = {};
+
+	drm_display_mode_to_videomode(dmode, &vm);
+
+	return videomode_to_fb_videomode(&vm, fbmode);
+}
diff --git a/include/fb.h b/include/fb.h
index 88e6c0e458..2dd55eb83d 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -35,6 +35,11 @@
 #define KHZ2PICOS(a) (1000000000UL/(a))
 
 enum display_flags {
+	DISPLAY_FLAGS_HSYNC_LOW		= BIT(0),
+	DISPLAY_FLAGS_HSYNC_HIGH	= BIT(1),
+	DISPLAY_FLAGS_VSYNC_LOW		= BIT(2),
+	DISPLAY_FLAGS_VSYNC_HIGH	= BIT(3),
+
 	/* data enable flag */
 	DISPLAY_FLAGS_DE_LOW		= BIT(4),
 	DISPLAY_FLAGS_DE_HIGH		= BIT(5),
@@ -42,6 +47,13 @@ enum display_flags {
 	DISPLAY_FLAGS_PIXDATA_POSEDGE	= BIT(6),
 	/* drive data on neg. edge */
 	DISPLAY_FLAGS_PIXDATA_NEGEDGE	= BIT(7),
+	DISPLAY_FLAGS_INTERLACED	= BIT(8),
+	DISPLAY_FLAGS_DOUBLESCAN	= BIT(9),
+	DISPLAY_FLAGS_DOUBLECLK		= BIT(10),
+	/* drive sync on pos. edge */
+	DISPLAY_FLAGS_SYNC_POSEDGE	= BIT(11),
+	/* drive sync on neg. edge */
+	DISPLAY_FLAGS_SYNC_NEGEDGE	= BIT(12),
 };
 
 struct fb_videomode {
diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
new file mode 100644
index 0000000000..63dcf39924
--- /dev/null
+++ b/include/uapi/drm/drm_mode.h
@@ -0,0 +1,93 @@
+/*
+ * Copyright (c) 2007 Dave Airlie <airlied@linux.ie>
+ * Copyright (c) 2007 Jakob Bornecrantz <wallbraker@gmail.com>
+ * Copyright (c) 2008 Red Hat Inc.
+ * Copyright (c) 2007-2008 Tungsten Graphics, Inc., Cedar Park, TX., USA
+ * Copyright (c) 2007-2008 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ */
+
+#ifndef _DRM_MODE_H
+#define _DRM_MODE_H
+
+/**
+ * DOC: overview
+ *
+ * DRM exposes many UAPI and structure definitions to have a consistent
+ * and standardized interface with users.
+ * Userspace can refer to these structure definitions and UAPI formats
+ * to communicate to drivers.
+ */
+
+#define DRM_CONNECTOR_NAME_LEN	32
+#define DRM_DISPLAY_MODE_LEN	32
+#define DRM_PROP_NAME_LEN	32
+
+#define DRM_MODE_TYPE_BUILTIN	(1<<0) /* deprecated */
+#define DRM_MODE_TYPE_CLOCK_C	((1<<1) | DRM_MODE_TYPE_BUILTIN) /* deprecated */
+#define DRM_MODE_TYPE_CRTC_C	((1<<2) | DRM_MODE_TYPE_BUILTIN) /* deprecated */
+#define DRM_MODE_TYPE_PREFERRED	(1<<3)
+#define DRM_MODE_TYPE_DEFAULT	(1<<4) /* deprecated */
+#define DRM_MODE_TYPE_USERDEF	(1<<5)
+#define DRM_MODE_TYPE_DRIVER	(1<<6)
+
+#define DRM_MODE_TYPE_ALL	(DRM_MODE_TYPE_PREFERRED |	\
+				 DRM_MODE_TYPE_USERDEF |	\
+				 DRM_MODE_TYPE_DRIVER)
+
+/* Video mode flags */
+/* bit compatible with the xrandr RR_ definitions (bits 0-13)
+ *
+ * ABI warning: Existing userspace really expects
+ * the mode flags to match the xrandr definitions. Any
+ * changes that don't match the xrandr definitions will
+ * likely need a new client cap or some other mechanism
+ * to avoid breaking existing userspace. This includes
+ * allocating new flags in the previously unused bits!
+ */
+#define DRM_MODE_FLAG_PHSYNC			(1<<0)
+#define DRM_MODE_FLAG_NHSYNC			(1<<1)
+#define DRM_MODE_FLAG_PVSYNC			(1<<2)
+#define DRM_MODE_FLAG_NVSYNC			(1<<3)
+#define DRM_MODE_FLAG_INTERLACE			(1<<4)
+#define DRM_MODE_FLAG_DBLSCAN			(1<<5)
+#define DRM_MODE_FLAG_CSYNC			(1<<6)
+#define DRM_MODE_FLAG_PCSYNC			(1<<7)
+#define DRM_MODE_FLAG_NCSYNC			(1<<8)
+#define DRM_MODE_FLAG_HSKEW			(1<<9) /* hskew provided */
+#define DRM_MODE_FLAG_BCAST			(1<<10) /* deprecated */
+#define DRM_MODE_FLAG_PIXMUX			(1<<11) /* deprecated */
+#define DRM_MODE_FLAG_DBLCLK			(1<<12)
+#define DRM_MODE_FLAG_CLKDIV2			(1<<13)
+
+#define  DRM_MODE_FLAG_ALL	(DRM_MODE_FLAG_PHSYNC |		\
+				 DRM_MODE_FLAG_NHSYNC |		\
+				 DRM_MODE_FLAG_PVSYNC |		\
+				 DRM_MODE_FLAG_NVSYNC |		\
+				 DRM_MODE_FLAG_INTERLACE |	\
+				 DRM_MODE_FLAG_DBLSCAN |	\
+				 DRM_MODE_FLAG_CSYNC |		\
+				 DRM_MODE_FLAG_PCSYNC |		\
+				 DRM_MODE_FLAG_NCSYNC |		\
+				 DRM_MODE_FLAG_HSKEW |		\
+				 DRM_MODE_FLAG_DBLCLK |		\
+				 DRM_MODE_FLAG_CLKDIV2)
+
+#endif
diff --git a/include/video/drm/drm_modes.h b/include/video/drm/drm_modes.h
new file mode 100644
index 0000000000..afce8a25a9
--- /dev/null
+++ b/include/video/drm/drm_modes.h
@@ -0,0 +1,409 @@
+/*
+ * Copyright © 2006 Keith Packard
+ * Copyright © 2007-2008 Dave Airlie
+ * Copyright © 2007-2008 Intel Corporation
+ *   Jesse Barnes <jesse.barnes@intel.com>
+ * Copyright © 2014 Intel Corporation
+ *   Daniel Vetter <daniel.vetter@ffwll.ch>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ */
+#ifndef __DRM_MODES_H__
+#define __DRM_MODES_H__
+
+#include <uapi/drm/drm_mode.h>
+
+/*
+ * Note on terminology:  here, for brevity and convenience, we refer to connector
+ * control chips as 'CRTCs'.  They can control any type of connector, VGA, LVDS,
+ * DVI, etc.  And 'screen' refers to the whole of the visible display, which
+ * may span multiple monitors (and therefore multiple CRTC and connector
+ * structures).
+ */
+
+/**
+ * enum drm_mode_status - hardware support status of a mode
+ * @MODE_OK: Mode OK
+ * @MODE_HSYNC: hsync out of range
+ * @MODE_VSYNC: vsync out of range
+ * @MODE_H_ILLEGAL: mode has illegal horizontal timings
+ * @MODE_V_ILLEGAL: mode has illegal vertical timings
+ * @MODE_BAD_WIDTH: requires an unsupported linepitch
+ * @MODE_NOMODE: no mode with a matching name
+ * @MODE_NO_INTERLACE: interlaced mode not supported
+ * @MODE_NO_DBLESCAN: doublescan mode not supported
+ * @MODE_NO_VSCAN: multiscan mode not supported
+ * @MODE_MEM: insufficient video memory
+ * @MODE_VIRTUAL_X: mode width too large for specified virtual size
+ * @MODE_VIRTUAL_Y: mode height too large for specified virtual size
+ * @MODE_MEM_VIRT: insufficient video memory given virtual size
+ * @MODE_NOCLOCK: no fixed clock available
+ * @MODE_CLOCK_HIGH: clock required is too high
+ * @MODE_CLOCK_LOW: clock required is too low
+ * @MODE_CLOCK_RANGE: clock/mode isn't in a ClockRange
+ * @MODE_BAD_HVALUE: horizontal timing was out of range
+ * @MODE_BAD_VVALUE: vertical timing was out of range
+ * @MODE_BAD_VSCAN: VScan value out of range
+ * @MODE_HSYNC_NARROW: horizontal sync too narrow
+ * @MODE_HSYNC_WIDE: horizontal sync too wide
+ * @MODE_HBLANK_NARROW: horizontal blanking too narrow
+ * @MODE_HBLANK_WIDE: horizontal blanking too wide
+ * @MODE_VSYNC_NARROW: vertical sync too narrow
+ * @MODE_VSYNC_WIDE: vertical sync too wide
+ * @MODE_VBLANK_NARROW: vertical blanking too narrow
+ * @MODE_VBLANK_WIDE: vertical blanking too wide
+ * @MODE_PANEL: exceeds panel dimensions
+ * @MODE_INTERLACE_WIDTH: width too large for interlaced mode
+ * @MODE_ONE_WIDTH: only one width is supported
+ * @MODE_ONE_HEIGHT: only one height is supported
+ * @MODE_ONE_SIZE: only one resolution is supported
+ * @MODE_NO_REDUCED: monitor doesn't accept reduced blanking
+ * @MODE_NO_STEREO: stereo modes not supported
+ * @MODE_NO_420: ycbcr 420 modes not supported
+ * @MODE_STALE: mode has become stale
+ * @MODE_BAD: unspecified reason
+ * @MODE_ERROR: error condition
+ *
+ * This enum is used to filter out modes not supported by the driver/hardware
+ * combination.
+ */
+enum drm_mode_status {
+	MODE_OK = 0,
+	MODE_HSYNC,
+	MODE_VSYNC,
+	MODE_H_ILLEGAL,
+	MODE_V_ILLEGAL,
+	MODE_BAD_WIDTH,
+	MODE_NOMODE,
+	MODE_NO_INTERLACE,
+	MODE_NO_DBLESCAN,
+	MODE_NO_VSCAN,
+	MODE_MEM,
+	MODE_VIRTUAL_X,
+	MODE_VIRTUAL_Y,
+	MODE_MEM_VIRT,
+	MODE_NOCLOCK,
+	MODE_CLOCK_HIGH,
+	MODE_CLOCK_LOW,
+	MODE_CLOCK_RANGE,
+	MODE_BAD_HVALUE,
+	MODE_BAD_VVALUE,
+	MODE_BAD_VSCAN,
+	MODE_HSYNC_NARROW,
+	MODE_HSYNC_WIDE,
+	MODE_HBLANK_NARROW,
+	MODE_HBLANK_WIDE,
+	MODE_VSYNC_NARROW,
+	MODE_VSYNC_WIDE,
+	MODE_VBLANK_NARROW,
+	MODE_VBLANK_WIDE,
+	MODE_PANEL,
+	MODE_INTERLACE_WIDTH,
+	MODE_ONE_WIDTH,
+	MODE_ONE_HEIGHT,
+	MODE_ONE_SIZE,
+	MODE_NO_REDUCED,
+	MODE_NO_STEREO,
+	MODE_NO_420,
+	MODE_STALE = -3,
+	MODE_BAD = -2,
+	MODE_ERROR = -1
+};
+
+#define DRM_MODE(nm, t, c, hd, hss, hse, ht, hsk, vd, vss, vse, vt, vs, f) \
+	.name = nm, .status = 0, .type = (t), .clock = (c), \
+	.hdisplay = (hd), .hsync_start = (hss), .hsync_end = (hse), \
+	.htotal = (ht), .hskew = (hsk), .vdisplay = (vd), \
+	.vsync_start = (vss), .vsync_end = (vse), .vtotal = (vt), \
+	.vscan = (vs), .flags = (f)
+
+/**
+ * DRM_MODE_RES_MM - Calculates the display size from resolution and DPI
+ * @res: The resolution in pixel
+ * @dpi: The number of dots per inch
+ */
+#define DRM_MODE_RES_MM(res, dpi)	\
+	(((res) * 254ul) / ((dpi) * 10ul))
+
+#define __DRM_MODE_INIT(pix, hd, vd, hd_mm, vd_mm) \
+	.type = DRM_MODE_TYPE_DRIVER, .clock = (pix), \
+	.hdisplay = (hd), .hsync_start = (hd), .hsync_end = (hd), \
+	.htotal = (hd), .vdisplay = (vd), .vsync_start = (vd), \
+	.vsync_end = (vd), .vtotal = (vd), .width_mm = (hd_mm), \
+	.height_mm = (vd_mm)
+
+/**
+ * DRM_MODE_INIT - Initialize display mode
+ * @hz: Vertical refresh rate in Hertz
+ * @hd: Horizontal resolution, width
+ * @vd: Vertical resolution, height
+ * @hd_mm: Display width in millimeters
+ * @vd_mm: Display height in millimeters
+ *
+ * This macro initializes a &drm_display_mode that contains information about
+ * refresh rate, resolution and physical size.
+ */
+#define DRM_MODE_INIT(hz, hd, vd, hd_mm, vd_mm) \
+	__DRM_MODE_INIT((hd) * (vd) * (hz) / 1000 /* kHz */, hd, vd, hd_mm, vd_mm)
+
+/**
+ * DRM_SIMPLE_MODE - Simple display mode
+ * @hd: Horizontal resolution, width
+ * @vd: Vertical resolution, height
+ * @hd_mm: Display width in millimeters
+ * @vd_mm: Display height in millimeters
+ *
+ * This macro initializes a &drm_display_mode that only contains info about
+ * resolution and physical size.
+ */
+#define DRM_SIMPLE_MODE(hd, vd, hd_mm, vd_mm) \
+	__DRM_MODE_INIT(1 /* pass validation */, hd, vd, hd_mm, vd_mm)
+
+#define CRTC_INTERLACE_HALVE_V	(1 << 0) /* halve V values for interlacing */
+#define CRTC_STEREO_DOUBLE	(1 << 1) /* adjust timings for stereo modes */
+#define CRTC_NO_DBLSCAN		(1 << 2) /* don't adjust doublescan */
+#define CRTC_NO_VSCAN		(1 << 3) /* don't adjust doublescan */
+#define CRTC_STEREO_DOUBLE_ONLY	(CRTC_STEREO_DOUBLE | CRTC_NO_DBLSCAN | CRTC_NO_VSCAN)
+
+#define DRM_MODE_FLAG_3D_MAX	DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF
+
+#define DRM_MODE_MATCH_TIMINGS (1 << 0)
+#define DRM_MODE_MATCH_CLOCK (1 << 1)
+#define DRM_MODE_MATCH_FLAGS (1 << 2)
+#define DRM_MODE_MATCH_3D_FLAGS (1 << 3)
+#define DRM_MODE_MATCH_ASPECT_RATIO (1 << 4)
+
+/**
+ * struct drm_display_mode - DRM kernel-internal display mode structure
+ * @hdisplay: horizontal display size
+ * @hsync_start: horizontal sync start
+ * @hsync_end: horizontal sync end
+ * @htotal: horizontal total size
+ * @hskew: horizontal skew?!
+ * @vdisplay: vertical display size
+ * @vsync_start: vertical sync start
+ * @vsync_end: vertical sync end
+ * @vtotal: vertical total size
+ * @vscan: vertical scan?!
+ * @crtc_hdisplay: hardware mode horizontal display size
+ * @crtc_hblank_start: hardware mode horizontal blank start
+ * @crtc_hblank_end: hardware mode horizontal blank end
+ * @crtc_hsync_start: hardware mode horizontal sync start
+ * @crtc_hsync_end: hardware mode horizontal sync end
+ * @crtc_htotal: hardware mode horizontal total size
+ * @crtc_hskew: hardware mode horizontal skew?!
+ * @crtc_vdisplay: hardware mode vertical display size
+ * @crtc_vblank_start: hardware mode vertical blank start
+ * @crtc_vblank_end: hardware mode vertical blank end
+ * @crtc_vsync_start: hardware mode vertical sync start
+ * @crtc_vsync_end: hardware mode vertical sync end
+ * @crtc_vtotal: hardware mode vertical total size
+ *
+ * This is the kernel API display mode information structure. For the
+ * user-space version see struct drm_mode_modeinfo.
+ *
+ * The horizontal and vertical timings are defined per the following diagram.
+ *
+ * ::
+ *
+ *
+ *               Active                 Front           Sync           Back
+ *              Region                 Porch                          Porch
+ *     <-----------------------><----------------><-------------><-------------->
+ *       //////////////////////|
+ *      ////////////////////// |
+ *     //////////////////////  |..................               ................
+ *                                                _______________
+ *     <----- [hv]display ----->
+ *     <------------- [hv]sync_start ------------>
+ *     <--------------------- [hv]sync_end --------------------->
+ *     <-------------------------------- [hv]total ----------------------------->*
+ *
+ * This structure contains two copies of timings. First are the plain timings,
+ * which specify the logical mode, as it would be for a progressive 1:1 scanout
+ * at the refresh rate userspace can observe through vblank timestamps. Then
+ * there's the hardware timings, which are corrected for interlacing,
+ * double-clocking and similar things. They are provided as a convenience, and
+ * can be appropriately computed using drm_mode_set_crtcinfo().
+ *
+ * For printing you can use %DRM_MODE_FMT and DRM_MODE_ARG().
+ */
+struct drm_display_mode {
+	/**
+	 * @clock:
+	 *
+	 * Pixel clock in kHz.
+	 */
+	int clock;		/* in kHz */
+	u16 hdisplay;
+	u16 hsync_start;
+	u16 hsync_end;
+	u16 htotal;
+	u16 hskew;
+	u16 vdisplay;
+	u16 vsync_start;
+	u16 vsync_end;
+	u16 vtotal;
+	u16 vscan;
+	/**
+	 * @flags:
+	 *
+	 * Sync and timing flags:
+	 *
+	 *  - DRM_MODE_FLAG_PHSYNC: horizontal sync is active high.
+	 *  - DRM_MODE_FLAG_NHSYNC: horizontal sync is active low.
+	 *  - DRM_MODE_FLAG_PVSYNC: vertical sync is active high.
+	 *  - DRM_MODE_FLAG_NVSYNC: vertical sync is active low.
+	 *  - DRM_MODE_FLAG_INTERLACE: mode is interlaced.
+	 *  - DRM_MODE_FLAG_DBLSCAN: mode uses doublescan.
+	 *  - DRM_MODE_FLAG_CSYNC: mode uses composite sync.
+	 *  - DRM_MODE_FLAG_PCSYNC: composite sync is active high.
+	 *  - DRM_MODE_FLAG_NCSYNC: composite sync is active low.
+	 *  - DRM_MODE_FLAG_HSKEW: hskew provided (not used?).
+	 *  - DRM_MODE_FLAG_BCAST: <deprecated>
+	 *  - DRM_MODE_FLAG_PIXMUX: <deprecated>
+	 *  - DRM_MODE_FLAG_DBLCLK: double-clocked mode.
+	 *  - DRM_MODE_FLAG_CLKDIV2: half-clocked mode.
+	 *
+	 * Additionally there's flags to specify how 3D modes are packed:
+	 *
+	 *  - DRM_MODE_FLAG_3D_NONE: normal, non-3D mode.
+	 *  - DRM_MODE_FLAG_3D_FRAME_PACKING: 2 full frames for left and right.
+	 *  - DRM_MODE_FLAG_3D_FIELD_ALTERNATIVE: interleaved like fields.
+	 *  - DRM_MODE_FLAG_3D_LINE_ALTERNATIVE: interleaved lines.
+	 *  - DRM_MODE_FLAG_3D_SIDE_BY_SIDE_FULL: side-by-side full frames.
+	 *  - DRM_MODE_FLAG_3D_L_DEPTH: ?
+	 *  - DRM_MODE_FLAG_3D_L_DEPTH_GFX_GFX_DEPTH: ?
+	 *  - DRM_MODE_FLAG_3D_TOP_AND_BOTTOM: frame split into top and bottom
+	 *    parts.
+	 *  - DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF: frame split into left and
+	 *    right parts.
+	 */
+	u32 flags;
+
+	/**
+	 * @crtc_clock:
+	 *
+	 * Actual pixel or dot clock in the hardware. This differs from the
+	 * logical @clock when e.g. using interlacing, double-clocking, stereo
+	 * modes or other fancy stuff that changes the timings and signals
+	 * actually sent over the wire.
+	 *
+	 * This is again in kHz.
+	 *
+	 * Note that with digital outputs like HDMI or DP there's usually a
+	 * massive confusion between the dot clock and the signal clock at the
+	 * bit encoding level. Especially when a 8b/10b encoding is used and the
+	 * difference is exactly a factor of 10.
+	 */
+	int crtc_clock;
+	u16 crtc_hdisplay;
+	u16 crtc_hblank_start;
+	u16 crtc_hblank_end;
+	u16 crtc_hsync_start;
+	u16 crtc_hsync_end;
+	u16 crtc_htotal;
+	u16 crtc_hskew;
+	u16 crtc_vdisplay;
+	u16 crtc_vblank_start;
+	u16 crtc_vblank_end;
+	u16 crtc_vsync_start;
+	u16 crtc_vsync_end;
+	u16 crtc_vtotal;
+
+	/**
+	 * @width_mm:
+	 *
+	 * Addressable size of the output in mm, projectors should set this to
+	 * 0.
+	 */
+	u16 width_mm;
+
+	/**
+	 * @height_mm:
+	 *
+	 * Addressable size of the output in mm, projectors should set this to
+	 * 0.
+	 */
+	u16 height_mm;
+
+	/**
+	 * @type:
+	 *
+	 * A bitmask of flags, mostly about the source of a mode. Possible flags
+	 * are:
+	 *
+	 *  - DRM_MODE_TYPE_PREFERRED: Preferred mode, usually the native
+	 *    resolution of an LCD panel. There should only be one preferred
+	 *    mode per connector at any given time.
+	 *  - DRM_MODE_TYPE_DRIVER: Mode created by the driver, which is all of
+	 *    them really. Drivers must set this bit for all modes they create
+	 *    and expose to userspace.
+	 *  - DRM_MODE_TYPE_USERDEF: Mode defined or selected via the kernel
+	 *    command line.
+	 *
+	 * Plus a big list of flags which shouldn't be used at all, but are
+	 * still around since these flags are also used in the userspace ABI.
+	 * We no longer accept modes with these types though:
+	 *
+	 *  - DRM_MODE_TYPE_BUILTIN: Meant for hard-coded modes, unused.
+	 *    Use DRM_MODE_TYPE_DRIVER instead.
+	 *  - DRM_MODE_TYPE_DEFAULT: Again a leftover, use
+	 *    DRM_MODE_TYPE_PREFERRED instead.
+	 *  - DRM_MODE_TYPE_CLOCK_C and DRM_MODE_TYPE_CRTC_C: Define leftovers
+	 *    which are stuck around for hysterical raisins only. No one has an
+	 *    idea what they were meant for. Don't use.
+	 */
+	u8 type;
+
+	/**
+	 * @expose_to_userspace:
+	 *
+	 * Indicates whether the mode is to be exposed to the userspace.
+	 * This is to maintain a set of exposed modes while preparing
+	 * user-mode's list in drm_mode_getconnector ioctl. The purpose of
+	 * this only lies in the ioctl function, and is not to be used
+	 * outside the function.
+	 */
+	bool expose_to_userspace;
+
+	/**
+	 * @head:
+	 *
+	 * struct list_head for mode lists.
+	 */
+	struct list_head head;
+
+	/**
+	 * @name:
+	 *
+	 * Human-readable name of the mode, filled out with drm_mode_set_name().
+	 */
+	char name[DRM_DISPLAY_MODE_LEN];
+
+	/**
+	 * @status:
+	 *
+	 * Status of the mode, used to filter out modes not supported by the
+	 * hardware. See enum &drm_mode_status.
+	 */
+	enum drm_mode_status status;
+};
+
+#endif /* __DRM_MODES_H__ */
diff --git a/include/video/videomode.h b/include/video/videomode.h
new file mode 100644
index 0000000000..868fc3986d
--- /dev/null
+++ b/include/video/videomode.h
@@ -0,0 +1,40 @@
+#ifndef __INCLUDE_VIDEO_VIDEOMODE_H
+#define __INCLUDE_VIDEO_VIDEOMODE_H
+
+#include <fb.h>
+#include <video/drm/drm_modes.h>
+
+/*
+ * Subsystem independent description of a videomode.
+ * Can be generated from struct display_timing.
+ */
+struct videomode {
+	unsigned long pixelclock;	/* pixelclock in Hz */
+
+	u32 hactive;
+	u32 hfront_porch;
+	u32 hback_porch;
+	u32 hsync_len;
+
+	u32 vactive;
+	u32 vfront_porch;
+	u32 vback_porch;
+	u32 vsync_len;
+
+	enum display_flags flags; /* display flags */
+};
+
+void videomode_to_drm_display_mode(const struct videomode *vm,
+				   struct drm_display_mode *dmode);
+void drm_display_mode_to_videomode(const struct drm_display_mode *dmode,
+				   struct videomode *vm);
+int videomode_to_fb_videomode(const struct videomode *vm,
+			      struct fb_videomode *fbmode);
+void fb_videomode_to_videomode(const struct fb_videomode *fbmode,
+			       struct videomode *vm);
+void fb_videomode_to_drm_display_mode(const struct fb_videomode *fbmode,
+				      struct drm_display_mode *dmode);
+int drm_display_mode_to_fb_videomode(const struct drm_display_mode *dmode,
+				     struct fb_videomode *fbmode);
+
+#endif /* __INCLUDE_VIDEO_VIDEOMODE_H */

-- 
2.39.5



