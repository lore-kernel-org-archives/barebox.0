Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whe6N-0003sM-0N
 for barebox@lists.infradead.org; Tue, 06 May 2014 12:04:03 +0000
Date: Tue, 6 May 2014 14:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140506120341.GB5858@pengutronix.de>
References: <CAOpc7mG8aTfoqMyZ4+GQfs08JW-xHLApe=V8sp5FZgY650anMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mG8aTfoqMyZ4+GQfs08JW-xHLApe=V8sp5FZgY650anMQ@mail.gmail.com>
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
Subject: Re: Image loading via USB broken?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi Holger,

On Tue, May 06, 2014 at 01:20:18PM +0200, Holger Schurig wrote:
> Hi list,
> 
> on my Sabre Lite board I cannot execute an image that I sent to it via
> the USB downloader.
> 
> $ cd barebox-next
> $ git describe
> v2014.04.0-263-g8ffbc0d
> $ export CROSS_COMPILE=~/d/mkarm/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin/arm-linux-gnueabihf-
> $ export ARCH=arm
> $ make freescale-mx6-sabrelite_defconfig
> #
> # configuration written to .config
> #
> $ make xconfig
> (here I add ARCH_IMX_USBLOADER)
> $ make
> $ scripts/imx/imx-image -c
> arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
> -f barebox.bin -o barebox.imxi

No need to generate that image manually. Use
images/barebox-freescale-imx6q-sabrelite.img directly instead:

./scripts/imx/imx-usb-loader images/barebox-freescale-imx6q-sabrelite.img

barebox.bin is not directly startable with pbl or multi image support.

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
