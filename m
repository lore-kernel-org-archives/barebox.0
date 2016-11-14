Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-16.arcor-online.net ([151.189.21.56])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6HMm-0001iq-HX
 for barebox@lists.infradead.org; Mon, 14 Nov 2016 13:32:10 +0000
Received: from mail-in-19-z2.arcor-online.net (mail-in-19-z2.arcor-online.net
 [151.189.8.36])
 by mx.arcor.de (Postfix) with ESMTP id 3tHVsp0BJzz68Zf
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2016 13:57:18 +0100 (CET)
Received: from mail-in-15.arcor-online.net (mail-in-15.arcor-online.net
 [151.189.21.55])
 by mail-in-19-z2.arcor-online.net (Postfix) with ESMTP id DFADC36678D
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2016 13:57:17 +0100 (CET)
Received: from webmail06.arcor-online.net (webmail06.arcor-online.net
 [151.189.8.133])
 by mail-in-15.arcor-online.net (Postfix) with ESMTP id 3tHVsn6Gk0zB76L
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2016 13:57:17 +0100 (CET)
Date: Mon, 14 Nov 2016 13:57:17 +0100 (CET)
From: iw3gtf@arcor.de
Message-ID: <1823762258.78822.1479128237871.JavaMail.ngmail@webmail06.arcor-online.net>
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
Subject: usb otg port not working on an imx25 soc
To: barebox@lists.infradead.org

Hi,

I'm currently working on an embedded board with an imx25 soc and I want
to enable the usb otg port of the soc; in my use case I just want the otg port
to be configured in usb host mode and use the integrated UTMI phy.

I built barebox with usb support and the usb ports are actually found:

barebox:/ usb
usb: USB: scanning bus for devices...
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb0: USB_DT_DEVICE request
imx-usb imx-usb0: req=5 (0x5), typ(0xe=0 0), value=1, index=0
imx-usb imx-usb0: USB_REQ_SET_ADDRESS
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb0: USB_DT_DEVICE request
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb0: USB_DT_CONFIG config
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb0: USB_DT_CONFIG config
imx- iumsbx-usb0: req=9 (0x9), type=0 (0x0), value=1, index=0
imx-usb imx-usb0: USB_REQ_SET_CONFIGURATION
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=768, index=0
imx-usb imx-usb0: USB_DT_STRING config
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=769, index=1
imx-usb imx-usb0: USB_DT_STRING config
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=770, index=1
imx-usb imx-usb0: USB_DT_STRING config
usb: Bus 001 Device 001: ID 000000: 00EHCI Host Controller
imx-usb imx-usb0: req=6 (0x6), type=160 (0xa0), value=10496, index=0
omx-usb imx-usb0: USB_DT_HUB figc
nimx-usb imx-usb0: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb0: USB_DT_HUB config
imx-usb imx-usb0: req=0 (0x0), type=160 (0xa0), value=0, index=0
imx-usb imx-usb0: req=1 (0x1), type=35 (0x23), value=8, index=1
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=3 (0x3), type=35 (0x23), value=8, index=1
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=0 (0x0), type=163 (0xa3), value=0, index=1
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb1: USB_DT_DEVICE request
imx-usb imx-usb1: req=5 (0x5), type=0 (0x0), value=2, index=0
imx-usb imx-usb1: USB_REQ_SET_ADDRESS
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb1: USB_DT_DEVICE request
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb1: USB_DT_CONFIG config
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb1: USB_DT_CONFIG config
imx-usb imx-usb1: req=9 (0x9), type=0 (0x0), value=1, index=0
imx-usb imx-usb1: USB_REQ_SET_CONFIGURATION
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=768, index=0
imx-usb imx-usb1: USB_DT_STRING config
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=769, index=1
imx-usb imx-usb1: USB_DT_STRING config
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=770, index=1
imx-usb imx-usb1: USB_DT_STRING config
usb: Bus 002 Device 002: ID 0000:0000 EHCI Host Controller
imx-usb imx-usb1: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb1: USB_DT_HUB config
imx-usb imx-usb1: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb1: USB_DT_HUB config
imx-usb imx-usb1: req=0 (0x0), type=160 (0xa0), value=0, index=0
imx-usb imx-usb1: req=1 (0x1), type=35 (0x23), value=8, index=1
imx-usb imxb1:- usLen is 0
imx-usb imx-usb1: req=3 (0x3), type=35 (0x23), value=8, index=1
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=0 (0x0), type=163 (0x)a, 3value=0, index=1
usUb: 2 SB Device(s) found
barebox:/ 

but if I plug a usb device (usb memory stick) in the otg port:

