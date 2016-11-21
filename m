Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8jBv-00080x-94
 for barebox@lists.infradead.org; Mon, 21 Nov 2016 07:39:04 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 21 Nov 2016 08:35:12 +0100
Message-Id: <1479713713-17241-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] scripts: imx imx-usb-loader: sort USB id list
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

For better readability sort the list of known USB ids by VID and PID.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 56 ++++++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index c0aaa7d..fb80e0e 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -84,6 +84,34 @@ struct mach_id imx_ids[] = {
 		.mode = MODE_BULK,
 	}, {
 		.vid = 0x15a2,
+		.pid = 0x0030,
+		.name = "i.MX35",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x003a,
+		.name = "i.MX25",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x0041,
+		.name = "i.MX51",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x004e,
+		.name = "i.MX53",
+		.header_type = HDR_MX53,
+		.mode = MODE_BULK,
+		.max_transfer = 512,
+	}, {
+		.vid = 0x15a2,
 		.pid = 0x004f,
 		.name = "i.MX28",
 	}, {
@@ -121,34 +149,6 @@ struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
-	}, {
-		.vid = 0x15a2,
-		.pid = 0x0041,
-		.name = "i.MX51",
-		.header_type = HDR_MX51,
-		.mode = MODE_BULK,
-		.max_transfer = 64,
-	}, {
-		.vid = 0x15a2,
-		.pid = 0x004e,
-		.name = "i.MX53",
-		.header_type = HDR_MX53,
-		.mode = MODE_BULK,
-		.max_transfer = 512,
-	}, {
-		.vid = 0x15a2,
-		.pid = 0x0030,
-		.name = "i.MX35",
-		.header_type = HDR_MX51,
-		.mode = MODE_BULK,
-		.max_transfer = 64,
-	}, {
-		.vid = 0x15a2,
-		.pid = 0x003a,
-		.name = "i.MX25",
-		.header_type = HDR_MX51,
-		.mode = MODE_BULK,
-		.max_transfer = 64,
 	},
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
