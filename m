Delivery-date: Wed, 06 Oct 2021 16:25:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qy-00050q-TY
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:25:04 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qx-0000e8-0N
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:25:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9S//1O/Cb0/MF4JcbzDJKlc8PwEzZO9XU3BMeEN8rQ=; b=zUUnrWKKQPyiwh
	UvGrDHToqhvt2oCkOC8LeEE5VUb5w9y26eoHQn68theGNu0RRxhzs8VOWKHRFl0i5jJ2g6hF/3dIs
	tlMikIaFhR+t2grK61lh7Szbzv3L0RUFq9ZyEOmLXdiKhqYQJOW84pXfxwqcWYZexHm2rknnmofnU
	64Zor04gYIkmPbbGP1FqVtHgL9DmJ9BtCcbx5f0OuSBOmMr56kdjxmJkbznsYnjNc1gsw19L0bWih
	S6FtdvBHvDIiRXTWvsmZMVN91TILqwgsnk5lFmWo44US7xBe+kDSfREBBiXUmBrpA+nbliTwYGTVJ
	HemtCOnNuYFpxJRvdQdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7pB-00Ecku-B4; Wed, 06 Oct 2021 14:23:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7oz-00Ecem-Sz
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000I9-CN; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089ST-PI; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:51 +0200
Message-Id: <20211006142254.1751864-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006142254.1751864-1-s.hauer@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072302_311246_C7ED8B3F 
X-CRM114-Status: GOOD (  28.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] scripts: Add common library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Several functions are duplicated in different host tools. This patch
starts collecting them in a single C file. We start with read_file()
and read_file_2(), others follow in separate commits.

It would be great to compile these functions in a separate library, but
I don't know how this can be archieved in Kbuild. Instead, the C file
is included where needed. Not nice, not beautiful, but at least enough
to get something going.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/bareboximd.c         |  75 +-------------------------
 scripts/common.c             | 102 +++++++++++++++++++++++++++++++++++
 scripts/common.h             |   7 +++
 scripts/imx/imx-image.c      |  47 +++++-----------
 scripts/imx/imx-usb-loader.c |  77 +++++---------------------
 scripts/omap3-usb-loader.c   |  47 ++--------------
 6 files changed, 138 insertions(+), 217 deletions(-)
 create mode 100644 scripts/common.c
 create mode 100644 scripts/common.h

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index c3dcb4dcf0..8f059f46d0 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -17,6 +17,8 @@
 #include <linux/kernel.h>
 #include <sys/mman.h>
 
+#include "common.h"
+#include "common.c"
 #include "../include/image-metadata.h"
 
 #define eprintf(args...) fprintf(stderr, ## args)
@@ -65,79 +67,6 @@ out:
 	return ret;
 }
 
