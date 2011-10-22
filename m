Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RHi3i-0004Yc-Q8
	for barebox@lists.infradead.org; Sat, 22 Oct 2011 20:20:48 +0000
Date: Sat, 22 Oct 2011 22:20:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111022202035.GK23421@pengutronix.de>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
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
Subject: Re: [PATCH] usb: fix unaligned access
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 22, 2011 at 03:19:53PM +0200, Fabian van der Werf wrote:
> ---
>  drivers/usb/core/usb.c      |   12 +++++++-----
>  drivers/usb/host/ehci-hcd.c |    9 +++++++--
>  2 files changed, 14 insertions(+), 7 deletions(-)

Looks like a valid patch, I wonder that this never was a problem before.
ARM should break here aswell I think. What architecture are you using?

Sascha

> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7039a2c..369a393 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -50,6 +50,7 @@
>  #include <driver.h>
>  #include <linux/ctype.h>
>  #include <asm/byteorder.h>
> +#include <asm/unaligned.h>
>  #include <xfuncs.h>
>  #include <init.h>
>  
> @@ -1071,6 +1072,7 @@ static int usb_hub_configure(struct usb_device *dev)
>  	struct usb_hub_status *hubsts;
>  	int i;
>  	struct usb_hub_device *hub;
> +	unsigned short hub_chars;
>  
>  	hub = xzalloc(sizeof (*hub));
>  	dev->hub = hub;
> @@ -1100,8 +1102,8 @@ static int usb_hub_configure(struct usb_device *dev)
>  	}
>  	memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLength);
>  	/* adjust 16bit values */
> -	hub->desc.wHubCharacteristics =
> -				le16_to_cpu(descriptor->wHubCharacteristics);
> +	hub_chars = le16_to_cpu(get_unaligned(&descriptor->wHubCharacteristics));
> +	put_unaligned(hub_chars, &hub->desc.wHubCharacteristics);
>  	/* set the bitmap */
>  	bitmap = (unsigned char *)&hub->desc.DeviceRemovable[0];
>  	/* devices not removable by default */
> @@ -1118,7 +1120,7 @@ static int usb_hub_configure(struct usb_device *dev)
>  	dev->maxchild = descriptor->bNbrPorts;
>  	USB_HUB_PRINTF("%d ports detected\n", dev->maxchild);
>  
> -	switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {
> +	switch (hub_chars & HUB_CHAR_LPSM) {
>  	case 0x00:
>  		USB_HUB_PRINTF("ganged power switching\n");
>  		break;
> @@ -1131,12 +1133,12 @@ static int usb_hub_configure(struct usb_device *dev)
>  		break;
>  	}
>  
> -	if (hub->desc.wHubCharacteristics & HUB_CHAR_COMPOUND)
> +	if (hub_chars & HUB_CHAR_COMPOUND)
>  		USB_HUB_PRINTF("part of a compound device\n");
>  	else
>  		USB_HUB_PRINTF("standalone hub\n");
>  
> -	switch (hub->desc.wHubCharacteristics & HUB_CHAR_OCPM) {
> +	switch (hub_chars & HUB_CHAR_OCPM) {
>  	case 0x00:
>  		USB_HUB_PRINTF("global over-current protection\n");
>  		break;
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 72f1c14..20c518a 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -33,6 +33,7 @@
>  #include <errno.h>
>  #include <usb/ehci.h>
>  #include <asm/mmu.h>
> +#include <asm/unaligned.h>
>  
>  #include "ehci.h"
>  
> @@ -795,6 +796,7 @@ static int ehci_init(struct usb_host *host)
>  	struct ehci_priv *ehci = to_ehci(host);
>  	uint32_t reg;
>  	uint32_t cmd;
> +	unsigned short hub_chars;
>  
>  	ehci_halt(ehci);
>  
> @@ -819,12 +821,15 @@ static int ehci_init(struct usb_host *host)
>  	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
>  	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);
>  
> +	hub_chars = get_unaligned(&descriptor.hub.wHubCharacteristics);
>  	/* Port Indicators */
>  	if (HCS_INDICATOR(reg))
> -		descriptor.hub.wHubCharacteristics |= 0x80;
> +		hub_chars |= 0x80;
>  	/* Port Power Control */
>  	if (HCS_PPC(reg))
> -		descriptor.hub.wHubCharacteristics |= 0x01;
> +		hub_chars |= 0x01;
> +
> +	put_unaligned(hub_chars, &descriptor.hub.wHubCharacteristics);
>  
>  	/* Start the host controller. */
>  	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
> -- 
> 1.7.0.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
