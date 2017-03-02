Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjRx9-00062Q-Ep
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 14:43:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  2 Mar 2017 15:43:12 +0100
Message-Id: <20170302144312.7941-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2] scripts: imx imx-usb-loader: add usb path support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

In some cases we need to work with more than one device attached
to one host. For this situation we need path filter to make sure
we talk with proper device.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 changes v1:
 - move loc before first if
 - fix comment style

 scripts/imx/imx-usb-loader.c | 99 ++++++++++++++++++++++++++++++++++++++------
 1 file changed, 86 insertions(+), 13 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index be0894fa6..e8d746785 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -45,6 +45,12 @@
 #define FT_DCD	0xee
 #define FT_LOAD_ONLY	0x00
 
+/*
+ * comment from libusb:
+ * As per the USB 3.0 specs, the current maximum limit for the depth is 7.
+ */
+#define MAX_USB_PORTS	7
+
 int verbose;
 static struct libusb_device_handle *usb_dev_handle;
 static struct usb_id *usb_id;
@@ -190,9 +196,64 @@ static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
 	return NULL;
 }
 
-static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id)
+static int device_location_equal(libusb_device *device, const char *location)
+{
+	uint8_t port_path[MAX_USB_PORTS];
+	uint8_t dev_bus;
+	int path_step, path_len;
+	int result = 0;
+	char *ptr, *loc;
+
+	/* strtok need non const char */
+	loc = strdup(location);
+
+	path_len = libusb_get_port_numbers(device, port_path, MAX_USB_PORTS);
+	if (path_len == LIBUSB_ERROR_OVERFLOW) {
+		fprintf(stderr, "cannot determine path to usb device! (more than %i ports in path)\n",
+			MAX_USB_PORTS);
+		goto done;
+	}
+
+	ptr = strtok(loc, "-");
+	if (ptr == NULL) {
+		printf("no '-' in path\n");
+		goto done;
+	}
+
+	dev_bus = libusb_get_bus_number(device);
+	/* check bus mismatch */
+	if (atoi(ptr) != dev_bus)
+		goto done;
+
+	path_step = 0;
+	while (path_step < MAX_USB_PORTS) {
+		ptr = strtok(NULL, ".");
+
+		/* no more tokens in path */
+		if (ptr == NULL)
+			break;
+
+		/* path mismatch at some step */
+		if (path_step < path_len && atoi(ptr) != port_path[path_step])
+			break;
+
+		path_step++;
+	};
+
+	/* walked the full path, all elements match */
+	if (path_step == path_len)
+		result = 1;
+
+done:
+	free(loc);
+	return result;
+}
+
+static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id,
+		const char *location)
 {
 	int i = 0;
+	int err;
 	struct mach_id *p;
 
 	for (;;) {
@@ -210,10 +271,24 @@ static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id)
 		}
 
 		p = imx_device(desc.idVendor, desc.idProduct);
-		if (p) {
-			*pp_id = p;
-			return dev;
+		if (!p)
+			continue;
+
+		err = libusb_open(dev, &usb_dev_handle);
+		if (err) {
+			fprintf(stderr, "Could not open device vid=0x%x pid=0x%x err=%d\n",
+				p->vid, p->pid, err);
+			continue;
+		}
+
+		if (location && !device_location_equal(dev, location)) {
+			libusb_close(usb_dev_handle);
+			usb_dev_handle = NULL;
+			continue;
 		}
+
+		*pp_id = p;
+		return dev;
 	}
 	*pp_id = NULL;
 
@@ -1280,6 +1355,7 @@ static void usage(const char *prgname)
 	fprintf(stderr, "usage: %s [OPTIONS] [FILENAME]\n\n"
 		"-c           check correctness of flashed image\n"
 		"-i <cfgfile> Specify custom SoC initialization file\n"
+		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
 		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
 		"-h           this help\n", prgname);
@@ -1300,10 +1376,11 @@ int main(int argc, char *argv[])
 	struct usb_work w = {};
 	int opt;
 	char *initfile = NULL;
+	char *devpath = NULL;
 
 	w.do_dcd_once = 1;
 
-	while ((opt = getopt(argc, argv, "cvhi:s")) != -1) {
+	while ((opt = getopt(argc, argv, "cvhi:p:s")) != -1) {
 		switch (opt) {
 		case 'c':
 			verify = 1;
@@ -1316,6 +1393,9 @@ int main(int argc, char *argv[])
 		case 'i':
 			initfile = optarg;
 			break;
+		case 'p':
+			devpath = optarg;
+			break;
 		case 's':
 			w.do_dcd_once = 0;
 			break;
@@ -1343,19 +1423,12 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	dev = find_imx_dev(devs, &mach);
+	dev = find_imx_dev(devs, &mach, devpath);
 	if (!dev) {
 		fprintf(stderr, "no supported device found\n");
 		goto out;
 	}
 
-	err = libusb_open(dev, &usb_dev_handle);
-	if (err) {
-		fprintf(stderr, "Could not open device vid=0x%x pid=0x%x err=%d\n",
-				mach->vid, mach->pid, err);
-		goto out;
-	}
-
 	libusb_free_device_list(devs, 1);
 
 	libusb_get_configuration(usb_dev_handle, &config);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
