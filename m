Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghuZt-0005fB-Dy
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 11:02:23 +0000
Date: Fri, 11 Jan 2019 12:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190111110215.oz7ymdu5hdcgfyik@pengutronix.de>
References: <20190111102235.GA3464@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190111102235.GA3464@lenoch>
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
Subject: Re: dfu: Does is work for anybody with dfu-util 0.9?
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Fri, Jan 11, 2019 at 11:22:35AM +0100, Ladislav Michl wrote:
> Hi,
> 
> I'm using DFU to download firmware to AT91 based device. Registered
> configurations are:
> dfu: register alt0(bootstrap) with device /dev/dataflash0.at91bootstrap
> dfu: register alt1(bootloader) with device /dev/dataflash0.barebox
> dfu: register alt2(system) with device /dev/nand0.bb
> So with the bit of luck even bootstrap is upgradable using DFU, however
> dfu-util refuses doing anything, bailing out here on dfu_root->next
> not being NULL:
> 

dfu stopped working for me with the following dfu-utils commit. I never
came along fixing it, but a proper patch would surely be welcomed.

Sascha


------------------------------8<--------------------------------

From 377f6f136d3369529f44578acaeee82d7c7d7af9 Mon Sep 17 00:00:00 2001
From: Paul Fertser <fercerpav@gmail.com>
Date: Sun, 10 Aug 2014 14:26:05 +0400
Subject: [PATCH] dfu_util: Ignore alt_index/alt_name specification in runtime
 mode

When the device is in runtime mode it needs to be reset first into DFU
mode for the list of alternate settings to appear, so unless it is
already in the right mode, matching on alt setting number or name
should be skipped.

Fixes regression on OpenMoko Freerunner.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 src/dfu_util.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/src/dfu_util.c b/src/dfu_util.c
index bb40e94..cc92c19 100644
--- a/src/dfu_util.c
+++ b/src/dfu_util.c
@@ -189,13 +189,17 @@ found_dfu:
 				int dfu_mode;
 
 				intf = &uif->altsetting[alt_idx];
-				if (match_iface_alt_index > -1 && match_iface_alt_index != alt_idx)
-					continue;
+
 				if (intf->bInterfaceClass != 0xfe ||
 				    intf->bInterfaceSubClass != 1)
 					continue;
 
 				dfu_mode = (intf->bInterfaceProtocol == 2);
+
+				if (dfu_mode &&
+				    match_iface_alt_index > -1 && match_iface_alt_index != alt_idx)
+					continue;
+
 				if (dfu_mode) {
 					if ((match_vendor_dfu >= 0 && match_vendor_dfu != desc->idVendor) ||
 					    (match_product_dfu >= 0 && match_product_dfu != desc->idProduct)) {
@@ -228,7 +232,8 @@ found_dfu:
 					strcpy(serial_name, "UNKNOWN");
 				libusb_close(devh);
 
-				if (match_iface_alt_name != NULL && strcmp(alt_name, match_iface_alt_name))
+				if (dfu_mode &&
+				    match_iface_alt_name != NULL && strcmp(alt_name, match_iface_alt_name))
 					continue;
 
 				if (dfu_mode) {
-- 
2.20.1


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
