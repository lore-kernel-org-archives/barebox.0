Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYa0d-0005St-Rx
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 17:47:37 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jun 2019 19:47:28 +0200
Message-Id: <20190605174728.27612-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] scripts: imx-usb-loader: add i.MX8MQ PID and VID
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add new PID and VID for i.MX8:
Bus 001 Device 057: ID 1fc9:012b NXP Semiconductors i.MX 8M Dual/8M QuadLite/8M Quad Serial Downloader

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index d4fba0ce54..e3d3b8fce1 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -185,6 +185,13 @@ static const struct mach_id imx_ids[] = {
 		.header_type = HDR_MX53,
 		.mode = MODE_HID,
 		.max_transfer = 1024,
+	}, {
+		.vid = 0x1fc9,
+		.pid = 0x012b,
+		.name = "i.MX8M",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
 	},
 };
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
