Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIfaj-00018J-IG
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 14:36:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Feb 2014 15:35:42 +0100
Message-Id: <1393425344-10373-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] usb: dfu: Fix spelling of flag name
To: barebox@lists.infradead.org

DFU_FLAG_SAVE should really be named DFU_FLAG_SAFE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c           | 2 +-
 drivers/usb/gadget/dfu.c | 4 ++--
 include/usb/dfu.h        | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index ec1197a..b310585 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -60,7 +60,7 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
 		case PARSE_FLAGS:
 			switch (*partstr) {
 			case 's':
-				dfu->flags |= DFU_FLAG_SAVE;
+				dfu->flags |= DFU_FLAG_SAFE;
 				break;
 			case 'r':
 				dfu->flags |= DFU_FLAG_READBACK;
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index e15fc41..6002ff0 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -244,7 +244,7 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 
 	if (w_length == 0) {
 		dfu->dfu_state = DFU_STATE_dfuIDLE;
-		if (dfu_devs[dfualt].flags & DFU_FLAG_SAVE) {
+		if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE) {
 			int fd;
 
 			fd = open(dfu_devs[dfualt].dev, O_WRONLY);
@@ -376,7 +376,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				goto out;
 			}
 			debug("dfu: starting download to %s\n", dfu_devs[dfualt].dev);
-			if (dfu_devs[dfualt].flags & DFU_FLAG_SAVE)
+			if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE)
 				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
 			else
 				dfufd = open(dfu_devs[dfualt].dev, O_WRONLY);
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index 698ba9d..00031e7 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -22,7 +22,7 @@
 
 #include <linux/types.h>
 
-#define DFU_FLAG_SAVE		(1 << 0)
+#define DFU_FLAG_SAFE		(1 << 0)
 #define DFU_FLAG_READBACK	(1 << 1)
 
 struct usb_dfu_dev {
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
