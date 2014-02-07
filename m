Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rG-QF
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:25 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id B023818B4265
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:40 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:56 +0100
Message-Id: <1391762936-2747-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 14/14] don't cast negative error codes to unsigned size_t
To: barebox@lists.infradead.org

The cast prevents us from doing proper error checking.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/uimage.c | 6 +++---
 include/image.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 7fbef86..4296359 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -74,7 +74,7 @@ void uimage_print_contents(struct uimage_handle *handle)
 }
 EXPORT_SYMBOL(uimage_print_contents);
 
-size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
+int uimage_get_size(struct uimage_handle *handle, unsigned int image_no)
 {
 	if (image_no >= handle->nb_data_entries)
 		return -EINVAL;
@@ -373,7 +373,7 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	struct resource *res;
 	size_t size = BUFSIZ;
 	size_t ofs = 0;
-	size_t now;
+	int now;
 	int fd;
 
 	fd = open(filename, O_RDONLY);
@@ -420,7 +420,7 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		int image_no, unsigned long load_address)
 {
 	int ret;
-	size_t size;
+	int size;
 	resource_size_t start = (resource_size_t)load_address;
 
 	uimage_buf = (void *)load_address;
diff --git a/include/image.h b/include/image.h
index 0c8a4b1..1592348 100644
--- a/include/image.h
+++ b/include/image.h
@@ -230,7 +230,7 @@ int uimage_verify(struct uimage_handle *handle);
 int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 		int(*flush)(void*, unsigned int));
 void uimage_print_contents(struct uimage_handle *handle);
-size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
+int uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
 struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		int image_no, unsigned long load_address);
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
