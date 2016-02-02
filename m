Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG6-0004ih-OW
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:13 +0100
Message-Id: <1454424497-7157-31-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 30/34] scripts: imx-image: Allow to create HAB signed images
 suitable for USB upload
To: Barebox List <barebox@lists.infradead.org>

For USB upload we must execute the DCD table manually and
invalidate the DCD table in the uploaded image afterwards
to prevent the ROM from executing the DCD data again. Doing this
changes the image and thus also invalidates the signature. To
make HAB signed images suitable for USB upload possible we add an
option to create HAB signed images suitable for USB upload. With
this option the image is created like this:

- The image is created like usual, but with already invalidated DCD
  data (DCD length is set to zero)
- This image is then signed using the CST
- After this the DCD data is made valid (Set DCD length to the real
  length)

imx-usb-loader now finds valid DCD data, executes it and by invalidating
the DCD data it restores the state the image had during signing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 60 ++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 54 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 78bbbbc..20815bf 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -40,6 +40,7 @@
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
 static int add_barebox_header;
+static int create_usb_image;
 static char *prgname;
 
 /*
@@ -197,6 +198,9 @@ static int add_srk(void *buf, int offset, uint32_t loadaddr, const char *srkfile
 }
 #endif /* IMXIMAGE_SSL_SUPPORT */
 
+static int dcd_ptr_offset;
+static uint32_t dcd_ptr_content;
+
 static int add_header_v1(struct config_data *data, void *buf)
 {
 	struct imx_flash_header *hdr;
@@ -219,10 +223,17 @@ static int add_header_v1(struct config_data *data, void *buf)
 	hdr->app_code_csf = 0x0;
 	hdr->dcd_ptr_ptr = loadaddr + offset + offsetof(struct imx_flash_header, dcd);
 	hdr->super_root_key = 0x0;
-	hdr->dcd = loadaddr + offset + offsetof(struct imx_flash_header, dcd_barker);
+	hdr->dcd =  loadaddr + offset + offsetof(struct imx_flash_header, dcd_barker);
+
 	hdr->app_dest = loadaddr;
 	hdr->dcd_barker = DCD_BARKER;
-	hdr->dcd_block_len = dcdsize;
+	if (create_usb_image) {
+		dcd_ptr_offset = offsetof(struct imx_flash_header, dcd_block_len) + offset;
+		hdr->dcd_block_len = 0;
+		dcd_ptr_content = dcdsize;
+	} else {
+		hdr->dcd_block_len = dcdsize;
+	}
 
 	buf += sizeof(struct imx_flash_header);
 
@@ -281,6 +292,11 @@ static int add_header_v2(struct config_data *data, void *buf)
 
 	hdr->entry		= loadaddr + HEADER_LEN;
 	hdr->dcd_ptr		= loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
+	if (create_usb_image) {
+		dcd_ptr_content = hdr->dcd_ptr;
+		dcd_ptr_offset = offsetof(struct imx_flash_header_v2, dcd_ptr) + offset;
+		hdr->dcd_ptr = 0;
+	}
 	hdr->boot_data_ptr	= loadaddr + offset + offsetof(struct imx_flash_header_v2, boot_data);
 	hdr->self		= loadaddr + offset;
 
@@ -619,7 +635,7 @@ int main(int argc, char *argv[])
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bds")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bdus")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -639,6 +655,9 @@ int main(int argc, char *argv[])
 		case 's':
 			sign_image = 1;
 			break;
+		case 'u':
+			create_usb_image = 1;
+			break;
 		case 'h':
 			usage(argv[0]);
 		default:
@@ -688,14 +707,20 @@ int main(int argc, char *argv[])
 	if (!sign_image)
 		data.csf = NULL;
 
+	if (create_usb_image && !data.csf) {
+		fprintf(stderr, "Warning: the -u option only has effect with signed images\n");
+		create_usb_image = 0;
+	}
+
 	buf = calloc(1, HEADER_LEN);
 	if (!buf)
 		exit(1);
 
 	if (data.image_dcd_offset == 0xffffffff) {
-		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x%08x\n",
-			FLASH_HEADER_OFFSET);
-		data.image_dcd_offset = FLASH_HEADER_OFFSET;
+		if (create_usb_image)
+			data.image_dcd_offset = 0x0;
+		else
+			data.image_dcd_offset = FLASH_HEADER_OFFSET;
 	}
 
 	if (!data.header_version) {
@@ -786,5 +811,28 @@ int main(int argc, char *argv[])
 			exit(1);
 	}
 
+	if (create_usb_image) {
+		uint32_t *dcd;
+
+		infile = read_file(data.outfile, &insize);
+
+		dcd = infile + dcd_ptr_offset;
+		*dcd = dcd_ptr_content;
+
+		outfd = open(data.outfile, O_WRONLY | O_TRUNC);
+		if (outfd < 0) {
+			fprintf(stderr, "Cannot open %s: %s\n", data.outfile, strerror(errno));
+			exit(1);
+		}
+
+		ret = xwrite(outfd, infile, insize);
+		if (ret < 0) {
+			perror("write");
+			exit (1);
+		}
+
+		close(outfd);
+	}
+
 	exit(0);
 }
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
