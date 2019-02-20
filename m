Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKV-0003N6-Pz
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id s198so11436828pgs.2
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:25 -0800
Message-Id: <20190220072930.14300-21-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/25] include/usb: Import USB_SPEED_SUPER_PLUS from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import USB_SPEED_SUPER_PLUS constant from Linux to support porting
kernel code that uses it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/usb/ch9.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index b44d41e85..89d83e0d0 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -913,6 +913,7 @@ enum usb_device_speed {
 	USB_SPEED_HIGH,				/* usb 2.0 */
 	USB_SPEED_WIRELESS,			/* wireless (usb 2.5) */
 	USB_SPEED_SUPER,			/* usb 3.0 */
+	USB_SPEED_SUPER_PLUS,			/* usb 3.1 */
 };
 
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
