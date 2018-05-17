Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRi-0002jL-F1
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:55 +0000
Received: by mail-wm0-x232.google.com with SMTP id t11-v6so8701170wmt.0
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:44 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:54 +0300
Message-Id: <20180517135858.16202-12-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 11/15] resource: fix iomem root resource for 64 bit
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 common/resource.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index e4bbe15fd..1cf00a927 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -114,7 +114,11 @@ int release_region(struct resource *res)
 /* The root resource for the whole memory-mapped io space */
 struct resource iomem_resource = {
 	.start = 0,
+#ifdef CONFIG_PHYS_ADDR_T_64BIT
+	.end = -1ull,
+#else
 	.end = 0xffffffff,
+#endif
 	.name = "iomem",
 	.children = LIST_HEAD_INIT(iomem_resource.children),
 };
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
