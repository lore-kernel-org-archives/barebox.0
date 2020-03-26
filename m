Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXJo-0000zu-F9
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 18:33:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0EB3527E0DCF
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 19:33:27 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 26 Mar 2020 19:33:03 +0100
Message-Id: <20200326183304.16531-4-jmaselbas@kalray.eu>
In-Reply-To: <20200326183304.16531-1-jmaselbas@kalray.eu>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 3/4] usb: gadget: dfu: Progressive erase if file is a mtd
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

When downloading a firmware into a big flash partition the erase
operation can take a long time to be complete from few seconds to
minutes in extreme cases. During the erase the DFU gadget does not
respond to any USB setup request, the host only see a stalled USB
endpoint and cannot get responses from DFU_GETSTATE nor DFU_GETSTATUS.

After 5 seconds without any updates the host will abort the DFU
transfer and return an error (when using dfu-util).

For instance I have a 2MB partition that takes 25 seconds to erase,
this erase cannot be done in one step as it takes too much time or it
should be done in the manifestation phase, see previous patch.

This patch modify the erase behavior when downloading a new firmware.
If the updated file is a mtd partition then the DFU gadget will do
a progressive erase by erasing the least amount of required blocks
before writing a new chunk into the mtd device.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 34 ++++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 3f457b69d..225c6e3c6 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -55,6 +55,8 @@
 #include <libbb.h>
 #include <init.h>
 #include <fs.h>
+#include <ioctl.h>
+#include <linux/mtd/mtd-abi.h>
 
 #define USB_DT_DFU			0x21
 
@@ -132,6 +134,10 @@ struct file_list_entry *dfu_file_entry;
 static int dfufd = -EINVAL;
 static struct file_list *dfu_files;
 static int dfudetach;
+static struct mtd_info_user dfu_mtdinfo;
+static loff_t dfu_written;
+static loff_t dfu_erased;
+static int prog_erase;
 
 /* USB DFU functional descriptor */
 static struct usb_dfu_func_descriptor usb_dfu_func = {
@@ -319,6 +325,11 @@ static void dfu_cleanup(struct f_dfu *dfu)
 {
 	struct stat s;
 
+	memset(&dfu_mtdinfo, 0, sizeof(dfu_mtdinfo));
+	dfu_written = 0;
+	dfu_erased = 0;
+	prog_erase = 0;
+
 	if (dfufd > 0) {
 		close(dfufd);
 		dfufd = -EINVAL;
@@ -331,8 +342,22 @@ static void dfu_cleanup(struct f_dfu *dfu)
 static void dn_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct f_dfu		*dfu = req->context;
+	loff_t size;
 	int ret;
 
+	if (prog_erase && (dfu_written + req->length) > dfu_erased) {
+		size = roundup(req->length, dfu_mtdinfo.erasesize);
+		ret = erase(dfufd, size, dfu_erased);
+		dfu_erased += size;
+		if (ret && ret != -ENOSYS) {
+			perror("erase");
+			dfu->dfu_status = DFU_STATUS_errERASE;
+			dfu_cleanup(dfu);
+			return;
+		}
+	}
+
+	dfu_written += req->length;
 	ret = write(dfufd, req->buf, req->length);
 	if (ret < (int)req->length) {
 		perror("write");
@@ -497,12 +522,9 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			}
 
 			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
-				ret = erase(dfufd, ERASE_SIZE_ALL, 0);
-				if (ret && ret != -ENOSYS) {
-					dfu->dfu_status = DFU_STATUS_errERASE;
-					perror("erase");
-					goto out;
-				}
+				ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
+				if (!ret) /* file is on a mtd device */
+					prog_erase = 1;
 			}
 
 			value = handle_dnload(f, ctrl);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