-static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
-{
-	off_t fsize;
-	ssize_t rsize;
-	int ret, fd;
-	void *buf;
-
-	*size = 0;
-	*outbuf = NULL;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
-		return -errno;
-	}
-
-	fsize = lseek(fd, 0, SEEK_END);
-	if (fsize == -1) {
-		fprintf(stderr, "Cannot get size %s: %s\n", filename, strerror(errno));
-		ret = -errno;
-		goto close;
-	}
-
-	if (fsize < max_size)
-		max_size = fsize;
-
-	if (lseek(fd, 0, SEEK_SET) == -1) {
-		fprintf(stderr, "Cannot seek to start %s: %s\n", filename, strerror(errno));
-		ret = -errno;
-		goto close;
-	}
-
-	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
-	if (buf == MAP_FAILED ) {
-		buf = malloc(max_size);
-		if (!buf) {
-			fprintf(stderr, "Cannot allocate memory\n");
-			ret = -ENOMEM;
-			goto close;
-		}
-
-		*outbuf = buf;
-
-		while (*size < max_size) {
-			rsize = read(fd, buf, max_size - *size);
-			if (rsize == 0) {
-				ret = -EIO;
-				goto free;
-			}
-
-			if (rsize < 0) {
-				ret = -errno;
-				goto free;
-			}
-
-			buf += rsize;
-			*size += rsize;
-		}
-	} else {
-		*outbuf = buf;
-		*size = max_size;
-	}
-
-	ret = 0;
-	goto close;
-free:
-	*outbuf = NULL;
-	free(buf);
-close:
-	close(fd);
-	return ret;
-}
-
 static inline void read_file_2_free(void *buf)
 {
 	/*
diff --git a/scripts/common.c b/scripts/common.c
new file mode 100644
index 0000000000..f28cddc71a
--- /dev/null
+++ b/scripts/common.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <stdio.h>
+#include <sys/types.h>
+#include <stdint.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <string.h>
+#include <errno.h>
+#include <stdarg.h>
+#include <sys/mman.h>
+
+#include "common.h"
+
+int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
+{
+	off_t fsize;
+	ssize_t rsize;
+	int ret, fd;
+	void *buf;
+
+	*size = 0;
+	*outbuf = NULL;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
+		return -errno;
+	}
+
+	fsize = lseek(fd, 0, SEEK_END);
+	if (fsize == -1) {
+		fprintf(stderr, "Cannot get size %s: %s\n", filename, strerror(errno));
+		ret = -errno;
+		goto close;
+	}
+
+	if (fsize < max_size)
+		max_size = fsize;
+
+	if (lseek(fd, 0, SEEK_SET) == -1) {
+		fprintf(stderr, "Cannot seek to start %s: %s\n", filename, strerror(errno));
+		ret = -errno;
+		goto close;
+	}
+
+	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
+	if (buf == MAP_FAILED ) {
+		buf = malloc(max_size);
+		if (!buf) {
+			fprintf(stderr, "Cannot allocate memory\n");
+			ret = -ENOMEM;
+			goto close;
+		}
+
+		*outbuf = buf;
+
+		while (*size < max_size) {
+			rsize = read(fd, buf, max_size - *size);
+			if (rsize == 0) {
+				ret = -EIO;
+				goto free;
+			}
+
+			if (rsize < 0) {
+				ret = -errno;
+				goto free;
+			}
+
+			buf += rsize;
+			*size += rsize;
+		}
+	} else {
+		*outbuf = buf;
+		*size = max_size;
+	}
+
+	ret = 0;
+	goto close;
+free:
+	*outbuf = NULL;
+	free(buf);
+close:
+	close(fd);
+	return ret;
+}
+
+void *read_file(const char *filename, size_t *size)
+{
+	int ret;
+	void *buf;
+
+	ret = read_file_2(filename, size, &buf, (size_t)-1);
+	if (!ret)
+		return buf;
+
+	errno = -ret;
+
+	return NULL;
+}
diff --git a/scripts/common.h b/scripts/common.h
new file mode 100644
index 0000000000..0153ebe93f
--- /dev/null
+++ b/scripts/common.h
@@ -0,0 +1,7 @@
+#ifndef __COMMON_H
+#define __COMMON_H
+
+int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size);
+void *read_file(const char *filename, size_t *size);
+
+#endif /* __COMMON_H */
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index b97f561897..439912a805 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -15,6 +15,7 @@
 #include <linux/kernel.h>
 #include <sys/file.h>
 #include "../compiler.h"
+#include "../common.h"
 
 #include "imx.h"
 
@@ -23,6 +24,8 @@
 #define FLASH_HEADER_OFFSET 0x400
 #define ARM_HEAD_SIZE_INDEX	(ARM_HEAD_SIZE_OFFSET / sizeof(uint32_t))
 
+#include "../common.c"
+
 /*
  * Conservative DCD element limit set to restriction v2 header size to
  * HEADER_SIZE
@@ -721,38 +724,6 @@ static int hab_sign(struct config_data *data)
 	return 0;
 }
 
-static void *xread_file(const char *filename, size_t *size)
-{
-	int fd, ret;
-	void *buf;
-	struct stat s;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
-		exit(1);
-	}
-
-	ret = fstat(fd, &s);
-	if (ret) {
-		fprintf(stderr, "Cannot stat %s: %s\n", filename, strerror(errno));
-		exit(1);
-	}
-
-	*size = s.st_size;
-	buf = malloc(*size);
-	if (!buf) {
-		perror("malloc");
-		exit(1);
-	}
-
-	xread(fd, buf, *size);
-
-	close(fd);
-
-	return buf;
-}
-
 static bool cpu_is_aarch64(const struct config_data *data)
 {
 	return cpu_is_mx8m(data);
@@ -914,8 +885,10 @@ int main(int argc, char *argv[])
 
 		if (data.signed_hdmi_firmware_file) {
 			free(buf);
-			buf = xread_file(data.signed_hdmi_firmware_file,
+			buf = read_file(data.signed_hdmi_firmware_file,
 					&signed_hdmi_firmware_size);
+			if (!buf)
+				exit(1);
 
 			signed_hdmi_firmware_size =
 				roundup(signed_hdmi_firmware_size,
@@ -957,7 +930,9 @@ int main(int argc, char *argv[])
 	bb_header[0] = data.first_opcode;
 	bb_header[ARM_HEAD_SIZE_INDEX] = barebox_image_size;
 
-	infile = xread_file(imagename, &insize);
+	infile = read_file(imagename, &insize);
+	if (!infile)
+		exit(1);
 
 	outfd = open(data.outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
@@ -1024,7 +999,9 @@ int main(int argc, char *argv[])
 	if (create_usb_image) {
 		uint32_t *dcd;
 
-		infile = xread_file(data.outfile, &insize);
+		infile = read_file(data.outfile, &insize);
+		if (!infile)
+			exit(1);
 
 		dcd = infile + dcd_ptr_offset;
 		*dcd = dcd_ptr_content;
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index cff77f27f2..d8b2842989 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -34,9 +34,12 @@
 #include <arpa/inet.h>
 #include <linux/kernel.h>
 
+#include "../common.h"
 #include "../compiler.h"
 #include "imx.h"
 
+#include "../common.c"
+
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
 
 #define FT_APP	0xaa
@@ -409,61 +412,6 @@ static void dump_bytes(const void *src, unsigned cnt, unsigned addr)
 	}
 }
 
-static long get_file_size(FILE *xfile)
-{
-	long size;
-	fseek(xfile, 0, SEEK_END);
-	size = ftell(xfile);
-	rewind(xfile);
-
-	return size;
-}
-
-static int read_file(const char *name, unsigned char **buffer, unsigned *size)
-{
-	FILE *xfile;
-	unsigned fsize;
-	int cnt;
-	unsigned char *buf;
-	xfile = fopen(name, "rb");
-	if (!xfile) {
-		printf("error, can not open input file: %s\n", name);
-		return -5;
-	}
-
-	fsize = get_file_size(xfile);
-	if (fsize < 0x20) {
-		printf("error, file: %s is too small\n", name);
-		fclose(xfile);
-		return -2;
-	}
-
-	buf = malloc(ALIGN(fsize, 4));
-	if (!buf) {
-		printf("error, out of memory\n");
-		fclose(xfile);
-		return -2;
-	}
-
-	cnt = fread(buf, 1 , fsize, xfile);
-	if (cnt < fsize) {
-		printf("error, cannot read %s\n", name);
-		fclose(xfile);
-		free(buf);
-		return -1;
-	}
-
-	if (size)
-		*size = fsize;
-
-	if (buffer)
-		*buffer = buf;
-	else
-		free(buf);
-
-	return 0;
-}
-
 /*
  * HID Class-Specific Requests values. See section 7.2 of the HID specifications
  */
@@ -1381,7 +1329,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 {
 	int ret;
 	unsigned char type;
-	unsigned fsize = 0;
+	size_t fsize = 0;
 	unsigned header_offset;
 	unsigned char *buf = NULL;
 	unsigned char *image;
@@ -1391,9 +1339,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned header_addr = 0;
 	unsigned total_size = 0;
 
-	ret = read_file(curr->filename, &buf, &fsize);
-	if (ret < 0)
-		return ret;
+	buf = read_file(curr->filename, &fsize);
+	if (!buf)
+		return -errno;
 
 	max_length = fsize;
 
@@ -1436,7 +1384,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	printf("loading binary file(%s) to 0x%08x, fsize=%u type=%d...\n",
+	printf("loading binary file(%s) to 0x%08x, fsize=%zu type=%d...\n",
 			curr->filename, header_addr, fsize, type);
 
 	ret = load_file(image, fsize, header_addr, type, false);
@@ -1552,13 +1500,12 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 
 static int mxs_work(struct usb_work *curr)
 {
-	unsigned fsize = 0;
+	size_t fsize = 0;
 	unsigned char *buf = NULL;
-	int ret;
 
-	ret = read_file(curr->filename, &buf, &fsize);
-	if (ret < 0)
-		return ret;
+	buf = read_file(curr->filename, &fsize);
+	if (!buf)
+		return -errno;
 
 	return mxs_load_file(usb_dev_handle, buf, fsize);
 }
diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 599a93856a..4fcc324eec 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -30,6 +30,9 @@
 
 #include <libusb-1.0/libusb.h>		/* the main event */
 
+#include "common.h"
+#include "common.c"
+
 /* Device specific defines (OMAP)
  * Primary source: http://www.ti.com/lit/pdf/sprugn4
  * Section 26.4.5 "Peripheral Booting"
@@ -325,50 +328,6 @@ found:
 	return handle;
 }
 
-static unsigned char *read_file(char *path, size_t *readamt)
-{
-	FILE *fp = fopen(path, "rb");
-
-	if (!fp) {
-		log_error("failed to open file \'%s\': %s\n", path,
-			  strerror(errno));
-		return NULL;
-	}
-
-	unsigned char *data = NULL;
-	size_t allocsize = 0;
-	size_t iter = 0;
-
-	while (1) {
-		allocsize += 1024;
-		data = realloc(data, allocsize);
-		if (!data)
-			return NULL;
-
-		size_t readsize = allocsize - iter;
-		size_t ret = fread(data + iter, sizeof (unsigned char), readsize, fp);
-
-		iter += ret;
-
-		if (ret != readsize) {
-			if (feof(fp)) {
-				break;
-			} else if (ferror(fp)) {
-				log_error("error file reading file \'%s\': %s\n",
-						path, strerror(errno));
-				free(data);
-				return NULL;
-			}
-		}
-	}
-
-	/* trim the allocation down to size */
-	data = realloc(data, iter);
-	*readamt = iter;
-
-	return data;
-}
-
 static int transfer_first_stage(libusb_device_handle * handle, struct arg_state *args)
 {
 	unsigned char *buffer = NULL;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

