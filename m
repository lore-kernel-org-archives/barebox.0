Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprIm-0008LO-28
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:00:28 +0000
Received: by mail-lf0-x243.google.com with SMTP id y193so9280385lfd.1
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 00:00:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 09:59:54 +0300
Message-Id: <20170320065954.8330-4-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] gui: image_renderer: fix "no previous prototype for
 'image_renderer_unregister'" warning
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

  lib/gui/image_renderer.c:92:6: warning: no previous prototype for 'image_renderer_unregister' [-Wmissing-prototypes]
   void image_renderer_unregister(struct image_renderer *ir)
        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/gui/image_renderer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/gui/image_renderer.h b/include/gui/image_renderer.h
index e0b1eae25..bfdea1b14 100644
--- a/include/gui/image_renderer.h
+++ b/include/gui/image_renderer.h
@@ -32,7 +32,7 @@ struct image_renderer {
 
 #ifdef CONFIG_IMAGE_RENDERER
 int image_renderer_register(struct image_renderer *ir);
-void image_render_unregister(struct image_renderer *ir);
+void image_renderer_unregister(struct image_renderer *ir);
 
 int image_renderer_image(struct screen *sc, struct surface *s, struct image *img);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
