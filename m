Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XY-0003eB-6f
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:44:02 +0100
Message-Id: <1454064243-26558-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/23] scripts: imx: Allow to create signed images
To: Barebox List <barebox@lists.infradead.org>

This patch allows to call CST directly from imx-image to create signed
images. CST is called whenever the config file contains the hab <str>
commands which means a CSF is generated.
Calling CST requires some quirks. First of all CST returns successfully
whenever a CSF exists, no matter is the CSF actually contains something
sensible or not. So to detect if CST has been called successfully we
have to check if it generated output, not if it returned successfully.
Then CST uses csfsig.bin as a temporary file which breaks when the tool
is called multiple times at once, something which often happens in
parallel builds. We therefore have to lock accesses to this file using
flock().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 175 +++++++++++++++++++++++++++++++++++++++++-------
 scripts/imx/imx.c       |   3 +
 scripts/imx/imx.h       |   2 +
 3 files changed, 157 insertions(+), 23 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 79f644d..1a771c4 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -15,6 +15,7 @@
  * GNU General Public License for more details.
  *
  */
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <unistd.h>
 #include <getopt.h>
@@ -26,7 +27,7 @@
 #include <sys/stat.h>
 #include <fcntl.h>
 #include <endian.h>
-
+#include <sys/file.h>
 #include "imx.h"
 
 #include <include/filetype.h>
@@ -34,13 +35,11 @@
 #define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
 
 #define MAX_DCD 1024
-#define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
 static int add_barebox_header;
-static int prepare_sign;
 
 /*
  * ============================================================================
@@ -230,6 +229,11 @@ static int add_header_v1(struct config_data *data, void *buf)
 
 	buf += dcdsize;
 
+	if (data->csf) {
+		hdr->app_code_csf = loadaddr + imagesize;
+		imagesize += CSF_LEN;
+	}
+
 	*(uint32_t *)buf = imagesize;
 
 	return 0;
@@ -282,7 +286,7 @@ static int add_header_v2(struct config_data *data, void *buf)
 	hdr->boot_data.start	= loadaddr;
 	hdr->boot_data.size	= imagesize;
 
-	if (prepare_sign) {
+	if (data->csf) {
 		hdr->csf = loadaddr + imagesize;
 		hdr->boot_data.size += CSF_LEN;
 	}
@@ -310,7 +314,6 @@ static void usage(const char *prgname)
 		"-b           add barebox header to image. If used, barebox recognizes\n"
 		"             the image as regular barebox image which can be used as\n"
 		"             second stage image\n"
-		"-p           prepare image for signing\n"
 		"-h           this help\n", prgname);
 	exit(1);
 }
@@ -440,6 +443,132 @@ static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int
 	}
 }
 
+/*
+ * This uses the Freescale Code Signing Tool (CST) to sign the image.
+ * The cst is expected to be executable as 'cst' or if exists, the content
+ * of the environment variable 'CST' is used.
+ */
+static int hab_sign(struct config_data *data)
+{
+	int fd, outfd, ret, lockfd;
+	char *csffile, *command;
+	struct stat s;
+	char *cst;
+	void *buf;
+
+	cst = getenv("CST");
+	if (!cst)
+		cst = "cst";
+
+	ret = asprintf(&csffile, "%s.csfbin", data->outfile);
+	if (ret < 0)
+		exit(1);
+
+	ret = stat(csffile, &s);
+	if (!ret) {
+		if (S_ISREG(s.st_mode)) {
+			ret = unlink(csffile);
+			if (ret) {
+				fprintf(stderr, "Cannot remove %s: %s\n",
+					csffile, strerror(errno));
+				return -errno;
+			}
+		} else {
+			fprintf(stderr, "%s exists and is no regular file\n",
+				csffile);
+			return -EINVAL;
+		}
+	}
+
+	ret = asprintf(&command, "%s -o %s", cst, csffile);
+	if (ret < 0)
+		return -ENOMEM;
+
+	/*
+	 * The cst uses "csfsig.bin" as temporary file. This of course breaks when it's
+	 * called multiple times as often happens with parallel builds. Until cst learns
+	 * how to properly create temporary files without races lock accesses to this
+	 * file.
+	 */
+	lockfd = open("csfsig.bin", O_CREAT, S_IRWXU);
+	if (lockfd < 0) {
+		fprintf(stderr, "Cannot open csfsig.bin: %s\n", strerror(errno));
+		return -errno;
+	}
+
+	ret = flock(lockfd, LOCK_EX);
+	if (ret) {
+		fprintf(stderr, "Cannot lock csfsig.bin: %s\n", strerror(errno));
+		return -errno;
+	}
+
+	FILE *f = popen(command, "w");
+	if (!f) {
+		perror("popen");
+		return -errno;
+	}
+
+	fwrite(data->csf, 1, strlen(data->csf) + 1, f);
+
+	pclose(f);
+
+	flock(lockfd, LOCK_UN);
+	close(lockfd);
+
+	/*
+	 * the Freescale code signing tool doesn't fail if there
+	 * are errors in the command sequence file, it just doesn't
+	 * produce any output, so we have to check for existence of
+	 * the output file rather than checking the return value of
+	 * the cst call.
+	 */
+	fd = open(csffile, O_RDONLY);
+	if (fd < 0) {
+		fprintf(stderr, "Failed to open %s: %s\n", csffile, strerror(errno));
+		fprintf(stderr, "%s failed\n", cst);
+		return -errno;
+	}
+
+	ret = fstat(fd, &s);
+	if (ret < 0) {
+		fprintf(stderr, "stat failed: %s\n", strerror(errno));
+		return -errno;
+	}
+
+	buf = malloc(CSF_LEN);
+	if (!buf)
+		return -ENOMEM;
+
+	memset(buf, 0x5a, CSF_LEN);
+
+	if (s.st_size > CSF_LEN) {
+		fprintf(stderr, "CSF file size exceeds maximum CSF len of %d bytes\n",
+			CSF_LEN);
+	}
+
+	ret = xread(fd, buf, s.st_size);
+	if (ret < 0) {
+		fprintf(stderr, "read failed: %s\n", strerror(errno));
+		return -errno;
+	}
+
+	outfd = open(data->outfile, O_WRONLY | O_APPEND);
+
+	ret = xwrite(outfd, buf, CSF_LEN);
+	if (ret < 0) {
+		fprintf(stderr, "write failed: %s\n", strerror(errno));
+		return -errno;
+	}
+
+	ret = close(outfd);
+	if (ret) {
+		perror("close");
+		exit(1);
+	}
+
+	return 0;
+}
+
 int main(int argc, char *argv[])
 {
 	int opt, ret;
@@ -458,7 +587,7 @@ int main(int argc, char *argv[])
 		.check = check,
 	};
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bd")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -475,9 +604,6 @@ int main(int argc, char *argv[])
 		case 'd':
 			dcd_only = 1;
 			break;
