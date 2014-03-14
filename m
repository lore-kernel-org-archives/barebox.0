Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AM-DX
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:43 +0100
Message-Id: <1394807569-23620-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/29] video: Add edid support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig  |   6 +
 drivers/video/Makefile |   1 +
 drivers/video/edid.c   | 909 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/video/edid.h   | 138 ++++++++
 drivers/video/fb.c     |  14 +-
 include/fb.h           |  11 +-
 6 files changed, 1075 insertions(+), 4 deletions(-)
 create mode 100644 drivers/video/edid.c
 create mode 100644 drivers/video/edid.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 5539266..2bab957 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -84,4 +84,10 @@ config DRIVER_VIDEO_SIMPLEFB
 	  Add support for setting up the kernel's simple framebuffer driver
 	  based on the active barebox framebuffer.
 
+config DRIVER_VIDEO_EDID
+	bool "Add EDID support"
+	help
+	  This enabled support for reading and parsing EDID data from an attached
+	  monitor.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index d36d83d..a332848 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_VIDEO) += fb.o
+obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/edid.c b/drivers/video/edid.c
new file mode 100644
index 0000000..828c361
--- /dev/null
+++ b/drivers/video/edid.c
@@ -0,0 +1,909 @@
+/*
+ * drivers/video/edid.c
+ *
+ * Copyright (C) 2002 James Simmons <jsimmons@users.sf.net>
+ *
+ * Credits:
+ *
+ * The EDID Parser is a conglomeration from the following sources:
+ *
+ *   1. SciTech SNAP Graphics Architecture
+ *      Copyright (C) 1991-2002 SciTech Software, Inc. All rights reserved.
+ *
+ *   2. XFree86 4.3.0, interpret_edid.c
+ *      Copyright 1998 by Egbert Eich <Egbert.Eich@Physik.TU-Darmstadt.DE>
+ *
+ *   3. John Fremlin <vii@users.sourceforge.net> and
+ *      Ani Joshi <ajoshi@unixbox.com>
+ *
+ * Generalized Timing Formula is derived from:
+ *
+ *      GTF Spreadsheet by Andy Morrish (1/5/97)
+ *      available at http://www.vesa.org
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file COPYING in the main directory of this archive
+ * for more details.
+ *
+ */
+
+#define pr_fmt(fmt)  "EDID: " fmt
+
+#include <common.h>
+#include <fb.h>
+#include <malloc.h>
+#include <i2c/i2c.h>
+
+#include "edid.h"
+
+#define FBMON_FIX_HEADER  1
+#define FBMON_FIX_INPUT   2
+#define FBMON_FIX_TIMINGS 3
+
+struct broken_edid {
+	u8  manufacturer[4];
+	u32 model;
+	u32 fix;
+};
+
+static const unsigned char edid_v1_header[] = { 0x00, 0xff, 0xff, 0xff,
+	0xff, 0xff, 0xff, 0x00
+};
+
+static int edid_is_serial_block(unsigned char *block)
+{
+	if ((block[0] == 0x00) && (block[1] == 0x00) &&
+	    (block[2] == 0x00) && (block[3] == 0xff) &&
+	    (block[4] == 0x00))
+		return 1;
+	else
+		return 0;
+}
+
+static int edid_is_ascii_block(unsigned char *block)
+{
+	if ((block[0] == 0x00) && (block[1] == 0x00) &&
+	    (block[2] == 0x00) && (block[3] == 0xfe) &&
+	    (block[4] == 0x00))
+		return 1;
+	else
+		return 0;
+}
+
+static int edid_is_limits_block(unsigned char *block)
+{
+	if ((block[0] == 0x00) && (block[1] == 0x00) &&
+	    (block[2] == 0x00) && (block[3] == 0xfd) &&
+	    (block[4] == 0x00))
+		return 1;
+	else
+		return 0;
+}
+
+static int edid_is_monitor_block(unsigned char *block)
+{
+	if ((block[0] == 0x00) && (block[1] == 0x00) &&
+	    (block[2] == 0x00) && (block[3] == 0xfc) &&
+	    (block[4] == 0x00))
+		return 1;
+	else
+		return 0;
+}
+
+static int edid_is_timing_block(unsigned char *block)
+{
+	if ((block[0] != 0x00) || (block[1] != 0x00) ||
+	    (block[2] != 0x00) || (block[4] != 0x00))
+		return 1;
+	else
+		return 0;
+}
+
+static int check_edid(unsigned char *edid)
+{
+	unsigned char *block = edid + ID_MANUFACTURER_NAME, manufacturer[4];
+	unsigned char *b;
+	u32 model;
+	int i, fix = 0, ret = 0;
+
+	manufacturer[0] = ((block[0] & 0x7c) >> 2) + '@';
+	manufacturer[1] = ((block[0] & 0x03) << 3) +
+		((block[1] & 0xe0) >> 5) + '@';
+	manufacturer[2] = (block[1] & 0x1f) + '@';
+	manufacturer[3] = 0;
+	model = block[2] + (block[3] << 8);
+
+	switch (fix) {
+	case FBMON_FIX_HEADER:
+		for (i = 0; i < 8; i++) {
+			if (edid[i] != edid_v1_header[i]) {
+				ret = fix;
+				break;
+			}
+		}
+		break;
+	case FBMON_FIX_INPUT:
+		b = edid + EDID_STRUCT_DISPLAY;
+		/* Only if display is GTF capable will
+		   the input type be reset to analog */
+		if (b[4] & 0x01 && b[0] & 0x80)
+			ret = fix;
+		break;
+	case FBMON_FIX_TIMINGS:
+		b = edid + DETAILED_TIMING_DESCRIPTIONS_START;
+		ret = fix;
+
+		for (i = 0; i < 4; i++) {
+			if (edid_is_limits_block(b)) {
+				ret = 0;
+				break;
+			}
+
+			b += DETAILED_TIMING_DESCRIPTION_SIZE;
+		}
+
+		break;
+	}
+
+	if (ret)
+		printk("fbmon: The EDID Block of "
+		       "Manufacturer: %s Model: 0x%x is known to "
+		       "be broken,\n",  manufacturer, model);
+
+	return ret;
+}
+
+static void fix_edid(unsigned char *edid, int fix)
+{
+	int i;
+	unsigned char *b, csum = 0;
+
+	switch (fix) {
+	case FBMON_FIX_HEADER:
+		printk("fbmon: trying a header reconstruct\n");
+		memcpy(edid, edid_v1_header, 8);
+		break;
+	case FBMON_FIX_INPUT:
+		printk("fbmon: trying to fix input type\n");
+		b = edid + EDID_STRUCT_DISPLAY;
+		b[0] &= ~0x80;
+		edid[127] += 0x80;
+		break;
+	case FBMON_FIX_TIMINGS:
+		printk("fbmon: trying to fix monitor timings\n");
+		b = edid + DETAILED_TIMING_DESCRIPTIONS_START;
+		for (i = 0; i < 4; i++) {
+			if (!(edid_is_serial_block(b) ||
+			      edid_is_ascii_block(b) ||
+			      edid_is_monitor_block(b) ||
+			      edid_is_timing_block(b))) {
+				b[0] = 0x00;
+				b[1] = 0x00;
+				b[2] = 0x00;
+				b[3] = 0xfd;
+				b[4] = 0x00;
+				b[5] = 60;   /* vfmin */
+				b[6] = 60;   /* vfmax */
+				b[7] = 30;   /* hfmin */
+				b[8] = 75;   /* hfmax */
+				b[9] = 17;   /* pixclock - 170 MHz*/
+				b[10] = 0;   /* GTF */
+				break;
+			}
+
+			b += DETAILED_TIMING_DESCRIPTION_SIZE;
+		}
+
+		for (i = 0; i < EDID_LENGTH - 1; i++)
+			csum += edid[i];
+
+		edid[127] = 256 - csum;
+		break;
+	}
+}
+
+static int edid_checksum(unsigned char *edid)
+{
+	unsigned char csum = 0, all_null = 0;
+	int i, err = 0, fix = check_edid(edid);
+
+	if (fix)
+		fix_edid(edid, fix);
+
+	for (i = 0; i < EDID_LENGTH; i++) {
+		csum += edid[i];
+		all_null |= edid[i];
+	}
+
+	if (csum == 0x00 && all_null) {
+		/* checksum passed, everything's good */
+		err = 1;
+	}
+
+	return err;
+}
+
+static int edid_check_header(unsigned char *edid)
+{
+	int i, err = 1, fix = check_edid(edid);
+
+	if (fix)
+		fix_edid(edid, fix);
+
+	for (i = 0; i < 8; i++) {
+		if (edid[i] != edid_v1_header[i])
+			err = 0;
+	}
+
+	return err;
+}
+
+/*
+ * VESA Generalized Timing Formula (GTF)
+ */
+
+#define FLYBACK                     550
+#define V_FRONTPORCH                1
+#define H_OFFSET                    40
+#define H_SCALEFACTOR               20
+#define H_BLANKSCALE                128
+#define H_GRADIENT                  600
+#define C_VAL                       30
+#define M_VAL                       300
+
+struct __fb_timings {
+	u32 dclk;
+	u32 hfreq;
+	u32 vfreq;
+	u32 hactive;
+	u32 vactive;
+	u32 hblank;
+	u32 vblank;
+	u32 htotal;
+	u32 vtotal;
+};
+
+/**
+ * fb_get_vblank - get vertical blank time
+ * @hfreq: horizontal freq
+ *
+ * DESCRIPTION:
+ * vblank = right_margin + vsync_len + left_margin
+ *
+ *    given: right_margin = 1 (V_FRONTPORCH)
+ *           vsync_len    = 3
+ *           flyback      = 550
+ *
+ *                          flyback * hfreq
+ *           left_margin  = --------------- - vsync_len
+ *                           1000000
+ */
+static u32 fb_get_vblank(u32 hfreq)
+{
+	u32 vblank;
+
+	vblank = (hfreq * FLYBACK)/1000;
+	vblank = (vblank + 500)/1000;
+	return (vblank + V_FRONTPORCH);
+}
+
+/**
+ * fb_get_hblank_by_freq - get horizontal blank time given hfreq
+ * @hfreq: horizontal freq
+ * @xres: horizontal resolution in pixels
+ *
+ * DESCRIPTION:
+ *
+ *           xres * duty_cycle
+ * hblank = ------------------
+ *           100 - duty_cycle
+ *
+ * duty cycle = percent of htotal assigned to inactive display
+ * duty cycle = C - (M/Hfreq)
+ *
+ * where: C = ((offset - scale factor) * blank_scale)
+ *            -------------------------------------- + scale factor
+ *                        256
+ *        M = blank_scale * gradient
+ *
+ */
+static u32 fb_get_hblank_by_hfreq(u32 hfreq, u32 xres)
+{
+	u32 c_val, m_val, duty_cycle, hblank;
+
+	c_val = (((H_OFFSET - H_SCALEFACTOR) * H_BLANKSCALE)/256 +
+		 H_SCALEFACTOR) * 1000;
+	m_val = (H_BLANKSCALE * H_GRADIENT)/256;
+	m_val = (m_val * 1000000)/hfreq;
+	duty_cycle = c_val - m_val;
+	hblank = (xres * duty_cycle)/(100000 - duty_cycle);
+	return (hblank);
+}
+
+/**
+ * int_sqrt - rough approximation to sqrt
+ * @x: integer of which to calculate the sqrt
+ *
+ * A very rough approximation to the sqrt() function.
+ */
+unsigned long int_sqrt(unsigned long x)
+{
+	unsigned long b, m, y = 0;
+
+	if (x <= 1)
+		return x;
+
+	m = 1UL << (BITS_PER_LONG - 2);
+	while (m != 0) {
+		b = y + m;
+		y >>= 1;
+
+		if (x >= b) {
+			x -= b;
+			y += m;
+		}
+		m >>= 2;
+	}
+
+	return y;
+}
+EXPORT_SYMBOL(int_sqrt);
+
+/**
+ * fb_get_hfreq - estimate hsync
+ * @vfreq: vertical refresh rate
+ * @yres: vertical resolution
+ *
+ * DESCRIPTION:
+ *
+ *          (yres + front_port) * vfreq * 1000000
+ * hfreq = -------------------------------------
+ *          (1000000 - (vfreq * FLYBACK)
+ *
+ */
+
+static u32 fb_get_hfreq(u32 vfreq, u32 yres)
+{
+	u32 divisor, hfreq;
+
+	divisor = (1000000 - (vfreq * FLYBACK))/1000;
+	hfreq = (yres + V_FRONTPORCH) * vfreq  * 1000;
+	return (hfreq/divisor);
+}
+
+static void fb_timings_vfreq(struct __fb_timings *timings)
+{
+	timings->hfreq = fb_get_hfreq(timings->vfreq, timings->vactive);
+	timings->vblank = fb_get_vblank(timings->hfreq);
+	timings->vtotal = timings->vactive + timings->vblank;
+	timings->hblank = fb_get_hblank_by_hfreq(timings->hfreq,
+						 timings->hactive);
+	timings->htotal = timings->hactive + timings->hblank;
+	timings->dclk = timings->htotal * timings->hfreq;
+}
+
+/*
+ * fb_get_mode - calculates video mode using VESA GTF
+ * @flags: if: 0 - maximize vertical refresh rate
+ *             1 - vrefresh-driven calculation;
+ *             2 - hscan-driven calculation;
+ *             3 - pixelclock-driven calculation;
+ * @val: depending on @flags, ignored, vrefresh, hsync or pixelclock
+ * @var: pointer to fb_var_screeninfo
+ * @info: pointer to fb_info
+ *
+ * DESCRIPTION:
+ * Calculates video mode based on monitor specs using VESA GTF.
+ * The GTF is best for VESA GTF compliant monitors but is
+ * specifically formulated to work for older monitors as well.
+ *
+ * If @flag==0, the function will attempt to maximize the
+ * refresh rate.  Otherwise, it will calculate timings based on
+ * the flag and accompanying value.
+ *
+ * If FB_IGNOREMON bit is set in @flags, monitor specs will be
+ * ignored and @var will be filled with the calculated timings.
+ *
+ * All calculations are based on the VESA GTF Spreadsheet
+ * available at VESA's public ftp (http://www.vesa.org).
+ *
+ * NOTES:
+ * The timings generated by the GTF will be different from VESA
+ * DMT.  It might be a good idea to keep a table of standard
+ * VESA modes as well.  The GTF may also not work for some displays,
+ * such as, and especially, analog TV.
+ *
+ * REQUIRES:
+ * A valid info->monspecs, otherwise 'safe numbers' will be used.
+ */
+int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
+{
+	struct __fb_timings *timings;
+	u32 interlace = 1, dscan = 1;
+	u32 hfmin, hfmax, vfmin, vfmax, dclkmin, dclkmax, err = 0;
+
+	timings = xzalloc(sizeof(struct __fb_timings));
+
+	/*
+	 * If monspecs are invalid, use values that are enough
+	 * for 640x480@60
+	 */
+	hfmin = 29000; hfmax = 30000;
+	vfmin = 60; vfmax = 60;
+	dclkmin = 0; dclkmax = 25000000;
+
+	timings->hactive = var->xres;
+	timings->vactive = var->yres;
+	if (var->vmode & FB_VMODE_INTERLACED) {
+		timings->vactive /= 2;
+		interlace = 2;
+	}
+	if (var->vmode & FB_VMODE_DOUBLE) {
+		timings->vactive *= 2;
+		dscan = 2;
+	}
+
+	/* vrefresh driven */
+	timings->vfreq = val;
+	fb_timings_vfreq(timings);
+
+	if (timings->dclk)
+		var->pixclock = KHZ2PICOS(timings->dclk / 1000);
+	var->hsync_len = (timings->htotal * 8) / 100;
+	var->right_margin = (timings->hblank / 2) - var->hsync_len;
+	var->left_margin = timings->hblank - var->right_margin -
+		var->hsync_len;
+	var->vsync_len = (3 * interlace) / dscan;
+	var->lower_margin = (1 * interlace) / dscan;
+	var->upper_margin = (timings->vblank * interlace) / dscan -
+		(var->vsync_len + var->lower_margin);
+
+	free(timings);
+	return err;
+}
+
+static void calc_mode_timings(int xres, int yres, int refresh,
+			      struct fb_videomode *mode)
+{
+	mode->xres = xres;
+	mode->yres = yres;
+	mode->refresh = refresh;
+	fb_get_mode(0, refresh, mode);
+	mode->name = asprintf("%dx%d@%d-calc", mode->xres, mode->yres, mode->refresh);
+	pr_debug("      %s\n", mode->name);
+}
+
+const struct fb_videomode vesa_modes[] = {
+	/* 0 640x350-85 VESA */
+	{ NULL, 85, 640, 350, 31746,  96, 32, 60, 32, 64, 3,
+	  FB_SYNC_HOR_HIGH_ACT, FB_VMODE_NONINTERLACED, 0},
+	/* 1 640x400-85 VESA */
+	{ NULL, 85, 640, 400, 31746,  96, 32, 41, 01, 64, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 2 720x400-85 VESA */
+	{ NULL, 85, 721, 400, 28169, 108, 36, 42, 01, 72, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 3 640x480-60 VESA */
+	{ NULL, 60, 640, 480, 39682,  48, 16, 33, 10, 96, 2,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 4 640x480-72 VESA */
+	{ NULL, 72, 640, 480, 31746, 128, 24, 29, 9, 40, 2,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 5 640x480-75 VESA */
+	{ NULL, 75, 640, 480, 31746, 120, 16, 16, 01, 64, 3,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 6 640x480-85 VESA */
+	{ NULL, 85, 640, 480, 27777, 80, 56, 25, 01, 56, 3,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 7 800x600-56 VESA */
+	{ NULL, 56, 800, 600, 27777, 128, 24, 22, 01, 72, 2,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 8 800x600-60 VESA */
+	{ NULL, 60, 800, 600, 25000, 88, 40, 23, 01, 128, 4,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 9 800x600-72 VESA */
+	{ NULL, 72, 800, 600, 20000, 64, 56, 23, 37, 120, 6,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 10 800x600-75 VESA */
+	{ NULL, 75, 800, 600, 20202, 160, 16, 21, 01, 80, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 11 800x600-85 VESA */
+	{ NULL, 85, 800, 600, 17761, 152, 32, 27, 01, 64, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+        /* 12 1024x768i-43 VESA */
+	{ NULL, 43, 1024, 768, 22271, 56, 8, 41, 0, 176, 8,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_INTERLACED, 0 },
+	/* 13 1024x768-60 VESA */
+	{ NULL, 60, 1024, 768, 15384, 160, 24, 29, 3, 136, 6,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 14 1024x768-70 VESA */
+	{ NULL, 70, 1024, 768, 13333, 144, 24, 29, 3, 136, 6,
+	  0, FB_VMODE_NONINTERLACED, 0 },
+	/* 15 1024x768-75 VESA */
+	{ NULL, 75, 1024, 768, 12690, 176, 16, 28, 1, 96, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 16 1024x768-85 VESA */
+	{ NULL, 85, 1024, 768, 10582, 208, 48, 36, 1, 96, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 17 1152x864-75 VESA */
+	{ NULL, 75, 1152, 864, 9259, 256, 64, 32, 1, 128, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 18 1280x960-60 VESA */
+	{ NULL, 60, 1280, 960, 9259, 312, 96, 36, 1, 112, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 19 1280x960-85 VESA */
+	{ NULL, 85, 1280, 960, 6734, 224, 64, 47, 1, 160, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 20 1280x1024-60 VESA */
+	{ NULL, 60, 1280, 1024, 9259, 248, 48, 38, 1, 112, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 21 1280x1024-75 VESA */
+	{ NULL, 75, 1280, 1024, 7407, 248, 16, 38, 1, 144, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 22 1280x1024-85 VESA */
+	{ NULL, 85, 1280, 1024, 6349, 224, 64, 44, 1, 160, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 23 1600x1200-60 VESA */
+	{ NULL, 60, 1600, 1200, 6172, 304, 64, 46, 1, 192, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 24 1600x1200-65 VESA */
+	{ NULL, 65, 1600, 1200, 5698, 304,  64, 46, 1, 192, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 25 1600x1200-70 VESA */
+	{ NULL, 70, 1600, 1200, 5291, 304, 64, 46, 1, 192, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 26 1600x1200-75 VESA */
+	{ NULL, 75, 1600, 1200, 4938, 304, 64, 46, 1, 192, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 27 1600x1200-85 VESA */
+	{ NULL, 85, 1600, 1200, 4357, 304, 64, 46, 1, 192, 3,
+	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
+	  FB_VMODE_NONINTERLACED, 0 },
+	/* 28 1792x1344-60 VESA */
+	{ NULL, 60, 1792, 1344, 4882, 328, 128, 46, 1, 200, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 29 1792x1344-75 VESA */
+	{ NULL, 75, 1792, 1344, 3831, 352, 96, 69, 1, 216, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 30 1856x1392-60 VESA */
+	{ NULL, 60, 1856, 1392, 4580, 352, 96, 43, 1, 224, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 31 1856x1392-75 VESA */
+	{ NULL, 75, 1856, 1392, 3472, 352, 128, 104, 1, 224, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 32 1920x1440-60 VESA */
+	{ NULL, 60, 1920, 1440, 4273, 344, 128, 56, 1, 200, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+	/* 33 1920x1440-75 VESA */
+	{ NULL, 75, 1920, 1440, 3367, 352, 144, 56, 1, 224, 3,
+	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
+};
+
+#define VESA_MODEDB_SIZE ARRAY_SIZE(vesa_modes)
+
+static void add_vesa_mode(struct fb_videomode *mode, int num)
+{
+	*mode = vesa_modes[num];
+	mode->name = asprintf("%dx%d@%d-vesa", mode->xres, mode->yres, mode->refresh);
+	pr_debug("      %s\n", mode->name);
+}
+
+static int get_est_timing(unsigned char *block, struct fb_videomode *mode)
+{
+	int num = 0;
+	unsigned char c;
+
+	c = block[0];
+	if (c & 0x80)
+		calc_mode_timings(720, 400, 70, &mode[num++]);
+	if (c & 0x40)
+		calc_mode_timings(720, 400, 88, &mode[num++]);
+	if (c & 0x20)
+		add_vesa_mode(&mode[num++], 3);
+	if (c & 0x10)
+		calc_mode_timings(640, 480, 67, &mode[num++]);
+	if (c & 0x08)
+		add_vesa_mode(&mode[num++], 4);
+	if (c & 0x04)
+		add_vesa_mode(&mode[num++], 5);
+	if (c & 0x02)
+		add_vesa_mode(&mode[num++], 7);
+	if (c & 0x01)
+		add_vesa_mode(&mode[num++], 8);
+
+	c = block[1];
+	if (c & 0x80)
+		add_vesa_mode(&mode[num++], 9);
+	if (c & 0x40)
+		add_vesa_mode(&mode[num++], 10);
+	if (c & 0x20)
+		calc_mode_timings(832, 624, 75, &mode[num++]);
+	if (c & 0x10)
+		add_vesa_mode(&mode[num++], 12);
+	if (c & 0x08)
+		add_vesa_mode(&mode[num++], 13);
+	if (c & 0x04)
+		add_vesa_mode(&mode[num++], 14);
+	if (c & 0x02)
+		add_vesa_mode(&mode[num++], 15);
+	if (c & 0x01)
+		add_vesa_mode(&mode[num++], 21);
+	c = block[2];
+
+	if (c & 0x80)
+		add_vesa_mode(&mode[num++], 17);
+
+	pr_debug("      Manufacturer's mask: %x\n",c & 0x7F);
+	return num;
+}
+
+static int get_std_timing(unsigned char *block, struct fb_videomode *mode,
+		int ver, int rev)
+{
+	int xres, yres = 0, refresh, ratio, i;
+
+	xres = (block[0] + 31) * 8;
+	if (xres <= 256)
+		return 0;
+
+	ratio = (block[1] & 0xc0) >> 6;
+	switch (ratio) {
+	case 0:
+		/* in EDID 1.3 the meaning of 0 changed to 16:10 (prior 1:1) */
+		if (ver < 1 || (ver == 1 && rev < 3))
+			yres = xres;
+		else
+			yres = (xres * 10) / 16;
+		break;
+	case 1:
+		yres = (xres * 3) / 4;
+		break;
+	case 2:
+		yres = (xres * 4) / 5;
+		break;
+	case 3:
+		yres = (xres * 9) / 16;
+		break;
+	}
+	refresh = (block[1] & 0x3f) + 60;
+
+	for (i = 0; i < VESA_MODEDB_SIZE; i++) {
+		if (vesa_modes[i].xres == xres &&
+		    vesa_modes[i].yres == yres &&
+		    vesa_modes[i].refresh == refresh) {
+			add_vesa_mode(mode, i);
+			return 1;
+		}
+	}
+
+	calc_mode_timings(xres, yres, refresh, mode);
+
+	return 1;
+}
+
+static int get_dst_timing(unsigned char *block,
+			  struct fb_videomode *mode, int ver, int rev)
+{
+	int j, num = 0;
+
+	for (j = 0; j < 6; j++, block += STD_TIMING_DESCRIPTION_SIZE)
+		num += get_std_timing(block, &mode[num], ver, rev);
+
+	return num;
+}
+
+static void get_detailed_timing(unsigned char *block,
+				struct fb_videomode *mode)
+{
+	mode->xres = H_ACTIVE;
+	mode->yres = V_ACTIVE;
+	mode->pixclock = PIXEL_CLOCK;
+	mode->pixclock /= 1000;
+	mode->pixclock = KHZ2PICOS(mode->pixclock);
+	mode->right_margin = H_SYNC_OFFSET;
+	mode->left_margin = (H_ACTIVE + H_BLANKING) -
+		(H_ACTIVE + H_SYNC_OFFSET + H_SYNC_WIDTH);
+	mode->upper_margin = V_BLANKING - V_SYNC_OFFSET -
+		V_SYNC_WIDTH;
+	mode->lower_margin = V_SYNC_OFFSET;
+	mode->hsync_len = H_SYNC_WIDTH;
+	mode->vsync_len = V_SYNC_WIDTH;
+	if (HSYNC_POSITIVE)
+		mode->sync |= FB_SYNC_HOR_HIGH_ACT;
+	if (VSYNC_POSITIVE)
+		mode->sync |= FB_SYNC_VERT_HIGH_ACT;
+	mode->refresh = PIXEL_CLOCK/((H_ACTIVE + H_BLANKING) *
+				     (V_ACTIVE + V_BLANKING));
+	if (INTERLACED) {
+		mode->yres *= 2;
+		mode->upper_margin *= 2;
+		mode->lower_margin *= 2;
+		mode->vsync_len *= 2;
+		mode->vmode |= FB_VMODE_INTERLACED;
+	}
+
+	pr_debug("      %d MHz ",  PIXEL_CLOCK/1000000);
+	pr_debug("%d %d %d %d ", H_ACTIVE, H_ACTIVE + H_SYNC_OFFSET,
+	       H_ACTIVE + H_SYNC_OFFSET + H_SYNC_WIDTH, H_ACTIVE + H_BLANKING);
+	pr_debug("%d %d %d %d ", V_ACTIVE, V_ACTIVE + V_SYNC_OFFSET,
+	       V_ACTIVE + V_SYNC_OFFSET + V_SYNC_WIDTH, V_ACTIVE + V_BLANKING);
+	pr_debug("%sHSync %sVSync\n", (HSYNC_POSITIVE) ? "+" : "-",
+	       (VSYNC_POSITIVE) ? "+" : "-");
+
+	mode->name = asprintf("%dx%d@%d", mode->xres, mode->yres, mode->refresh);
+}
+
+/**
+ * edid_to_display_timings - create video mode database
+ * @edid: EDID data
+ * @dbsize: database size
+ *
+ * RETURNS: struct fb_videomode, @dbsize contains length of database
+ *
+ * DESCRIPTION:
+ * This function builds a mode database using the contents of the EDID
+ * data
+ */
+int edid_to_display_timings(struct display_timings *timings, unsigned char *edid)
+{
+	struct fb_videomode *mode;
+	unsigned char *block;
+	int num = 0, i, first = 1;
+	int ver, rev, ret;
+
+	ver = edid[EDID_STRUCT_VERSION];
+	rev = edid[EDID_STRUCT_REVISION];
+
+	mode = xzalloc(50 * sizeof(struct fb_videomode));
+
+	if (!edid_checksum(edid) ||
+	    !edid_check_header(edid)) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	pr_debug("   Detailed Timings\n");
+	block = edid + DETAILED_TIMING_DESCRIPTIONS_START;
+	for (i = 0; i < 4; i++, block+= DETAILED_TIMING_DESCRIPTION_SIZE) {
+		if (!(block[0] == 0x00 && block[1] == 0x00)) {
+			get_detailed_timing(block, &mode[num]);
+			if (first) {
+				first = 0;
+			}
+			num++;
+		}
+	}
+
+	pr_debug("   Supported VESA Modes\n");
+	block = edid + ESTABLISHED_TIMING_1;
+	num += get_est_timing(block, &mode[num]);
+
+	pr_debug("   Standard Timings\n");
+	block = edid + STD_TIMING_DESCRIPTIONS_START;
+	for (i = 0; i < STD_TIMING; i++, block += STD_TIMING_DESCRIPTION_SIZE)
+		num += get_std_timing(block, &mode[num], ver, rev);
+
+	block = edid + DETAILED_TIMING_DESCRIPTIONS_START;
+	for (i = 0; i < 4; i++, block+= DETAILED_TIMING_DESCRIPTION_SIZE) {
+		if (block[0] == 0x00 && block[1] == 0x00 && block[3] == 0xfa)
+			num += get_dst_timing(block + 5, &mode[num], ver, rev);
+	}
+
+	/* Yikes, EDID data is totally useless */
+	if (!num) {
+		free(mode);
+		return -EINVAL;
+	}
+
+	timings->num_modes = num;
+	timings->modes = mode;
+
+	return 0;
+out:
+	free(timings);
+	free(mode);
+	return ret;
+}
+
+#define DDC_ADDR	0x50
+#define DDC_SEGMENT_ADDR 0x30
+
+/**
+ * Get EDID information via I2C.
+ *
+ * \param adapter : i2c device adaptor
+ * \param buf     : EDID data buffer to be filled
+ * \param len     : EDID data buffer length
+ * \return 0 on success or -1 on failure.
+ *
+ * Try to fetch EDID information by calling i2c driver function.
+ */
+static int
+edid_do_read_i2c(struct i2c_adapter *adapter, unsigned char *buf,
+		      int block, int len)
+{
+	unsigned char start = block * EDID_LENGTH;
+	unsigned char segment = block >> 1;
+	unsigned char xfers = segment ? 3 : 2;
+	int ret, retries = 5;
+
+	/* The core i2c driver will automatically retry the transfer if the
+	 * adapter reports EAGAIN. However, we find that bit-banging transfers
+	 * are susceptible to errors under a heavily loaded machine and
+	 * generate spurious NAKs and timeouts. Retrying the transfer
+	 * of the individual block a few times seems to overcome this.
+	 */
+	do {
+		struct i2c_msg msgs[] = {
+			{
+				.addr	= DDC_SEGMENT_ADDR,
+				.flags	= 0,
+				.len	= 1,
+				.buf	= &segment,
+			}, {
+				.addr	= DDC_ADDR,
+				.flags	= 0,
+				.len	= 1,
+				.buf	= &start,
+			}, {
+				.addr	= DDC_ADDR,
+				.flags	= I2C_M_RD,
+				.len	= len,
+				.buf	= buf,
+			}
+		};
+
+	/*
+	 * Avoid sending the segment addr to not upset non-compliant ddc
+	 * monitors.
+	 */
+		ret = i2c_transfer(adapter, &msgs[3 - xfers], xfers);
+	} while (ret != xfers && --retries);
+
+	return ret == xfers ? 0 : -1;
+}
+
+void *edid_read_i2c(struct i2c_adapter *adapter)
+{
+	u8 *block;
+
+	block = xmalloc(EDID_LENGTH);
+
+	if (edid_do_read_i2c(adapter, block, 0, EDID_LENGTH))
+		goto out;
+
+	return block;
+out:
+	free(block);
+
+	return NULL;
+}
+
+void fb_edid_add_modes(struct fb_info *info)
+{
+	if (info->edid_i2c_adapter)
+		info->edid_data = edid_read_i2c(info->edid_i2c_adapter);
+
+	if (!info->edid_data)
+		return;
+
+	edid_to_display_timings(&info->edid_modes, info->edid_data);
+}
diff --git a/drivers/video/edid.h b/drivers/video/edid.h
new file mode 100644
index 0000000..006d9f2
--- /dev/null
+++ b/drivers/video/edid.h
@@ -0,0 +1,138 @@
+/*
+ * drivers/video/edid.h - EDID/DDC Header
+ *
+ * Based on:
+ *   1. XFree86 4.3.0, edid.h
+ *      Copyright 1998 by Egbert Eich <Egbert.Eich@Physik.TU-Darmstadt.DE>
+ *
+ *   2. John Fremlin <vii@users.sourceforge.net> and
+ *      Ani Joshi <ajoshi@unixbox.com>
+ *
+ * DDC is a Trademark of VESA (Video Electronics Standard Association).
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file COPYING in the main directory of this archive
+ * for more details.
+*/
+
+#ifndef __EDID_H__
+#define __EDID_H__
+
+#define EDID_LENGTH				0x80
+#define EDID_HEADER				0x00
+#define EDID_HEADER_END				0x07
+
+#define ID_MANUFACTURER_NAME			0x08
+#define ID_MANUFACTURER_NAME_END		0x09
+#define ID_MODEL				0x0a
+
+#define ID_SERIAL_NUMBER			0x0c
+
+#define MANUFACTURE_WEEK			0x10
+#define MANUFACTURE_YEAR			0x11
+
+#define EDID_STRUCT_VERSION			0x12
+#define EDID_STRUCT_REVISION			0x13
+
+#define EDID_STRUCT_DISPLAY                     0x14
+
+#define DPMS_FLAGS				0x18
+#define ESTABLISHED_TIMING_1			0x23
+#define ESTABLISHED_TIMING_2			0x24
+#define MANUFACTURERS_TIMINGS			0x25
+
+/* standard timings supported */
+#define STD_TIMING                              8
+#define STD_TIMING_DESCRIPTION_SIZE             2
+#define STD_TIMING_DESCRIPTIONS_START           0x26
+
+#define DETAILED_TIMING_DESCRIPTIONS_START	0x36
+#define DETAILED_TIMING_DESCRIPTION_SIZE	18
+#define NO_DETAILED_TIMING_DESCRIPTIONS		4
+
+#define DETAILED_TIMING_DESCRIPTION_1		0x36
+#define DETAILED_TIMING_DESCRIPTION_2		0x48
+#define DETAILED_TIMING_DESCRIPTION_3		0x5a
+#define DETAILED_TIMING_DESCRIPTION_4		0x6c
+
+#define DESCRIPTOR_DATA				5
+
+#define UPPER_NIBBLE( x ) \
+        (((128|64|32|16) & (x)) >> 4)
+
+#define LOWER_NIBBLE( x ) \
+        ((1|2|4|8) & (x))
+
+#define COMBINE_HI_8LO( hi, lo ) \
+        ( (((unsigned)hi) << 8) | (unsigned)lo )
+
+#define COMBINE_HI_4LO( hi, lo ) \
+        ( (((unsigned)hi) << 4) | (unsigned)lo )
+
+#define PIXEL_CLOCK_LO     (unsigned)block[ 0 ]
+#define PIXEL_CLOCK_HI     (unsigned)block[ 1 ]
+#define PIXEL_CLOCK	   (COMBINE_HI_8LO( PIXEL_CLOCK_HI,PIXEL_CLOCK_LO )*10000)
+#define H_ACTIVE_LO        (unsigned)block[ 2 ]
+#define H_BLANKING_LO      (unsigned)block[ 3 ]
+#define H_ACTIVE_HI        UPPER_NIBBLE( (unsigned)block[ 4 ] )
+#define H_ACTIVE           COMBINE_HI_8LO( H_ACTIVE_HI, H_ACTIVE_LO )
+#define H_BLANKING_HI      LOWER_NIBBLE( (unsigned)block[ 4 ] )
+#define H_BLANKING         COMBINE_HI_8LO( H_BLANKING_HI, H_BLANKING_LO )
+
+#define V_ACTIVE_LO        (unsigned)block[ 5 ]
+#define V_BLANKING_LO      (unsigned)block[ 6 ]
+#define V_ACTIVE_HI        UPPER_NIBBLE( (unsigned)block[ 7 ] )
+#define V_ACTIVE           COMBINE_HI_8LO( V_ACTIVE_HI, V_ACTIVE_LO )
+#define V_BLANKING_HI      LOWER_NIBBLE( (unsigned)block[ 7 ] )
+#define V_BLANKING         COMBINE_HI_8LO( V_BLANKING_HI, V_BLANKING_LO )
+
+#define H_SYNC_OFFSET_LO   (unsigned)block[ 8 ]
+#define H_SYNC_WIDTH_LO    (unsigned)block[ 9 ]
+
+#define V_SYNC_OFFSET_LO   UPPER_NIBBLE( (unsigned)block[ 10 ] )
+#define V_SYNC_WIDTH_LO    LOWER_NIBBLE( (unsigned)block[ 10 ] )
+
+#define V_SYNC_WIDTH_HI    ((unsigned)block[ 11 ] & (1|2))
+#define V_SYNC_OFFSET_HI   (((unsigned)block[ 11 ] & (4|8)) >> 2)
+
+#define H_SYNC_WIDTH_HI    (((unsigned)block[ 11 ] & (16|32)) >> 4)
+#define H_SYNC_OFFSET_HI   (((unsigned)block[ 11 ] & (64|128)) >> 6)
+
+#define V_SYNC_WIDTH       COMBINE_HI_4LO( V_SYNC_WIDTH_HI, V_SYNC_WIDTH_LO )
+#define V_SYNC_OFFSET      COMBINE_HI_4LO( V_SYNC_OFFSET_HI, V_SYNC_OFFSET_LO )
+
+#define H_SYNC_WIDTH       COMBINE_HI_8LO( H_SYNC_WIDTH_HI, H_SYNC_WIDTH_LO )
+#define H_SYNC_OFFSET      COMBINE_HI_8LO( H_SYNC_OFFSET_HI, H_SYNC_OFFSET_LO )
+
+#define H_SIZE_LO          (unsigned)block[ 12 ]
+#define V_SIZE_LO          (unsigned)block[ 13 ]
+
+#define H_SIZE_HI          UPPER_NIBBLE( (unsigned)block[ 14 ] )
+#define V_SIZE_HI          LOWER_NIBBLE( (unsigned)block[ 14 ] )
+
+#define H_SIZE             COMBINE_HI_8LO( H_SIZE_HI, H_SIZE_LO )
+#define V_SIZE             COMBINE_HI_8LO( V_SIZE_HI, V_SIZE_LO )
+
+#define H_BORDER           (unsigned)block[ 15 ]
+#define V_BORDER           (unsigned)block[ 16 ]
+
+#define FLAGS              (unsigned)block[ 17 ]
+
+#define INTERLACED         (FLAGS&128)
+#define SYNC_TYPE          (FLAGS&3<<3)	/* bits 4,3 */
+#define SYNC_SEPARATE      (3<<3)
+#define HSYNC_POSITIVE     (FLAGS & 4)
+#define VSYNC_POSITIVE     (FLAGS & 2)
+
+#define V_MIN_RATE              block[ 5 ]
+#define V_MAX_RATE              block[ 6 ]
+#define H_MIN_RATE              block[ 7 ]
+#define H_MAX_RATE              block[ 8 ]
+#define MAX_PIXEL_CLOCK         (((int)block[ 9 ]) * 10)
+#define GTF_SUPPORT		block[10]
+
+#define DPMS_ACTIVE_OFF		(1 << 5)
+#define DPMS_SUSPEND		(1 << 6)
+#define DPMS_STANDBY		(1 << 7)
+
+#endif /* __EDID_H__ */
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index d7a3d3c..2c8b8eb 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -53,11 +53,14 @@ static struct fb_videomode *fb_num_to_mode(struct fb_info *info, int num)
 {
 	int num_modes;
 
-	num_modes = info->modes.num_modes;
+	num_modes = info->modes.num_modes + info->edid_modes.num_modes;
 
 	if (num >= num_modes)
 		return NULL;
 
+	if (num >= info->modes.num_modes)
+		return &info->edid_modes.modes[num - info->modes.num_modes];
+
 	return &info->modes.modes[num];
 }
 
@@ -142,6 +145,7 @@ static void fb_info(struct device_d *dev)
 	printf("available modes:\n");
 
 	fb_print_modes(&info->modes);
+	fb_print_modes(&info->edid_modes);
 
 	printf("\n");
 }
@@ -191,13 +195,17 @@ int register_framebuffer(struct fb_info *info)
 	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
 			&info->p_enable, info);
 
-	num_modes = info->modes.num_modes;
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID))
+		fb_edid_add_modes(info);
+
+	num_modes = info->modes.num_modes + info->edid_modes.num_modes;
 
 	names = xzalloc(sizeof(char *) * num_modes);
 
 	for (i = 0; i < info->modes.num_modes; i++)
 		names[i] = info->modes.modes[i].name;
-
+	for (i = 0; i < info->edid_modes.num_modes; i++)
+		names[i + info->modes.num_modes] = info->edid_modes.modes[i].name;
 	dev_add_param_enum(dev, "mode_name", fb_set_modename, NULL, &info->current_mode, names, num_modes, info);
 
 	info->mode = fb_num_to_mode(info, 0);
diff --git a/include/fb.h b/include/fb.h
index 8d255c0..7829a0f 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -100,12 +100,18 @@ struct display_timings {
 	struct fb_videomode *modes;
 };
 
+struct i2c_adapter;
+
 struct fb_info {
 	struct fb_videomode *mode;
 	struct display_timings modes;
 
 	int current_mode;
 
+	void *edid_data;
+	struct i2c_adapter *edid_i2c_adapter;
+	struct display_timings edid_modes;
+
 	struct fb_ops *fbops;
 	struct device_d dev;		/* This is this fb device */
 
@@ -149,5 +155,8 @@ extern struct bus_type fb_bus;
 
 int fb_register_simplefb(struct fb_info *info);
 
-#endif /* __FB_H */
+int edid_to_display_timings(struct display_timings *, unsigned char *edid);
+void *edid_read_i2c(struct i2c_adapter *adapter);
+void fb_edid_add_modes(struct fb_info *info);
 
+#endif /* __FB_H */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
