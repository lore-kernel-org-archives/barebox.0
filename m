Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP6XT-00009S-A0
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:45 +0100
Message-Id: <1454064243-26558-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/23] scripts: imx-usb-loader: Move definitions up
To: Barebox List <barebox@lists.infradead.org>

The macros are needed earlier in a later patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index afe24d1..58fa12d 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -35,6 +35,11 @@
 
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
 
+#define FT_APP	0xaa
+#define FT_CSF	0xcc
+#define FT_DCD	0xee
+#define FT_LOAD_ONLY	0x00
+
 int verbose;
 
 struct mach_id {
@@ -1113,11 +1118,6 @@ static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
 	return transfer_size;
 }
 
-#define FT_APP	0xaa
-#define FT_CSF	0xcc
-#define FT_DCD	0xee
-#define FT_LOAD_ONLY	0x00
-
 static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
 		struct usb_work *curr, int verify)
 {
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
