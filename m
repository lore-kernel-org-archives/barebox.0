Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnLPq-0001dX-EB
 for barebox@lists.infradead.org; Thu, 22 May 2014 05:19:42 +0000
Received: by mail-la0-f49.google.com with SMTP id pv20so2214801lab.8
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 22:19:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 09:19:11 +0400
Message-Id: <1400735952-6424-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] usb: remove unimplemented usb_get_dev_index() declaration
To: barebox@lists.infradead.org

We do not have usb_get_dev_index() function, so remove this declaration.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/usb/usb.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index 9319f2e..b4ac4ba 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -226,7 +226,6 @@ int usb_host_detect(struct usb_host *host, int force);
 int usb_set_protocol(struct usb_device *dev, int ifnum, int protocol);
 int usb_set_idle(struct usb_device *dev, int ifnum, int duration,
 			int report_id);
-struct usb_device *usb_get_dev_index(int index);
 int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 			unsigned char request, unsigned char requesttype,
 			unsigned short value, unsigned short index,
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
