Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP6XX-0000CC-WE
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:58 +0100
Message-Id: <1454064243-26558-19-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/23] scripts: imx-image: move more variables to context data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 17 ++++++++---------
 scripts/imx/imx.h       |  3 +++
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index d6ed120..cb3c242 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -315,9 +315,8 @@ int main(int argc, char *argv[])
 	int opt, ret;
 	char *configfile = NULL;
 	char *imagename = NULL;
-	char *outfile = NULL;
 	void *buf;
-	size_t image_size = 0, load_size, insize;
+	size_t insize;
 	void *infile;
 	struct stat s;
 	int infd, outfd;
@@ -338,7 +337,7 @@ int main(int argc, char *argv[])
 			imagename = optarg;
 			break;
 		case 'o':
-			outfile = optarg;
+			data.outfile = optarg;
 			break;
 		case 'b':
 			add_barebox_header = 1;
@@ -366,7 +365,7 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (!outfile) {
+	if (!data.outfile) {
 		fprintf(stderr, "output file not given\n");
 		exit(1);
 	}
@@ -378,7 +377,7 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
-		image_size = s.st_size;
+		data.image_size = s.st_size;
 	}
 
 	ret = parse_config(&data, configfile);
@@ -404,7 +403,7 @@ int main(int argc, char *argv[])
 		check_last_dcd(0);
 
 	if (dcd_only) {
-		ret = write_dcd(outfile);
+		ret = write_dcd(data.outfile);
 		if (ret)
 			exit(1);
 		exit (0);
@@ -418,10 +417,10 @@ int main(int argc, char *argv[])
 	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
 	 *   in ver funy ways when the image size is not 4 byte aligned
 	 */
-	load_size = roundup(image_size + HEADER_LEN, 0x1000);
+	data.load_size = roundup(data.image_size + HEADER_LEN, 0x1000);
 
 	if (data.cpu_type == 35)
-		load_size += HEADER_LEN;
+		data.load_size += HEADER_LEN;
 
 	switch (data.header_version) {
 	case 1:
@@ -454,7 +453,7 @@ int main(int argc, char *argv[])
 	xread(infd, infile, insize);
 	close(infd);
 
-	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
+	outfd = open(data.outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
 		perror("open");
 		exit(1);
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 41a54fb..6466d8c 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -59,6 +59,9 @@ struct imx_flash_header_v2 {
 struct config_data {
 	uint32_t image_load_addr;
 	uint32_t image_dcd_offset;
+	uint32_t image_size;
+	uint32_t load_size;
+	char *outfile;
 	int header_version;
 	int cpu_type;
 	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
