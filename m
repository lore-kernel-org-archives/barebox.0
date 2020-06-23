Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimX-0001U4-NY
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:48 +0200
Message-Id: <20200623131606.16316-3-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/20] scripts: imx-image: exit on read/write failures
To: Barebox List <barebox@lists.infradead.org>

When xread/xwrite fails the caller bails out of the program with an
error. We can drop all the error handling by letting xread/xwrite
call exit() themselves.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 77 ++++++++++++-----------------------------
 1 file changed, 23 insertions(+), 54 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 2481ae6403..04c707cb7f 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -445,41 +445,42 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width, int set_bits, in
 	return 0;
 }
 
-static int xread(int fd, void *buf, int len)
+static void xread(int fd, void *buf, int len)
 {
 	int ret;
 
 	while (len) {
 		ret = read(fd, buf, len);
-		if (ret < 0)
-			return ret;
+		if (ret < 0) {
+			fprintf(stderr, "read failed: %s\n", strerror(errno));
+			exit(1);
+		}
+
 		if (!ret)
-			return EOF;
+			return;
 		buf += ret;
 		len -= ret;
 	}
-
-	return 0;
 }
 
-static int xwrite(int fd, void *buf, int len)
+static void xwrite(int fd, void *buf, int len)
 {
 	int ret;
 
 	while (len) {
 		ret = write(fd, buf, len);
-		if (ret < 0)
-			return ret;
+		if (ret < 0) {
+			fprintf(stderr, "write failed: %s\n", strerror(errno));
+			exit(1);
+		}
 		buf += ret;
 		len -= ret;
 	}
-
-	return 0;
 }
 
 static void write_dcd(const char *outfile)
 {
-	int outfd, ret;
+	int outfd;
 	int dcdsize = curdcd * sizeof(uint32_t);
 
 	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
@@ -489,11 +490,7 @@ static void write_dcd(const char *outfile)
 		exit(1);
 	}
 
-	ret = xwrite(outfd, dcdtable, dcdsize);
-	if (ret < 0) {
-		perror("write");
-		exit(1);
-	}
+	xwrite(outfd, dcdtable, dcdsize);
 }
 
 static int check(const struct config_data *data, uint32_t cmd, uint32_t addr,
@@ -692,11 +689,7 @@ static int hab_sign(struct config_data *data)
 			csf_space);
 	}
 
-	ret = xread(fd, buf, s.st_size);
-	if (ret < 0) {
-		fprintf(stderr, "read failed: %s\n", strerror(errno));
-		return -errno;
-	}
+	xread(fd, buf, s.st_size);
 
 	/*
 	 * For i.MX8M, write into the reserved CSF section
@@ -728,11 +721,7 @@ static int hab_sign(struct config_data *data)
 		}
 	}
 
-	ret = xwrite(outfd, buf, csf_space);
-	if (ret < 0) {
-		fprintf(stderr, "write failed: %s\n", strerror(errno));
-		return -errno;
-	}
+	xwrite(outfd, buf, csf_space);
 
 	ret = close(outfd);
 	if (ret) {
@@ -992,42 +981,26 @@ int main(int argc, char *argv[])
 	header_copies = (data.cpu_type == IMX_CPU_IMX35) ? 2 : 1;
 
 	for (i = 0; i < header_copies; i++) {
-		ret = xwrite(outfd, add_barebox_header ? bb_header : buf,
-			     sizeof_bb_header);
-		if (ret < 0) {
-			perror("write");
-			exit(1);
-		}
+		xwrite(outfd, add_barebox_header ? bb_header : buf,
+		       sizeof_bb_header);
 
 		if (lseek(outfd, data.header_gap, SEEK_CUR) < 0) {
 			perror("lseek");
 			exit(1);
 		}
 
-		ret = xwrite(outfd, buf + sizeof_bb_header,
-			     header_len - sizeof_bb_header);
-		if (ret < 0) {
-			perror("write");
-			exit(1);
-		}
+		xwrite(outfd, buf + sizeof_bb_header,
+		       header_len - sizeof_bb_header);
 	}
 
-	ret = xwrite(outfd, infile, insize);
-	if (ret) {
-		perror("write");
-		exit(1);
-	}
+	xwrite(outfd, infile, insize);
 
 	/* pad until next 4k boundary */
 	now = 4096 - (insize % 4096);
 	if (data.csf && now) {
 		memset(buf, 0x5a, now);
 
-		ret = xwrite(outfd, buf, now);
-		if (ret) {
-			perror("write");
-			exit(1);
-		}
+		xwrite(outfd, buf, now);
 	}
 
 	ret = close(outfd);
@@ -1056,11 +1029,7 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
-		ret = xwrite(outfd, infile, insize);
-		if (ret < 0) {
-			perror("write");
-			exit (1);
-		}
+		xwrite(outfd, infile, insize);
 
 		close(outfd);
 	}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
