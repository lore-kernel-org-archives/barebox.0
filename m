Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwkE2-0006Sw-Oc
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 07:24:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Sep 2017 09:23:50 +0200
Message-Id: <20170926072351.23040-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: imx imx-usb-loader: Add support for i.MX6ull
To: Barebox List <barebox@lists.infradead.org>

Same as other i.MX6 variants, just add the product id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 1119e61754..499e8c8ec6 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -171,6 +171,13 @@ static const struct mach_id imx_ids[] = {
 		.max_transfer = 1024,
 	}, {
 		.vid = 0x15a2,
+		.pid = 0x0080,
+		.name = "i.MX6ull",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
+	}, {
+		.vid = 0x15a2,
 		.pid = 0x0076,
 		.name = "i.MX7S",
 		.header_type = HDR_MX53,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
