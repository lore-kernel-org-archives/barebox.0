Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghtxc-0005ik-Ez
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 10:22:46 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992363AbfAKKWjXIN7P (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 11 Jan 2019 11:22:39 +0100
Date: Fri, 11 Jan 2019 11:22:35 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190111102235.GA3464@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: dfu: Does is work for anybody with dfu-util 0.9?
To: barebox@lists.infradead.org

Hi,

I'm using DFU to download firmware to AT91 based device. Registered
configurations are:
dfu: register alt0(bootstrap) with device /dev/dataflash0.at91bootstrap
dfu: register alt1(bootloader) with device /dev/dataflash0.barebox
dfu: register alt2(system) with device /dev/nand0.bb
So with the bit of luck even bootstrap is upgradable using DFU, however
dfu-util refuses doing anything, bailing out here on dfu_root->next
not being NULL:

	if (dfu_root == NULL) {
		errx(EX_IOERR, "No DFU capable USB device available");
	} else if (dfu_root->next != NULL) {
		/* We cannot safely support more than one DFU capable device
		 * with same vendor/product ID, since during DFU we need to do
		 * a USB bus reset, after which the target device will get a
		 * new address */
		errx(EX_IOERR, "More than one DFU capable USB device found! "
		       "Try `--list' and specify the serial number "
		       "or disconnect all but one device\n");
	}

That comes from src/dfu_util.c:probe_configuration() which check for:

	dfu_mode = (intf->bInterfaceProtocol == 2);
	/* e.g. DSO Nano has bInterfaceProtocol 0 instead of 2 */
	if (func_dfu.bcdDFUVersion == 0x011a && intf->bInterfaceProtocol == 0)
		dfu_mode = 1;

	/* LPC DFU bootloader has bInterfaceProtocol 1 (Runtime) instead of 2 */
	if (desc->idVendor == 0x1fc9 && desc->idProduct == 0x000c && intf->bInterfaceProtocol == 1)
		dfu_mode = 1;

	/*
	 * Old Jabra devices may have bInterfaceProtocol 0 instead of 2.
	 * Also runtime PID and DFU pid are the same.
	 * In DFU mode, the configuration descriptor has only 1 interface.
	 */
	if (desc->idVendor == 0x0b0e && intf->bInterfaceProtocol == 0 && cfg->bNumInterfaces == 1)
		dfu_mode = 1;

and as Barebox sets bInterfaceProtocol to one and it is not listed in
exceptions individual devices are added for each alt settings.

As a quick hack I'd suggest patch bellow, but I'm not sure whenever it will
break someone's setup. DFU code would certainly welcome some
polishing/improvements, but time does not permit that on my side for
the time being :(

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index c2b3d481a..aee86906a 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -233,7 +233,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 		desc[i].bNumEndpoints	=	0;
 		desc[i].bInterfaceClass =	0xfe;
 		desc[i].bInterfaceSubClass =	1;
-		desc[i].bInterfaceProtocol =	1;
+		desc[i].bInterfaceProtocol =	2;
 		desc[i].bAlternateSetting = i;
 		desc[i].iInterface = us[i + 1].id;
 		header[i] = (struct usb_descriptor_header *)&desc[i];
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
