Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ic-0003Fp-WB
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:09 +0000
Received: by mail-wm0-x243.google.com with SMTP id f6-v6so912854wmc.4
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:33:56 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:31 +0300
Message-Id: <20180522153342.24933-2-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 01/12] resource: fix iomem_resource.end for 64 bit systems
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Fix iomem_resource.end to cover the whole address space addressable by a
variable of type resource_size_t.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
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
