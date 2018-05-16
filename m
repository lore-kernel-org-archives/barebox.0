Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzWi-0003OQ-DB
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1fIzWT-0002La-Gd
 for barebox@lists.infradead.org; Wed, 16 May 2018 18:43:29 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mgr@pengutronix.de>) id 1fIzWT-0000rW-9A
 for barebox@lists.infradead.org; Wed, 16 May 2018 18:43:29 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 16 May 2018 18:43:28 +0200
Message-Id: <20180516164328.3254-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: fix barebox update without using buffer
To: barebox@lists.infradead.org

Commit e5098495 "usb: gadget: fastboot: Add option to download to a buffer"
breaks the use of temporary files for fastboot barebox_update.

In the patch the ".imagefile = FASTBOOT_TMPFILE" allocation gets
removed, but data.imagefile is still used. This leads to an NULL
pointer dereference. We fix it by using sourcefile instead.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 787b1205ec..7ccf227714 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -999,7 +999,7 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		if (fastboot_download_to_buf(f_fb)) {
 			data.len = f_fb->download_size;
 		} else {
-			ret = read_file_2(data.imagefile, &data.len, &f_fb->buf,
+			ret = read_file_2(sourcefile, &data.len, &f_fb->buf,
 					f_fb->download_size);
 			if (ret) {
 				fastboot_tx_print(f_fb, "FAILreading barebox");
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
