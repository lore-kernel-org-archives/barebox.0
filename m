Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YB-BP
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:27 +0200
Message-Id: <1405955687-27433-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/23] USB: gadget: composite: Break out of potential endless
 loop
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/composite.c | 7 ++++++-
 include/usb/composite.h        | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 37c67d5..ba3b9da 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -577,16 +577,21 @@ static void reset_config(struct usb_composite_dev *cdev)
 {
 	struct usb_function		*f;
 
+	if (cdev->in_reset_config)
+		return;
+
+	cdev->in_reset_config = 1;
+
 	DBG(cdev, "reset config\n");
 
 	list_for_each_entry(f, &cdev->config->functions, list) {
 		if (f->disable)
 			f->disable(f);
-
 		bitmap_zero(f->endpoints, 32);
 	}
 	cdev->config = NULL;
 	cdev->delayed_status = 0;
+	cdev->in_reset_config = 0;
 }
 
 static int set_config(struct usb_composite_dev *cdev,
diff --git a/include/usb/composite.h b/include/usb/composite.h
index 5b92c92..d24454c 100644
--- a/include/usb/composite.h
+++ b/include/usb/composite.h
@@ -392,6 +392,8 @@ struct usb_composite_dev {
 
 	/* protects deactivations and delayed_status counts*/
 	spinlock_t			lock;
+
+	int in_reset_config;
 };
 
 extern int usb_string_id(struct usb_composite_dev *c);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
