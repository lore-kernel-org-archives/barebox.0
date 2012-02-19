Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzB1s-0007ji-6j
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 17:58:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 Feb 2012 18:58:05 +0100
Message-Id: <1329674288-25583-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
References: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] make uimages work on tftpfs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/uimage.c |   25 +++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 28791b5..4933c40 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -94,6 +94,8 @@ size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
 }
 EXPORT_SYMBOL(uimage_get_size);
 
+static const char uimage_tmp[] = "/.uImage_tmp";
+
 /*
  * open a uimage. This will check the header contents and
  * return a handle to the uImage
@@ -106,13 +108,29 @@ struct uimage_handle *uimage_open(const char *filename)
 	struct image_header *header;
 	int i;
 	int ret;
+	struct stat s;
 
+again:
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
 		printf("could not open: %s\n", errno_str());
 		return NULL;
 	}
 
+	/*
+	 * Hack around tftp fs. We need lseek for uImage support, but
+	 * this cannot be implemented in tftp fs, so we detect this
+	 * by doing a test lseek and copy the file to ram if it fails
+	 */
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && lseek(fd, 0, SEEK_SET)) {
+		close(fd);
+		ret = copy_file(filename, uimage_tmp, 0);
+		if (ret)
+			return NULL;
+		filename = uimage_tmp;
+		goto again;
+	}
+
 	handle = xzalloc(sizeof(struct uimage_handle));
 	header = &handle->header;
 
@@ -194,6 +212,8 @@ struct uimage_handle *uimage_open(const char *filename)
 err_out:
 	close(fd);
 	free(handle);
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat(uimage_tmp, &s))
+		unlink(uimage_tmp);
 	return NULL;
 }
 EXPORT_SYMBOL(uimage_open);
@@ -203,9 +223,14 @@ EXPORT_SYMBOL(uimage_open);
  */
 void uimage_close(struct uimage_handle *handle)
 {
+	struct stat s;
+
 	close(handle->fd);
 	free(handle->name);
 	free(handle);
+
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && !stat("/.uimage_tmp", &s))
+		unlink("/.uimage_tmp");
 }
 EXPORT_SYMBOL(uimage_close);
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