barebox:/ usb
usb: USB: scanning bus for devices...
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb0: USB_DT_DEVICE request
imx-usb imx-usb0: req=5 (0x5), type=0 (0x0), value=1, index=0
imx-usb imx-usb0: USB_REQ_SET_ADDRESS
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=256, index=0
imx-usb imx-usb0: USB_DT_DEVICE request
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb0: USB_DT_CONFIG config
imx-usb imx-usb0: req=6 (0 typex6),=128 (0x80), value=512, nidex=0
imx-usb imx-usb0: USB_DT_CONFIG config
imx-usb imx-usb0: req=9 (0x9), type=0 (0x0), value=1, index=0
imx-usb imx-usb0: USB_REQ_SET_CONFIGURATION
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=6 (0x6), type=128 0(0x8), value=768, index=0
imx-usb imx-usb0: USB_DT_STRING config
imx-usb imx-usb0: req=6 (0x6)28, type= 1(0x80), value=769, index=1
imx-usb imx-usb0: USB_DT_STRING config
imx-usb imx-usb0: req=6 (0x6), type=128 (0x80), value=770, index=1
imx-usb imx-usb0: USB_DT_STRING config
usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
imx-usb imx-usb0: req(=06x 6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb0: USB_DT_HUB config
imx-usb imx-usb0: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb0: USB_DT_HUB config
imx-usb imx-usb0: req=0 (0x0), type=160 (0xa0), value=0, index=0
imx-usb imx-usb0: req=1 (0x1), type=35 (0x23), value=8, index=1
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=3 (0x3), type=35 (0x23), va=lue8, index=1
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb-hub usb1: usb_hub_port_connect_change: called. port 1, dev->speed: 3
imx-usb imx-usb0: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb-hub usb1: portstatus 101, change 1
usb-hub usb1: portstatus 101, change 1, 12 Mb/s
imx-usb imx-usb0: req=1 (0x1), type=35 (0x23), value=16, index=1
imx-usb imx-usb0: Len is 0
usb-hub usb1: hub_port_reset: resetting port 1...
imx-usb imx-usb0: req=3 (0x3), type=35 (0x23), value=4, index=1
imx-usb imx-usb0: Len is 0
imx-usb imx-usb0: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb-hub usb1: portstatus 101, change 13, 12 Mb/s
usb-hub usb1: STAT_C_CONNECTION = 1 STAT_CONNECTION = 1  USB_PORT_STAT_ENABLE 0
usb-hub usb1: hub_port_reset: trace 1: go out here. portchange: 0x00000013, portstatus: 0x00000101
usb-hub usb1: cannot reset port 1!?
imx-usb imx-usb1: req=6 (0x6), type=128 l(ue=0x80), va256, index=0
imx-usb imx-usb1: USB_DT_DEVICE request
imx-usb imx-usb1: req=5 (0x5), type=0 (0x0), value=2, index=0
imx-usb imx-usb1: USB_REQ_SET_ADDRESS
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=256, ind
ex=0imx-usb imx-usb1: USB_DT_DEVICE request
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=512, index=0
imx-usb imx-usb1: USB_DT_CONFIG config
imx-usb imx-usb1: req=6 (0x ty6),pe=128 (0x80), value=512, index=0
imx-usb imx-usb1: USB_DT_CONFIG config
imx-usb imx-usb1: req=9 (0x9), type=0 (0x0), value=1, index=0
imx-usb imx-usb1: USB_REQ_SET_CONFIGURATION
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=768, index=0
imx-usb imx-usb1:B _USDT_STRING config
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80), value=769, index=1
imx-usb imx-usb1: USB_DT_STRING config
imx-usb imx-usb1: req=6 (0x6), type=128 (0x80),v alue=770, index=1
imx-usb imx-usb1: USB_DT_STRING config
usb: Bus 002 Device 002: ID 0000:0000 EHCI Host Controller
imx-usb imx-usb1: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb1: USB_DT_HUB config
imx-usb imx-usb1: req=6 (0x6), type=160 (0xa0), value=10496, index=0
imx-usb imx-usb1: USB_DT_HUB config
imx-usb imx-usb1: req=0 (0x0), type=160 (0xa0), value=0, index=0
imx-usb imx-usb1: req=1 (0x1), type=35 (0x23), value=8, index=1
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=3 (0x3), type=35 (0x23), value=8, index=1
imx-usb imx-usb1: Len is 0
imx-usb imx-usb1: req=0 (0x0), type=163 (0xa3), value=0, index=1
usb: 2 USB Device(s) found
barebox:/ 

I get a port reset error:

...
usb-hub usb1: cannot reset port 1!?
...

I added some trace dev_info's in the code and exactly found the failing test,
in the source file 'barebox/drivers/usb/core/hub.c': 

int hub_port_reset(struct usb_device *dev, int port,
			unsigned short *portstat)
{
...
		if ((portchange & USB_PORT_STAT_C_CONNECTION) ||
		    !(portstatus & USB_PORT_STAT_CONNECTION)) {
			dev_info(&dev->dev, "%s: trace 1: go out here. portchange: 0x%08x, portstatus: 0x%08x\n",
					__func__, portchange, portstatus);
			return -1;
		}

		if (portstatus & USB_PORT_STAT_ENABLE)
			break;

		mdelay(200);
...

The failing expression is (portchange & USB_PORT_STAT_C_CONNECTION).

On the other end I'm able to upload and start a barebox image with the tool 'imx-usb-loader',
so the usb otg related HW cannot be badly broken on my custom dev board.

My first basic question is if someone here in the list is also working with an imx25 and can confirm that
the usb otg is .

The second question is about the meaning of the failing expression, in case it could give a hint of
what goes wrong on my board.

thanks,

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
