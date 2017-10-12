Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2hfd-0007Do-94
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 17:53:27 +0000
Received: by mail-lf0-x22b.google.com with SMTP id r129so6836726lff.8
 for <barebox@lists.infradead.org>; Thu, 12 Oct 2017 10:53:00 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 12 Oct 2017 20:52:26 +0300
Message-Id: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH 1/3] 2d-primitives: fix missing pixel in gu_draw_line()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>

When drawing line from (x1, y1) to (x2, y2), pixel at (x2, y2) should
be included.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 lib/gui/2d-primitives.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
index 0f29b32ba..89acc092d 100644
--- a/lib/gui/2d-primitives.c
+++ b/lib/gui/2d-primitives.c
@@ -61,7 +61,7 @@ static void draw_simple_line(struct screen *sc,
 		swap(y1, y2);
 	}
 
-	for (x = x1; x < x2 - 1; x++) {
+	for (x = x1; x <= x2; x++) {
 		if (!dash ||
 		    (++pixel % (2 * dash)) < dash)
 			illuminate(sc->info,
@@ -137,7 +137,7 @@ void gu_draw_line(struct screen *sc,
 	j   = y1;
 	eps = dy - dx;
 
-	for (i = x1; i <= x2 - 1; i++) {
+	for (i = x1; i <= x2; i++) {
 		if (!dash ||
 		    (++pixel % (2 * dash)) > dash) {
 			illuminate(sc->info,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
