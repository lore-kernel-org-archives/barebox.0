Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000A9-0j
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:36 +0200
Message-Id: <1380264462-27614-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] usb: Turn some printf into pr_*
To: barebox@lists.infradead.org

So that these messages can be suppressed if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 36fc736..cfe005c 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -74,7 +74,7 @@ static LIST_HEAD(usb_device_list);
 
 static void print_usb_device(struct usb_device *dev)
 {
-	printf("Bus %03d Device %03d: ID %04x:%04x %s\n",
+	pr_info("Bus %03d Device %03d: ID %04x:%04x %s\n",
 		dev->host->busnum, dev->devnum,
 		dev->descriptor->idVendor,
 		dev->descriptor->idProduct,
@@ -527,7 +527,7 @@ void usb_rescan(int force)
 	struct usb_host *host;
 	int ret;
 
-	printf("USB: scanning bus for devices...\n");
+	pr_info("USB: scanning bus for devices...\n");
 	dev_index = 0;
 
 	list_for_each_entry(host, &host_list, list) {
@@ -536,7 +536,7 @@ void usb_rescan(int force)
 			continue;
 	}
 
-	printf("%d USB Device(s) found\n", dev_index);
+	pr_info("%d USB Device(s) found\n", dev_index);
 }
 
 /*
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
