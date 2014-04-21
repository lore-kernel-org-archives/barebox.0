Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcEdG-0000Xp-2y
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 13:51:39 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id C346418B4245
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 15:50:39 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 15:50:34 +0200
Message-Id: <1398088235-13933-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 1/2] don't cast negative error codes to unsigned size_t
To: barebox@lists.infradead.org

The cast prevents us from doing proper error checking.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v2: use ssize_t instead of plain int
---
 common/uimage.c | 6 +++---
 include/image.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 7fbef8688e62..243dfb0df5e1 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -74,7 +74,7 @@ void uimage_print_contents(struct uimage_handle *handle)
 }
 EXPORT_SYMBOL(uimage_print_contents);
 
-size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
+ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
 {
 	if (image_no >= handle->nb_data_entries)
 		return -EINVAL;
@@ -373,7 +373,7 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	struct resource *res;
 	size_t size = BUFSIZ;
 	size_t ofs = 0;
-	size_t now;
+	ssize_t now;
 	int fd;
 
 	fd = open(filename, O_RDONLY);
@@ -420,7 +420,7 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		int image_no, unsigned long load_address)
 {
 	int ret;
-	size_t size;
+	ssize_t size;
 	resource_size_t start = (resource_size_t)load_address;
 
 	uimage_buf = (void *)load_address;
diff --git a/include/image.h b/include/image.h
index 0c8a4b138d94..730e3d75b835 100644
--- a/include/image.h
+++ b/include/image.h
@@ -230,7 +230,7 @@ int uimage_verify(struct uimage_handle *handle);
 int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 		int(*flush)(void*, unsigned int));
 void uimage_print_contents(struct uimage_handle *handle);
-size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
+ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
 struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		int image_no, unsigned long load_address);
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
