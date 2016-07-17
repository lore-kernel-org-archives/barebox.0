Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOoPv-0004U0-H8
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 15:55:46 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Jul 2016 17:53:18 +0200
Message-Id: <1468770798-22102-5-git-send-email-akurz@blala.de>
In-Reply-To: <1468770798-22102-1-git-send-email-akurz@blala.de>
References: <1468770798-22102-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 5/5] scripts: imx-usb-loader: split off topic-code into
 functions
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Improve code understandability: extract the "jump application" Serial
Download Protocol access method and file-to-buffer reader functionality
out of do_irom_download().

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 159 +++++++++++++++++++++++++------------------
 1 file changed, 92 insertions(+), 67 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 70d3ec5..688cd53 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -274,6 +274,51 @@ static long get_file_size(FILE *xfile)
 	return size;
 }
 
+static int read_file(const char *name, unsigned char **buffer, unsigned *size)
+{
+	FILE *xfile;
+	unsigned fsize;
+	int cnt;
+	unsigned char *buf;
+	xfile = fopen(name, "rb");
+	if (!xfile) {
+		printf("error, can not open input file: %s\n", name);
+		return -5;
+	}
+
+	fsize = get_file_size(xfile);
+	if (fsize < 0x20) {
+		printf("error, file: %s is too small\n", name);
+		fclose(xfile);
+		return -2;
+	}
+
+	buf = malloc(fsize);
+	if (!buf) {
+		printf("error, out of memory\n");
+		fclose(xfile);
+		return -2;
+	}
+
+	cnt = fread(buf, 1 , fsize, xfile);
+	if (cnt < fsize) {
+		printf("error, cannot read %s\n", name);
+		fclose(xfile);
+		free(buf);
+		return -1;
+	}
+
+	if (size)
+		*size = fsize;
+
+	if (buffer)
+		*buffer = buf;
+	else
+		free(buf);
+
+	return 0;
+}
+
 /*
  * HID Class-Specific Requests values. See section 7.2 of the HID specifications
  */
@@ -422,8 +467,6 @@ int do_status(void)
 	return err;
 }
 
-#define V(a) (((a) >> 24) & 0xff), (((a) >> 16) & 0xff), (((a) >> 8) & 0xff), ((a) & 0xff)
-
 static int read_memory(unsigned addr, void *dest, unsigned cnt)
 {
 	static struct sdp_command read_reg_command = {
@@ -661,6 +704,45 @@ static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char typ
 	return transfer_size;
 }
 
+static int sdp_jump_address(unsigned addr)
+{
+	unsigned char tmp[64];
+	static struct sdp_command jump_command = {
+		.cmd = SDP_JUMP_ADDRESS,
+		.addr = 0,
+		.format = 0,
+		.cnt = 0,
+		.data = 0,
+		.rsvd = 0,
+	};
+	int last_trans, err;
+	int retry = 0;
+
+	jump_command.addr = htonl(addr);
+
+	for (;;) {
+		err = transfer(1, (unsigned char *) &jump_command, 16,
+			       &last_trans);
+		if (!err)
+			break;
+
+		printf("jump_command err=%i, last_trans=%i\n", err, last_trans);
+
+		if (retry > 5)
+			return -4;
+
+		retry++;
+	}
+
+	memset(tmp, 0, sizeof(tmp));
+	err = transfer(3, tmp, sizeof(tmp), &last_trans);
+
+	if (err)
+		printf("j3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+			err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	return 0;
+}
+
 static int write_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
 			       const unsigned char *file_start, unsigned cnt)
 {
@@ -1014,57 +1096,27 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 
 static int do_irom_download(struct usb_work *curr, int verify)
 {
-	static unsigned char jump_command[] = {0x0b,0x0b, V(0),  0x00, V(0x00000000), V(0), 0x00};
-
 	int ret;
-	FILE* xfile;
 	unsigned char type;
-	unsigned fsize;
+	unsigned fsize = 0;
 	unsigned header_offset;
-	int cnt;
 	unsigned file_base;
-	int last_trans, err;
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned char tmp[64];
 	unsigned dladdr = 0;
 	unsigned max_length;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
-
 	unsigned skip = 0;
-	int retry = 0;
-
-	xfile = fopen(curr->filename, "rb" );
-	if (!xfile) {
-		printf("error, can not open input file: %s\n", curr->filename);
-		return -5;
-	}
-
-	fsize = get_file_size(xfile);
-	if (fsize < 0x20) {
-		printf("error, file: %s is too small\n", curr->filename);
-		ret = -2;
-		goto cleanup;
-	}
 
-	buf = malloc(fsize);
-	if (!buf) {
-		printf("error, out of memory\n");
-		ret = -2;
-		goto cleanup;
-	}
-
-	cnt = fread(buf, 1 , fsize, xfile);
-	if (cnt < fsize) {
-		printf("error, cannot read %s\n", curr->filename);
-		return -1;
-	}
+	ret = read_file(curr->filename, &buf, &fsize);
+	if (ret < 0)
+		return ret;
 
 	max_length = fsize;
 
-	ret = process_header(curr, buf, cnt,
+	ret = process_header(curr, buf, fsize,
 			&dladdr, &max_length, &plugin, &header_addr);
 	if (ret < 0)
 		goto cleanup;
@@ -1098,8 +1150,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	skip = dladdr - file_base;
 
 	image = buf + skip;
-
-	cnt -= skip;
 	fsize -= skip;
 
 	if (fsize > max_length)
@@ -1160,38 +1210,13 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	if (usb_id->mach_id->mode == MODE_HID && type == FT_APP) {
 		printf("jumping to 0x%08x\n", header_addr);
 
-		jump_command[2] = (unsigned char)(header_addr >> 24);
-		jump_command[3] = (unsigned char)(header_addr >> 16);
-		jump_command[4] = (unsigned char)(header_addr >> 8);
-		jump_command[5] = (unsigned char)(header_addr);
-
-		/* Any command will initiate jump for mx51, jump address is ignored by mx51 */
-		retry = 0;
-
-		for (;;) {
-			err = transfer(1, jump_command, 16, &last_trans);
-			if (!err)
-				break;
-
-			printf("jump_command err=%i, last_trans=%i\n", err, last_trans);
-
-			if (retry > 5)
-				return -4;
-
-			retry++;
-		}
-
-		memset(tmp, 0, sizeof(tmp));
-		err = transfer(3, tmp, sizeof(tmp), &last_trans);
-
-		if (err)
-			printf("j3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
-					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+		ret = sdp_jump_address(header_addr);
+		if (ret < 0)
+			return ret;
 	}
 
 	ret = 0;
 cleanup:
-	fclose(xfile);
 	free(verify_buffer);
 	free(buf);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
