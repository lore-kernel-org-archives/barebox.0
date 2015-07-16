Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004By-Gp
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:52 +0200
Message-Id: <1437031912-24754-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
References: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] video: implement framebuffer console
To: Barebox List <barebox@lists.infradead.org>

From: Antony Pavlov <antonynpavlov@gmail.com>

This patch realizes framebuffer console support for barebox. It
supports colors and enough escape sequences to show the barebox
console and editor properly.

fbconsole mini-HOWTO
====================

1. compile sandbox barebox with

    CONFIG_VIDEO=y
    CONFIG_FRAMEBUFFER_CONSOLE=y
    CONFIG_DRIVER_VIDEO_SDL=y

2. run barebox

3. test fbconsole

    fbconsole0.active=oe

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/framebuffer.rst |   8 +
 drivers/video/Kconfig              |   6 +
 drivers/video/Makefile             |   1 +
 drivers/video/fb.c                 |   3 +
 drivers/video/fbconsole.c          | 439 +++++++++++++++++++++++++++++++++++++
 include/fb.h                       |   2 +
 6 files changed, 459 insertions(+)
 create mode 100644 drivers/video/fbconsole.c

diff --git a/Documentation/user/framebuffer.rst b/Documentation/user/framebuffer.rst
index 0065e7b..7d004fa 100644
--- a/Documentation/user/framebuffer.rst
+++ b/Documentation/user/framebuffer.rst
@@ -41,3 +41,11 @@ A typical script to enable the framebuffer could look like this:
   # finally enable backlight
   gpio_direction_output 42 1
 
+Framebuffer console
+-------------------
+
+barebox has framebuffer console support which can be enabled with CONFIG_FRAMEBUFFER_CONSOLE.
+When registered each framebuffer device gets a corresponding fbconsole device. The console
+can be activated with ``fbconsolex.active=oe``. Depending on compile time options there are
+different fonts available. These can be selected with the fbconsolex.font variable. To get a
+list of fonts use ``devinfo fbconsolex``.
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 8e6ae99..fe334e5 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,6 +5,12 @@ menuconfig VIDEO
 
 if VIDEO
 
+config FRAMEBUFFER_CONSOLE
+	bool
+	select IMAGE_RENDERER
+	select FONTS
+	prompt "framebuffer console support"
+
 config DRIVER_VIDEO_ATMEL
 	bool "Atmel LCDC framebuffer driver"
 	depends on ARCH_AT91
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 76fad5c..359135e 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM) += backlight-pwm.o
+obj-$(CONFIG_FRAMEBUFFER_CONSOLE) += fbconsole.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 25f089a..a4f1734 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -238,6 +238,9 @@ int register_framebuffer(struct fb_info *info)
 					strerror(-ret));
 	}
 
