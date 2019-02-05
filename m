Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqwZO-0006Gx-GZ
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 08:59:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Feb 2019 09:59:00 +0100
Message-Id: <20190205085901.2271-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: imx-image: Be more informative on open errors
To: Barebox List <barebox@lists.infradead.org>

When opening a file fails then consistently print a message which
file we cannot open and why. In one place no error checking was done at
all, so add this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 34a072039d..4933703fdc 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -153,7 +153,8 @@ static int extract_key(const char *certfile, uint8_t **modulus, int *modulus_len
 
 	fp = fopen(certfile, "r");
 	if (!fp) {
-		fprintf(stderr, "unable to open certfile: %s\n", certfile);
+		fprintf(stderr, "unable to open certfile %s: %s\n", certfile,
+			strerror(errno));
 		return -errno;
 	}
 
@@ -458,7 +459,8 @@ static void write_dcd(const char *outfile)
 
 	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
-		perror("open");
+		fprintf(stderr, "Cannot open %s for wrinting: %s\n", outfile,
+			strerror(errno));
 		exit(1);
 	}
 
@@ -671,6 +673,11 @@ static int hab_sign(struct config_data *data)
 	}
 
 	outfd = open(data->outfile, O_WRONLY | O_APPEND);
+	if (outfd < 0) {
+		fprintf(stderr, "Cannot open %s for writing: %s\n", data->outfile,
+			strerror(errno));
+		exit(1);
+	}
 
 	ret = xwrite(outfd, buf, csf_space);
 	if (ret < 0) {
@@ -695,7 +702,7 @@ static void *read_file(const char *filename, size_t *size)
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		perror("open");
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
 		exit(1);
 	}
 
@@ -930,7 +937,8 @@ int main(int argc, char *argv[])
 
 	outfd = open(data.outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
-		perror("open");
+		fprintf(stderr, "Cannot open %s for writing: %s\n", data.outfile,
+			strerror(errno));
 		exit(1);
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
