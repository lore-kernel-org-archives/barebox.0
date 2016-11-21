Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8jBs-00082f-Aa
 for barebox@lists.infradead.org; Mon, 21 Nov 2016 07:39:01 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 21 Nov 2016 08:35:13 +0100
Message-Id: <1479713713-17241-2-git-send-email-akurz@blala.de>
In-Reply-To: <1479713713-17241-1-git-send-email-akurz@blala.de>
References: <1479713713-17241-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] scripts: imx imx-usb-loader: add i.MX6SL support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Add the i.MX6SL USB id to the list of known ids.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index fb80e0e..be0894f 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -137,6 +137,13 @@ struct mach_id imx_ids[] = {
 		.max_transfer = 1024,
 	}, {
 		.vid = 0x15a2,
+		.pid = 0x0063,
+		.name = "i.MX6sl",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
+	}, {
+		.vid = 0x15a2,
 		.pid = 0x0071,
 		.name = "i.MX6 SoloX",
 		.header_type = HDR_MX53,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
