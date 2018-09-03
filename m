Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwuaz-0001O5-CW
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 19:33:13 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Sep 2018 21:32:54 +0200
Message-Id: <20180903193255.27031-4-r.hieber@pengutronix.de>
In-Reply-To: <20180903193255.27031-1-r.hieber@pengutronix.de>
References: <20180903193255.27031-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 3/4] scripts: imx-usb-loader: allow use of unknown USB IDs
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Some vendors fuse their devices so that the IMX USB ROM loader
identifies itself with a different Vendor and Product ID on USB
enumeration. Currently, imx-usb-loader will refuse to detect and work
with such devices, so let's teach it.

Because we cannot easily detect the device type from the USB ID in this
case, introduce the new command line parameter -d <type> to specify the
device type to use on the device path specified with -p <path>, even if
the VID/PID pair of that device is unknown. The device name is sourced
from the "name" field of the imx_ids array of known devices at the top
of the file. Using "-d list" will print a list of known device types.
Using -d without -p will not do anything useful, except generate a
warning.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 61 +++++++++++++++++++++++++++++++-----
 1 file changed, 54 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 6615ce3ca8..53e1c7ebb5 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -231,6 +231,29 @@ static const struct mach_id *imx_device_by_usb_id(unsigned short vid,
 	return NULL;
 }
 
+static const struct mach_id *imx_device_by_type(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imx_ids); i++) {
+		const struct mach_id *id = &imx_ids[i];
+		if (strcmp(id->name, name) == 0) {
+			fprintf(stderr, "found %s USB device\n", id->name);
+			return id;
+		}
+	}
+
+	fprintf(stderr, "unknown device type: '%s', try '-d list'.\n", name);
+	return NULL;
+}
+
+static void list_imx_device_types(void)
+{
+	for (int i = 0; i < ARRAY_SIZE(imx_ids); i++) {
+		printf("%s\n", imx_ids[i].name);
+	}
+}
+
 static int device_location_equal(libusb_device *device, const char *location)
 {
 	uint8_t port_path[MAX_USB_PORTS];
@@ -287,7 +310,7 @@ done:
 }
 
 static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **pp_id,
-		const char *location)
+		const char *location, const char *type)
 {
 	int i = 0;
 	int err;
@@ -313,14 +336,21 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 			continue;
 		}
 
-		p = imx_device_by_usb_id(desc.idVendor, desc.idProduct);
-		if (!p)
-			continue;
+		if (location && type) {
+			p = imx_device_by_type(type);
+			if (!p)
+				return NULL; // unknown type
+		}
+		else {
+			p = imx_device_by_usb_id(desc.idVendor, desc.idProduct);
+			if (!p)
+				continue;
+		}
 
 		err = libusb_open(dev, &usb_dev_handle);
 		if (err) {
 			fprintf(stderr, "Could not open device vid=0x%x pid=0x%x err=%d\n",
-				p->vid, p->pid, err);
+				desc.idVendor, desc.idProduct, err);
 			continue;
 		}
 
@@ -1523,6 +1553,10 @@ static void usage(const char *prgname)
 {
 	fprintf(stderr, "usage: %s [OPTIONS] [FILENAME]\n\n"
 		"-c           check correctness of flashed image\n"
+		"-d <devtype> with -p: Specify device type to use, and use <devpath> even if\n"
+		"             its USB VID/PID is unknown. Note that this could potentially be\n"
+		"             dangerous, as the device autodetection is overridden!\n"
+		"             Use '-d list' to get a list of known device types.\n"
 		"-i <cfgfile> Specify custom SoC initialization file\n"
 		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
 		"-s           skip DCD included in image\n"
@@ -1546,10 +1580,11 @@ int main(int argc, char *argv[])
 	int opt;
 	char *initfile = NULL;
 	char *devpath = NULL;
+	char *devtype = NULL;
 
 	w.do_dcd_once = 1;
 
-	while ((opt = getopt(argc, argv, "cvhi:p:s")) != -1) {
+	while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
 		switch (opt) {
 		case 'c':
 			verify = 1;
@@ -1559,6 +1594,9 @@ int main(int argc, char *argv[])
 			break;
 		case 'h':
 			usage(argv[0]);
+		case 'd':
+			devtype = optarg;
+			break;
 		case 'i':
 			initfile = optarg;
 			break;
@@ -1573,6 +1611,15 @@ int main(int argc, char *argv[])
 		}
 	}
 
+	if (devtype && strcmp(devtype, "list") == 0) {
+		list_imx_device_types();
+		exit(0);
+	}
+
+	if (devtype && !devpath) {
+		fprintf(stderr, "Note: ignoring -d <type> given without -p <path>.\n");
+	}
+
 	if (optind == argc) {
 		fprintf(stderr, "no filename given\n");
 		usage(argv[0]);
@@ -1592,7 +1639,7 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	dev = find_imx_dev(devs, &mach, devpath);
+	dev = find_imx_dev(devs, &mach, devpath, devtype);
 	if (!dev) {
 		fprintf(stderr, "no supported device found\n");
 		goto out;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
