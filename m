Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pg-VI
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:47 +0100
Message-Id: <1454424497-7157-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/34] scripts: imx: Use Kernel includes
To: Barebox List <barebox@lists.infradead.org>

Use the common definition of ARRAY_SIZE and offsetof.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c      | 6 +-----
 scripts/imx/imx-usb-loader.c | 6 +-----
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index e8d9dbf..5c9faee 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -26,13 +26,9 @@
 #include <sys/stat.h>
 #include <fcntl.h>
 #include <endian.h>
-
+#include <linux/kernel.h>
 #include <include/filetype.h>
 
-#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
-#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
-#define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
-
 #define MAX_DCD 1024
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 195b27b..11ca914 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -32,6 +32,7 @@
 #include <stdlib.h>
 #include <libusb.h>
 #include <getopt.h>
+#include <linux/kernel.h>
 
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
 
@@ -53,11 +54,6 @@ struct mach_id {
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
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
