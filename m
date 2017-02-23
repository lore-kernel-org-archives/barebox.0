Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgwWf-0000hM-5e
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 16:45:57 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Thu, 23 Feb 2017 17:45:27 +0100
Message-Id: <20170223164527.29878-3-bst@pengutronix.de>
In-Reply-To: <20170223164527.29878-1-bst@pengutronix.de>
References: <20170223164527.29878-1-bst@pengutronix.de>
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
Subject: [PATCH 3/3] 2d-primitives: check dimensions in __illuminate
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

gl_draw_circle draws outside of the screen if the resolution is too low.
This lead to memory corruption. Check the dimensions before drawing.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 lib/gui/2d-primitives.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
index f3814eea44..0f29b32bab 100644
--- a/lib/gui/2d-primitives.c
+++ b/lib/gui/2d-primitives.c
@@ -13,6 +13,9 @@ static void __illuminate(struct fb_info *info,
 {
 	void *pixel;
 
+	if (x < 0 || y < 0 || x >= info->xres || y >= info->yres)
+		return;
+
 	pixel  = fb_get_screen_base(info);
 	pixel += y * info->line_length + x * (info->bits_per_pixel >> 3);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
