Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AS-4s
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:36 +0400
Message-Id: <1332597640-31268-2-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/6] Add ULPI detection function.
To: barebox@lists.infradead.org

Added ULPI detection function.
Same function from isp1504 driver removed.
Used implementation from Linux kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/otg/isp1504.c |   12 ++----------
 drivers/usb/otg/ulpi.c    |   45 +++++++++++++++++++++++++++++++++++++++++++++
 include/usb/ulpi.h        |    1 +
 3 files changed, 48 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/otg/isp1504.c b/drivers/usb/otg/isp1504.c
index 9884df4..c093a3a 100644
--- a/drivers/usb/otg/isp1504.c
+++ b/drivers/usb/otg/isp1504.c
@@ -4,18 +4,10 @@
 
 int isp1504_set_vbus_power(void __iomem *view, int on)
 {
-	int vid, pid, ret = 0;
+	int ret = 0;
 
-	vid = (ulpi_read(ULPI_VID_HIGH, view) << 8) |
-		ulpi_read(ULPI_VID_LOW, view);
-	pid = (ulpi_read(ULPI_PID_HIGH, view) << 8) |
-		ulpi_read(ULPI_PID_LOW, view);
-
-	pr_info("ULPI Vendor ID 0x%x    Product ID 0x%x\n", vid, pid);
-	if (vid != 0x4cc || pid != 0x1504) {
-		pr_err("No ISP1504 found\n");
+	if (ulpi_init(view))
 		return -1;
-	}
 
 	if (on) {
 		ret = ulpi_set(DRV_VBUS_EXT |       /* enable external Vbus */
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 575ed94..ad13b4b 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -116,3 +116,48 @@ int ulpi_clear(u8 bits, int reg, void __iomem *view)
 }
 EXPORT_SYMBOL(ulpi_clear);
 
+struct ulpi_info {
+	uint32_t	id;
+	char		*name;
+};
+
+#define ULPI_ID(vendor, product) (((vendor) << 16) | (product))
+#define ULPI_INFO(_id, _name)		\
+	{				\
+		.id	= (_id),	\
+		.name	= (_name),	\
+	}
+
+/* ULPI hardcoded IDs, used for probing */
+static struct ulpi_info ulpi_ids[] = {
+	ULPI_INFO(ULPI_ID(0x04cc, 0x1504), "NXP ISP1504"),
+	ULPI_INFO(ULPI_ID(0x0424, 0x0006), "SMSC USB331x"),
+};
+
+int ulpi_init(void __iomem *view)
+{
+	int i, vid, pid, ret;
+	uint32_t ulpi_id = 0;
+
+	for (i = 0; i < 4; i++) {
+		ret = ulpi_read(ULPI_PID_HIGH - i, view);
+		if (ret < 0)
+			return ret;
+		ulpi_id = (ulpi_id << 8) | ret;
+	}
+	vid = ulpi_id & 0xffff;
+	pid = ulpi_id >> 16;
+
+	for (i = 0; i < ARRAY_SIZE(ulpi_ids); i++) {
+		if (ulpi_ids[i].id == ULPI_ID(vid, pid)) {
+			pr_info("Found %s ULPI transceiver (0x%04x:0x%04x).\n",
+			ulpi_ids[i].name, vid, pid);
+			return 0;
+		}
+	}
+
+	pr_err("No ULPI found.\n");
+
+	return -1;
+}
+EXPORT_SYMBOL(ulpi_init);
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 9eed6a4..d841a98 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -4,6 +4,7 @@
 int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
+int ulpi_init(void __iomem *view);
 
 /* ULPI register addresses */
 #define ULPI_VID_LOW		0x00	/* Vendor ID low */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
