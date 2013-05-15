Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWGh-0000rn-1z
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:02 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:30 +0200
Message-Id: <1368603396-27887-5-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 04/10] scripts/kwbimage: simplify the v1 image creation
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

We now assume that at most one binary header can be added, so we no
longer need to loop for all configuration options to find the binary
blobs. We simply find the binary blob configuration option in
'binarye' and use that when we need to generate the corresponding
header.

Also, just like we did for the v0 image creation, use
image_find_option() to find the value of the different options needed
to create the main header.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |  151 ++++++++++++++++++++++++----------------------------
 1 file changed, 70 insertions(+), 81 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index d4f65a8..631f131 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -802,12 +802,12 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 static void *image_create_v1(struct image_cfg_element *image_cfg,
 			     int cfgn, const char *output, size_t *imagesz)
 {
-	struct image_cfg_element *e, *payloade;
+	struct image_cfg_element *e, *payloade, *binarye;
 	struct main_hdr_v1 *main_hdr;
 	size_t headersz, payloadsz, totalsz;
 	void *image, *cur;
 	int hasext = 0;
-	int cfgi, ret;
+	int ret;
 
 	/* Calculate the size of the header and the size of the
 	 * payload */
@@ -824,24 +824,24 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 		return NULL;
 	}
 
-	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_BINARY);
-	if (e) {
+	binarye = image_find_option(image_cfg, cfgn, IMAGE_CFG_BINARY);
+	if (binarye) {
 		struct stat s;
 
-		ret = stat(e->binary.file, &s);
+		ret = stat(binarye->binary.file, &s);
 		if (ret < 0) {
 			char *cwd = get_current_dir_name();
 			fprintf(stderr,
 				"Didn't find the file '%s' in '%s' which is mandatory to generate the image\n"
 				"This file generally contains the DDR3 training code, and should be extracted from an existing bootable\n"
 				"image for your board. See 'kwbimage -x' to extract it from an existing image.\n",
-				e->binary.file, cwd);
+				binarye->binary.file, cwd);
 			free(cwd);
 			return NULL;
 		}
 
 		headersz += s.st_size +
-			e->binary.nargs * sizeof(unsigned int);
+			binarye->binary.nargs * sizeof(unsigned int);
 		hasext = 1;
 	}
 
@@ -878,96 +878,85 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 	cur = main_hdr = image;
 	cur += sizeof(struct main_hdr_v1);
 
+	/* Fill the main header */
 	main_hdr->blocksize    = payloadsz + sizeof(uint32_t);
 	main_hdr->headersz_lsb = headersz & 0xFFFF;
 	main_hdr->headersz_msb = (headersz & 0xFFFF0000) >> 16;
 	main_hdr->srcaddr      = headersz;
 	main_hdr->ext          = hasext;
+	main_hdr->version      = 1;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_BOOT_FROM);
+	if (e)
+		main_hdr->blockid = e->bootfrom;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_DEST_ADDR);
+	if (e)
+		main_hdr->destaddr = e->dstaddr;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_EXEC_ADDR);
+	if (e)
+		main_hdr->execaddr = e->execaddr;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_NAND_BLKSZ);
+	if (e)
+		main_hdr->nandblocksize = e->nandblksz / (64 * 1024);
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_NAND_BADBLK_LOCATION);
+	if (e)
+		main_hdr->nandbadblklocation = e->nandbadblklocation;
 
