Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2hfl-0007Oa-6K
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 17:53:33 +0000
Received: by mail-lf0-x22d.google.com with SMTP id d10so6829374lfg.11
 for <barebox@lists.infradead.org>; Thu, 12 Oct 2017 10:53:08 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 12 Oct 2017 20:52:27 +0300
Message-Id: <20171012175228.16710-2-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH 2/3] fbtest: add solid pattern
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>

This just fills entire screen with single color, as passed in -c
argument in RRGGBB format.

Suggested-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 commands/fbtest.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index ca6ec2199..9981c1319 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -9,6 +9,15 @@
 #include <linux/gcd.h>
 #include <int_sqrt.h>
 
+static void fbtest_pattern_solid(struct screen *sc, u32 color)
+{
+	const u8 r = (color >> 16) & 0xff;
+	const u8 g = (color >>  8) & 0xff;
+	const u8 b = (color >>  0) & 0xff;
+
+	gu_fill_rectangle(sc, 0, 0, -1, -1, r, g, b, 0xff);
+}
+
 static void fbtest_pattern_bars(struct screen *sc, u32 unused)
 {
 	int i;
@@ -122,6 +131,7 @@ static int do_fbtest(int argc, char *argv[])
 		const char *name;
 		void (*func) (struct screen *sc, u32 color);
 	} patterns[] = {
+		{ "solid",    fbtest_pattern_solid    },
 		{ "geometry", fbtest_pattern_geometry },
 		{ "bars",     fbtest_pattern_bars     }
 	};
@@ -191,8 +201,8 @@ BAREBOX_CMD_HELP_TEXT("This command displays a test pattern on a screen")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-d <fbdev>\t",    "framebuffer device (default /dev/fb0)")
-BAREBOX_CMD_HELP_OPT ("-c color\t", "color")
-BAREBOX_CMD_HELP_OPT ("-p pattern\t", "pattern name (geometry, bars)")
+BAREBOX_CMD_HELP_OPT ("-c color\t", "color, in hex RRGGBB format")
+BAREBOX_CMD_HELP_OPT ("-p pattern\t", "pattern name (solid, geometry, bars)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(fbtest)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
