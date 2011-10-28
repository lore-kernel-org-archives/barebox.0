Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ8-0006CQ-Qt
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:29 +0000
Received: by mail-bw0-f49.google.com with SMTP id 11so1504043bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:12 +0400
Message-Id: <1319808253-16693-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
References: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH V2 5/6] USB: set MAXINTERFACES=16,
	so Toshiba AC100 works correctly
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/usb/usb.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index 08fd1a1..f1aad21 100644
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
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
