Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9vTi-0005Go-RM
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 16:03:00 +0000
Received: by mail-lf0-x244.google.com with SMTP id 90so3058513lfs.13
 for <barebox@lists.infradead.org>; Wed, 01 Nov 2017 09:02:33 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Wed,  1 Nov 2017 19:02:26 +0300
Message-Id: <20171101160226.29142-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH] 2d-primitives: fix typos in function names in comments
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

This fixes gl_* -> gu_* in several places.

Reported-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 lib/gui/2d-primitives.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
index 89acc092d..82e59d9a6 100644
--- a/lib/gui/2d-primitives.c
+++ b/lib/gui/2d-primitives.c
@@ -72,7 +72,7 @@ static void draw_simple_line(struct screen *sc,
 }
 
 /**
- * gl_draw_line - draw a 2D dashed line between (x1, y1) and (x2,y2)
+ * gu_draw_line - draw a 2D dashed line between (x1, y1) and (x2,y2)
  *
  * @sc: screen to draw on
  * @x1, @y1: first point defining the line
@@ -80,7 +80,7 @@ static void draw_simple_line(struct screen *sc,
  * @r, @g, @b, @a: line's color
  * @dash: dash length (0 denotes solid line)
  *
- * gl_draw_line() implements integer version of Bresenham's algoritm
+ * gu_draw_line() implements integer version of Bresenham's algoritm
  * as can be found here:
  *
  * http://www.idav.ucdavis.edu/education/GraphicsNotes/Bresenhams-Algorithm.pdf
@@ -158,7 +158,7 @@ void gu_draw_line(struct screen *sc,
 }
 
 /**
- * gl_draw_circle - draw a 2D circle with center at (x0, y0)
+ * gu_draw_circle - draw a 2D circle with center at (x0, y0)
  *
  * @sc: screen to draw on
  * @x0, @y0: coordinates of circle's center
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
