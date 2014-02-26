Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIfaj-00018K-IE
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 14:36:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Feb 2014 15:35:43 +0100
Message-Id: <1393425344-10373-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393425344-10373-1-git-send-email-s.hauer@pengutronix.de>
References: <1393425344-10373-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] usb: dfu: Add create flag
To: barebox@lists.infradead.org

With the create flag DFU can upload to regular, previously non existing
files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c           |  8 ++++++--
 drivers/usb/gadget/dfu.c | 18 ++++++++++++++----
 include/usb/dfu.h        |  1 +
 3 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index b310585..3c00e7e 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -65,6 +65,9 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
 			case 'r':
 				dfu->flags |= DFU_FLAG_READBACK;
 				break;
+			case 'c':
+				dfu->flags |= DFU_FLAG_CREATE;
+				break;
 			default:
 				return -EINVAL;
 			}
@@ -167,9 +170,10 @@ BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string\n")
 BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
 BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
 BAREBOX_CMD_HELP_OPT  ("<description>",
-	"device1(name1)[sr],device2(name2)[sr]\n"
+	"device1(name1)[sr],device2(name2)[src]\n"
 	"'s' means 'safe mode' (download the complete image before flashing) and\n"
-	"'r' that readback of the firmware is allowed.\n")
+	"'r' that readback of the firmware is allowed.\n"
+	"'c' if given, the file will be created (for use with regular files)\n")
 BAREBOX_CMD_HELP_END
 
 /**
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 6002ff0..c3a4e61 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -246,8 +246,12 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 		dfu->dfu_state = DFU_STATE_dfuIDLE;
 		if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE) {
 			int fd;
+			unsigned flags = O_WRONLY;
 
-			fd = open(dfu_devs[dfualt].dev, O_WRONLY);
+			if (dfu_devs[dfualt].flags & DFU_FLAG_CREATE)
+				flags |= O_CREAT | O_TRUNC;
+
+			fd = open(dfu_devs[dfualt].dev, flags);
 			if (fd < 0) {
 				perror("open");
 				ret = -EINVAL;
@@ -376,10 +380,16 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				goto out;
 			}
 			debug("dfu: starting download to %s\n", dfu_devs[dfualt].dev);
-			if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE)
+			if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE) {
 				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
-			else
-				dfufd = open(dfu_devs[dfualt].dev, O_WRONLY);
+			} else {
+				unsigned flags = O_WRONLY;
+
+				if (dfu_devs[dfualt].flags & DFU_FLAG_CREATE)
+					flags |= O_CREAT | O_TRUNC;
+
+				dfufd = open(dfu_devs[dfualt].dev, flags);
+			}
 
 			if (dfufd < 0) {
 				dfu->dfu_state = DFU_STATE_dfuERROR;
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index 00031e7..df4f2fd 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -24,6 +24,7 @@
 
 #define DFU_FLAG_SAFE		(1 << 0)
 #define DFU_FLAG_READBACK	(1 << 1)
+#define DFU_FLAG_CREATE		(1 << 2)
 
 struct usb_dfu_dev {
 	char *name;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
