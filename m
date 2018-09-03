Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwuaz-0001O7-CU
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 19:33:11 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon,  3 Sep 2018 21:32:51 +0200
Message-Id: <20180903193255.27031-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 0/4] make imx-usb-loader usable for unknown device IDs
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Some newer i.MX processors allow changing the USB Vendor/Product ID by
blowing fuses. This short series allws imx-usb-loader to deal with such
hardware that is indeed an i.MX device and supports the USB bootloader
protocol, but doesn't identify as an i.MX device via its USB ID. 

Patches 1 and 2 do some small preparation, Patch 3 is the real work, and
Patch 4 polishes it nicely.

Roland Hieber (4):
  scripts: imx-usb-loader: rename imx_device() to imx_device_by_usb_id()
  scripts: imx-usb-loader: fail early if the USB device path does not
    match
  scripts: imx-usb-loader: allow use of unknown USB IDs
  scripts: imx-usb-loader: make i.MX6SoloX better to type

 scripts/imx/imx-usb-loader.c | 76 +++++++++++++++++++++++++++++-------
 1 file changed, 62 insertions(+), 14 deletions(-)

-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
