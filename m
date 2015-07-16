Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdus-0000Cp-Dy
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:49:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:48:46 +0200
Message-Id: <1437032926-25680-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437032926-25680-1-git-send-email-s.hauer@pengutronix.de>
References: <1437032926-25680-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] scripts: imx-image: Make in-place capable
To: Barebox List <barebox@lists.infradead.org>

Read in the source image completely before starting to write the output
image. This makes it possible to pass the same file as input and output.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 47 ++++++++++++++++++++++++-----------------------
 1 file changed, 24 insertions(+), 23 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index f0e8ca3..e8d9dbf 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -666,7 +666,8 @@ int main(int argc, char *argv[])
 	char *imagename = NULL;
 	char *outfile = NULL;
 	void *buf;
-	size_t image_size = 0, load_size;
+	size_t image_size = 0, load_size, insize;
+	void *infile;
 	struct stat s;
 	int infd, outfd;
 	int dcd_only = 0;
@@ -779,6 +780,24 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	infd = open(imagename, O_RDONLY);
+	if (infd < 0) {
+		perror("open");
+		exit(1);
+	}
+
+	ret = fstat(infd, &s);
+	if (ret)
+		return ret;
+
+	insize = s.st_size;
+	infile = malloc(insize);
+	if (!infile)
+		exit(1);
+
+	xread(infd, infile, insize);
+	close(infd);
+
 	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
 		perror("open");
@@ -799,32 +818,14 @@ int main(int argc, char *argv[])
 		}
 	}
 
-	infd = open(imagename, O_RDONLY);
-	if (infd < 0) {
-		perror("open");
+	ret = xwrite(outfd, infile, insize);
+	if (ret) {
+		perror("write");
 		exit(1);
 	}
 
-	while (image_size) {
-		now = image_size < 4096 ? image_size : 4096;
-
-		ret = xread(infd, buf, now);
-		if (ret) {
-			perror("read");
-			exit(1);
-		}
-
-		ret = xwrite(outfd, buf, now);
-		if (ret) {
-			perror("write");
-			exit(1);
-		}
-
-		image_size -= now;
-	}
-
 	/* pad until next 4k boundary */
-	now = 4096 - now;
+	now = 4096 - (insize % 4096);
 	if (prepare_sign && now) {
 		memset(buf, 0x5a, now);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
