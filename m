Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwoS9-0006LU-NC
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 13:31:55 +0000
Date: Thu, 21 Feb 2019 14:31:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190221133151.apxmkxdu72glcvwa@pengutronix.de>
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
 <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
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
Subject: Re: i.MX6ul USB serial downloader and Barebox
To: Patrick Schneider <patrick.schneider@bhtronik.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 21, 2019 at 12:01:40PM +0000, Patrick Schneider wrote:
> Hi Sascha,
> thanks for the reply.
> It seems that I am lacking something in the usb configuration. I am always getting:
> 
> couldn't find an available UDC
> usbgadget: No such device

I don't know which hardware you are on, but you may have to enable the
USB controller in the device tree. If otg mode is configured there you
also have to do a "otg.mode=peripheral" to turn the controller into
gadget mode.

> 
> $ fastboot devices -l
> 
> Delivers nothing on my windows host side.
> Before I proceed, wouldn't it be also possible to just plug a usb-stick and copy rootfs and barebox.bin from there?
> Unfortunately
> 
> $ usb
> 
> Also doesn't recognize my plugged in usb-stick.
> The USB port functions normally under linux itself.

If that's the same port as you do fastboot on then you might have to do
a "otg.mode=host" to turn the controller into host mode.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
