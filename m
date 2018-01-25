Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005gZ-DP
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:19 +0100
Message-Id: <20180125074520.10320-8-s.hauer@pengutronix.de>
In-Reply-To: <20180125074520.10320-1-s.hauer@pengutronix.de>
References: <20180125074520.10320-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] fs/uimagefs: Use is_tftp_fs() and cache_file() to ease
 TFTP workaround
To: Barebox List <barebox@lists.infradead.org>

We have helper functions now to ease file caching when a file
is on TFTP. Use them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/uimagefs.c      | 37 +++++++++++++------------------------
 include/uimagefs.h |  2 +-
 2 files changed, 14 insertions(+), 25 deletions(-)

diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index c0c5750c2c..c120944a46 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -196,7 +196,6 @@ static void uimagefs_remove(struct device_d *dev)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d, *tmp;
-	struct stat s;
 
 	list_for_each_entry_safe(d, tmp, &priv->list, list) {
 		free(d->name);
@@ -204,10 +203,11 @@ static void uimagefs_remove(struct device_d *dev)
 		free(d);
 	}
 
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(priv->tmp, &s))
-		unlink(priv->tmp);
+	if (priv->copy) {
+		unlink(priv->copy);
+		free(priv->copy);
+	}
 
-	free(priv->tmp);
 	free(priv);
 }
 
@@ -363,28 +363,21 @@ static int __uimage_open(struct uimagefs_handle *priv)
 	int ret;
 	size_t offset = 0;
 	size_t data_offset = 0;
+	const char *filename = priv->filename;
+
+	if (is_tftp_fs(filename)) {
+		ret = cache_file(filename, &priv->copy);
+		if (ret)
+			return ret;
+		filename = priv->copy;
+	}
 
-again:
-	fd = open(priv->filename, O_RDONLY);
+	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
 		printf("could not open: %s\n", errno_str());
 		return fd;
 	}
 
-	/*
-	 * Hack around tftp fs. We need lseek for uImage support, but
-	 * this cannot be implemented in tftp fs, so we detect this
-	 * and copy the file to ram if it fails
-	 */
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !can_lseek_backward(fd)) {
-		close(fd);
-		ret = copy_file(priv->filename, priv->tmp, 0);
-		if (ret)
-			return ret;
-		priv->filename = priv->tmp;
-		goto again;
-	}
-
 	header = &priv->header;
 
 	ret = read(fd, header, sizeof(*header));
@@ -514,10 +507,6 @@ static int uimagefs_probe(struct device_d *dev)
 	priv->filename = fsdev->backingstore;
 	dev_dbg(dev, "mount: %s\n", fsdev->backingstore);
 
-	if (IS_BUILTIN(CONFIG_FS_TFTP))
-		priv->tmp = basprintf("/.uImage_tmp_%08x",
-					crc32(0, fsdev->path, strlen(fsdev->path)));
-
 	ret = __uimage_open(priv);
 	if (ret)
 		goto err;
diff --git a/include/uimagefs.h b/include/uimagefs.h
index 81b32310ad..3f58589b73 100644
--- a/include/uimagefs.h
+++ b/include/uimagefs.h
@@ -45,7 +45,7 @@ struct uimagefs_handle {
 	struct image_header header;
 	int nb_data_entries;
 	char *filename;
-	char *tmp;
+	char *copy;
 
 	struct list_head list;
 };
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
