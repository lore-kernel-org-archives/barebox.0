Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp41.i.mail.ru ([94.100.177.101])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1US9nk-0003hu-L0
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 17:36:17 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 16 Apr 2013 21:36:09 +0400
Message-Id: <1366133769-14022-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Remove unimplemented usb_driver_unregister declaration
To: barebox@lists.infradead.org

We do not have usb_driver_unregister function, so remove this declaration.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/usb/usb.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index afccf70..b270012 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -196,7 +196,6 @@ struct usb_driver {
 extern struct bus_type usb_bus_type;
 
 int usb_driver_register(struct usb_driver *);
-int usb_driver_unregister(struct usb_driver *);
 
 struct usb_host {
 	int (*init)(struct usb_host *);
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
