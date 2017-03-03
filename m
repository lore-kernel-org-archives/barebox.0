Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjkcD-0001It-AY
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 10:39:14 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  3 Mar 2017 11:38:41 +0100
Message-Id: <20170303103841.11783-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] scripts: imx imx-usb-loader: warn if device was excluded by
 path option
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

notify user about the reason why device was ignored by imx-usb-loader.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index e8d746785..b2c9f8f5a 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -243,6 +243,8 @@ static int device_location_equal(libusb_device *device, const char *location)
 	/* walked the full path, all elements match */
 	if (path_step == path_len)
 		result = 1;
+	else
+		fprintf(stderr, " excluded by device path option\n");
 
 done:
 	free(loc);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