-	/* First, take care of filling the main header */
-	for (cfgi = 0; cfgi < cfgn; cfgi++) {
-		struct image_cfg_element *el = &image_cfg[cfgi];
-		if (el->type == IMAGE_CFG_VERSION)
-			main_hdr->version = 1;
-		else if (el->type == IMAGE_CFG_BOOT_FROM)
-			main_hdr->blockid = el->bootfrom;
-		else if (el->type == IMAGE_CFG_DEST_ADDR)
-			main_hdr->destaddr = el->dstaddr;
-		else if (el->type == IMAGE_CFG_EXEC_ADDR)
-			main_hdr->execaddr = el->execaddr;
-		else if (el->type == IMAGE_CFG_NAND_BLKSZ)
-			main_hdr->nandblocksize = el->nandblksz / (64 * 1024);
-		else if (el->type == IMAGE_CFG_NAND_BADBLK_LOCATION)
-			main_hdr->nandbadblklocation = el->nandbadblklocation;
-		else
-			break;
-	}
-
-	/* Then, fill the extension headers */
-	for (; cfgi < cfgn; cfgi++) {
-		struct image_cfg_element *el = &image_cfg[cfgi];
-
-		if (el->type == IMAGE_CFG_BINARY) {
-			struct opt_hdr_v1 *hdr = cur;
-			unsigned int *args;
-			size_t binhdrsz;
-			struct stat s;
-			int argi;
-			FILE *bin;
-
-			hdr->headertype = OPT_HDR_V1_BINARY_TYPE;
-
-			bin = fopen(el->binary.file, "r");
-			if (!bin) {
-				fprintf(stderr, "Cannot open binary file %s\n",
-					el->binary.file);
-				return NULL;
-			}
-
-			fstat(fileno(bin), &s);
+	if (binarye) {
+		struct opt_hdr_v1 *hdr = cur;
+		unsigned int *args;
+		size_t binhdrsz;
+		struct stat s;
+		int argi;
+		FILE *bin;
 
-			binhdrsz = sizeof(struct opt_hdr_v1) +
-				(el->binary.nargs + 1) * sizeof(unsigned int) +
-				s.st_size;
-			hdr->headersz_lsb = binhdrsz & 0xFFFF;
-			hdr->headersz_msb = (binhdrsz & 0xFFFF0000) >> 16;
+		hdr->headertype = OPT_HDR_V1_BINARY_TYPE;
 
-			cur += sizeof(struct opt_hdr_v1);
+		bin = fopen(binarye->binary.file, "r");
+		if (!bin) {
+			fprintf(stderr, "Cannot open binary file %s\n",
+				binarye->binary.file);
+			return NULL;
+		}
 
-			args = cur;
-			*args = el->binary.nargs;
-			args++;
-			for (argi = 0; argi < el->binary.nargs; argi++)
-				args[argi] = el->binary.args[argi];
+		fstat(fileno(bin), &s);
 
-			cur += (el->binary.nargs + 1) * sizeof(unsigned int);
+		binhdrsz = sizeof(struct opt_hdr_v1) +
+			(binarye->binary.nargs + 1) * sizeof(unsigned int) +
+			s.st_size;
+		hdr->headersz_lsb = binhdrsz & 0xFFFF;
+		hdr->headersz_msb = (binhdrsz & 0xFFFF0000) >> 16;
 
-			ret = fread(cur, s.st_size, 1, bin);
-			if (ret != 1) {
-				fprintf(stderr,
-					"Could not read binary image %s\n",
-					el->binary.file);
-				return NULL;
-			}
+		cur += sizeof(struct opt_hdr_v1);
 
-			fclose(bin);
+		args = cur;
+		*args = binarye->binary.nargs;
+		args++;
+		for (argi = 0; argi < binarye->binary.nargs; argi++)
+			args[argi] = binarye->binary.args[argi];
 
-			cur += s.st_size;
+		cur += (binarye->binary.nargs + 1) * sizeof(unsigned int);
 
-			/* See if we have a next header or not, and if
-			 * so, add the marker indicating that we are
-			 * not the last header */
-			if ((cfgi < (cfgn - 1)) &&
-			    (image_cfg[cfgi + 1].type != IMAGE_CFG_PAYLOAD))
-				*((unsigned char *) cur) = 1;
-			cur += sizeof(uint32_t);
-		} else if (el->type == IMAGE_CFG_PAYLOAD)
-			break;
-		else {
-			fprintf(stderr, "Invalid element type %d (cfgi=%d)\n",
-				el->type, cfgi);
+		ret = fread(cur, s.st_size, 1, bin);
+		if (ret != 1) {
+			fprintf(stderr,
+				"Could not read binary image %s\n",
+				binarye->binary.file);
 			return NULL;
 		}
+
+		fclose(bin);
+
+		cur += s.st_size;
+
+		/*
+		 * For now, we don't support more than one binary
+		 * header, and no other header types are
+		 * supported. So, the binary header is necessarily the
+		 * last one
+		 */
+		*((unsigned char *) cur) = 0;
+
+		cur += sizeof(uint32_t);
 	}
 
 	/* Calculate and set the header checksum */
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
