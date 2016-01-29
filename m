Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XT-0006kE-Jn
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:53 +0100
Message-Id: <1454064243-26558-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/23] scripts: imx: move macro definitions to common header
 file
To: Barebox List <barebox@lists.infradead.org>

ARRAY_SIZE and offsetof are used by both imx-usb-loader and imx-image.
Move their definitions to the common header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c      | 2 --
 scripts/imx/imx-usb-loader.c | 5 -----
 scripts/imx/imx.h            | 5 +++++
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 04b650e..03afcb6 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -31,8 +31,6 @@
 
 #include <include/filetype.h>
 
-#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
-#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
 #define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
 
 #define MAX_DCD 1024
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 2bee709..5a84721 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -59,11 +59,6 @@ struct mach_id {
 	unsigned short max_transfer;
 };
 
-#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
-#ifndef offsetof
-#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
-#endif
-
 struct usb_work {
 	char filename[256];
 	unsigned char dcd;
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index e986545..1d23e11 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -1,3 +1,8 @@
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+#ifndef offsetof
+#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
+#endif
+
 /*
  * ============================================================================
  * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
