Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005gb-DH
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:18 +0100
Message-Id: <20180125074520.10320-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] uimage: Use is_tftp_fs() and cache_file() to ease TFTP
 workaround
To: Barebox List <barebox@lists.infradead.org>

We have helper functions now to ease file caching when a file
is on TFTP. Use them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/uimage.c | 47 ++++++++++++++++++++++-------------------------
 include/image.h |  1 +
 2 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index e857c11d37..3273bc1871 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -85,8 +85,6 @@ ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
 }
 EXPORT_SYMBOL(uimage_get_size);
 
-static const char uimage_tmp[] = "/.uImage_tmp";
-
 /*
  * open a uimage. This will check the header contents and
  * return a handle to the uImage
@@ -99,32 +97,27 @@ struct uimage_handle *uimage_open(const char *filename)
 	struct image_header *header;
 	int i;
 	int ret;
-	struct stat s;
+	char *copy = NULL;
+
+	if (is_tftp_fs(filename)) {
+		ret = cache_file(filename, &copy);
+		if (ret)
+			return NULL;
+		filename = copy;
+	}
 
-again:
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
 		printf("could not open: %s\n", errno_str());
+		free(copy);
 		return NULL;
 	}
 
-	/*
-	 * Hack around tftp fs. We need lseek for uImage support, but
-	 * this cannot be implemented in tftp fs, so we detect this
-	 * and copy the file to ram if it fails
-	 */
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !can_lseek_backward(fd)) {
-		close(fd);
-		ret = copy_file(filename, uimage_tmp, 0);
-		if (ret)
-			return NULL;
-		filename = uimage_tmp;
-		goto again;
-	}
-
 	handle = xzalloc(sizeof(struct uimage_handle));
 	header = &handle->header;
 
+	handle->copy = copy;
+
 	if (read(fd, header, sizeof(*header)) < 0) {
 		printf("could not read: %s\n", errno_str());
 		goto err_out;
@@ -204,9 +197,12 @@ err_out:
 	close(fd);
 
 	free(handle->name);
+	if (handle->copy) {
+		unlink(handle->copy);
+		free(handle->copy);
+	}
 	free(handle);
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(uimage_tmp, &s))
-		unlink(uimage_tmp);
+
 	return NULL;
 }
 EXPORT_SYMBOL(uimage_open);
@@ -216,14 +212,15 @@ EXPORT_SYMBOL(uimage_open);
  */
 void uimage_close(struct uimage_handle *handle)
 {
-	struct stat s;
-
 	close(handle->fd);
+
+	if (handle->copy) {
+		unlink(handle->copy);
+		free(handle->copy);
+	}
+
 	free(handle->name);
 	free(handle);
-
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(uimage_tmp, &s))
-		unlink(uimage_tmp);
 }
 EXPORT_SYMBOL(uimage_close);
 
diff --git a/include/image.h b/include/image.h
index 3e75d49b88..add9c85874 100644
--- a/include/image.h
+++ b/include/image.h
@@ -246,6 +246,7 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr);
 struct uimage_handle {
 	struct image_header header;
 	char *name;
+	char *copy;
 	struct uimage_handle_data ihd[MAX_MULTI_IMAGE_COUNT];
 	int nb_data_entries;
 	size_t data_offset;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
