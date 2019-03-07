Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nml-00056o-6p
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id s22so10804680pfh.4
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:20 -0800
Message-Id: <20190307074926.20539-12-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/17] uimage: Fix lseek error check in uimage_load_to_buf()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/uimage.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 12c7e9e2c..35bfb10b0 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -457,6 +457,7 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 {
 	u32 size;
 	int ret;
+	loff_t off;
 	struct uimage_handle_data *ihd;
 	char ftbuf[128];
 	enum filetype ft;
@@ -467,9 +468,8 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 
 	ihd = &handle->ihd[image_no];
 
-	ret = lseek(handle->fd, ihd->offset + handle->data_offset,
-			SEEK_SET);
-	if (ret < 0)
+	off = ihd->offset + handle->data_offset;
+	if (lseek(handle->fd, off, SEEK_SET) != off)
 		return NULL;
 
 	if (handle->header.ih_comp == IH_COMP_NONE) {
@@ -497,10 +497,8 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 	if (ft != filetype_gzip)
 		return NULL;
 
-	ret = lseek(handle->fd, ihd->offset + handle->data_offset +
-			ihd->len - 4,
-			SEEK_SET);
-	if (ret < 0)
+	off = ihd->offset + handle->data_offset + ihd->len - 4;
+	if (lseek(handle->fd, off, SEEK_SET) != off)
 		return NULL;
 
 	ret = read(handle->fd, &size, 4);
@@ -509,9 +507,8 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 
 	size = le32_to_cpu(size);
 
-	ret = lseek(handle->fd, ihd->offset + handle->data_offset,
-			SEEK_SET);
-	if (ret < 0)
+	off = ihd->offset + handle->data_offset;
+	if (lseek(handle->fd, off, SEEK_SET) != off)
 		return NULL;
 
 	buf = malloc(size);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
