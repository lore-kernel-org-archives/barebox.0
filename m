Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAJ4y-0004f3-Db
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 13:29:05 +0000
Received: by mail-we0-f180.google.com with SMTP id w61so2779402wes.25
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 06:28:42 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 24 Jul 2014 15:28:43 +0200
Message-Id: <1406208526-24261-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/6] USB: EHCI: use min3 from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

EHCI HCD has a private version of min3() determining the smallest
number out of 3. We already have min()/max() imported from Linux,
also get min3()/max3() and use it instead of EHCI's private one.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/ehci-hcd.c | 12 +-----------
 include/linux/kernel.h      | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a76e06bd565f..c0ea8d013a21 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -436,16 +436,6 @@ fail:
 	return -1;
 }
 
-static inline int min3(int a, int b, int c)
-{
-
-	if (b < a)
-		a = b;
-	if (c < a)
-		a = c;
-	return a;
-}
-
 #ifdef CONFIG_MACH_EFIKA_MX_SMARTBOOK
 #include <usb/ulpi.h>
 /*
@@ -717,7 +707,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	wait_ms(1);
-	len = min3(srclen, le16_to_cpu(req->length), length);
+	len = min3(srclen, (int)le16_to_cpu(req->length), length);
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
 	else
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index d512adcea113..98f12e1b934f 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -34,6 +34,24 @@
 	(void) (&_max1 == &_max2);		\
 	_max1 > _max2 ? _max1 : _max2; })
 
+#define min3(x, y, z) ({			\
+	typeof(x) _min1 = (x);			\
+	typeof(y) _min2 = (y);			\
+	typeof(z) _min3 = (z);			\
+	(void) (&_min1 == &_min2);		\
+	(void) (&_min1 == &_min3);		\
+	_min1 < _min2 ? (_min1 < _min3 ? _min1 : _min3) :	\
+		(_min2 < _min3 ? _min2 : _min3); })
+
+#define max3(x, y, z) ({			\
+	typeof(x) _max1 = (x);			\
+	typeof(y) _max2 = (y);			\
+	typeof(z) _max3 = (z);			\
+	(void) (&_max1 == &_max2);		\
+	(void) (&_max1 == &_max3);		\
+	_max1 > _max2 ? (_max1 > _max3 ? _max1 : _max3) :	\
+		(_max2 > _max3 ? _max2 : _max3); })
+
 /**
  * clamp - return a value clamped to a given range with strict typechecking
  * @val: current value
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
