Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9m-0004KP-QW
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:05 +0200
Message-Id: <20170927120910.10516-8-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] usbgadget: fastboot: Use function to find file_list
 entry by name
To: Barebox List <barebox@lists.infradead.org>

We have file_list_entry_by_name() now, so use it rather than open
coding it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 598637619d..0f2c02ee47 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -679,18 +679,15 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 
 	fastboot_tx_print(f_fb, "INFOCopying file to %s...", cmd);
 
-	file_list_for_each_entry(f_fb->files, fentry) {
-		if (!strcmp(cmd, fentry->name)) {
-			filename = fentry->filename;
-			break;
-		}
-	}
+	fentry = file_list_entry_by_name(f_fb->files, cmd);
 
-	if (!filename) {
+	if (!fentry) {
 		fastboot_tx_print(f_fb, "FAILNo such partition: %s", cmd);
 		return;
 	}
 
+	filename = fentry->filename;
+
 	if (filetype == filetype_ubi) {
 		int fd;
 		struct mtd_info_user meminfo;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
