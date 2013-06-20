Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfUl-0007uY-61
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:05:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:05:23 +0200
Message-Id: <1371737125-18820-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
References: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] usb: move scanned status into core
To: barebox@lists.infradead.org

A command should not be interested in the internal USB core state, so
move the state handling into the core.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usb.c         | 10 +++-------
 drivers/usb/core/usb.c |  9 ++++++++-
 include/usb/usb.h      |  2 +-
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index e503065..9aee430 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -22,24 +22,20 @@
 #include <usb/usb.h>
 #include <getopt.h>
 
-static int scanned;
-
 static int do_usb(int argc, char *argv[])
 {
 	int opt;
+	int force = 0;
 
 	while ((opt = getopt(argc, argv, "f")) > 0) {
 		switch (opt) {
 		case 'f':
-			scanned = 0;
+			force = 1;
 			break;
 		}
 	}
 
-	if (!scanned) {
-		usb_rescan();
-		scanned = 1;
-	}
+	usb_rescan(force);
 
 	return 0;
 }
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index e232111..07175dc 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -488,12 +488,19 @@ static struct usb_device *usb_alloc_new_device(void)
 	return usbdev;
 }
 
-void usb_rescan(void)
+static int scanned;
+
+void usb_rescan(int force)
 {
 	struct usb_device *dev, *tmp;
 	struct usb_host *host;
 	int ret;
 
+	if (scanned && !force)
+		return;
+
+	scanned = 1;
+
 	list_for_each_entry_safe(dev, tmp, &usb_device_list, list) {
 		list_del(&dev->list);
 		unregister_device(&dev->dev);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index da0090e..2e1498c 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -248,7 +248,7 @@ int usb_clear_halt(struct usb_device *dev, int pipe);
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
 int usb_set_interface(struct usb_device *dev, int interface, int alternate);
 
-void usb_rescan(void);
+void usb_rescan(int force);
 
 /* big endian -> little endian conversion */
 /* some CPUs are already little endian e.g. the ARM920T */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
