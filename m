Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo6.mail-out.ovh.net ([46.105.73.110])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6N-0004Pm-6n
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:36 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 22F78FF94E0
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:57 +0100
Message-Id: <1419358918-25569-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] console: allow to specify the device id
To: barebox@lists.infradead.org

so we can use dynamic number id with specific devname

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c              | 2 +-
 drivers/usb/gadget/u_serial.c | 1 +
 include/console.h             | 1 +
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index bba13a5..602ab2e 100644
--- a/common/console.c
+++ b/common/console.c
@@ -188,7 +188,7 @@ int console_register(struct console_device *newcdev)
 		console_init_early();
 
 	if (newcdev->devname) {
-		dev->id = DEVICE_ID_SINGLE;
+		dev->id = newcdev->devid;
 		strcpy(dev->name, newcdev->devname);
 	} else {
 		dev->id = DEVICE_ID_DYNAMIC;
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 8c58746..1e5e809 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -530,6 +530,7 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	cdev->flush = serial_flush;
 	cdev->setbrg = serial_setbaudrate;
 	cdev->devname = "usbserial";
+	cdev->devid = DEVICE_ID_SINGLE;
 
 	status = console_register(cdev);
 	if (status)
diff --git a/include/console.h b/include/console.h
index 89514b6..32938aa 100644
--- a/include/console.h
+++ b/include/console.h
@@ -47,6 +47,7 @@ struct console_device {
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
 
 	char *devname;
+	int devid;
 
 	struct list_head list;
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
