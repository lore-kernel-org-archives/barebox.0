Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTFf-0005S8-MO
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:27:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:27:46 +0100
Message-Id: <1354530468-25823-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
References: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] filetype: Pass bufsize
To: barebox@lists.infradead.org

Pass the buffer size to the file detection code. This makes sure we do not
read past the buffer. This is especially useful for ext filesystem detection
as the magic is at byte offset 1080. Also introduce a FILE_TYPE_SAFE_BUFSIZE
define which is set to the minimum bufsize the detection code needs to detect
all known filetypes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c                 |    2 +-
 arch/arm/mach-imx/imx-bbu-internal.c |    4 ++--
 commands/bootm.c                     |    2 +-
 common/filetype.c                    |   39 +++++++++++++++++++++++-----------
 common/uimage.c                      |    2 +-
 include/filetype.h                   |    4 +++-
 lib/gui/image_renderer.c             |    6 +++---
 lib/uncompress.c                     |    4 ++--
 8 files changed, 40 insertions(+), 23 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 288c0b2..51ac9af 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -143,7 +143,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 	if (ret < sizeof(*header))
 		return ret;
 
-	if (file_detect_type(header) != filetype_oftree)
+	if (file_detect_type(header, sizeof(*header)) != filetype_oftree)
 		return -ENXIO;
 
 	end = be32_to_cpu(header->totalsize);
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c34f86f..881c20a 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -110,7 +110,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 	int ret, image_len;
 	void *buf;
 
-	if (file_detect_type(data->image) != filetype_arm_barebox) {
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
 		if (!bbu_force(data, "Not an ARM barebox image"))
 			return -EINVAL;
 	}
@@ -332,7 +332,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	int ret, image_len;
 	void *buf;
 
-	if (file_detect_type(data->image) != filetype_arm_barebox) {
+	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
 		if (!bbu_force(data, "Not an ARM barebox image"))
 			return -EINVAL;
 	}
diff --git a/commands/bootm.c b/commands/bootm.c
index 98d2e4f..483e6a1 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -184,7 +184,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 		}
 	}
 
-	ft = file_detect_type(fdt);
+	ft = file_detect_type(fdt, size);
 	if (ft != filetype_oftree) {
 		printf("%s is not an oftree but %s\n", oftree,
 				file_type_to_string(ft));
diff --git a/common/filetype.c b/common/filetype.c
index b8d54f7..c1bd11d 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -105,19 +105,24 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	return filetype_mbr;
 }
 
-enum filetype file_detect_type(void *_buf)
+enum filetype file_detect_type(void *_buf, size_t bufsize)
 {
 	u32 *buf = _buf;
 	u64 *buf64 = _buf;
 	u8 *buf8 = _buf;
 	enum filetype type;
 
+	if (bufsize < 9)
+		return filetype_unknown;
+
 	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
 		return filetype_sh;
-	if (is_barebox_arm_head(_buf))
-		return filetype_arm_barebox;
-	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
-		return filetype_arm_zimage;
+
+	if (bufsize < 32)
+		return filetype_unknown;
+
+	if (strncmp(buf8, "BM", 2) == 0)
+		return filetype_bmp;
 	if (buf8[0] == 0x89 && buf8[1] == 0x4c && buf8[2] == 0x5a &&
 			buf8[3] == 0x4f)
 		return filetype_lzo_compressed;
@@ -136,15 +141,25 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_oftree;
 	if (strncmp(buf8, "ANDROID!", 8) == 0)
 		return filetype_aimage;
+	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
+		return filetype_png;
 	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
 		return filetype_mips_barebox;
+
+	if (bufsize < 64)
+		return filetype_unknown;
+
+	if (is_barebox_arm_head(_buf))
+		return filetype_arm_barebox;
+	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
+		return filetype_arm_zimage;
+
+	if (bufsize < 512)
+		return filetype_unknown;
+
 	type = is_fat_or_mbr(buf8, NULL);
 	if (type != filetype_unknown)
 		return type;
-	if (strncmp(buf8, "BM", 2) == 0)
-		return filetype_bmp;
-	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
-		return filetype_png;
 
 	return filetype_unknown;
 }
@@ -160,13 +175,13 @@ enum filetype file_name_detect_type(const char *filename)
 	if (fd < 0)
 		return fd;
 
-	buf = xzalloc(512);
+	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
 
-	ret = read(fd, buf, 512);
+	ret = read(fd, buf, FILE_TYPE_SAFE_BUFSIZE);
 	if (ret < 0)
 		goto err_out;
 
-	type = file_detect_type(buf);
+	type = file_detect_type(buf, ret);
 
 	if (type == filetype_mbr) {
 		/*
diff --git a/common/uimage.c b/common/uimage.c
index 3f5a3d5..3bec6b3 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -516,7 +516,7 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 	if (ret < 0)
 		return NULL;
 
-	ft = file_detect_type(ftbuf);
+	ft = file_detect_type(ftbuf, 128);
 	if ((int)ft < 0)
 		return NULL;
 
diff --git a/include/filetype.h b/include/filetype.h
index 0a722a0..5fac531 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -25,9 +25,11 @@ enum filetype {
 	filetype_max,
 };
 
+#define FILE_TYPE_SAFE_BUFSIZE		2048
+
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
-enum filetype file_detect_type(void *_buf);
+enum filetype file_detect_type(void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 
diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index 41dc43b..78e5777 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -13,10 +13,10 @@
 
 static LIST_HEAD(image_renderers);
 
-static struct image_renderer *get_renderer(void* buf)
+static struct image_renderer *get_renderer(void* buf, size_t bufsize)
 {
 	struct image_renderer *ir;
-	enum filetype type = file_detect_type(buf);
+	enum filetype type = file_detect_type(buf, bufsize);
 
 	list_for_each_entry(ir, &image_renderers, list) {
 		if (ir->type == type)
@@ -40,7 +40,7 @@ struct image *image_renderer_open(const char* file)
 		return ERR_PTR(-ENOMEM);
 	}
 
-	ir = get_renderer(data);
+	ir = get_renderer(data, size);
 	if (!ir) {
 		ret = -ENOENT;
 		goto out;
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 8e4d3a1..e0a69df 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -78,7 +78,7 @@ int uncompress(unsigned char *inbuf, int len,
 	char *err;
 
 	if (inbuf) {
-		ft = file_detect_type(inbuf);
+		ft = file_detect_type(inbuf, len);
 		uncompress_buf = NULL;
 		uncompress_size = 0;
 	} else {
@@ -93,7 +93,7 @@ int uncompress(unsigned char *inbuf, int len,
 		if (ret < 0)
 			goto err;
 
-		ft = file_detect_type(uncompress_buf);
+		ft = file_detect_type(uncompress_buf, 32);
 	}
 
 	switch (ft) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
