Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprIm-00086v-1u
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:00:29 +0000
Received: by mail-lf0-x243.google.com with SMTP id v2so9286760lfi.2
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 00:00:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 09:59:52 +0300
Message-Id: <20170320065954.8330-2-antonynpavlov@gmail.com>
In-Reply-To: <20170320065954.8330-1-antonynpavlov@gmail.com>
References: <20170320065954.8330-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] gui: bmp.c: fix "no previous prototype" warning
To: barebox@lists.infradead.org

The patch fixes these compiler's warnings:

  lib/gui/bmp.c:12:15: warning: no previous prototype for 'bmp_open' [-Wmissing-prototypes]
   struct image *bmp_open(char *inbuf, int insize)
                 ^
  lib/gui/bmp.c:33:6: warning: no previous prototype for 'bmp_close' [-Wmissing-prototypes]
   void bmp_close(struct image *img)
        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/gui/bmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 143aa2805..8bffc70a4 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -9,7 +9,7 @@
 #include <gui/image_renderer.h>
 #include <asm/unaligned.h>
 
-struct image *bmp_open(char *inbuf, int insize)
+static struct image *bmp_open(char *inbuf, int insize)
 {
 	struct image *img = calloc(1, sizeof(struct image));
 	struct bmp_image *bmp = (struct bmp_image*)inbuf;
@@ -30,7 +30,7 @@ struct image *bmp_open(char *inbuf, int insize)
 	return img;
 }
 
-void bmp_close(struct image *img)
+static void bmp_close(struct image *img)
 {
 	free(img->data);
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
