Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076a-I0
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:56 +0100
Message-Id: <20180130084657.31943-6-s.hauer@pengutronix.de>
In-Reply-To: <20180130084657.31943-1-s.hauer@pengutronix.de>
References: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] usb: gadget: fastboot: allow data.image to be const
To: Barebox List <barebox@lists.infradead.org>

Do not directly store the dynamically allocated memory in data.image
as we want to make that pointer const and then no longer can call
free() on it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 2ba5977239..87a43cc60e 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -935,6 +935,7 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 	}
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
+		void *image;
 		struct bbu_data data = {
 			.devicefile = filename,
 			.imagefile = FASTBOOT_TMPFILE,
@@ -946,15 +947,17 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 
 		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
 
-		data.image = read_file(data.imagefile, &data.len);
-		if (!data.image) {
+		image = read_file(data.imagefile, &data.len);
+		if (!image) {
 			fastboot_tx_print(f_fb, "FAILreading barebox");
 			return;
 		}
 
+		data.image = image;
+
 		ret = barebox_update(&data);
 
-		free(data.image);
+		free(image);
 
 		if (ret) {
 			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
