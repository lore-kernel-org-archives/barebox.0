Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGllf-0005A7-NN
 for barebox@lists.infradead.org; Tue, 24 Mar 2020 15:47:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F15D427E0CB1
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2020 16:46:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 24 Mar 2020 16:46:46 +0100
Message-Id: <20200324154647.17341-3-jmaselbas@kalray.eu>
In-Reply-To: <20200324154647.17341-1-jmaselbas@kalray.eu>
References: <20200324154647.17341-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 2/3] usb: gadget: dfu: Progressive erase if file is a mtd
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
 drivers/usb/gadget/dfu.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index fef6f3e3a..592586db1 100644
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
@@ -327,8 +333,16 @@ static void dfu_cleanup(struct f_dfu *dfu)
 static void dn_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct f_dfu		*dfu = req->context;
+	loff_t size;
 	int ret;
 
+	if (prog_erase && (dfu_written + req->length) > dfu_erased) {
+		size = roundup(req->length, dfu_mtdinfo.erasesize);
+		erase(dfufd, size, dfu_erased);
+		dfu_erased += size;
+	}
+
+	dfu_written += req->length;
 	ret = write(dfufd, req->buf, req->length);
 	if (ret < (int)req->length) {
 		perror("write");
@@ -493,7 +507,12 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			}
 
 			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
-				ret = erase(dfufd, ERASE_SIZE_ALL, 0);
+				ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
+				if (ret) /* not a mtd */
+					ret = erase(dfufd, ERASE_SIZE_ALL, 0);
+				else
+					prog_erase = 1;
+
 				if (ret && ret != -ENOSYS) {
 					dfu->dfu_status = DFU_STATUS_errERASE;
 					perror("erase");
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
