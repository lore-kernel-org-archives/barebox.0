Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqwZU-0006IN-Mj
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 08:59:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Feb 2019 09:59:01 +0100
Message-Id: <20190205085901.2271-2-s.hauer@pengutronix.de>
In-Reply-To: <20190205085901.2271-1-s.hauer@pengutronix.de>
References: <20190205085901.2271-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] scripts: imx-image: make read_file behaviour consistent
To: Barebox List <barebox@lists.infradead.org>

When read_file fails then it exits the program in most cases. Let's exit
the program when stat() fails aswell, so that we *always* exit the
program on failure. Drop all error handling for read_file since that's
no longer necessary and rename the function to xread_file to make
clear it won't fail.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 4933703fdc..a7f1421fa3 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -694,7 +694,7 @@ static int hab_sign(struct config_data *data)
 	return 0;
 }
 
-static void *read_file(const char *filename, size_t *size)
+static void *xread_file(const char *filename, size_t *size)
 {
 	int fd, ret;
 	void *buf;
@@ -707,13 +707,17 @@ static void *read_file(const char *filename, size_t *size)
 	}
 
 	ret = fstat(fd, &s);
-	if (ret)
-		return NULL;
+	if (ret) {
+		fprintf(stderr, "Cannot stat %s: %s\n", filename, strerror(errno));
+		exit(1);
+	}
 
 	*size = s.st_size;
 	buf = malloc(*size);
-	if (!buf)
+	if (!buf) {
+		perror("malloc");
 		exit(1);
+	}
 
 	xread(fd, buf, *size);
 
@@ -884,12 +888,8 @@ int main(int argc, char *argv[])
 
 		if (data.signed_hdmi_firmware_file) {
 			free(buf);
-			buf = read_file(data.signed_hdmi_firmware_file,
+			buf = xread_file(data.signed_hdmi_firmware_file,
 					&signed_hdmi_firmware_size);
-			if (!buf) {
-				perror("read_file");
-				exit(1);
-			}
 
 			signed_hdmi_firmware_size =
 				roundup(signed_hdmi_firmware_size,
@@ -931,9 +931,7 @@ int main(int argc, char *argv[])
 	bb_header[0] = data.first_opcode;
 	bb_header[ARM_HEAD_SIZE_INDEX] = barebox_image_size;
 
-	infile = read_file(imagename, &insize);
-	if (!infile)
-		exit(1);
+	infile = xread_file(imagename, &insize);
 
 	outfd = open(data.outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
 	if (outfd < 0) {
@@ -998,7 +996,7 @@ int main(int argc, char *argv[])
 	if (create_usb_image) {
 		uint32_t *dcd;
 
-		infile = read_file(data.outfile, &insize);
+		infile = xread_file(data.outfile, &insize);
 
 		dcd = infile + dcd_ptr_offset;
 		*dcd = dcd_ptr_content;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
