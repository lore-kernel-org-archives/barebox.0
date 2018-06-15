Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffH-0004Vk-VI
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:45:00 +0000
Received: by mail-pl0-x22d.google.com with SMTP id z9-v6so4633301plk.11
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:06 -0700
Message-Id: <20180615034409.22180-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v7 07/10] scripts: imx-image: Share the code to write barebox
 header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 42 ++++++++++++++++++++---------------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index bc1f821bd..4a08581fb 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -36,6 +36,7 @@
 #include <include/filetype.h>
 
 #define FLASH_HEADER_OFFSET 0x400
+#define ARM_HEAD_SIZE_INDEX	(ARM_HEAD_SIZE_OFFSET / sizeof(uint32_t))
 
 /*
  * Conservative DCD element limit set to restriction v2 header size to
@@ -46,7 +47,6 @@
 
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
-static int add_barebox_header;
 static int create_usb_image;
 static char *prgname;
 
@@ -207,18 +207,14 @@ static int add_srk(void *buf, int offset, uint32_t loadaddr, const char *srkfile
 static int dcd_ptr_offset;
 static uint32_t dcd_ptr_content;
 
-static int add_header_v1(struct config_data *data, void *buf)
+static size_t add_header_v1(struct config_data *data, void *buf)
 {
 	struct imx_flash_header *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
-	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
 	int offset = data->image_dcd_offset;
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
-	if (add_barebox_header)
-		memcpy(buf, bb_header, sizeof(bb_header));
-
 	buf += offset;
 	hdr = buf;
 
@@ -250,12 +246,9 @@ static int add_header_v1(struct config_data *data, void *buf)
 		imagesize += CSF_LEN;
 	}
 
-	if (add_barebox_header)
-		*psize = imagesize;
-
 	*(uint32_t *)buf = imagesize;
 
-	return 0;
+	return imagesize;
 }
 
 static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, int clear_bits)
@@ -283,18 +276,14 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
  * ============================================================================
  */
 
-static int add_header_v2(const struct config_data *data, void *buf)
+static size_t add_header_v2(const struct config_data *data, void *buf)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
-	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
 	int offset = data->image_dcd_offset;
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
-	if (add_barebox_header)
-		memcpy(buf, bb_header, sizeof(bb_header));
-
 	buf += offset;
 	hdr = buf;
 
@@ -320,9 +309,6 @@ static int add_header_v2(const struct config_data *data, void *buf)
 		hdr->boot_data.size += CSF_LEN;
 	}
 
-	if (add_barebox_header)
-		*psize = hdr->boot_data.size;
-
 	hdr->dcd_header.tag	= TAG_DCD_HEADER;
 	hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
 	hdr->dcd_header.version	= DCD_VERSION;
@@ -331,7 +317,7 @@ static int add_header_v2(const struct config_data *data, void *buf)
 
 	memcpy(buf, dcdtable, dcdsize);
 
-	return 0;
+	return imagesize;
 }
 
 static void usage(const char *prgname)
@@ -680,6 +666,8 @@ int main(int argc, char *argv[])
 	int now = 0;
 	int sign_image = 0;
 	int i, header_copies;
+	int add_barebox_header;
+	uint32_t barebox_image_size;
 	struct config_data data = {
 		.image_dcd_offset = 0xffffffff,
 		.write_mem = write_mem,
@@ -792,7 +780,7 @@ int main(int argc, char *argv[])
 
 	switch (data.header_version) {
 	case 1:
-		add_header_v1(&data, buf);
+		barebox_image_size = add_header_v1(&data, buf);
 		if (data.srkfile) {
 			ret = add_srk(buf, data.image_dcd_offset, data.image_load_addr,
 				      data.srkfile);
@@ -807,7 +795,7 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
-		add_header_v2(&data, buf);
+		barebox_image_size = add_header_v2(&data, buf);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
@@ -815,6 +803,8 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	bb_header[ARM_HEAD_SIZE_INDEX] = barebox_image_size;
+
 	infile = read_file(imagename, &insize);
 	if (!infile)
 		exit(1);
@@ -828,7 +818,15 @@ int main(int argc, char *argv[])
 	header_copies = (data.cpu_type == IMX_CPU_IMX35) ? 2 : 1;
 
 	for (i = 0; i < header_copies; i++) {
-		ret = xwrite(outfd, buf, HEADER_LEN);
+		ret = xwrite(outfd, add_barebox_header ? bb_header : buf,
+			     sizeof(bb_header));
+		if (ret < 0) {
+			perror("write");
+			exit(1);
+		}
+
+		ret = xwrite(outfd, buf + sizeof(bb_header),
+			     HEADER_LEN - sizeof(bb_header));
 		if (ret < 0) {
 			perror("write");
 			exit(1);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
