Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebnfy-000255-Nh
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 13:22:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jan 2018 14:22:33 +0100
Message-Id: <20180117132233.19806-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] FIT: Fix error path
To: Barebox List <barebox@lists.infradead.org>

In case of error of_unflatten_dtb() returns an ERR_PTR. Make sure
that handle->root contains NULL in this case so that we do not call
of_delete_node on the error pointer in the exit path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 81433e6ecf..db5d142147 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -584,6 +584,7 @@ struct fit_handle *fit_open(const char *filename, const char *config, bool verbo
 {
 	struct fit_handle *handle = NULL;
 	const char *desc = "(no description)";
+	struct device_node *root;
 	int ret;
 
 	handle = xzalloc(sizeof(struct fit_handle));
@@ -596,12 +597,13 @@ struct fit_handle *fit_open(const char *filename, const char *config, bool verbo
 		goto err;
 	}
 
-	handle->root = of_unflatten_dtb(handle->fit);
-	if (IS_ERR(handle->root)) {
-		ret = PTR_ERR(handle->root);
+	root = of_unflatten_dtb(handle->fit);
+	if (IS_ERR(root)) {
+		ret = PTR_ERR(root);
 		goto err;
 	}
 
+	handle->root = root;
 	handle->verify = verify;
 
 	of_property_read_string(handle->root, "description", &desc);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