+	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE))
+		register_fbconsole(info);
+
 	return 0;
 
 err_unregister:
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
new file mode 100644
index 0000000..5aa3c3e
--- /dev/null
+++ b/drivers/video/fbconsole.c
@@ -0,0 +1,439 @@
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <fb.h>
+#include <gui/image_renderer.h>
+#include <gui/graphic_utils.h>
+#include <linux/font.h>
+
+enum state_t {
+	LIT,				/* Literal input */
+	ESC,				/* Start of escape sequence */
+	CSI,				/* Reading arguments in "CSI Pn ;...*/
+};
+
+struct fbc_priv {
+	struct console_device cdev;
+	struct fb_info *fb;
+
+	struct screen *sc;
+
+	struct param_d *par_font;
+	int par_font_val;
+
+	int font_width, font_height;
+	const u8 *fontdata;
+	unsigned int cols, rows;
+	unsigned int x, y; /* cursor position */
+
+	enum state_t state;
+
+	int color;
+	int bgcolor;
+
+#define ANSI_FLAG_INVERT	(1 << 0)
+#define ANSI_FLAG_BRIGHT	(1 << 1)
+	unsigned flags;
+
+	int csipos;
+	u8 csi[256];
+
+	int active;
+};
+
+static int fbc_getc(struct console_device *cdev)
+{
+	return 0;
+}
+
+static int fbc_tstc(struct console_device *cdev)
+{
+	return 0;
+}
+
+static void cls(struct fbc_priv *priv)
+{
+	void *buf = gui_screen_render_buffer(priv->sc);
+
+	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
+}
+
+struct rgb {
+	u8 r, g, b;
+};
+
+static struct rgb colors[] = {
+	{ 0, 0, 0 },
+	{ 205, 0, 0 },
+	{ 0, 205, 0 },
+	{ 205, 205, 0 },
+	{ 0, 0, 238 },
+	{ 205, 0, 205 },
+	{ 0, 205, 205 },
+	{ 229, 229, 229 },
+	{ 127, 127, 127 },
+	{ 255, 0, 0 },
+	{ 0, 255, 0 },
+	{ 255, 255, 0 },
+	{ 92, 92, 255 },
+	{ 255, 0, 255 },
+	{ 0, 255, 255 },
+	{ 255, 255, 255 },
+};
+
+static void drawchar(struct fbc_priv *priv, int x, int y, char c)
+{
+	void *buf;
+	int bpp = priv->fb->bits_per_pixel >> 3;
+	void *adr;
+	int i;
+	const char *inbuf;
+	int line_length;
+	u32 color, bgcolor;
+	struct rgb *rgb;
+
+	buf = gui_screen_render_buffer(priv->sc);
+
+	inbuf = &priv->fontdata[c * priv->font_height];
+
+	line_length = priv->fb->line_length;
+
+	color = priv->flags & ANSI_FLAG_INVERT ? priv->bgcolor : priv->color;
+	bgcolor = priv->flags & ANSI_FLAG_INVERT ? priv->color : priv->bgcolor;
+
+	if (priv->flags & ANSI_FLAG_BRIGHT)
+		color += 8;
+
+	rgb = &colors[color];
+	color = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
+
+	rgb = &colors[bgcolor];
+	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
+
+	for (i = 0; i < priv->font_height; i++) {
+		uint8_t t = inbuf[i];
+		int j;
+
+		adr = buf + line_length * (y * priv->font_height + i) + x * priv->font_width * bpp;
+
+		for (j = 0; j < priv->font_width; j++) {
+			if (t & 0x80)
+				gu_set_pixel(priv->fb, adr, color);
+			else
+				gu_set_pixel(priv->fb, adr, bgcolor);
+
+			adr += priv->fb->bits_per_pixel >> 3;
+			t <<= 1;
+		}
+	}
+}
+
+static void video_invertchar(struct fbc_priv *priv, int x, int y)
+{
+	void *buf;
+
+	buf = gui_screen_render_buffer(priv->sc);
+
+	gu_invert_area(priv->fb, buf, x * priv->font_width, y * priv->font_height,
+			priv->font_width, priv->font_height);
+}
+
+static void printchar(struct fbc_priv *priv, int c)
+{
+	video_invertchar(priv, priv->x, priv->y);
+
+	switch (c) {
+	case '\007': /* bell: ignore */
+		break;
+	case '\b':
+		if (priv->x > 0) {
+			priv->x--;
+		} else if (priv->y > 0) {
+			priv->x = priv->cols;
+			priv->y--;
+		}
+		break;
+	case '\n':
+	case '\013': /* Vertical tab is the same as Line Feed */
+		priv->y++;
+		break;
+
+	case '\r':
+		priv->x = 0;
+		break;
+
+	case '\t':
+		priv->x = (priv->x + 8) & ~0x3;
+		break;
+
+	default:
+		drawchar(priv, priv->x, priv->y, c);
+		gu_screen_blit(priv->sc);
+
+		priv->x++;
+		if (priv->x > priv->cols) {
+			priv->y++;
+			priv->x = 0;
+		}
+	}
+
+	if (priv->y > priv->rows) {
+		void *buf;
+		u32 line_length = priv->fb->line_length;
+		int line_height = line_length * priv->font_height;
+
+		buf = gui_screen_render_buffer(priv->sc);
+
+		memcpy(buf, buf + line_height, line_height * (priv->rows + 1));
+		memset(buf + line_height * priv->rows, 0, line_height);
+		priv->y = priv->rows;
+	}
+
+	video_invertchar(priv, priv->x, priv->y);
+
+	return;
+}
+
+static void fbc_parse_colors(struct fbc_priv *priv)
+{
+	int code;
+	char *str;
+
+	str = priv->csi;
+
+	while (1) {
+		code = simple_strtoul(str, &str, 10);
+		switch (code) {
+		case 0:
+			priv->flags = 0;
+			priv->color = 8;
+			priv->bgcolor = 0;
+			break;
+		case 1:
+			priv->flags |= ANSI_FLAG_BRIGHT;
+			break;
+		case 7:
+			priv->flags |= ANSI_FLAG_INVERT;
+			break;
+		case 30 ... 37:
+			priv->color = code - 30;
+			break;
+		case 39:
+			priv->color = 7;
+			break;
+		case 40 ... 47:
+			priv->bgcolor = code - 40;
+			break;
+		case 49:
+			priv->bgcolor = 0;
+			break;
+		}
+
+		if (*str != ';')
+			break;
+		str++;
+	}
+}
+
+static void fbc_parse_csi(struct fbc_priv *priv)
+{
+	char *end;
+	unsigned char last;
+	int pos, i;
+
+	last = priv->csi[priv->csipos - 1];
+
+	switch (last) {
+	case 'm':
+		fbc_parse_colors(priv);
+		return;
+	case 'J':
+		cls(priv);
+		return;
+	case 'H':
+		video_invertchar(priv, priv->x, priv->y);
+		pos = simple_strtoul(priv->csi, &end, 10);
+		priv->y = pos ? pos - 1 : 0;
+		pos = simple_strtoul(end + 1, NULL, 10);
+		priv->x = pos ? pos - 1 : 0;
+		video_invertchar(priv, priv->x, priv->y);
+	case 'K':
+		pos = simple_strtoul(priv->csi, &end, 10);
+		video_invertchar(priv, priv->x, priv->y);
+		switch (pos) {
+		case 0:
+			for (i = priv->x; i < priv->cols; i++)
+				drawchar(priv, i, priv->y, ' ');
+			break;
+		case 1:
+			for (i = 0; i <= priv->x; i++)
+				drawchar(priv, i, priv->y, ' ');
+			break;
+		}
+		video_invertchar(priv, priv->x, priv->y);
+
+		break;
+	}
+}
+
+static void fbc_putc(struct console_device *cdev, char c)
+{
+	struct fbc_priv *priv = container_of(cdev,
+					struct fbc_priv, cdev);
+
+	switch (priv->state) {
+	case LIT:
+		switch (c) {
+		case '\033':
+			priv->state = ESC;
+			break;
+		default:
+			printchar(priv, c);
+		}
+		break;
+	case ESC:
+		switch (c) {
+		case '[':
+			priv->state = CSI;
+			priv->csipos = 0;
+			memset(priv->csi, 0, 6);
+			break;
+		}
+		break;
+	case CSI:
+		priv->csi[priv->csipos++] = c;
+		if (priv->csipos == 255) {
+			priv->csipos = 0;
+			priv->state = LIT;
+			return;
+		}
+
+		switch (c) {
+		case '0':
+		case '1':
+		case '2':
+		case '3':
+		case '4':
+		case '5':
+		case '6':
+		case '7':
+		case '8':
+		case '9':
+		case ';':
+		case ':':
+			break;
+		default:
+			fbc_parse_csi(priv);
+			priv->state = LIT;
+		}
+		break;
+	}
+}
+
+static int setup_font(struct fbc_priv *priv)
+{
+	struct fb_info *fb = priv->fb;
+	const struct font_desc *font;
+
+	font = find_font_enum(priv->par_font_val);
+	if (!font) {
+		return -ENOENT;
+	}
+
+	priv->font_width = font->width;
+	priv->font_height = font->height;
+	priv->fontdata = font->data;
+
+	priv->rows = fb->yres / priv->font_height - 1;
+	priv->cols = fb->xres / priv->font_width - 1;
+
+	return 0;
+}
+
+static int fbc_set_active(struct console_device *cdev, unsigned flags)
+{
+	struct fbc_priv *priv = container_of(cdev,
+					struct fbc_priv, cdev);
+	struct fb_info *fb = priv->fb;
+	int ret;
+
+	if (priv->active) {
+		fb_close(priv->sc);
+		priv->active = false;
+	}
+
+	if (!(flags & (CONSOLE_STDOUT | CONSOLE_STDERR)))
+		return 0;
+
+	ret = setup_font(priv);
+	if (ret)
+		return ret;
+
+	priv->sc = fb_create_screen(fb, 0);
+	if (IS_ERR(priv->sc))
+		return PTR_ERR(priv->sc);
+
+	fb_enable(fb);
+
+	priv->state = LIT;
+
+	dev_info(priv->cdev.dev, "framebuffer console %dx%d activated\n",
+		priv->cols + 1, priv->rows + 1);
+
+	priv->active = true;
+
+	return 0;
+}
+
+static int set_font(struct param_d *p, void *vpriv)
+{
+	struct fbc_priv *priv = vpriv;
+	struct console_device *cdev = &priv->cdev;
+
+	if (cdev->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR)) {
+		cls(priv);
+		setup_font(priv);
+	}
+
+	return 0;
+}
+
+int register_fbconsole(struct fb_info *fb)
+{
+	struct fbc_priv *priv;
+	struct console_device *cdev;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->fb = fb;
+	priv->x = 0;
+	priv->y = 0;
+	priv->color = 0xff00ff00;
+
+	cdev = &priv->cdev;
+	cdev->dev = &fb->dev;
+	cdev->tstc = fbc_tstc;
+	cdev->putc = fbc_putc;
+	cdev->getc = fbc_getc;
+	cdev->devname = "fbconsole";
+	cdev->devid = DEVICE_ID_DYNAMIC;
+	cdev->set_active = fbc_set_active;
+
+	ret = console_register(cdev);
+	if (ret) {
+		pr_err("registering failed with %s\n", strerror(-ret));
+		kfree(priv);
+		return ret;
+	}
+
+	priv->par_font_val = 0;
+	priv->par_font = add_param_font(&cdev->class_dev,
+			set_font, NULL,
+			&priv->par_font_val, priv);
+
+	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
+
+	return 0;
+}
diff --git a/include/fb.h b/include/fb.h
index 9221618..27894db 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -163,4 +163,6 @@ int edid_to_display_timings(struct display_timings *, unsigned char *edid);
 void *edid_read_i2c(struct i2c_adapter *adapter);
 void fb_edid_add_modes(struct fb_info *info);
 
+int register_fbconsole(struct fb_info *fb);
+
 #endif /* __FB_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
