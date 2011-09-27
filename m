Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R8YuJ-00055d-Fh
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 14:45:18 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 9A99DDCE4EB
	for <barebox@lists.infradead.org>;
	Tue, 27 Sep 2011 16:46:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 27 Sep 2011 16:22:11 +0200
Message-Id: <1317133331-15993-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1317133331-15993-1-git-send-email-plagnioj@jcrosoft.com>
References: <1317133331-15993-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] image: move map_image amd unmap_image to image.c
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |  114 --------------------------------------------------
 common/image.c   |  121 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/image.h  |    1 +
 3 files changed, 122 insertions(+), 114 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 5adc3fa..755932b 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -158,120 +158,6 @@ int relocate_image(struct image_handle *handle, void *load_address)
 }
 EXPORT_SYMBOL(relocate_image);
 
-static struct image_handle_data * gen_image_handle_data(void* data, ulong len)
-{
-	struct image_handle_data *iha;
-
-	iha = xzalloc(sizeof(struct image_handle_data));
-	iha->data = data;
-	iha->len = len;
-
-	return iha;
-}
-
-struct image_handle *map_image(const char *filename, int verify)
-{
-	int fd;
-	uint32_t checksum, len;
-	struct image_handle *handle;
-	image_header_t *header;
-	int type;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("could not open: %s\n", errno_str());
-		return NULL;
-	}
-
-	handle = xzalloc(sizeof(struct image_handle));
-	header = &handle->header;
-
-	if (read(fd, header, image_get_header_size()) < 0) {
-		printf("could not read: %s\n", errno_str());
-		goto err_out;
-	}
-
-	if (image_get_magic(header) != IH_MAGIC) {
-		puts ("Bad Magic Number\n");
-		goto err_out;
-	}
-
-	checksum = image_get_hcrc(header);
-	header->ih_hcrc = 0;
-
-	if (crc32 (0, (uchar *)header, image_get_header_size()) != checksum) {
-		puts ("Bad Header Checksum\n");
-		goto err_out;
-	}
-	len  = image_get_size(header);
-
-	handle->data = memmap(fd, PROT_READ);
-	if (handle->data == (void *)-1) {
-		handle->data = xmalloc(len);
-		handle->flags = IH_MALLOC;
-		if (read(fd, handle->data, len) < 0) {
-			printf("could not read: %s\n", errno_str());
-			goto err_out;
-		}
-	} else {
-		handle->data = (void *)((unsigned long)handle->data +
-						       image_get_header_size());
-	}
-
-	type = image_get_type(header);
-	if (type == IH_TYPE_MULTI) {
-		struct image_handle_data *data_entries;
-		int i;
-		ulong img_data;
-		ulong count = image_multi_count(handle->data);
-
-		data_entries = xzalloc(sizeof(struct image_handle_data) * count);
-
-		for (i = 0; i < count; i++) {
-			image_multi_getimg(handle->data, i, &img_data,
-					   &data_entries[i].len);
-
-			data_entries[i].data = (void*)img_data;
-		}
-		handle->data_entries = data_entries;
-		handle->nb_data_entries = count;
-	} else {
-		handle->data_entries = gen_image_handle_data(handle->data, len);
-		handle->nb_data_entries = 1;
-	}
-
-	if (verify) {
-		puts ("   Verifying Checksum ... ");
-		if (crc32 (0, handle->data, len) != image_get_dcrc(header)) {
-			printf ("Bad Data CRC\n");
-			goto err_out;
-		}
-		puts ("OK\n");
-	}
-
-	image_print_contents(header, handle->data);
-
-	close(fd);
-
-	return handle;
-err_out:
-	close(fd);
-	if (handle->flags & IH_MALLOC)
-		free(handle->data);
-	free(handle);
-	return NULL;
-}
-EXPORT_SYMBOL(map_image);
-
-void unmap_image(struct image_handle *handle)
-{
-	if (handle->flags & IH_MALLOC)
-		free(handle->data);
-	free(handle->data_entries);
-	free(handle);
-}
-EXPORT_SYMBOL(unmap_image);
-
 static LIST_HEAD(handler_list);
 
 int register_image_handler(struct image_handler *handler)
