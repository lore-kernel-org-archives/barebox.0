Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x1-UU
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:11 +0100
Message-Id: <20180209094316.8523-5-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] usb: gadget: fastboot: use read_file_2
To: Barebox List <barebox@lists.infradead.org>

read_file_2 gives us a proper error code and allows us
to specify a maximum size which in this case we happen to know.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 81522cbba6..62b13bcb8c 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -947,8 +947,9 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 
 		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
 
-		image = read_file(data.imagefile, &data.len);
-		if (!image) {
+		ret = read_file_2(data.imagefile, &data.len, &image,
+				  f_fb->download_size);
+		if (ret) {
 			fastboot_tx_print(f_fb, "FAILreading barebox");
 			return;
 		}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
