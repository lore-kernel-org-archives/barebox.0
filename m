Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYv4V-0007y5-EU
 for barebox@lists.infradead.org; Mon, 28 May 2012 08:13:00 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so2331191laa.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 01:12:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 28 May 2012 12:12:34 +0400
Message-Id: <1338192756-3688-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v20120528 3/5] usb: set MAXINTERFACES = 16
To: barebox@lists.infradead.org

Tegra2 needs MAXINTERFACES > 8, so increase the macro's value.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/usb/usb.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index a61a008..296e4e8 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -38,7 +38,7 @@
 
 #define USB_MAX_DEVICE			32
 #define USB_MAXCONFIG			8
-#define USB_MAXINTERFACES		8
+#define USB_MAXINTERFACES		16
 #define USB_MAXENDPOINTS		16
 #define USB_MAXCHILDREN			8	/* This is arbitrary */
 #define USB_MAX_HUB			16
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
