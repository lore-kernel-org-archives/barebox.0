Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwuaz-0001O6-CY
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 19:33:13 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Sep 2018 21:32:52 +0200
Message-Id: <20180903193255.27031-2-r.hieber@pengutronix.de>
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
Subject: [PATCH 1/4] scripts: imx-usb-loader: rename imx_device() to
 imx_device_by_usb_id()
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Make its purpose more clear when we introduce other similar functions
in one of the next commits.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 541c59e36e..a88bca0e83 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -214,7 +214,8 @@ struct mxs_command {
 	uint32_t dw_size;	/* Download size */
 } __attribute__((packed));
 
-static const struct mach_id *imx_device(unsigned short vid, unsigned short pid)
+static const struct mach_id *imx_device_by_usb_id(unsigned short vid,
+		unsigned short pid)
 {
 	int i;
 
@@ -306,7 +307,7 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 			return NULL;
 		}
 
-		p = imx_device(desc.idVendor, desc.idProduct);
+		p = imx_device_by_usb_id(desc.idVendor, desc.idProduct);
 		if (!p)
 			continue;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
