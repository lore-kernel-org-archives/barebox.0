Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmnNQ-0001v9-Ci
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 15:54:25 +0000
Date: Wed, 12 Jun 2013 17:54:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130612155401.GX32299@pengutronix.de>
References: <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com>
 <20130610172901.GN32299@pengutronix.de>
 <51B8113F.2050207@knowtrek.com> <51B82114.7080004@knowtrek.com>
 <20130612080747.GV32299@pengutronix.de>
 <51B82FD8.30108@knowtrek.com>
 <20130612084816.GW32299@pengutronix.de>
 <51B8390B.4090306@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B8390B.4090306@knowtrek.com>
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
Subject: Re: how to flash barebox and set root variable? - barebox is gone :(
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 12, 2013 at 11:02:03AM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> OK, I compiled with gcc imx-usb-loader.c -I/usr/include/libusb-1.0/
> And had some "undefined reference" errors [1]. Probably have to adjust
> some path when running in barebox/scripts/imx/ directory?
> 
> I use also debian (wheezy) as host. Details about libusb-dev package [2].
> 

Ok, here is exactly what to do:

export ARCH=arm
export CROSS_COMPILE=/path/to/arm-linux-gcc-
make freescale_mx51_babbage_defconfig
make menuconfig
  System Type  --->
    i.MX specific settings  --->
        [*] compile imx-usb-loader
make

This should compile without errors and the imx-usb-loader tool should be
compiled, provided you have the libusb host tool installed.

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
