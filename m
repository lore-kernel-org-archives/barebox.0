Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwuaz-0001OA-CZ
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 19:33:13 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Sep 2018 21:32:55 +0200
Message-Id: <20180903193255.27031-5-r.hieber@pengutronix.de>
In-Reply-To: <20180903193255.27031-1-r.hieber@pengutronix.de>
References: <20180903193255.27031-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] scripts: imx-usb-loader: make i.MX6SoloX better to type
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Now that users can select the device type on the command line, having a
name without whitespace makes input for that device type easier.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 53e1c7ebb5..4336bc8d53 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -160,7 +160,7 @@ static const struct mach_id imx_ids[] = {
 	}, {
 		.vid = 0x15a2,
 		.pid = 0x0071,
-		.name = "i.MX6 SoloX",
+		.name = "i.MX6SoloX",
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
