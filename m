Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXdJ-000455-V8
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:12 +0100
Message-Id: <20180111075012.9050-8-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] usb: gadget: fastboot: Add sparse image support
To: Barebox List <barebox@lists.infradead.org>

Sparse images are needed for fastboot to flash images that do not
fit into memory.

Android fastboot is kind of a dumb protocol. It first sends you a
big image and afterwards it tells you where to put this image. This
of course limits fastboot to files smaller than the available memory.
To bypass this issue fastboot has so called Sparse image support. This
is a new image format that can contain holes in the data so a big image
can be written in multiple steps with holes in other areas each step.

Implementing this for UBI images is kind of tricky since ubiformat
normally expects to get a single image. Preparations to ubiformat
a device in multiple parts have been done in previous patches.
It is however, only for the first part possible to detect if it is
a UBI image. The other parts are just binary data and we cannot
know if we have to pass this data raw to the flash or use ubiformat.
For this reason this patch makes the 'u' flag in the partition
description mandatory for proper UBI image flashing on MTD devices.

fastboot passes a max_download_size variable to the host. This
variable contains the image size fastboot can take in one go.
We have to choose a good compromise here. On one hand we do not
want to risk that we actually do not have enough memory to hold the
transferred image, on the other hand we want images like bootloaders
not as sparse images, but in one go instead to make atomic exchange
of the bootloader possible. Right now we have chosen 8MiB which
should be big enough for all bootloaders. The value is configurable
via global.usbgadget.fastboot_max_download_size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/usb.rst      |   1 +
 drivers/usb/gadget/Kconfig      |   1 +
 drivers/usb/gadget/f_fastboot.c | 235 ++++++++++++++++++++++++++++++++++++----
 3 files changed, 214 insertions(+), 23 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 3844e7941a..8396f3897c 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -64,6 +64,7 @@ Several **flags** are supported, each denoted by a single character:
 * ``s`` Safe mode. The file is downloaded completely before it is written (DFU specific)
 * ``r`` Readback. The partition is allowed to be read back (DFU specific)
 * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
+* ``u`` The partition is a MTD device and shall be flashed with a UBI image.
 
 Example:
 
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 64347f0d18..b612d39a8e 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -57,6 +57,7 @@ config USB_GADGET_FASTBOOT
 	bool
 	select BANNER
 	select FILE_LIST
+	select IMAGE_SPARSE
 	prompt "Android Fastboot support"
 
 endif
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 85c64c05c8..4df87b9335 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -32,11 +32,14 @@
 #include <ubiformat.h>
 #include <stdlib.h>
 #include <file-list.h>
+#include <magicvar.h>
+#include <linux/sizes.h>
 #include <progress.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <restart.h>
 #include <console_countdown.h>
+#include <image-sparse.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 #include <usb/fastboot.h>
@@ -45,6 +48,7 @@
 #include <linux/compiler.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/mtd.h>
 
 #define FASTBOOT_VERSION		"0.4"
 
@@ -56,6 +60,8 @@
 
 #define EP_BUFFER_SIZE			4096
 
+static unsigned int fastboot_max_download_size = SZ_8M;
+
 struct fb_variable {
 	char *name;
 	char *value;
@@ -316,6 +322,8 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	fb_setvar(var, "0.4");
 	var = fb_addvar(f_fb, "bootloader-version");
 	fb_setvar(var, release_string);
+	var = fb_addvar(f_fb, "max-download-size");
+	fb_setvar(var, "%u", fastboot_max_download_size);
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && opts->export_bbu)
 		bbu_handlers_iterate(fastboot_add_bbu_variables, f_fb);
@@ -526,7 +534,7 @@ static int fastboot_tx_write(struct f_fastboot *f_fb, const char *buffer, unsign
 	return 0;
 }
 
