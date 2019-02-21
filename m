Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve1eur03on060d.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::60d]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwn2v-0003eF-QD
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 12:01:51 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Thu, 21 Feb 2019 12:01:40 +0000
Message-ID: <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
In-Reply-To: <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
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
thanks for the reply.
It seems that I am lacking something in the usb configuration. I am always getting:

couldn't find an available UDC
usbgadget: No such device

$ fastboot devices -l

Delivers nothing on my windows host side.
Before I proceed, wouldn't it be also possible to just plug a usb-stick and copy rootfs and barebox.bin from there?
Unfortunately

$ usb

Also doesn't recognize my plugged in usb-stick.
The USB port functions normally under linux itself. 

Regards,
Patrick

> Hi Patrick,
> 
> On Thu, Feb 21, 2019 at 10:01:27AM +0000, Patrick Schneider wrote:
> > Hi guys,
> > I'm trying to find out if the following is possible: In a production
> > environment, there is only the USB connection present, no console
> > access to the device.  The USB serial downloader mode starts and I am
> > able to load a barebox image to the i.MX6ul RAM. That works either
> > with MFGTools or uuu.
> 
> I recommend imx-usb-loader which is part of barebox ;)
> 
> > But how to proceed from there? Is there any way to really flash the
> > barebox image and also the rootFS into a onboard NAND over the USB
> > serial downloader mode with barebox in RAM?  All examples, guides and
> > tutorials use u-boot so I'm kinda stuck here.
> 
> barebox can do fastboot. "usbgagdet -A /dev/mmc0(foo)" will export
> /dev/mmc0 as a fastboot partition to the host. Add the -a option and you'll
> get a console device on the host.
> 
> Sascha
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
