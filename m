Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TkVNC-0007px-Ot
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:44:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Dec 2012 08:44:16 +0100
Message-Id: <1355730256-13520-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355730256-13520-1-git-send-email-s.hauer@pengutronix.de>
References: <1355730256-13520-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] USB ULPI: Add more register/bit defines
To: barebox@lists.infradead.org

Make the register defines for ULPI more complete. Also, Add a proper
ULPI_* Namespace to the existing defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/ulpi.c |   16 ++++++++--------
 include/usb/ulpi.h     |   42 ++++++++++++++++++++++++++++++++++--------
 2 files changed, 42 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index badb05b..19f64e0 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -178,18 +178,18 @@ int ulpi_set_vbus(void __iomem *view, int on)
 	int ret;
 
 	if (on) {
-		ret = ulpi_set(DRV_VBUS_EXT |		/* enable external Vbus */
-				DRV_VBUS |		/* enable internal Vbus */
-				USE_EXT_VBUS_IND |	/* use external indicator */
-				CHRG_VBUS,		/* charge Vbus */
+		ret = ulpi_set(ULPI_OTG_DRV_VBUS_EXT |		/* enable external Vbus */
+				ULPI_OTG_DRV_VBUS |		/* enable internal Vbus */
+				ULPI_OTG_USE_EXT_VBUS_IND |	/* use external indicator */
+				ULPI_OTG_CHRG_VBUS,		/* charge Vbus */
 				ULPI_OTGCTL, view);
 	} else {
-		ret = ulpi_clear(DRV_VBUS_EXT |		/* disable external Vbus */
-				DRV_VBUS,		/* disable internal Vbus */
+		ret = ulpi_clear(ULPI_OTG_DRV_VBUS_EXT |		/* disable external Vbus */
+				ULPI_OTG_DRV_VBUS,		/* disable internal Vbus */
 				ULPI_OTGCTL, view);
 
-		ret |= ulpi_set(USE_EXT_VBUS_IND |	/* use external indicator */
-				DISCHRG_VBUS,		/* discharge Vbus */
+		ret |= ulpi_set(ULPI_OTG_USE_EXT_VBUS_IND |	/* use external indicator */
+				ULPI_OTG_DISCHRG_VBUS,		/* discharge Vbus */
 				ULPI_OTGCTL, view);
 	}
 
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 7c868a5..e45ea6e 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -12,6 +12,7 @@ int ulpi_setup(void __iomem *view, int on);
 #define ULPI_VID_HIGH		0x01	/* Vendor ID high */
 #define ULPI_PID_LOW		0x02	/* Product ID low */
 #define ULPI_PID_HIGH		0x03	/* Product ID high */
+#define ULPI_FUNCTION_CTRL	0x04
 #define ULPI_ITFCTL		0x07	/* Interface Control */
 #define ULPI_OTGCTL		0x0A	/* OTG Control */
 
@@ -19,15 +20,40 @@ int ulpi_setup(void __iomem *view, int on);
 #define ULPI_REG_SET		0x01
 #define ULPI_REG_CLEAR		0x02
 
+/* Function Control */
+#define ULPI_FC_XCVRSEL_MASK		(3 << 0)
+#define ULPI_FC_HIGH_SPEED		(0 << 0)
+#define ULPI_FC_FULL_SPEED		(1 << 0)
+#define ULPI_FC_LOW_SPEED		(2 << 0)
+#define ULPI_FC_FS4LS			(3 << 0)
+#define ULPI_FC_TERMSELECT		(1 << 2)
+#define ULPI_FC_OPMODE_MASK		(3 << 3)
+#define ULPI_FC_OPMODE_NORMAL		(0 << 3)
+#define ULPI_FC_OPMODE_NONDRIVING	(1 << 3)
+#define ULPI_FC_OPMODE_DISABLE_NRZI	(2 << 3)
+#define ULPI_FC_OPMODE_NOSYNC_NOEOP	(3 << 3)
+#define ULPI_FC_RESET			(1 << 5)
+#define ULPI_FC_SUSPENDM		(1 << 6)
+
+/* Interface Control */
+#define ULPI_IFACE_6_PIN_SERIAL_MODE	(1 << 0)
+#define ULPI_IFACE_3_PIN_SERIAL_MODE	(1 << 1)
+#define ULPI_IFACE_CARKITMODE		(1 << 2)
+#define ULPI_IFACE_CLOCKSUSPENDM	(1 << 3)
+#define ULPI_IFACE_AUTORESUME		(1 << 4)
+#define ULPI_IFACE_EXTVBUS_COMPLEMENT	(1 << 5)
+#define ULPI_IFACE_PASSTHRU		(1 << 6)
+#define ULPI_IFACE_PROTECT_IFC_DISABLE	(1 << 7)
+
 /* ULPI OTG Control Register bits */
-#define USE_EXT_VBUS_IND	(1 << 7)	/* Use ext. Vbus indicator */
-#define DRV_VBUS_EXT		(1 << 6)	/* Drive Vbus external */
-#define DRV_VBUS		(1 << 5)	/* Drive Vbus */
-#define CHRG_VBUS		(1 << 4)	/* Charge Vbus */
-#define DISCHRG_VBUS		(1 << 3)	/* Discharge Vbus */
-#define DM_PULL_DOWN		(1 << 2)	/* enable DM Pull Down */
-#define DP_PULL_DOWN		(1 << 1)	/* enable DP Pull Down */
-#define ID_PULL_UP		(1 << 0)	/* enable ID Pull Up */
+#define ULPI_OTG_USE_EXT_VBUS_IND	(1 << 7)	/* Use ext. Vbus indicator */
+#define ULPI_OTG_DRV_VBUS_EXT		(1 << 6)	/* Drive Vbus external */
+#define ULPI_OTG_DRV_VBUS		(1 << 5)	/* Drive Vbus */
+#define ULPI_OTG_CHRG_VBUS		(1 << 4)	/* Charge Vbus */
+#define ULPI_OTG_DISCHRG_VBUS		(1 << 3)	/* Discharge Vbus */
+#define ULPI_OTG_DM_PULL_DOWN		(1 << 2)	/* enable DM Pull Down */
+#define ULPI_OTG_DP_PULL_DOWN		(1 << 1)	/* enable DP Pull Down */
+#define ULPI_OTG_ID_PULL_UP		(1 << 0)	/* enable ID Pull Up */
 
 #endif /* __MACH_ULPI_H */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
