Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0X-00030c-A7
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:38 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:13 +0200
Message-Id: <20190822055114.931-11-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/11] gui: png_lode: fix freeing of uninitialized pointer
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

If either calloc or png_uncompress_init fails, free(png) will free the
uninitialized png pointer. Avoid this and while at it postpone the
img allocation till after the early exit.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/gui/png_lode.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/lib/gui/png_lode.c b/lib/gui/png_lode.c
index 477704d9768c..e30db0f853b3 100644
--- a/lib/gui/png_lode.c
+++ b/lib/gui/png_lode.c
@@ -46,15 +46,16 @@ struct image *png_open(char *inbuf, int insize)
 	LodePNGState state;
 	int ret;
 	unsigned error;
-	struct image *img = calloc(1, sizeof(struct image));
-	unsigned char *png;
-
-	if (!img)
-		return ERR_PTR(-ENOMEM);
+	struct image *img;
+	unsigned char *png = NULL;
 
 	ret = png_uncompress_init();
 	if (ret)
-		goto err;
+		return ERR_PTR(ret);
+
+	img = calloc(1, sizeof(struct image));
+	if (!img)
+		return ERR_PTR(-ENOMEM);
 
 	lodepng_state_init(&state);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