-		case 'p':
-			prepare_sign = 1;
-			break;
 		case 'h':
 			usage(argv[0]);
 		default:
@@ -510,6 +636,16 @@ int main(int argc, char *argv[])
 		data.image_size = s.st_size;
 	}
 
+	/*
+	 * Add HEADER_LEN to the image size for the blank aera + IVT + DCD.
+	 * Align up to a 4k boundary, because:
+	 * - at least i.MX5 NAND boot only reads full NAND pages and misses the
+	 *   last partial NAND page.
+	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
+	 *   in ver funy ways when the image size is not 4 byte aligned
+	 */
+	data.load_size = roundup(data.image_size + HEADER_LEN, 0x1000);
+
 	ret = parse_config(&data, configfile);
 	if (ret)
 		exit(1);
@@ -539,19 +675,6 @@ int main(int argc, char *argv[])
 		exit (0);
 	}
 
-	/*
-	 * Add HEADER_LEN to the image size for the blank aera + IVT + DCD.
-	 * Align up to a 4k boundary, because:
-	 * - at least i.MX5 NAND boot only reads full NAND pages and misses the
-	 *   last partial NAND page.
-	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
-	 *   in ver funy ways when the image size is not 4 byte aligned
-	 */
-	data.load_size = roundup(data.image_size + HEADER_LEN, 0x1000);
-
-	if (data.cpu_type == 35)
-		data.load_size += HEADER_LEN;
-
 	switch (data.header_version) {
 	case 1:
 		add_header_v1(&data, buf);
@@ -617,7 +740,7 @@ int main(int argc, char *argv[])
 
 	/* pad until next 4k boundary */
 	now = 4096 - (insize % 4096);
-	if (prepare_sign && now) {
+	if (data.csf && now) {
 		memset(buf, 0x5a, now);
 
 		ret = xwrite(outfd, buf, now);
@@ -633,5 +756,11 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	if (data.csf) {
+		ret = hab_sign(&data);
+		if (ret)
+			exit(1);
+	}
+
 	exit(0);
 }
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 583cb2c..cebc3d6 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -228,6 +228,9 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 		fprintf(stderr, "%s ", socs[i].name);
 	fprintf(stderr, "\n");
 
+	if (data->cpu_type == 35)
+		data->load_size += HEADER_LEN;
+
 	return -EINVAL;
 }
 
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 0b1d234..69fe943 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -3,6 +3,8 @@
 #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
 #endif
 
+#define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+
 /*
  * ============================================================================
  * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
