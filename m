Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqKj-0006W0-Ho
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:13:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:13:28 +0100
Message-Id: <20180131111328.8000-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] FIT: Use const dtb unflatten variant
To: Barebox List <barebox@lists.infradead.org>

This reduces the memory usage of the FIT image support. Instead of copying
the image from the DTB to the unflattened tree we let the unflattened tree
reference the data from the DTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 3d0eaf4987..048425ac0b 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -691,7 +691,7 @@ static int fit_do_open(struct fit_handle *handle)
 	const char *desc = "(no description)";
 	struct device_node *root;
 
-	root = of_unflatten_dtb(handle->fit);
+	root = of_unflatten_dtb_const(handle->fit);
 	if (IS_ERR(root))
 		return PTR_ERR(root);
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