-static int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...)
+int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...)
 {
 	char buf[64];
 	va_list ap;
@@ -687,6 +695,179 @@ static void __maybe_unused cb_boot(struct usb_ep *ep, struct usb_request *req,
 	fastboot_tx_print(f_fb, "OKAY");
 }
 
+static struct mtd_info *get_mtd(struct f_fastboot *f_fb, const char *filename)
+{
+	int fd, ret;
+	struct mtd_info_user meminfo;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(-errno);
+
+	ret = ioctl(fd, MEMGETINFO, &meminfo);
+
+	close(fd);
+
+	if (ret)
+		return ERR_PTR(ret);
+
+	return meminfo.mtd;
+}
+
+static int do_ubiformat(struct f_fastboot *f_fb, struct mtd_info *mtd,
+			const char *file)
+{
+	struct ubiformat_args args = {
+		.yes = 1,
+		.image = file,
+	};
+
+	if (!file)
+		args.novtbl = 1;
+
+	if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
+		fastboot_tx_print(f_fb, "FAILubiformat is not available");
+		return -ENODEV;
+	}
+
+	return ubiformat(mtd, &args);
+}
+
+
+static int check_ubi(struct f_fastboot *f_fb, struct file_list_entry *fentry,
+		     enum filetype filetype)
+{
+	struct mtd_info *mtd;
+
+	mtd = get_mtd(f_fb, fentry->filename);
+
+	/*
+	 * Issue a warning when we are about to write a UBI image to a MTD device
+	 * and the FILE_LIST_FLAG_UBI is not given as this means we loose all
+	 * erase counters.
+	 */
+	if (!IS_ERR(mtd) && filetype == filetype_ubi &&
+	    !(fentry->flags & FILE_LIST_FLAG_UBI)) {
+		    fastboot_tx_print(f_fb, "INFOwriting UBI image to MTD device, "
+					    "add the 'u' ");
+		    fastboot_tx_print(f_fb, "INFOflag to the partition description");
+	}
+
+	if (filetype == filetype_ubi) {
+		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
+		return 0;
+	} else {
+		fastboot_tx_print(f_fb, "FAILThis is no UBI image but %s",
+			file_type_to_string(filetype));
+		return -EINVAL;
+	}
+}
+
+static int fastboot_handle_sparse(struct f_fastboot *f_fb,
+				  struct file_list_entry *fentry)
+{
+	struct sparse_image_ctx *sparse;
+	void *buf = NULL;
+	int ret, fd;
+	unsigned int flags = O_RDWR;
+	int bufsiz = SZ_128K;
+	struct stat s;
+	struct mtd_info *mtd = NULL;
+
+	ret = stat(fentry->filename, &s);
+	if (ret) {
+		if (fentry->flags & FILE_LIST_FLAG_CREATE)
+			flags |= O_CREAT;
+		else
+			return ret;
+	}
+
+	fd = open(fentry->filename, flags);
+	if (fd < 0)
+		return -errno;
+
+	ret = fstat(fd, &s);
+	if (ret)
+		goto out_close_fd;
+
+	sparse = sparse_image_open(FASTBOOT_TMPFILE);
+	if (IS_ERR(sparse)) {
+		pr_err("Cannot open sparse image\n");
+		ret = PTR_ERR(sparse);
+		goto out_close_fd;
+	}
+
+	if (S_ISREG(s.st_mode)) {
+		ret = ftruncate(fd, sparse_image_size(sparse));
+		if (ret)
+			goto out;
+	}
+
+	buf = malloc(bufsiz);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	if (fentry->flags & FILE_LIST_FLAG_UBI) {
+		mtd = get_mtd(f_fb, fentry->filename);
+		if (IS_ERR(mtd)) {
+			ret = PTR_ERR(mtd);
+			goto out;
+		}
+	}
+
+	while (1) {
+		int retlen;
+		loff_t pos;
+
+		ret = sparse_image_read(sparse, buf, &pos, bufsiz, &retlen);
+		if (ret)
+			goto out;
+		if (!retlen)
+			break;
+
+		if (pos == 0) {
+			ret = check_ubi(f_fb, fentry, file_detect_type(buf, retlen));
+			if (ret)
+				goto out;
+		}
+
+		if (fentry->flags & FILE_LIST_FLAG_UBI) {
+			if (pos == 0) {
+
+				ret = do_ubiformat(f_fb, mtd, NULL);
+				if (ret)
+					goto out;
+			}
+
+			ret = ubiformat_write(mtd, buf, retlen, pos);
+			if (ret)
+				goto out;
+		} else {
+			pos = lseek(fd, pos, SEEK_SET);
+			if (pos == -1) {
+				ret = -errno;
+				goto out;
+			}
+
+			ret = write_full(fd, buf, retlen);
+			if (ret < 0)
+				goto out;
+		}
+	}
+
+	ret = 0;
+
+out:
+	free(buf);
+	sparse_image_close(sparse);
+out_close_fd:
+	close(fd);
+
+	return ret;
+}
+
 static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd)
 {
 	struct f_fastboot *f_fb = req->context;
@@ -706,33 +887,27 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 
 	filename = fentry->filename;
 
-	if (filetype == filetype_ubi) {
-		int fd;
-		struct mtd_info_user meminfo;
-		struct ubiformat_args args = {
-			.yes = 1,
-			.image = FASTBOOT_TMPFILE,
-		};
-
-		fd = open(filename, O_RDONLY);
-		if (fd < 0)
-			goto copy;
+	if (filetype == filetype_android_sparse) {
+		ret = fastboot_handle_sparse(f_fb, fentry);
+		if (ret) {
+			fastboot_tx_print(f_fb, "FAILwriting sparse image: %s",
+					  strerror(-ret));
+			return;
+		}
 
-		ret = ioctl(fd, MEMGETINFO, &meminfo);
-		close(fd);
-		/* Not a MTD device, ubiformat is not a valid operation */
-		if (ret)
-			goto copy;
+		goto out;
+	}
 
-		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
+	ret = check_ubi(f_fb, fentry, filetype);
+	if (ret < 0)
+		return;
 
-		if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
-			fastboot_tx_print(f_fb, "FAILubiformat is not available");
-			return;
-		}
+	if (ret) {
+		struct mtd_info *mtd;
 
-		ret = ubiformat(meminfo.mtd, &args);
+		mtd = get_mtd(f_fb, fentry->filename);
 
+		ret = do_ubiformat(f_fb, mtd, FASTBOOT_TMPFILE);
 		if (ret) {
 			fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
 			return;
@@ -973,3 +1148,17 @@ static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 	memset(req->buf, 0, EP_BUFFER_SIZE);
 	usb_ep_queue(ep, req);
 }
+
+static int fastboot_globalvars_init(void)
+{
+	globalvar_add_simple_int("usbgadget.fastboot_max_download_size",
+				 &fastboot_max_download_size, "%u");
+
+	return 0;
+}
+
+device_initcall(fastboot_globalvars_init);
+
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_max_download_size,
+		       global.usbgadget.fastboot_max_download_size,
+		       "Fastboot maximum download size");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
