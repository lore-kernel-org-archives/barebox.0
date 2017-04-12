Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyFEk-0004SE-9K
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 10:10:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Apr 2017 12:10:32 +0200
Message-Id: <20170412101032.3444-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: delete temporary file
To: Barebox List <barebox@lists.infradead.org>

After we have copied the data to its final destination there is
no need to keep the temporary file around. Remove it when done
with it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index ef5f7ec6e0..598637619d 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -758,6 +758,9 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 
 copy:
 	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
+
+	unlink(FASTBOOT_TMPFILE);
+
 	if (ret) {
 		fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
 		return;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
