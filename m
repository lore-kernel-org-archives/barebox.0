Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlMv0-0004Rm-0r
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 14:13:35 +0000
Date: Tue, 17 Aug 2010 17:13:16 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100817141315.GE9631@jasper.tkos.co.il>
References: <20100816063704.GB28343@jasper.tkos.co.il>
	<20100816070904.GG27749@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100816070904.GG27749@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: fsl-udc (USB gadget) anyone?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Aug 16, 2010 at 09:09:04AM +0200, Sascha Hauer wrote:
> On Mon, Aug 16, 2010 at 09:37:04AM +0300, Baruch Siach wrote:
> > Hi Barebox list,
> > 
> > I see that there are no in-tree fsl-udc driver users. Does anyone here have 
> > experience with this driver on an i.MX based system? What pre-probe() 
> > initialization does this driver require at the platform code?
> 
> 
> We are using it on a custom i.MX25 board (which is not in mainline
> because hardly anyone could make use of the code). Here is the platform
> initialization code (mixed with ehci host support). It works fine in DFU
> mode, serial support is probably not working. I have tried serial
> support, but had problems integrating it properly in barebox.

[snip]

> +static struct fsl_usb2_platform_data usb_pdata = {
> +	.operating_mode	= FSL_USB2_DR_DEVICE,
> +	.phy_mode	= FSL_USB2_PHY_UTMI,
> +};
> +
> +static struct device_d usbotg_dev = {
> +	.name     = "fsl-udc",
> +	.map_base = IMX_OTG_BASE,
> +	.size     = 0x200,
> +	.platform_data = &usb_pdata,
> +};

Thanks for the info. Unfortunately I was not able to get dfu work on both the 
i.MX25 PDK and our custom board. The board doesn't even get enumerated. The 
USB PHY wiring is the same on both.  After running the 'dfu' command as 
follows:

barebox:/ dfu -V 0x082d -P 0x2000 test(script)

I connect the board to my host and see the following on the host side:

[113870.024034] usb 2-1: new high speed USB device using ehci_hcd and address 101
[113870.092245] hub 2-0:1.0: unable to enumerate USB device on port 1
[113870.584048] usb 6-1: new full speed USB device using uhci_hcd and address 27
[113870.700071] hub 6-0:1.0: unable to enumerate USB device on port 1
[113871.080062] usb 6-1: new full speed USB device using uhci_hcd and address 28
[113871.200106] usb 6-1: device descriptor read/64, error -71
[113871.424073] usb 6-1: device descriptor read/64, error -71
[113871.640069] usb 6-1: new full speed USB device using uhci_hcd and address 29
[113871.760068] usb 6-1: device descriptor read/64, error -71
[113871.984068] usb 6-1: device descriptor read/64, error -71
[113872.200067] usb 6-1: new full speed USB device using uhci_hcd and address 30
[113872.608070] usb 6-1: device not accepting address 30, error -71
[113872.720073] usb 6-1: new full speed USB device using uhci_hcd and address 31
[113873.128058] usb 6-1: device not accepting address 31, error -71
[113873.128079] hub 6-0:1.0: unable to enumerate USB device on port 1

Sprinkling printfs over the fsl-udc driver code didn't reveal much, except 
from repeated USB_STS_PORT_CHANGE and USB_STS_RESET interrupts. Before giving 
up completely I thought I'd just report this failure, maybe someone has a 
clue.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
