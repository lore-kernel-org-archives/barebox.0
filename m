Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AV-4o
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:48 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:37 +0400
Message-Id: <1332597640-31268-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
References: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/6] Move set_vbus_power code to ULPI driver
To: barebox@lists.infradead.org

This is ULPI-specific, not ISP1504.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/otg/isp1504.c |   21 +--------------------
 drivers/usb/otg/ulpi.c    |   24 ++++++++++++++++++++++++
 include/usb/ulpi.h        |    1 +
 3 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/otg/isp1504.c b/drivers/usb/otg/isp1504.c
index c093a3a..568ba72 100644
--- a/drivers/usb/otg/isp1504.c
+++ b/drivers/usb/otg/isp1504.c
@@ -1,29 +1,10 @@
 #include <common.h>
 #include <usb/ulpi.h>
-#include <usb/isp1504.h>
 
 int isp1504_set_vbus_power(void __iomem *view, int on)
 {
-	int ret = 0;
-
 	if (ulpi_init(view))
 		return -1;
 
-	if (on) {
-		ret = ulpi_set(DRV_VBUS_EXT |       /* enable external Vbus */
-				DRV_VBUS |          /* enable internal Vbus */
-				USE_EXT_VBUS_IND |  /* use external indicator */
-				CHRG_VBUS,          /* charge Vbus */
-				ULPI_OTGCTL, view);
-	} else {
-		ret = ulpi_clear(DRV_VBUS_EXT | /* disable external Vbus */
-				DRV_VBUS,         /* disable internal Vbus */
-				ULPI_OTGCTL, view);
-
-		ret |= ulpi_set(USE_EXT_VBUS_IND | /* use external indicator */
-				DISCHRG_VBUS,          /* discharge Vbus */
-				ULPI_OTGCTL, view);
-	}
-
-	return ret;
+	return ulpi_set_vbus(view, on);
 }
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index ad13b4b..5d52511 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -161,3 +161,27 @@ int ulpi_init(void __iomem *view)
 	return -1;
 }
 EXPORT_SYMBOL(ulpi_init);
+
+int ulpi_set_vbus(void __iomem *view, int on)
+{
+	int ret;
+
+	if (on) {
+		ret = ulpi_set(DRV_VBUS_EXT |		/* enable external Vbus */
+				DRV_VBUS |		/* enable internal Vbus */
+				USE_EXT_VBUS_IND |	/* use external indicator */
+				CHRG_VBUS,		/* charge Vbus */
+				ULPI_OTGCTL, view);
+	} else {
+		ret = ulpi_clear(DRV_VBUS_EXT |		/* disable external Vbus */
+				DRV_VBUS,		/* disable internal Vbus */
+				ULPI_OTGCTL, view);
+
+		ret |= ulpi_set(USE_EXT_VBUS_IND |	/* use external indicator */
+				DISCHRG_VBUS,		/* discharge Vbus */
+				ULPI_OTGCTL, view);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(ulpi_set_vbus);
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index d841a98..75197e1 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -5,6 +5,7 @@ int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
 int ulpi_init(void __iomem *view);
+int ulpi_set_vbus(void __iomem *view, int on);
 
 /* ULPI register addresses */
 #define ULPI_VID_LOW		0x00	/* Vendor ID low */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
