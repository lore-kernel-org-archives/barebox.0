Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003ju-H6
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:30 +0100
Message-Id: <20191220143232.28354-9-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] usb: Forward error code from usb_set_configuration
To: Barebox List <barebox@lists.infradead.org>

Instead of returning -1 forward the error code and take the opportunity
to print the error string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ad3bacf236..1c3dcb79a8 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -124,7 +124,7 @@ static int usb_set_configuration(struct usb_device *dev, int configuration)
 		dev->toggle[1] = 0;
 		return 0;
 	} else
-		return -1;
+		return res;
 }
 
 /* The routine usb_set_maxpacket_ep() is extracted from the loop of routine
@@ -412,9 +412,11 @@ int usb_new_device(struct usb_device *dev)
 	usb_parse_config(dev, buf, 0);
 	usb_set_maxpacket(dev);
 	/* we set the default configuration here */
-	if (usb_set_configuration(dev, dev->config.desc.bConfigurationValue)) {
-		printf("failed to set default configuration " \
-			"len %d, status %lX\n", dev->act_len, dev->status);
+	err = usb_set_configuration(dev, dev->config.desc.bConfigurationValue);
+	if (err) {
+		printf("Setting default configuration failed with: %s\n" \
+			"len %d, status %lX\n", strerror(-err),
+		       dev->act_len, dev->status);
 		goto err_out;
 	}
 	pr_debug("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
