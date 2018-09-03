Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwuaz-0001O9-Ca
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 19:33:11 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Sep 2018 21:32:53 +0200
Message-Id: <20180903193255.27031-3-r.hieber@pengutronix.de>
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
Subject: [PATCH 2/4] scripts: imx-usb-loader: fail early if the USB device
 path does not match
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

find_imx_dev() loops through all USB devices, tries to open them, and
then compares the chosen device path (given with -p on the command line)
to the path of the currently opened device. The device path can be
checked earlier, opening the device is not neccessary.

We fail early here because in the next commit we want to enable the user
to force using a device by specifying its path. Opening every single
device available on the system then leads to unnecessary error messages
for all devices that do not match the provided path.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index a88bca0e83..6615ce3ca8 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -307,6 +307,12 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 			return NULL;
 		}
 
+		if (location && !device_location_equal(dev, location)) {
+			libusb_close(usb_dev_handle);
+			usb_dev_handle = NULL;
+			continue;
+		}
+
 		p = imx_device_by_usb_id(desc.idVendor, desc.idProduct);
 		if (!p)
 			continue;
@@ -318,12 +324,6 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 			continue;
 		}
 
-		if (location && !device_location_equal(dev, location)) {
-			libusb_close(usb_dev_handle);
-			usb_dev_handle = NULL;
-			continue;
-		}
-
 		*pp_id = p;
 		return dev;
 	}
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
