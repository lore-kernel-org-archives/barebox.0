Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2hfn-0007RW-Pu
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 17:53:37 +0000
Received: by mail-lf0-x235.google.com with SMTP id k40so6821336lfi.4
 for <barebox@lists.infradead.org>; Thu, 12 Oct 2017 10:53:11 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 12 Oct 2017 20:52:28 +0300
Message-Id: <20171012175228.16710-3-nikita.yoush@cogentembedded.com>
In-Reply-To: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
References: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH 3/3] fbtest: add gradients pattern
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>

This pattern draws red, green, blue, and white color gradients, together with
3 anchor rectangles in corners.

To be used with automated screen testing via computer vision methods.

Suggested-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 commands/fbtest.c | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 108 insertions(+), 2 deletions(-)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index 9981c1319..8e6a5457f 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -117,6 +117,111 @@ static void fbtest_pattern_geometry(struct screen *sc, u32 color)
 	}
 }
 
+static void draw_line_r(struct screen *sc, bool rotate_90_ccw,
+		int x1, int y1, int x2, int y2,
+		uint8_t r, uint8_t g, uint8_t b)
+{
+	if (rotate_90_ccw)
+		gu_draw_line(sc,
+			     y1, sc->info->yres - x1,
+			     y2, sc->info->yres - x2,
+			     r, g, b, 0xff, 0);
+	else
+		gu_draw_line(sc, x1, y1, x2, y2, r, g, b, 0xff, 0);
+}
+
+static void solid_rect_r(struct screen *sc, bool rotate_90_ccw,
+		int x1, int y1, int x2, int y2,
+		uint8_t r, uint8_t g, uint8_t b)
+{
+	if (rotate_90_ccw)
+		gu_fill_rectangle(sc,
+				  y1, sc->info->yres - x1,
+				  y2, sc->info->yres - x2,
+				  r, g, b, 0xff);
+	else
+		gu_fill_rectangle(sc, x1, y1, x2, y2, r, g, b, 0xff);
+}
+
+static void grad_rect_r(struct screen *sc, bool rotate_90_ccw,
+		int x1, int y1, int x2, int y2,
+		uint8_t r, uint8_t g, uint8_t b)
+{
+	int x;
+
+	for (x = x1; x <= x2; x++)
+		draw_line_r(sc, rotate_90_ccw, x, y1, x, y2,
+			    r * (x - x1 + 1) / (x2 - x1 + 1),
+			    g * (x - x1 + 1) / (x2 - x1 + 1),
+			    b * (x - x1 + 1) / (x2 - x1 + 1));
+}
+
+static void anchor_rect_r(struct screen *sc, bool rotate_90_ccw,
+		int x1, int y1, int x2, int y2)
+{
+	int dx = (x2 - x1 + 1) / 6, dy = (y2 - y1 + 1) / 6;
+
+	solid_rect_r(sc, rotate_90_ccw,
+		     x1, y1, x2, y2,
+		     0xff, 0xff, 0xff);
+
+	solid_rect_r(sc, rotate_90_ccw,
+		     x1 + dx, y1 + dy, x2 - dx, y2 - dy,
+		     0, 0, 0);
+
+	solid_rect_r(sc, rotate_90_ccw,
+		     x1 + 2 * dx, y1 + 2 * dy, x2 - 2 * dx, y2 - 2 * dy,
+		     0xff, 0xff, 0xff);
+}
+
+
+static void fbtest_pattern_gradient(struct screen *sc, u32 unused)
+{
+	bool rotate_90_ccw;
+	int w, h, border;
+
+	if (sc->info->xres > sc->info->yres) {
+		w = sc->info->xres;
+		h = sc->info->yres;
+		rotate_90_ccw = false;
+	} else {
+		w = sc->info->yres;
+		h = sc->info->xres;
+		rotate_90_ccw = true;
+	}
+
+	solid_rect_r(sc, rotate_90_ccw, 0, 0, w - 1, h - 1, 0, 0, 0);
+
+	border = h / 5;
+
+	anchor_rect_r(sc, rotate_90_ccw,
+		      border * 3 / 10, border * 3 / 10,
+		      border * 7 / 10, border * 7 / 10);
+	anchor_rect_r(sc, rotate_90_ccw,
+		      w - border * 7 / 10, border * 3 / 10,
+		      w - border * 3 / 10, border * 7 / 10);
+	anchor_rect_r(sc, rotate_90_ccw,
+		      w - border * 7 / 10, h - border * 7 / 10,
+		      w - border * 3 / 10, h - border * 3 / 10);
+
+	grad_rect_r(sc, rotate_90_ccw,
+		    border, border,
+		    w - border, border + (h - 2 * border) / 4 - 1,
+		    0xff, 0, 0);
+	grad_rect_r(sc, rotate_90_ccw,
+		    border, border + (h - 2 * border) / 4,
+		    w - border, border + (h - 2 * border) / 2 - 1,
+		    0, 0xff, 0);
+	grad_rect_r(sc, rotate_90_ccw,
+		    border, border + (h - 2 * border) / 2,
+		    w - border, border + (h - 2 * border) * 3 / 4 - 1,
+		    0, 0, 0xff);
+	grad_rect_r(sc, rotate_90_ccw,
+		    border, border + (h - 2 * border) * 3 / 4,
+		    w - border, h - border,
+		    0xff, 0xff, 0xff);
+}
+
 static int do_fbtest(int argc, char *argv[])
 {
 	struct screen *sc;
@@ -133,7 +238,8 @@ static int do_fbtest(int argc, char *argv[])
 	} patterns[] = {
 		{ "solid",    fbtest_pattern_solid    },
 		{ "geometry", fbtest_pattern_geometry },
-		{ "bars",     fbtest_pattern_bars     }
+		{ "bars",     fbtest_pattern_bars     },
+		{ "gradient", fbtest_pattern_gradient },
 	};
 
 	while((opt = getopt(argc, argv, "d:p:c:")) > 0) {
@@ -202,7 +308,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-d <fbdev>\t",    "framebuffer device (default /dev/fb0)")
 BAREBOX_CMD_HELP_OPT ("-c color\t", "color, in hex RRGGBB format")
-BAREBOX_CMD_HELP_OPT ("-p pattern\t", "pattern name (solid, geometry, bars)")
+BAREBOX_CMD_HELP_OPT ("-p pattern\t", "pattern name (solid, geometry, bars, gradient)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(fbtest)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
