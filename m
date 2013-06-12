Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f327.mail.ru ([217.69.140.223])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmnUG-0002H6-9F
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 16:01:29 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 12 Jun 2013 20:01:02 +0400
Message-ID: <1371052862.194674258@f327.mail.ru>
In-Reply-To: <20130612155401.GX32299@pengutronix.de>
References: <51B6066A.5020801@knowtrek.com> <51B8390B.4090306@knowtrek.com>
 <20130612155401.GX32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IGhvdyB0byBmbGFzaCBiYXJlYm94IGFuZCBzZXQgcm9vdCB2YXJp?=
 =?UTF-8?B?YWJsZT8gLSBiYXJlYm94IGlzIGdvbmUgOig=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Wed, Jun 12, 2013 at 11:02:03AM +0200, Adam Furmanczuk wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> > 
> > OK, I compiled with gcc imx-usb-loader.c -I/usr/include/libusb-1.0/
> > And had some "undefined reference" errors [1]. Probably have to adjust
> > some path when running in barebox/scripts/imx/ directory?
> > 
> > I use also debian (wheezy) as host. Details about libusb-dev package [2].
> > 
> 
> Ok, here is exactly what to do:
> 
> export ARCH=arm
> export CROSS_COMPILE=/path/to/arm-linux-gcc-
> make freescale_mx51_babbage_defconfig
> make menuconfig
>   System Type  --->
>     i.MX specific settings  --->
>         [*] compile imx-usb-loader
> make
> 
> This should compile without errors and the imx-usb-loader tool should be
> compiled, provided you have the libusb host tool installed.

Probably some usb-related headers on Adam system placed in non-standard
directories, since tool is not builded or makes some errors.
Maybe we need to use pkg-config for these stuffs?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
