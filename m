Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG1-0002Pp-8r
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:55 +0100
Message-Id: <1454424497-7157-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/34] scripts: imx-usb-loader: fully read images into memory
To: Barebox List <barebox@lists.infradead.org>

imx-usb-loader tries to safe memory by reading the image in chunks.
This is unnecessarily complicated. The images are small, so fully read
them into memory and store them in a single buffer. This makes handling
them a lot easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 246 +++++++++++++------------------------------
 1 file changed, 75 insertions(+), 171 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 5a94cf1..d3de05f 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -750,81 +750,42 @@ static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_
 }
 
 static int verify_memory(struct libusb_device_handle *h, struct usb_id *p_id,
-		FILE *xfile, unsigned offset, unsigned addr, unsigned size,
-		unsigned char *verify_buffer, unsigned verify_cnt)
+			 const void *buf, unsigned len, unsigned addr)
 {
-	int mismatch = 0;
-	unsigned char file_buf[1024];
-	fseek(xfile, offset + verify_cnt, SEEK_SET);
-
-	while (size) {
-		unsigned char mem_buf[64];
-		unsigned char *p = file_buf;
-		int cnt = addr & 0x3f;
-		int request = get_min(size, sizeof(file_buf));
-
-		if (cnt) {
-			cnt = 64 - cnt;
-			if (request > cnt)
-				request = cnt;
-		}
-
-		if (verify_cnt) {
-			p = verify_buffer;
-			cnt = get_min(request, verify_cnt);
-			verify_buffer += cnt;
-			verify_cnt -= cnt;
-		} else {
-			cnt = fread(p, 1, request, xfile);
-			if (cnt <= 0) {
-				printf("Unexpected end of file, request=0x%0x, size=0x%x, cnt=%i\n",
-						request, size, cnt);
-				return -1;
-			}
-		}
-
-		size -= cnt;
-
-		while (cnt) {
-			int ret;
-
-			request = get_min(cnt, sizeof(mem_buf));
+	int ret, mismatch = 0;
+	void *readbuf;
+	unsigned offset = 0, now;
 
-			ret = read_memory(h, p_id, addr, mem_buf, request);
-			if (ret < 0)
-				return ret;
+	readbuf = malloc(len);
+	if (!readbuf)
+		return -ENOMEM;
 
-			if (memcmp(p, mem_buf, request)) {
-				unsigned char * m = mem_buf;
-				if (!mismatch)
-					printf("!!!!mismatch\n");
-				mismatch++;
-
-				while (request) {
-					unsigned req = get_min(request, 32);
-					if (memcmp(p, m, req)) {
-						dump_long(p, req, offset);
-						dump_long(m, req, addr);
-						printf("\n");
-					}
-					p += req;
-					m+= req;
-					offset += req;
-					addr += req;
-					cnt -= req;
-					request -= req;
-				}
-				if (mismatch >= 5)
-					return -1;
-			}
-			p += request;
-			offset += request;
-			addr += request;
-			cnt -= request;
+	ret = read_memory(h, p_id, addr, readbuf, len);
+	if (ret < 0)
+		goto err;
+
+	while (len) {
+		now = get_min(len, 32);
+
+		if (memcmp(buf + offset, readbuf + offset, now)) {
+			printf("mismatch at offset 0x%08x. expected:\n", offset);
+			dump_long(buf + offset, now, addr + offset);
+			printf("read:\n");
+			dump_long(readbuf + offset, now, addr + offset);
+			ret = -EINVAL;
+			mismatch++;
+			if (mismatch > 4)
+				goto err;
 		}
+
+		len -= now;
+		offset += now;
 	}
 
-	return mismatch ? -1 : 0;
+err:
+	free(readbuf);
+
+	return ret;
 }
 
 static int is_header(struct usb_id *p_id, unsigned char *p)
@@ -998,8 +959,7 @@ static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
 }
 
 static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
-		unsigned char *p, int cnt, unsigned char *buf, unsigned buf_cnt,
-		unsigned dladdr, unsigned fsize, unsigned char type, FILE* xfile)
+		void *buf, unsigned len, unsigned dladdr, unsigned char type)
 {
 	static unsigned char dl_command[] = {
 		0x04,
@@ -1013,18 +973,19 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 	int last_trans, err;
 	int retry = 0;
 	unsigned transfer_size = 0;
-	int max = p_id->mach_id->max_transfer;
 	unsigned char tmp[64];
+	void *p;
+	int cnt;
 
 	dl_command[2] = (unsigned char)(dladdr >> 24);
 	dl_command[3] = (unsigned char)(dladdr >> 16);
 	dl_command[4] = (unsigned char)(dladdr >> 8);
 	dl_command[5] = (unsigned char)(dladdr);
 
-	dl_command[7] = (unsigned char)(fsize >> 24);
-	dl_command[8] = (unsigned char)(fsize >> 16);
-	dl_command[9] = (unsigned char)(fsize >> 8);
-	dl_command[10] = (unsigned char)(fsize);
+	dl_command[7] = (unsigned char)(len >> 24);
+	dl_command[8] = (unsigned char)(len >> 16);
+	dl_command[9] = (unsigned char)(len >> 8);
+	dl_command[10] = (unsigned char)(len);
 	dl_command[15] =  type;
 
 	for (;;) {
@@ -1048,61 +1009,23 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 	}
 
-	while (1) {
-		int retry;
+	p = buf;
+	cnt = len;
 
-		if (cnt > (int)(fsize - transfer_size))
-			cnt = (fsize - transfer_size);
+	while (1) {
+		int now = get_min(cnt, p_id->mach_id->max_transfer);
 
-		if (cnt <= 0)
+		if (!now)
 			break;
 
-		retry = 0;
-
-		while (cnt) {
-			err = transfer(h, 2, p, get_min(cnt, max), &last_trans, p_id);
-			if (err) {
-				printf("out err=%i, last_trans=%i cnt=0x%x max=0x%x transfer_size=0x%X retry=%i\n",
-						err, last_trans, cnt, max, transfer_size, retry);
-				if (retry >= 10) {
-					printf("Giving up\n");
-					return err;
-				}
-				if (max >= 16)
-					max >>= 1;
-				else
-					max <<= 1;
-				usleep(10000);
-				retry++;
-				continue;
-			}
-			max = p_id->mach_id->max_transfer;
-			retry = 0;
-			if (cnt < last_trans) {
-				printf("error: last_trans=0x%x, attempted only=0%x\n", last_trans, cnt);
-				cnt = last_trans;
-			}
-			if (!last_trans) {
-				printf("Nothing last_trans, err=%i\n", err);
-				break;
-			}
-			p += last_trans;
-			cnt -= last_trans;
-			transfer_size += last_trans;
+		err = transfer(h, 2, p, now, &now, p_id);
+		if (err) {
+			printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
+			return err;
 		}
 
-		if (!last_trans)
-			break;
-
-		if (feof(xfile))
-			break;
-
-		cnt = fsize - transfer_size;
-		if (cnt <= 0)
-			break;
-
-		cnt = fread(buf, 1 , get_min(cnt, buf_cnt), xfile);
-		p = buf;
+		p += now;
+		cnt -= now;
 	}
 
 	if (p_id->mach_id->mode == MODE_HID) {
@@ -1134,10 +1057,9 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 	int cnt;
 	unsigned file_base;
 	int last_trans, err;
-#define BUF_SIZE (1024*16)
 	unsigned char *buf = NULL;
+	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned verify_cnt;
 	unsigned char *p;
 	unsigned char tmp[64];
 	unsigned dladdr = 0;
@@ -1146,7 +1068,6 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 	unsigned header_addr = 0;
 
 	unsigned skip = 0;
-	unsigned transfer_size=0;
 	int retry = 0;
 
 	xfile = fopen(curr->filename, "rb" );
@@ -1155,23 +1076,26 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		return -5;
 	}
 
-	buf = malloc(BUF_SIZE);
-	if (!buf) {
-		printf("error, out of memory\n");
+	fsize = get_file_size(xfile);
+	if (fsize < 0x20) {
+		printf("error, file: %s is too small\n", curr->filename);
 		ret = -2;
 		goto cleanup;
 	}
 
-	fsize = get_file_size(xfile);
-
-	cnt = fread(buf, 1 , BUF_SIZE, xfile);
-
-	if (cnt < 0x20) {
-		printf("error, file: %s is too small\n", curr->filename);
+	buf = malloc(fsize);
+	if (!buf) {
+		printf("error, out of memory\n");
 		ret = -2;
 		goto cleanup;
 	}
 
+	cnt = fread(buf, 1 , fsize, xfile);
+	if (cnt < fsize) {
+		printf("error, cannot read %s\n", curr->filename);
+		return -1;
+	}
+
 	max_length = fsize;
 
 	ret = process_header(h, p_id, curr, buf, cnt,
@@ -1215,22 +1139,9 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 
 	skip = dladdr - file_base;
 
-	if (skip > cnt) {
-		if (skip > fsize) {
-			printf("skip(0x%08x) > fsize(0x%08x) file_base=0x%08x, header_offset=0x%x\n",
-					skip, fsize, file_base, header_offset);
-			ret = -4;
-			goto cleanup;
-		}
-
-		fseek(xfile, skip, SEEK_SET);
-		cnt -= skip;
-		fsize -= skip;
-		skip = 0;
-		cnt = fread(buf, 1 , BUF_SIZE, xfile);
-	}
+	image = buf + skip;
 
-	p = &buf[skip];
+	p = image;
 	cnt -= skip;
 	fsize -= skip;
 
@@ -1238,13 +1149,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		fsize = max_length;
 
 	if (verify) {
-		/*
-		 * we need to save header for verification
-		 * because some of the file is changed
-		 * before download
-		 */
-		verify_buffer = malloc(cnt);
-		verify_cnt = cnt;
+		verify_buffer = malloc(64);
 
 		if (!verify_buffer) {
 			printf("error, out of memory\n");
@@ -1252,7 +1157,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 			goto cleanup;
 		}
 
-		memcpy(verify_buffer, p, cnt);
+		memcpy(verify_buffer, p, 64);
 
 		if ((type == FT_APP) && (p_id->mach_id->mode != MODE_HID)) {
 			type = FT_LOAD_ONLY;
@@ -1263,19 +1168,16 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%u type=%d...\n",
 			curr->filename, dladdr, skip, fsize, type);
 
-	ret = load_file(h, p_id, p, cnt, buf, BUF_SIZE,
-			dladdr, fsize, type, xfile);
+	ret = load_file(h, p_id, image, fsize, dladdr, type);
 	if (ret < 0)
 		goto cleanup;
 
 	printf("binary file successfully loaded\n");
 
-	transfer_size = ret;
-
 	if (verify) {
 		printf("verifying file...\n");
 
-		ret = verify_memory(h, p_id, xfile, skip, dladdr, fsize, verify_buffer, verify_cnt);
+		ret = verify_memory(h, p_id, image, fsize, dladdr);
 		if (ret < 0) {
 			printf("verifying failed\n");
 			goto cleanup;
@@ -1284,11 +1186,13 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		printf("file successfully verified\n");
 
 		if (verify == 2) {
-			if (verify_cnt > 64)
-				verify_cnt = 64;
-			ret = load_file(h, p_id, verify_buffer, verify_cnt,
-					buf, BUF_SIZE, dladdr, verify_cnt,
-					FT_APP, xfile);
+			/*
+			 * In bulk mode we do not have an explicit jump command,
+			 * so we load part of the image again with type FT_APP
+			 * this time.
+			 */
+			ret = load_file(h, p_id, verify_buffer, 64,
+					dladdr, FT_APP);
 			if (ret < 0)
 				goto cleanup;
 
@@ -1327,7 +1231,7 @@ static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
 	}
 
-	ret = (fsize == transfer_size) ? 0 : -16;
+	ret = 0;
 cleanup:
 	fclose(xfile);
 	free(verify_buffer);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
