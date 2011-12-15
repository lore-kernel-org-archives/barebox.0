Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8ai-0004En-RF
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:32 +0100
Message-Id: <1323945034-19687-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] remove now unused uImage code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image.c  |  118 -------------------------------------------------------
 include/image.h |   28 -------------
 2 files changed, 0 insertions(+), 146 deletions(-)

diff --git a/common/image.c b/common/image.c
index d68889b..7a7c0df 100644
--- a/common/image.c
+++ b/common/image.c
@@ -313,121 +313,3 @@ void image_print_contents(const image_header_t *hdr, void *data)
 		}
 	}
 }
-
-#ifdef __BAREBOX__
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
-	free(handle->data_entries);
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
-struct image_handle_data * gen_image_handle_data(void* data, ulong len)
-{
-	struct image_handle_data *iha;
-
-	iha = xzalloc(sizeof(struct image_handle_data));
-	iha->data = data;
-	iha->len = len;
-
-	return iha;
-}
-EXPORT_SYMBOL(gen_image_handle_data);
-#endif
diff --git a/include/image.h b/include/image.h
index 5e9b6e2..97de881 100644
--- a/include/image.h
+++ b/include/image.h
@@ -188,20 +188,6 @@ typedef struct image_header {
 	uint8_t		ih_name[IH_NMLEN];	/* Image Name		*/
 } image_header_t;
 
-struct image_handle_data {
-	void *data;
-	ulong len;
-};
-
-struct image_handle {
-	image_header_t	header;
-	void *data;
-	struct image_handle_data *data_entries;
-	int nb_data_entries;
-#define IH_MALLOC	1
-	int flags;
-};
-
 #if defined(CONFIG_CMD_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
 const char *image_get_os_name(uint8_t os);
 const char *image_get_arch_name(uint8_t arch);
@@ -335,20 +321,6 @@ void image_print_size(uint32_t size);
 
 void image_print_contents(const image_header_t *hdr, void *data);
 
-/*
- * Load an image into memory. Returns a pointer to the loaded
- * image.
- */
-struct image_handle *map_image(const char *filename, int verify);
-void unmap_image(struct image_handle *handle);
-struct image_handle_data* gen_image_handle_data(void* data, ulong len);
-
-/*
- * Relocate an image to load_address by uncompressing
- * or just copying.
- */
-int relocate_image(struct image_handle *handle, void *load_address);
-
 struct uimage_handle_data {
 	size_t offset; /* offset in the image */
 	ulong len;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
