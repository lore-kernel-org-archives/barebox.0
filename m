Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AT-4q
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:48 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:35 +0400
Message-Id: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/6] Rename definitions for ULPI registers
To: barebox@lists.infradead.org

These registers can be used for any standart ULPI chip,
not only for ISP1504.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/otg/isp1504.c |   14 +++++++-------
 drivers/usb/otg/ulpi.c    |    4 ++--
 include/usb/ulpi.h        |   20 ++++++++++----------
 3 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/usb/otg/isp1504.c b/drivers/usb/otg/isp1504.c
index 9ba74b1..9884df4 100644
--- a/drivers/usb/otg/isp1504.c
+++ b/drivers/usb/otg/isp1504.c
@@ -6,10 +6,10 @@ int isp1504_set_vbus_power(void __iomem *view, int on)
 {
 	int vid, pid, ret = 0;
 
-	vid = (ulpi_read(ISP1504_VID_HIGH, view) << 8) |
-		ulpi_read(ISP1504_VID_LOW, view);
-	pid = (ulpi_read(ISP1504_PID_HIGH, view) << 8) |
-		ulpi_read(ISP1504_PID_LOW, view);
+	vid = (ulpi_read(ULPI_VID_HIGH, view) << 8) |
+		ulpi_read(ULPI_VID_LOW, view);
+	pid = (ulpi_read(ULPI_PID_HIGH, view) << 8) |
+		ulpi_read(ULPI_PID_LOW, view);
 
 	pr_info("ULPI Vendor ID 0x%x    Product ID 0x%x\n", vid, pid);
 	if (vid != 0x4cc || pid != 0x1504) {
@@ -22,15 +22,15 @@ int isp1504_set_vbus_power(void __iomem *view, int on)
 				DRV_VBUS |          /* enable internal Vbus */
 				USE_EXT_VBUS_IND |  /* use external indicator */
 				CHRG_VBUS,          /* charge Vbus */
-				ISP1504_OTGCTL, view);
+				ULPI_OTGCTL, view);
 	} else {
 		ret = ulpi_clear(DRV_VBUS_EXT | /* disable external Vbus */
 				DRV_VBUS,         /* disable internal Vbus */
-				ISP1504_OTGCTL, view);
+				ULPI_OTGCTL, view);
 
 		ret |= ulpi_set(USE_EXT_VBUS_IND | /* use external indicator */
 				DISCHRG_VBUS,          /* discharge Vbus */
-				ISP1504_OTGCTL, view);
+				ULPI_OTGCTL, view);
 	}
 
 	return ret;
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 6ed6f01..575ed94 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -87,7 +87,7 @@ int ulpi_set(u8 bits, int reg, void __iomem *view)
 	}
 
 	writel((ULPIVW_RUN | ULPIVW_WRITE |
-		      ((reg + ISP1504_REG_SET) << ULPIVW_ADDR_SHIFT) |
+		      ((reg + ULPI_REG_SET) << ULPIVW_ADDR_SHIFT) |
 		      ((bits & ULPIVW_WDATA_MASK) << ULPIVW_WDATA_SHIFT)),
 		     view);
 
@@ -104,7 +104,7 @@ int ulpi_clear(u8 bits, int reg, void __iomem *view)
 	int ret;
 
 	writel((ULPIVW_RUN | ULPIVW_WRITE |
-		      ((reg + ISP1504_REG_CLEAR) << ULPIVW_ADDR_SHIFT) |
+		      ((reg + ULPI_REG_CLEAR) << ULPIVW_ADDR_SHIFT) |
 		      ((bits & ULPIVW_WDATA_MASK) << ULPIVW_WDATA_SHIFT)),
 		     view);
 
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 0397fdb..9eed6a4 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -5,19 +5,19 @@ int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
 
-/* ISP 1504 register addresses */
-#define ISP1504_VID_LOW		0x00	/* Vendor ID low */
-#define ISP1504_VID_HIGH	0x01	/* Vendor ID high */
-#define ISP1504_PID_LOW		0x02	/* Product ID low */
-#define ISP1504_PID_HIGH	0x03	/* Product ID high */
-#define ISP1504_ITFCTL		0x07	/* Interface Control */
-#define ISP1504_OTGCTL		0x0A	/* OTG Control */
+/* ULPI register addresses */
+#define ULPI_VID_LOW		0x00	/* Vendor ID low */
+#define ULPI_VID_HIGH		0x01	/* Vendor ID high */
+#define ULPI_PID_LOW		0x02	/* Product ID low */
+#define ULPI_PID_HIGH		0x03	/* Product ID high */
+#define ULPI_ITFCTL		0x07	/* Interface Control */
+#define ULPI_OTGCTL		0x0A	/* OTG Control */
 
 /* add to above register address to access Set/Clear functions */
-#define ISP1504_REG_SET		0x01
-#define ISP1504_REG_CLEAR	0x02
+#define ULPI_REG_SET		0x01
+#define ULPI_REG_CLEAR		0x02
 
-/* 1504 OTG Control Register bits */
+/* ULPI OTG Control Register bits */
 #define USE_EXT_VBUS_IND	(1 << 7)	/* Use ext. Vbus indicator */
 #define DRV_VBUS_EXT		(1 << 6)	/* Drive Vbus external */
 #define DRV_VBUS		(1 << 5)	/* Drive Vbus */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
