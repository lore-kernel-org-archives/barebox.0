Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RHuNU-0007vc-Uw
	for barebox@lists.infradead.org; Sun, 23 Oct 2011 09:30:02 +0000
Received: by bkbc12 with SMTP id c12so8613150bkb.36
	for <barebox@lists.infradead.org>; Sun, 23 Oct 2011 02:29:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111022202035.GK23421@pengutronix.de>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
Date: Sun, 23 Oct 2011 11:29:58 +0200
Message-ID: <CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: fix unaligned access
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>
> Looks like a valid patch, I wonder that this never was a problem before.
> ARM should break here aswell I think. What architecture are you using?
>

I am working with a pandaboard (arm cortex a9). The pandaboard has a
usb ethernet controller, so I need usb to boot over tftp. I guess that
most arm configurations don't need usb for booting, and in that case
you won't run into this problem.

Regards,
Fabian

> Sascha
>
>>
>> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
>> index 7039a2c..369a393 100644
>> --- a/drivers/usb/core/usb.c
>> +++ b/drivers/usb/core/usb.c
>> @@ -50,6 +50,7 @@
>> =A0#include <driver.h>
>> =A0#include <linux/ctype.h>
>> =A0#include <asm/byteorder.h>
>> +#include <asm/unaligned.h>
>> =A0#include <xfuncs.h>
>> =A0#include <init.h>
>>
>> @@ -1071,6 +1072,7 @@ static int usb_hub_configure(struct usb_device *de=
v)
>> =A0 =A0 =A0 struct usb_hub_status *hubsts;
>> =A0 =A0 =A0 int i;
>> =A0 =A0 =A0 struct usb_hub_device *hub;
>> + =A0 =A0 unsigned short hub_chars;
>>
>> =A0 =A0 =A0 hub =3D xzalloc(sizeof (*hub));
>> =A0 =A0 =A0 dev->hub =3D hub;
>> @@ -1100,8 +1102,8 @@ static int usb_hub_configure(struct usb_device *de=
v)
>> =A0 =A0 =A0 }
>> =A0 =A0 =A0 memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLen=
gth);
>> =A0 =A0 =A0 /* adjust 16bit values */
>> - =A0 =A0 hub->desc.wHubCharacteristics =3D
>> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 le16_to_cpu(de=
scriptor->wHubCharacteristics);
>> + =A0 =A0 hub_chars =3D le16_to_cpu(get_unaligned(&descriptor->wHubChara=
cteristics));
>> + =A0 =A0 put_unaligned(hub_chars, &hub->desc.wHubCharacteristics);
>> =A0 =A0 =A0 /* set the bitmap */
>> =A0 =A0 =A0 bitmap =3D (unsigned char *)&hub->desc.DeviceRemovable[0];
>> =A0 =A0 =A0 /* devices not removable by default */
>> @@ -1118,7 +1120,7 @@ static int usb_hub_configure(struct usb_device *de=
v)
>> =A0 =A0 =A0 dev->maxchild =3D descriptor->bNbrPorts;
>> =A0 =A0 =A0 USB_HUB_PRINTF("%d ports detected\n", dev->maxchild);
>>
>> - =A0 =A0 switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {
>> + =A0 =A0 switch (hub_chars & HUB_CHAR_LPSM) {
>> =A0 =A0 =A0 case 0x00:
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 USB_HUB_PRINTF("ganged power switching\n");
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
>> @@ -1131,12 +1133,12 @@ static int usb_hub_configure(struct usb_device *=
dev)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
>> =A0 =A0 =A0 }
>>
>> - =A0 =A0 if (hub->desc.wHubCharacteristics & HUB_CHAR_COMPOUND)
>> + =A0 =A0 if (hub_chars & HUB_CHAR_COMPOUND)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 USB_HUB_PRINTF("part of a compound device\n"=
);
>> =A0 =A0 =A0 else
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 USB_HUB_PRINTF("standalone hub\n");
>>
>> - =A0 =A0 switch (hub->desc.wHubCharacteristics & HUB_CHAR_OCPM) {
>> + =A0 =A0 switch (hub_chars & HUB_CHAR_OCPM) {
>> =A0 =A0 =A0 case 0x00:
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 USB_HUB_PRINTF("global over-current protecti=
on\n");
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
>> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
>> index 72f1c14..20c518a 100644
>> --- a/drivers/usb/host/ehci-hcd.c
>> +++ b/drivers/usb/host/ehci-hcd.c
>> @@ -33,6 +33,7 @@
>> =A0#include <errno.h>
>> =A0#include <usb/ehci.h>
>> =A0#include <asm/mmu.h>
>> +#include <asm/unaligned.h>
>>
>> =A0#include "ehci.h"
>>
>> @@ -795,6 +796,7 @@ static int ehci_init(struct usb_host *host)
>> =A0 =A0 =A0 struct ehci_priv *ehci =3D to_ehci(host);
>> =A0 =A0 =A0 uint32_t reg;
>> =A0 =A0 =A0 uint32_t cmd;
>> + =A0 =A0 unsigned short hub_chars;
>>
>> =A0 =A0 =A0 ehci_halt(ehci);
>>
>> @@ -819,12 +821,15 @@ static int ehci_init(struct usb_host *host)
>> =A0 =A0 =A0 reg =3D ehci_readl(&ehci->hccr->cr_hcsparams);
>> =A0 =A0 =A0 descriptor.hub.bNbrPorts =3D HCS_N_PORTS(reg);
>>
>> + =A0 =A0 hub_chars =3D get_unaligned(&descriptor.hub.wHubCharacteristic=
s);
>> =A0 =A0 =A0 /* Port Indicators */
>> =A0 =A0 =A0 if (HCS_INDICATOR(reg))
>> - =A0 =A0 =A0 =A0 =A0 =A0 descriptor.hub.wHubCharacteristics |=3D 0x80;
>> + =A0 =A0 =A0 =A0 =A0 =A0 hub_chars |=3D 0x80;
>> =A0 =A0 =A0 /* Port Power Control */
>> =A0 =A0 =A0 if (HCS_PPC(reg))
>> - =A0 =A0 =A0 =A0 =A0 =A0 descriptor.hub.wHubCharacteristics |=3D 0x01;
>> + =A0 =A0 =A0 =A0 =A0 =A0 hub_chars |=3D 0x01;
>> +
>> + =A0 =A0 put_unaligned(hub_chars, &descriptor.hub.wHubCharacteristics);
>>
>> =A0 =A0 =A0 /* Start the host controller. */
>> =A0 =A0 =A0 cmd =3D ehci_readl(&ehci->hcor->or_usbcmd);
>> --
>> 1.7.0.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
