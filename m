Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHkeC-00035K-WD
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 04:29:17 +0000
Received: by mail-pf0-x242.google.com with SMTP id t190so613246pfb.2
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 21:28:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Jun 2016 21:27:57 -0700
Message-Id: <1467088079-476-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1467088079-476-1-git-send-email-andrew.smirnov@gmail.com>
References: <1467088079-476-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 2/4] GUI: Add code to draw simple graphics
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to draw simple graphics, namely lines(solid or dashed) and
circles.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

No changes since v2.

 include/gui/2d-primitives.h |  15 ++++
 lib/gui/2d-primitives.c     | 199 ++++++++++++++++++++++++++++++++++++++++++++
 lib/gui/Kconfig             |   3 +
 lib/gui/Makefile            |   1 +
 4 files changed, 218 insertions(+)
 create mode 100644 include/gui/2d-primitives.h
 create mode 100644 lib/gui/2d-primitives.c

diff --git a/include/gui/2d-primitives.h b/include/gui/2d-primitives.h
new file mode 100644
index 0000000..06216bb
--- /dev/null
+++ b/include/gui/2d-primitives.h
@@ -0,0 +1,15 @@
+#ifndef __2D_PRIMITIVES__
+#define __2D_PRIMITIVES__
+
+#include <fb.h>
+
+void gu_draw_line(struct screen *sc,
+		  int x1, int y1, int x2, int y2,
+		  u8 r, u8 g, u8 b, u8 a,
+		  unsigned int dash);
+
+void gu_draw_circle(struct screen *sc,
+		    int x0, int y0, int radius,
+		    u8 r, u8 g, u8 b, u8 a);
+
+#endif
diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
new file mode 100644
index 0000000..f3814ee
--- /dev/null
+++ b/lib/gui/2d-primitives.c
@@ -0,0 +1,199 @@
+#include <common.h>
+#include <fb.h>
+#include <gui/graphic_utils.h>
+#include <linux/stat.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <fs.h>
+#include <malloc.h>
+
+static void __illuminate(struct fb_info *info,
+			 int x, int y,
+			 u8 r, u8 g, u8 b, u8 a)
+{
+	void *pixel;
+
+	pixel  = fb_get_screen_base(info);
+	pixel += y * info->line_length + x * (info->bits_per_pixel >> 3);
+
+	gu_set_rgba_pixel(info, pixel, r, g, b, a);
+}
+
+static void illuminate(struct fb_info *info,
+		       bool invert,
+		       int x, int y,
+		       u8 r, u8 g, u8 b, u8 a)
+{
+	if (invert)
+		__illuminate(info, y, x,
+			     r, g, b, a);
+	else
+		__illuminate(info, x, y,
+			     r, g, b, a);
+
+}
+
+
+static void draw_simple_line(struct screen *sc,
+			     int x1, int y1,
+			     int x2, int y2,
+			     u8 r, u8 g, u8 b, u8 a,
+			     unsigned int dash)
+{
+	int x;
+	bool invert = false;
+	unsigned int pixel = 0;
+
+	BUG_ON(x1 != x2 &&
+	       y1 != y2);
+
+	if (x1 == x2) {
+		swap(x1, y1);
+		swap(x2, y2);
+		invert = true;
+	}
+
+	if (x1 > x2) {
+		swap(x1, x2);
+		swap(y1, y2);
+	}
+
+	for (x = x1; x < x2 - 1; x++) {
+		if (!dash ||
+		    (++pixel % (2 * dash)) < dash)
+			illuminate(sc->info,
+				   invert,
+				   x, y1,
+				   r, g, b, a);
+	}
+}
+
+/**
+ * gl_draw_line - draw a 2D dashed line between (x1, y1) and (x2,y2)
+ *
+ * @sc: screen to draw on
+ * @x1, @y1: first point defining the line
+ * @x2, @y2: second point defining the line
+ * @r, @g, @b, @a: line's color
+ * @dash: dash length (0 denotes solid line)
+ *
+ * gl_draw_line() implements integer version of Bresenham's algoritm
+ * as can be found here:
+ *
+ * http://www.idav.ucdavis.edu/education/GraphicsNotes/Bresenhams-Algorithm.pdf
+ */
+void gu_draw_line(struct screen *sc,
+		  int x1, int y1,
+		  int x2, int y2,
+		  u8 r, u8 g, u8 b, u8 a,
+		  unsigned int dash)
+{
+	int dx;
+	int dy;
+	int i, j, eps;
+	bool invert = false;
+	unsigned int pixel = 0;
+
+	BUG_ON(x1 < 0 || y1 < 0 ||
+	       x2 < 0 || y2 < 0);
+
+	if (x1 == x2 || y1 == y2) {
+		draw_simple_line(sc,
+				 x1, y1,
+				 x2, y2,
+				 r, g, b, a, dash);
+		return;
+	}
+
+	dx = abs(x2 - x1);
+	dy = abs(y2 - y1);
+
+	/*
+	 * First thing we need to determine "Driving Axis", as can be
+	 * seen below if Y-axis projection of the line is bigger than
+	 * X-axis projection we swap axes and pretend the X is Y and
+	 * vice versa
+	 */
+	if (dy > dx) {
+		swap(x1, y1);
+		swap(x2, y2);
+		swap(dx, dy);
+		invert = true;
+	}
+
+	/*
+	 * Second, we need to make sure that we will be traversing
+	 * driving axis in the direction of increment so we swap point
+	 * 1 with point 2 if x1 is greater than x2
+	 */
+	if (x1 > x2) {
+		swap(x1, x2);
+		swap(y1, y2);
+	}
+
+	j   = y1;
+	eps = dy - dx;
+
+	for (i = x1; i <= x2 - 1; i++) {
+		if (!dash ||
+		    (++pixel % (2 * dash)) > dash) {
+			illuminate(sc->info,
+				   invert,
+				   j, i,
+				   r, g, b, a);
+		} else {
+			printf("NOT illuminating pixel: %d\n", pixel);
+		}
+
+		if (eps >= 0) {
+			j += 1;
+			eps -= dx;
+		}
+
+		eps += dy;
+	}
+}
+
+/**
+ * gl_draw_circle - draw a 2D circle with center at (x0, y0)
+ *
+ * @sc: screen to draw on
+ * @x0, @y0: coordinates of circle's center
+ * @radius: circle's radius
+ * @r, @g, @b, @a: circle's color
+
+ *
+ * gu_draw_circle() implements midpoint circle algorithm as can be
+ * found here:
+ *
+ * https://en.wikipedia.org/wiki/Midpoint_circle_algorithm
+ */
+void gu_draw_circle(struct screen *sc,
+		    int x0, int y0, int radius,
+		    u8 r, u8 g, u8 b, u8 a)
+{
+	int x = radius;
+	int y = 0;
+	int e = 0;
+
+	BUG_ON(x0 < 0 || y0 < 0 || radius < 0);
+
+	while (x >= y) {
+		 __illuminate(sc->info, x0 + x, y0 + y, r, g, b, a);
+		 __illuminate(sc->info, x0 + y, y0 + x, r, g, b, a);
+		 __illuminate(sc->info, x0 - y, y0 + x, r, g, b, a);
+		 __illuminate(sc->info, x0 - x, y0 + y, r, g, b, a);
+		 __illuminate(sc->info, x0 - x, y0 - y, r, g, b, a);
+		 __illuminate(sc->info, x0 - y, y0 - x, r, g, b, a);
+		 __illuminate(sc->info, x0 + y, y0 - x, r, g, b, a);
+		 __illuminate(sc->info, x0 + x, y0 - y, r, g, b, a);
+
+		 y += 1;
+		 e += 1 + 2 * y;
+
+		 if (2 * (e - x) + 1 > 0) {
+			 x -= 1;
+			 e += 1 - 2 * x;
+		 }
+	}
+}
diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
index eac9597..2625d9f 100644
--- a/lib/gui/Kconfig
+++ b/lib/gui/Kconfig
@@ -6,6 +6,9 @@ config IMAGE_RENDERER
 
 if IMAGE_RENDERER
 
+config 2D_PRIMITIVES
+       bool
+
 config BMP
 	bool "bmp"
 
diff --git a/lib/gui/Makefile b/lib/gui/Makefile
index d4b26c4..31e6622 100644
--- a/lib/gui/Makefile
+++ b/lib/gui/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
 obj-$(CONFIG_PNG)	+= png.o
 obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
 obj-$(CONFIG_PICOPNG)	+= png_pico.o picopng.o
+obj-$(CONFIG_2D_PRIMITIVES) += 2d-primitives.o
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
