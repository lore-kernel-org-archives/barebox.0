Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00059p-PE
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:01 +0100
Message-Id: <20200325123111.9612-15-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/24] usb: remove unnecessary variable
To: Barebox List <barebox@lists.infradead.org>

"tmp" is only used to store the size of the descriptor. The name is not
very meaningful and "tmp" is not even used everywhere it could be used.
Just replace by using sizeof() directly where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ad1d78b8fb..e5c80aa1da 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -309,7 +309,6 @@ static int usb_get_descriptor(struct usb_device *dev, unsigned char type,
 int usb_new_device(struct usb_device *dev)
 {
 	int err;
-	int tmp;
 	void *buf;
 	struct usb_device_descriptor *desc;
 	struct usb_device *parent = dev->parent;
@@ -384,17 +383,16 @@ int usb_new_device(struct usb_device *dev)
 
 	mdelay(10);	/* Let the SET_ADDRESS settle */
 
-	tmp = sizeof(*dev->descriptor);
-
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0,
 				 dev->descriptor, sizeof(*dev->descriptor));
-	if (err < tmp) {
+	if (err < sizeof(*dev->descriptor)) {
 		if (err < 0)
 			dev_err(&dev->dev, "unable to get device descriptor (error=%d)\n",
 			       err);
 		else
 			dev_err(&dev->dev, "USB device descriptor short read " \
-				"(expected %i, got %i)\n", tmp, err);
+				"(expected %zu, got %i)\n",
+				sizeof(*dev->descriptor), err);
 		goto err_out;
 	}
 	/* correct le values */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
