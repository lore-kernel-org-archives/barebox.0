Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R8YuJ-00055c-Fe
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 14:45:16 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 7F016DCE481
	for <barebox@lists.infradead.org>;
	Tue, 27 Sep 2011 16:46:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 27 Sep 2011 16:22:10 +0200
Message-Id: <1317133331-15993-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] image: add multi image support for bootm
To: barebox@lists.infradead.org

you can choose the initrd via @<num>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   78 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/image.h  |    7 +++++
 2 files changed, 83 insertions(+), 2 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index e9a39c4..5adc3fa 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -95,16 +95,28 @@ fixup_silent_linux ()
 }
 #endif /* CONFIG_SILENT_CONSOLE */
 
+struct image_handle_data* image_handle_data_get_by_num(struct image_handle* handle, int num)
+{
+	if (!handle || num < 0 || num >= handle->nb_data_entries)
+		return NULL;
+
+	return &handle->data_entries[num];
+}
+
 int relocate_image(struct image_handle *handle, void *load_address)
 {
 	image_header_t *hdr = &handle->header;
 	unsigned long len  = image_get_size(hdr);
-	unsigned long data = (unsigned long)(handle->data);
+	struct image_handle_data *iha;
+	unsigned long data;
 
 #if defined CONFIG_CMD_BOOTM_ZLIB || defined CONFIG_CMD_BOOTM_BZLIB
 	uint	unc_len = CFG_BOOTM_LEN;
 #endif
 
+	iha = image_handle_data_get_by_num(handle, 0);
+	data = (unsigned long)(iha->data);
+
 	switch (image_get_comp(hdr)) {
 	case IH_COMP_NONE:
 		if(image_get_load(hdr) == data) {
@@ -146,12 +158,24 @@ int relocate_image(struct image_handle *handle, void *load_address)
 }
 EXPORT_SYMBOL(relocate_image);
 
+static struct image_handle_data * gen_image_handle_data(void* data, ulong len)
+{
+	struct image_handle_data *iha;
+
+	iha = xzalloc(sizeof(struct image_handle_data));
+	iha->data = data;
+	iha->len = len;
+
+	return iha;
+}
+
 struct image_handle *map_image(const char *filename, int verify)
 {
 	int fd;
 	uint32_t checksum, len;
 	struct image_handle *handle;
 	image_header_t *header;
+	int type;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -194,6 +218,28 @@ struct image_handle *map_image(const char *filename, int verify)
 						       image_get_header_size());
 	}
 
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
 	if (verify) {
 		puts ("   Verifying Checksum ... ");
 		if (crc32 (0, handle->data, len) != image_get_dcrc(header)) {
@@ -221,6 +267,7 @@ void unmap_image(struct image_handle *handle)
 {
 	if (handle->flags & IH_MALLOC)
 		free(handle->data);
+	free(handle->data_entries);
 	free(handle);
 }
 EXPORT_SYMBOL(unmap_image);
@@ -233,13 +280,40 @@ int register_image_handler(struct image_handler *handler)
 	return 0;
 }
 
+/*
+ * generate a image_handle from a multi_image
+ * this image_handle can be free by unmap_image
+ */
+static struct image_handle *get_fake_image_handle(struct image_data *data, int num)
+{
+	struct image_handle *handle;
+	struct image_handle_data* iha;
+	image_header_t *header;
+
+	iha = image_handle_data_get_by_num(data->os, num);
+
+	handle = xzalloc(sizeof(struct image_handle));
+	header = &handle->header;
+	handle->data_entries = gen_image_handle_data(iha->data, iha->len);
+	handle->data = handle->data_entries[0].data;
+
+	return handle;
+}
+
 static int initrd_handler_parse_options(struct image_data *data, int opt,
 		char *optarg)
 {
 	switch(opt) {
 	case 'r':
 		printf("use initrd %s\n", optarg);
-		data->initrd = map_image(optarg, data->verify);
+		/* check for multi image @<num> */
+		if (optarg[0] == '@') {
+			int num = simple_strtol(optarg + 1, NULL, 0);
+
+			data->initrd = get_fake_image_handle(data, num);
+		} else {
+			data->initrd = map_image(optarg, data->verify);
+		}
 		if (!data->initrd)
 			return -1;
 		return 0;
diff --git a/include/image.h b/include/image.h
index d913b21..d34d432 100644
--- a/include/image.h
+++ b/include/image.h
@@ -188,9 +188,16 @@ typedef struct image_header {
 	uint8_t		ih_name[IH_NMLEN];	/* Image Name		*/
 } image_header_t;
 
+struct image_handle_data {
+	void *data;
+	ulong len;
+};
+
 struct image_handle {
 	image_header_t	header;
 	void *data;
+	struct image_handle_data *data_entries;
+	int nb_data_entries;
 #define IH_MALLOC	1
 	int flags;
 };
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
