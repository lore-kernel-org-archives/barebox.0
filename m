Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFFm4-0001GR-9K
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 06:02:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jul 2015 08:02:03 +0200
Message-Id: <1436940123-25118-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
References: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
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
 scripts/imx/imx-image.c | 46 +++++++++++++++++++++++-----------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index a588882..c13e059 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -666,11 +666,11 @@ int main(int argc, char *argv[])
 	char *imagename = NULL;
 	char *outfile = NULL;
 	void *buf;
-	size_t image_size = 0, load_size;
+	size_t image_size = 0, load_size, insize;
+	void *infile;
 	struct stat s;
 	int infd, outfd;
 	int dcd_only = 0;
-	int now = 0;
 
 	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
 		switch (opt) {
@@ -779,6 +779,24 @@ int main(int argc, char *argv[])
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
@@ -799,30 +817,12 @@ int main(int argc, char *argv[])
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
 	ret = close(outfd);
 	if (ret) {
 		perror("close");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
