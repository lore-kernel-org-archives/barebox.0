Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxl-0006F7-NS
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:10 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so1204440wgh.33
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:46 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:43 +0200
Message-Id: <1406123512-26489-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 02/10] USB: reduce USB_MAXCHILDREN on imported ch11.h
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Barebox supports up to 8 USB devices attached on a Hub, Linux does 31.
Reduce the USB_MAXCHILDREN define in ch11.h to the Barebox one and
put a comment above.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 include/usb/ch11.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/usb/ch11.h b/include/usb/ch11.h
index 331499d597fa..924a9ea64c5e 100644
--- a/include/usb/ch11.h
+++ b/include/usb/ch11.h
@@ -19,8 +19,10 @@
  * up to 22 devices to connect. Upcoming hardware might raise that
  * limit. Because the arrays need to add a bit for hub status data, we
  * use 31, so plus one evens out to four bytes.
+ *
+ * Reduced to 8 max children for Barebox.
  */
-#define USB_MAXCHILDREN		31
+#define USB_MAXCHILDREN		8
 
 /*
  * Hub request types
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
