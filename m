Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bY-Ki
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:10 +0100
Message-Id: <20180131111116.9638-3-s.hauer@pengutronix.de>
In-Reply-To: <20180131111116.9638-1-s.hauer@pengutronix.de>
References: <20180131111116.9638-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] FIT: Do not pre-open images
To: Barebox List <barebox@lists.infradead.org>

Only do what fit_open_configuration() suggests: open the configuration,
but not the images in it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c  | 21 ---------------------
 include/image-fit.h |  7 -------
 2 files changed, 28 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 12379a67ff..8715689cfb 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -581,27 +581,6 @@ int fit_open_configuration(struct fit_handle *handle, const char *name)
 
 	handle->conf_node = conf_node;
 
-	if (fit_has_image(handle, "kernel")) {
-		ret = fit_open_image(handle, "kernel", &handle->kernel,
-				     &handle->kernel_size);
-		if (ret)
-			return ret;
-	}
-
-	if (fit_has_image(handle, "ramdisk")) {
-		ret = fit_open_image(handle, "ramdisk", &handle->initrd,
-				     &handle->initrd_size);
-		if (ret)
-			return ret;
-	}
-
-	if (fit_has_image(handle, "fdt")) {
-		ret = fit_open_image(handle, "fdt", &handle->oftree,
-				     &handle->oftree_size);
-		if (ret)
-			return ret;
-	}
-
 	return 0;
 }
 
diff --git a/include/image-fit.h b/include/image-fit.h
index 62f44dcc8d..0e26a40ef7 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -30,13 +30,6 @@ struct fit_handle {
 
 	struct device_node *root;
 	struct device_node *conf_node;
-
-	const void *kernel;
-	unsigned long kernel_size;
-	const void *oftree;
-	unsigned long oftree_size;
-	const void *initrd;
-	unsigned long initrd_size;
 };
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
