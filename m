Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPB-0004U6-KJ
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:26 +0000
Received: by mail-wm0-x242.google.com with SMTP id f8-v6so26172284wmc.4
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:54:58 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:27 +0300
Message-Id: <20180521115438.26493-2-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-1-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 01/12] resource: fix iomem root resource for 64 bit
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/resource.c b/common/resource.c
index e4bbe15fd..abc0814d2 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -114,7 +114,7 @@ int release_region(struct resource *res)
 /* The root resource for the whole memory-mapped io space */
 struct resource iomem_resource = {
 	.start = 0,
-	.end = 0xffffffff,
+	.end = ~(resource_size_t)0,
 	.name = "iomem",
 	.children = LIST_HEAD_INIT(iomem_resource.children),
 };
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
