Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmgjO-0008Lv-Co
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 08:48:39 +0000
Date: Wed, 12 Jun 2013 10:48:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130612084816.GW32299@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com>
 <20130610172901.GN32299@pengutronix.de>
 <51B8113F.2050207@knowtrek.com> <51B82114.7080004@knowtrek.com>
 <20130612080747.GV32299@pengutronix.de>
 <51B82FD8.30108@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B82FD8.30108@knowtrek.com>
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

On Wed, Jun 12, 2013 at 10:22:48AM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> On 12.06.2013 10:07, Sascha Hauer wrote:
> > On Wed, Jun 12, 2013 at 09:19:48AM +0200, Adam Furmanczuk wrote:
> >> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
> >> 
> >> On 12.06.2013 08:12, Adam Furmanczuk wrote:
> >>> ********* *POCZATEK CZESCI SZYFROWANEJ / PODPISANEJ* *********
> > When CONFIG_ARCH_IMX_USBLOADER is enabled in your config you can
> > do:
> > 
> > make scripts/imx/
> > 
> > This should build the tool only.
> > 
> 
> In the current 699-bcc9 branch i run:
> 
>  make ARCH=arm freescale_mx53_loco_defconfig
> 
> than i edit the .config by hand and set CONFIG_ARCH_IMX_USBLOADER=y
> when running: make scripts/imx
> 
> it tells me no goals. nothing to do.
> 
> I run gcc on your script file directly, but the libush.h is misssing I
> should get it from the MX53 loco project?

You need this from the host. On debian for example the packet is named
libusb-1.0-0-dev.

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
