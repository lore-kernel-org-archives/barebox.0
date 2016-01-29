Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XT-0006kF-K6
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:56 +0100
Message-Id: <1454064243-26558-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/23] scripts: imx-usb-loader: Add -s and -i options
To: Barebox List <barebox@lists.infradead.org>

Normally imx-usb-loader interprets and executes the DCD table from
an uploaded image and invalidates the DCD before uploading the image
itself to prevent the i.MX ROM code from executing it again. With HAB
signed images this is not possible since invalidating the DCD table
modifies the image which also makes the signature invalid.
To support this usecase add two new options to imx-usb-loader:

The -i option allows to pass in an external config file which can be
used to setup SDRAM. The DCD table in the image can then be made empty
so that the ROM does not see a second SDRAM setup.

The -s option allows to skip interpreting the DCD table in the image.
This may when some setup stuff is still in the images DCD table but
shall be executed by the ROM and not by imx-usb-loader.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 37 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 7925d2d..064212e 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -42,6 +42,7 @@
 #define FT_LOAD_ONLY	0x00
 
 int verbose;
+static int skip_image_dcd;
 static struct libusb_device_handle *usb_dev_handle;
 static struct usb_id *usb_id;
 
@@ -855,6 +856,9 @@ static int perform_dcd(unsigned char *p, unsigned char *file_start, unsigned cnt
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 	int ret = 0;
 
+	if (skip_image_dcd)
+		return 0;
+
 	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 		ret = write_dcd_table_old(ohdr, file_start, cnt);
@@ -1191,10 +1195,28 @@ cleanup:
 	return ret;
 }
 
+static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width)
+{
+	printf("wr 0x%08x 0x%08x\n", addr, val);
+
+	return write_memory(addr, val, width);
+}
+
+static int parse_initfile(const char *filename)
+{
+	struct config_data data = {
+		.write_mem = write_mem,
+	};
+
+	return parse_config(&data, filename);
+}
+
 static void usage(const char *prgname)
 {
 	fprintf(stderr, "usage: %s [OPTIONS] [FILENAME]\n\n"
 		"-c           check correctness of flashed image\n"
+		"-i <cfgfile> Specify custom SoC initialization file\n"
+		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
 		"-h           this help\n", prgname);
 	exit(1);
@@ -1213,8 +1235,9 @@ int main(int argc, char *argv[])
 	int verify = 0;
 	struct usb_work w = {};
 	int opt;
+	char *initfile = NULL;
 
-	while ((opt = getopt(argc, argv, "cvh")) != -1) {
+	while ((opt = getopt(argc, argv, "cvhi:s")) != -1) {
 		switch (opt) {
 		case 'c':
 			verify = 1;
@@ -1224,6 +1247,12 @@ int main(int argc, char *argv[])
 			break;
 		case 'h':
 			usage(argv[0]);
+		case 'i':
+			initfile = optarg;
+			break;
+		case 's':
+			skip_image_dcd = 1;
+			break;
 		default:
 			exit(1);
 		}
@@ -1290,6 +1319,12 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
+	if (initfile) {
+		err = parse_initfile(initfile);
+		if (err)
+			goto out;
+	}
+
 	err = do_irom_download(&w, verify);
 	if (err) {
 		err = do_status();
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
