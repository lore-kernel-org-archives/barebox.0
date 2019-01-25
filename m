Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmtmv-0003oR-IG
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 05:12:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id b85so4181068pfc.3
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 21:12:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 24 Jan 2019 21:12:04 -0800
Message-Id: <20190125051204.15749-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] lib: image-sparse: Mark sparse_seek() as static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mark sparse_seek() as static to avoid -Wmissing-prototypes warnings

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/image-sparse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/image-sparse.c b/lib/image-sparse.c
index 7137d15fd..0c31742ab 100644
--- a/lib/image-sparse.c
+++ b/lib/image-sparse.c
@@ -60,7 +60,7 @@ struct sparse_image_ctx {
 	uint32_t fill_val;
 };
 
-int sparse_seek(struct sparse_image_ctx *si)
+static int sparse_seek(struct sparse_image_ctx *si)
 {
 	unsigned int chunk_data_sz, payload;
 	loff_t offs;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
