Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmk-00054u-2k
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id i20so10804010pfo.6
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:19 -0800
Message-Id: <20190307074926.20539-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/17] uimage: Fix lseek error check in uimage_load()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/uimage.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 72b668e89..12c7e9e2c 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -308,6 +308,7 @@ int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 	image_header_t *hdr = &handle->header;
 	struct uimage_handle_data *iha;
 	int ret;
+	loff_t off;
 	int (*uncompress_fn)(unsigned char *inbuf, int len,
 		    int(*fill)(void*, unsigned int),
 	            int(*flush)(void*, unsigned int),
@@ -320,10 +321,9 @@ int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 
 	iha = &handle->ihd[image_no];
 
-	ret = lseek(handle->fd, iha->offset + handle->data_offset,
-			SEEK_SET);
-	if (ret < 0)
-		return ret;
+	off = iha->offset + handle->data_offset;
+	if (lseek(handle->fd, off, SEEK_SET) != off)
+		return -errno;
 
 	/* if ramdisk U-Boot expect to ignore the compression type */
 	if (hdr->ih_comp == IH_COMP_NONE || hdr->ih_type == IH_TYPE_RAMDISK)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
