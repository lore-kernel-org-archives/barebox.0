Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R8YuJ-00055b-Fn
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 14:45:16 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id E814CDCE358
	for <barebox@lists.infradead.org>;
	Tue, 27 Sep 2011 16:46:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 27 Sep 2011 16:22:09 +0200
Message-Id: <1317133331-15993-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] image: use data base addr for image_print_contents,
	image_multi_count/getimg
To: barebox@lists.infradead.org

as in barebox the data could be the mapped file or a allocated memory with
just the data (non header)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c  |    2 +-
 common/image.c    |   31 +++++++++++++++----------------
 include/image.h   |    8 ++++----
 scripts/mkimage.c |    5 +++--
 4 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index e5ffacb..e9a39c4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -203,7 +203,7 @@ struct image_handle *map_image(const char *filename, int verify)
 		puts ("OK\n");
 	}
 
-	image_print_contents(header);
+	image_print_contents(header, handle->data);
 
 	close(fd);
 
diff --git a/common/image.c b/common/image.c
index a4c8b95..501218b 100644
--- a/common/image.c
+++ b/common/image.c
@@ -154,14 +154,14 @@ const char *image_get_comp_name(uint8_t comp)
  * returns:
  *     number of components
  */
-ulong image_multi_count(const image_header_t *hdr)
+ulong image_multi_count(void *data)
 {
 	ulong i, count = 0;
 	uint32_t *size;
 
 	/* get start of the image payload, which in case of multi
 	 * component images that points to a table of component sizes */
-	size = (uint32_t *)image_get_data (hdr);
+	size = (uint32_t *)data;
 
 	/* count non empty slots */
 	for (i = 0; size[i]; ++i)
@@ -187,23 +187,23 @@ ulong image_multi_count(const image_header_t *hdr)
  *     data address and size of the component, if idx is valid
  *     0 in data and len, if idx is out of range
  */
-void image_multi_getimg(const image_header_t *hdr, ulong idx,
-			ulong *data, ulong *len)
+void image_multi_getimg(void *data, ulong idx,
+			ulong *img_data, ulong *len)
 {
 	int i;
 	uint32_t *size;
-	ulong offset, count, img_data;
+	ulong offset, count, tmp_img_data;
 
 	/* get number of component */
-	count = image_multi_count(hdr);
+	count = image_multi_count(data);
 
 	/* get start of the image payload, which in case of multi
 	 * component images that points to a table of component sizes */
-	size = (uint32_t *)image_get_data(hdr);
+	size = (uint32_t *)data;
 
 	/* get address of the proper component data start, which means
 	 * skipping sizes table (add 1 for last, null entry) */
-	img_data = image_get_data(hdr) + (count + 1) * sizeof (uint32_t);
+	tmp_img_data = (ulong)data + (count + 1) * sizeof (uint32_t);
 
 	if (idx < count) {
 		*len = uimage_to_cpu(size[idx]);
@@ -216,10 +216,10 @@ void image_multi_getimg(const image_header_t *hdr, ulong idx,
 		}
 
 		/* calculate idx-th component data address */
-		*data = img_data + offset;
+		*img_data = tmp_img_data + offset;
 	} else {
 		*len = 0;
-		*data = 0;
+		*img_data = 0;
 	}
 }
 
@@ -262,9 +262,8 @@ void image_print_size(uint32_t size)
 #endif
 }
 
-void image_print_contents(const void *ptr)
+void image_print_contents(const image_header_t *hdr, void *data)
 {
-	const image_header_t *hdr = (const image_header_t *)ptr;
 	const char *p;
 	int type;
 
@@ -289,12 +288,12 @@ void image_print_contents(const void *ptr)
 	type = image_get_type(hdr);
 	if (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT) {
 		int i;
-		ulong data, len;
-		ulong count = image_multi_count(hdr);
+		ulong img_data, len;
+		ulong count = image_multi_count(data);
 
 		printf ("%sContents:\n", p);
 		for (i = 0; i < count; i++) {
-			image_multi_getimg(hdr, i, &data, &len);
+			image_multi_getimg(data, i, &img_data, &len);
 
 			printf("%s   Image %d: ", p, i);
 			image_print_size(len);
@@ -305,7 +304,7 @@ void image_print_contents(const void *ptr)
 				 * if planning to do something with
 				 * multiple files
 				 */
-				printf("%s    Offset = 0x%08lx\n", p, data);
+				printf("%s    Offset = 0x%08lx\n", p, img_data);
 			}
 		}
 	}
diff --git a/include/image.h b/include/image.h
index 8932947..d913b21 100644
--- a/include/image.h
+++ b/include/image.h
@@ -320,13 +320,13 @@ static inline void image_set_name(image_header_t *hdr, const char *name)
 	strncpy(image_get_name(hdr), name, IH_NMLEN);
 }
 
-ulong image_multi_count(const image_header_t *hdr);
-void image_multi_getimg(const image_header_t *hdr, ulong idx,
-			ulong *data, ulong *len);
+ulong image_multi_count(void *data);
+void image_multi_getimg(void *data, ulong idx,
+			ulong *img_data, ulong *len);
 
 void image_print_size(uint32_t size);
 
-void image_print_contents(const void *ptr);
+void image_print_contents(const image_header_t *hdr, void *data);
 
 /* commamds/bootm.c */
 void	print_image_hdr (image_header_t *hdr);
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 972ec05..3beab91 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -255,7 +255,8 @@ NXTARG:		;
 		}
 
 		/* for multi-file images we need the data part, too */
-		image_print_contents((image_header_t *)ptr);
+		image_print_contents((image_header_t *)ptr,
+				     (void*)image_get_data((image_header_t *)ptr));
 
 		(void) munmap((void *)ptr, sbuf.st_size);
 		(void) close (ifd);
@@ -381,7 +382,7 @@ NXTARG:		;
 
 	image_set_hcrc(hdr, checksum);
 
-	image_print_contents(hdr);
+	image_print_contents(hdr, (void*)image_get_data(hdr));
 
 	(void) munmap((void *)ptr, sbuf.st_size);
 
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
