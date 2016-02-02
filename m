Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG2-0004iZ-6l
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:12 +0100
Message-Id: <1454424497-7157-30-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/34] scripts: imx-image: Factor out a read_file function
To: Barebox List <barebox@lists.infradead.org>

The same code will be used a second time in a followup patch, so
factor out a common function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 46 ++++++++++++++++++++++++++++++----------------
 1 file changed, 30 insertions(+), 16 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 5eca446..78bbbbc 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -570,6 +570,34 @@ static int hab_sign(struct config_data *data)
 	return 0;
 }
 
+static void *read_file(const char *filename, size_t *size)
+{
+	int fd, ret;
+	void *buf;
+	struct stat s;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		exit(1);
+	}
+
+	ret = fstat(fd, &s);
+	if (ret)
+		return NULL;
+
+	*size = s.st_size;
+	buf = malloc(*size);
+	if (!buf)
+		exit(1);
+
+	xread(fd, buf, *size);
+
+	close(fd);
+
+	return buf;
+}
+
 int main(int argc, char *argv[])
 {
 	int opt, ret;
@@ -579,7 +607,7 @@ int main(int argc, char *argv[])
 	size_t insize;
 	void *infile;
 	struct stat s;
-	int infd, outfd;
+	int outfd;
 	int dcd_only = 0;
 	int now = 0;
 	int sign_image = 0;
@@ -704,24 +732,10 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	infd = open(imagename, O_RDONLY);
-	if (infd < 0) {
-		perror("open");
-		exit(1);
-	}
-
-	ret = fstat(infd, &s);
-	if (ret)
-		return ret;
-
-	insize = s.st_size;
-	infile = malloc(insize);
+	infile = read_file(imagename, &insize);
 	if (!infile)
 		exit(1);
 
-	xread(infd, infile, insize);
-	close(infd);
-
 	outfd = open(data.outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
 		perror("open");
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