diff --git a/common/image.c b/common/image.c
index 501218b..4a6402d 100644
--- a/common/image.c
+++ b/common/image.c
@@ -27,6 +27,10 @@
 #include <common.h>
 #include <image.h>
 #include <rtc.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <fs.h>
 #else
 #include <time.h>
 #endif
@@ -309,3 +313,120 @@ void image_print_contents(const image_header_t *hdr, void *data)
 		}
 	}
 }
+
+#ifdef __BAREBOX__
+struct image_handle *map_image(const char *filename, int verify)
+{
+	int fd;
+	uint32_t checksum, len;
+	struct image_handle *handle;
+	image_header_t *header;
+	int type;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		printf("could not open: %s\n", errno_str());
+		return NULL;
+	}
+
+	handle = xzalloc(sizeof(struct image_handle));
+	header = &handle->header;
+
+	if (read(fd, header, image_get_header_size()) < 0) {
+		printf("could not read: %s\n", errno_str());
+		goto err_out;
+	}
+
+	if (image_get_magic(header) != IH_MAGIC) {
+		puts ("Bad Magic Number\n");
+		goto err_out;
+	}
+
+	checksum = image_get_hcrc(header);
+	header->ih_hcrc = 0;
+
+	if (crc32 (0, (uchar *)header, image_get_header_size()) != checksum) {
+		puts ("Bad Header Checksum\n");
+		goto err_out;
+	}
+	len  = image_get_size(header);
+
+	handle->data = memmap(fd, PROT_READ);
+	if (handle->data == (void *)-1) {
+		handle->data = xmalloc(len);
+		handle->flags = IH_MALLOC;
+		if (read(fd, handle->data, len) < 0) {
+			printf("could not read: %s\n", errno_str());
+			goto err_out;
+		}
+	} else {
+		handle->data = (void *)((unsigned long)handle->data +
+						       image_get_header_size());
+	}
+
+	type = image_get_type(header);
+	if (type == IH_TYPE_MULTI) {
+		struct image_handle_data *data_entries;
+		int i;
+		ulong img_data;
+		ulong count = image_multi_count(handle->data);
+
+		data_entries = xzalloc(sizeof(struct image_handle_data) * count);
+
+		for (i = 0; i < count; i++) {
+			image_multi_getimg(handle->data, i, &img_data,
+					   &data_entries[i].len);
+
+			data_entries[i].data = (void*)img_data;
+		}
+		handle->data_entries = data_entries;
+		handle->nb_data_entries = count;
+	} else {
+		handle->data_entries = gen_image_handle_data(handle->data, len);
+		handle->nb_data_entries = 1;
+	}
+
+	if (verify) {
+		puts ("   Verifying Checksum ... ");
+		if (crc32 (0, handle->data, len) != image_get_dcrc(header)) {
+			printf ("Bad Data CRC\n");
+			goto err_out;
+		}
+		puts ("OK\n");
+	}
+
+	image_print_contents(header, handle->data);
+
+	close(fd);
+
+	return handle;
+err_out:
+	close(fd);
+	if (handle->flags & IH_MALLOC)
+		free(handle->data);
+	free(handle);
+	return NULL;
+}
+EXPORT_SYMBOL(map_image);
+
+void unmap_image(struct image_handle *handle)
+{
+	if (handle->flags & IH_MALLOC)
+		free(handle->data);
+	free(handle->data_entries);
+	free(handle);
+}
+EXPORT_SYMBOL(unmap_image);
+
+struct image_handle_data * gen_image_handle_data(void* data, ulong len)
+{
+	struct image_handle_data *iha;
+
+	iha = xzalloc(sizeof(struct image_handle_data));
+	iha->data = data;
+	iha->len = len;
+
+	return iha;
+}
+EXPORT_SYMBOL(gen_image_handle_data);
+#endif
diff --git a/include/image.h b/include/image.h
index d34d432..691bf2d 100644
--- a/include/image.h
+++ b/include/image.h
@@ -344,6 +344,7 @@ void	print_image_hdr (image_header_t *hdr);
  */
 struct image_handle *map_image(const char *filename, int verify);
 void unmap_image(struct image_handle *handle);
+struct image_handle_data* gen_image_handle_data(void* data, ulong len);
 
 /*
  * Relocate an image to load_address by uncompressing
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
