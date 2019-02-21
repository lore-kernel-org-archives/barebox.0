Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am5eur02on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::604]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwpN3-0008Hm-6f
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 14:30:43 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Thu, 21 Feb 2019 14:30:36 +0000
Message-ID: <AM0PR08MB3842E348B4CD31892B48EF19EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
 <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221133151.apxmkxdu72glcvwa@pengutronix.de>
In-Reply-To: <20190221133151.apxmkxdu72glcvwa@pengutronix.de>
Content-Language: de-DE
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
Subject: AW: i.MX6ul USB serial downloader and Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

$ otg.mode=host

Did the trick for me. Now I can flash the nand from usb-stick data on /dev/disk0.0
Works like a charm, thanks!

Regards,
Patrick 

> > Hi Sascha,
> > thanks for the reply.
> > It seems that I am lacking something in the usb configuration. I am always
> getting:
> >
> > couldn't find an available UDC
> > usbgadget: No such device
> 
> I don't know which hardware you are on, but you may have to enable the
> USB controller in the device tree. If otg mode is configured there you also
> have to do a "otg.mode=peripheral" to turn the controller into gadget mode.
> 
> >
> > $ fastboot devices -l
> >
> > Delivers nothing on my windows host side.
> > Before I proceed, wouldn't it be also possible to just plug a usb-stick and
> copy rootfs and barebox.bin from there?
> > Unfortunately
> >
> > $ usb
> >
> > Also doesn't recognize my plugged in usb-stick.
> > The USB port functions normally under linux itself.
> 
> If that's the same port as you do fastboot on then you might have to do a
> "otg.mode=host" to turn the controller into host mode.
> 
> Sascha
> 
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
